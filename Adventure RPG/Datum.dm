popupbox
  var/client/client     // who can see this box right now?
  var/mob/M             // the mob that goes with client
  var/list/items        // items to be shown on screen
  var/list/screenitems
  var/list/backdrop     // the background
  var/x, y
  var/width, height

  New(mob/_M, list/_items, _x, _y)
    if(!_M || !_M.client) del(src)
    M = _M
    client = _M.client
    items = _items
    var/viewx, viewy
    if(isnum(client.view))
      viewx = client.view * 2 + 1
      viewy = viewx
    else
      var/index = findtext(client.view, "x")
      viewx = text2num(copytext(client.view, 1, index))
      viewy = text2num(copytext(client.view, index+1))
    x = _x; y = _y
    if(x < 0) x += viewx+1      // x==-1 means right edge
    if(y < 0) y += viewy+1      // y==-1 means top edge
    // round up from items.len/viewx
    height = round((items.len + viewx - 1) / viewx)
    // round up from items.len/width
    width = round((items.len + height - 1) / height)
    if(x + width - 1 > viewx) x = max(viewx - width + 1, 1)
    if(y + height - 1 > viewy) y = max(viewy - height + 1, 1)
    backdrop = list(new/obj/backdrop(src))
    screenitems = new
    var/n = 0
    for(_y in y+height-1 to y step -1)          // fill from the top down
      for(_x in x to (x+width-1))
        if(++n > items.len) break
        screenitems += new/obj/popupitem(src, "[_x],[_y]", items[n])
    M.pbox = src

  Del()
    if(M && M.pbox == src) M.pbox = null
    if(backdrop)
      if(client) client.screen -= backdrop
      for(var/O in backdrop)
        del(O)
    if(screenitems)
      if(client) client.screen -= screenitems
      for(var/O in screenitems)
        del(O)
    ..()

  proc/Select(atom/item)
    del(src)


obj/backdrop
  var/popupbox/box
  var/client/client
  icon = 'popup.dmi'
  icon_state = "backdrop"
  layer = 20

  New(popupbox/_box)
    box = _box
    client = box.client
    screen_loc = "[box.x],[box.y] to \
                  [box.x+box.width-1],[box.y+box.height-1]"
    if(client) client.screen += src

  Del()
    if(client) client.screen -= src
    ..()

  Click()
    box.Select(null)

obj/popupitem
  var/popupbox/box
  var/client/client
  var/atom/item
  layer = 21

  New(popupbox/_box, newloc, atom/_item)
    box = _box
    client = box.client
    screen_loc = newloc
    item = _item
    icon = item.icon
    icon_state = item.icon_state
    dir = item.dir
    if(client) client.screen += src

  Del()
    if(client) client.screen -= src
    ..()

  Click()
    box.Select(item)

popupbox/inventory
  Select(obj/item/item)
    if(istype(item)) item.Use()
    del(src)  // close the box

obj/item
  verb/Pick()
    set src in oview(1)
    if(usr.pbox) del(usr.pbox)
    loc = usr
    usr << "You pick up \a [src]."
  verb/Litter()
    set src in usr
    if(usr.pbox) del(usr.pbox)
    loc = usr.loc
    usr << "You drop \a [src]."
  verb/Use()        // a user can Use any object they're carrying.
    set src in usr
    if(usr.pbox) del(usr.pbox)

mob
  var/popupbox/pbox

  Move()
    if(pbox) del(pbox)
    return ..()

  verb/Inventory()
    set src = usr
    if(pbox) del(pbox)
    if(contents.len)
      pbox = new/popupbox/inventory(usr, contents, -1, 1)
    else usr << "You aren't carrying anything."