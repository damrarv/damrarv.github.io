
mob/var
	overalls = 0
	top = 0
	bottom = 0
	head = 0
	capeWorn = 0
	feet = 0
	wrist = 0
	neck = 0
	capeOverlays
	suitOverlays
	shirtOverlays
	pantsOverlays
	headOverlays
	wristOverlays
	handOverlays
	feetOverlays
	scarfOverlays
	shirtC
	pantsC


obj/proc
	Color_Shirt(clothes)
		var/shirtred = input("How much red do you want?") as num
		var/shirtblue = input("How much blue do you want?") as num
		var/shirtgreen = input("How much green do you want?") as num
		usr.shirtC = clothes
		usr.shirtC += rgb(shirtred,shirtgreen,shirtblue)
		return usr.shirtC
	Color_Pants(clothes)
		var/shirtred = input("How much red do you want?") as num
		var/shirtblue = input("How much blue do you want?") as num
		var/shirtgreen = input("How much green do you want?") as num
		usr.pantsC = clothes
		usr.pantsC += rgb(shirtred,shirtgreen,shirtblue)
		return usr.pantsC

obj
	proc
		Get()
			src.loc = usr
			usr << "<font color = blue> You pick up the [src]"
		Drop()
			if(src.worn == 1)
				usr<<"<font color = red> You can't drop while wearing it"
			else usr<<"<font color = blue> You drop \ [src.name]",src.loc = locate(usr.x, usr.y-1,usr.z)
		Wear_Cape(cape)
			if(src.worn == 1)
				src:worn = 0
				usr.capeWorn = 0
				usr.overlays -= cape
				usr << "<font color=blue>You remove the [src.name]."
				src.suffix = ""
			else if(!usr.capeWorn)
				src:worn = 1
				usr.capeWorn = 1
				usr.overlays += cape
				usr << "<font color=blue>You wear the [src.name]."
				src.suffix = "Equipped"
			else usr << "You are already wearing a cape"
		Wear_Shirt(shirt)
			if(src.worn == 1)
				src:worn = 0
				usr.top = 0
				usr.overlays -= shirt
				usr.overlays -= usr.shirtC
				usr << "<font color=blue>You remove the [src.name]."
				src.suffix = ""
			else if(!usr.top && !usr.overalls)
				src:worn = 1
				usr.top = 1
				if(src:can_color) shirt = Color_Shirt(shirt)
				usr.overlays += shirt
				usr << "<font color=blue>You wear the [src.name]."
				src.suffix = "Equipped"
			else usr << "You are already wearing a Shirt"
		Wear_Pants(pants)
			if(src.worn == 1)
				src:worn = 0
				usr.bottom = 0
				usr.overlays -= pants
				usr.overlays -= usr.pantsC
				usr << "<font color=blue>You remove the [src.name]."
				src.suffix = ""
			else if(!usr.bottom)
				src:worn = 1
				usr.bottom = 1
				if(src:can_color) pants = Color_Pants(pants)
				usr.overlays += pants
				usr << "<font color=blue>You wear the [src.name]."
				src.suffix = "Equipped"
			else usr << "You are already wearing Pants"
		Wear_Suit(suit)
			if(src.worn == 1)
				src:worn = 0
				usr.overalls = 0
				usr.overlays -= suit
				usr << "<font color=blue>You remove the [src.name]."
				src.suffix = ""
			else if(!usr.overalls)
				src:worn = 1
				usr.overalls = 1
				usr.overlays += suit
				usr << "<font color=blue>You wear the [src.name]."
				src.suffix = "Equipped"
			else usr << "You are already wearing an Overalls"
		Wear_Hat(hat)
			if(src.worn == 1)
				src:worn = 0
				usr.overalls = 0
				usr.overlays -= hat
				usr << "<font color=blue>You remove the [src.name]."
				src.suffix = ""
			else if(!usr.head)
				src:worn = 1
				usr.overalls = 1
				usr.overlays += hat
				usr << "<font color=blue>You wear the [src.name]."
				src.suffix = "Equipped"
			else usr << "You are already wearing a Hat"
		Wear_Shoes(shoes)
			if(src.worn == 1)
				src:worn = 0
				usr.overalls = 0
				usr.overlays -= shoes
				usr << "<font color=blue>You remove the [src.name]."
				src.suffix = ""
			else if(!usr.feet)
				src:worn = 1
				usr.overalls = 1
				usr.overlays += shoes
				usr << "<font color=blue>You wear the [src.name]."
				src.suffix = "Equipped"
			else usr << "You are already wearing Shoes"
		Wear_WristBands(bands)
			if(src.worn == 1)
				src:worn = 0
				usr.overalls = 0
				usr.overlays -= bands
				usr << "<font color=blue>You remove the [src.name]."
				src.suffix = ""
			else if(!usr.wrist)
				src:worn = 1
				usr.overalls = 1
				usr.overlays += bands
				usr << "<font color=blue>You wear the [src.name]."
				src.suffix = "Equipped"
			else usr << "You are already wearing a Wrist Band"
		Wear_Scarf(scarf)
			if(src.worn == 1)
				src:worn = 0
				usr.overalls = 0
				usr.overlays -= scarf
				usr << "<font color=blue>You remove the [src.name]."
				src.suffix = ""
			else if(!usr.neck)
				src:worn = 1
				usr.overalls = 1
				usr.overlays += scarf
				usr << "<font color=blue>You wear the [src.name]."
				src.suffix = "Equipped"
			else usr << "You are already wearing a Scarf"
	Bandana
		name = "Bandana"
		icon = 'Bandana.dmi'
		worn = 0
	SchoolUniform
		name = "Ashford Academy School Uniform (Boy)"
		icon = 'Ashford Uniform Male.dmi'
		worn = 0
		verb
			Wear()
				usr.suitOverlays = 'Ashford Uniform Male.dmi'
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	LloydSuit
		name = "Lloyd Asplund Suit"
		icon = 'Lloyd.dmi'
		worn = 0
		verb
			Wear()
				usr.suitOverlays = 'Lloyd.dmi'
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	ClovisSuit
		name = "Clovis La Britannia Suit"
		icon = 'Clovis suit.dmi'
		worn = 0
		verb
			Wear()
				usr.suitOverlays = 'Clovis suit.dmi'
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	ClovisCape
		name = "Clovis La Britannia Cape"
		icon = 'Clovis Cape.dmi'
		worn = 0
		verb
			Wear()
				usr.capeOverlays = 'Clovis Cape.dmi'
				Wear_Cape(usr.capeOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	DiethardSuit
		name = "Diethard Ried Suit"
		icon = 'Diethard Suit.dmi'
		worn = 0
		verb
			Wear()
				usr.suitOverlays = 'Diethard Suit.dmi'
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()


	ZeroMask
		name = "Mask of Zero"
		icon = 'Zero Mask.dmi'
		worn = 0
		verb
			Wear()
				usr.headOverlays = icon
				Wear_Hat(usr.headOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()


	ZeroSuit
		name = "Zero Suit"
		icon = 'Zero Suit.dmi'
		worn = 0
		verb
			Wear()
				usr.suitOverlays = 'Zero Suit.dmi'
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()


	ZeroCape
		name = "Zero Cape"
		icon = 'Zero Cape.dmi'
		worn = 0
		verb
			Wear()
				usr.capeOverlays = 'Zero Cape.dmi'
				Wear_Cape(usr.capeOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()
	T_Shirt
		name = "T-Shirt"
		icon = 'Tshirt.dmi'
		worn = 0
		var/can_color = 1
		verb
			Wear()
				usr.shirtOverlays = icon
				Wear_Shirt(usr.shirtOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()
	Pants
		name = "Pants"
		icon = 'Pants.dmi'
		worn = 0
		var/can_color = 1
		verb
			Wear()
				usr.pantsOverlays += icon
				Wear_Pants(usr.pantsOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Schneizel_Suit
		name = "Fancy Outfit"
		icon = 'Schniezel Suit.dmi'
		verb
			Wear()
				usr.suitOverlays += icon
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Black_Hat
		name = "Black Hat"
		icon = 'BKHat.dmi'
		verb
			Wear()
				usr.headOverlays += icon
				Wear_Hat(usr.headOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	BK_UniM
		name = "Black Outfit (Male)"
		icon = 'BKSuit Male.dmi'
		verb
			Wear()
				usr.suitOverlays += icon
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	BK_UniF
		name = "Black Outfit (Female)"
		icon = 'BKSuit Female.dmi'
		verb
			Wear()
				usr.suitOverlays += icon
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Kallen_Suit
		name = "Female Battle Outfit"
		icon = 'Kallen Suit.dmi'
		verb
			Wear()
				usr.suitOverlays += icon
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Tianzi_Dress
		name = "Princess Dress"
		icon = 'Tianzi Dress.dmi'
		verb
			Wear()
				usr.suitOverlays += icon
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()


	Straight_Jacket
		name = "Straight Jacket"
		icon = 'CC suit.dmi'
		verb
			Wear()
				usr.suitOverlays += icon
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()
	Knight_Suit
		name = "Knight Suit"
		icon = 'Empire Suit.dmi'
		verb
			Wear()
				usr.suitOverlays += icon
				Wear_Hat(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()
	Empire_Cape
		name = "Cape"
		icon = 'Empire Cape.dmi'
		verb
			Wear()
				usr.capeOverlays = icon
				Wear_Cape(usr.capeOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()
	Female_TShirt
		name = "T-Shirt (Female)"
		icon = 'TShirt Female.dmi'
		var/can_color = 1
		verb
			Wear()
				usr.shirtOverlays = icon
				Wear_Shirt(usr.shirtOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()
	Female_School_Uniform
		name = "School Outfit (Female)"
		icon = 'Female School Uniform.dmi'
		verb
			Wear()
				usr.suitOverlays += icon
				Wear_Suit(usr.suitOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()
	Tank_Top
		name = "Tank Top"
		icon = 'Tank Top.dmi'
		var/can_color = 1
		verb
			Wear()
				usr.shirtOverlays = icon
				Wear_Shirt(usr.shirtOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()


	Hat1
		name = "Hat"
		icon = 'Hat1.dmi'
		verb
			Wear()
				usr.headOverlays = icon
				Wear_Hat(usr.headOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Hat2
		name = "Hat"
		icon = 'Hat2.dmi'
		verb
			Wear()
				usr.headOverlays = icon
				Wear_Hat(usr.headOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Fedora_Hat
		name = "Fedora Hat"
		icon = 'Fedora Hat.dmi'
		verb
			Wear()
				usr.headOverlays = icon
				Wear_Hat(usr.headOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Boots
		name = "Boots"
		icon = 'Boots.dmi'
		verb
			Wear()
				usr.feetOverlays = icon
				Wear_Shoes(usr.feetOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Shoes
		name = "Basic Shoes"
		icon = 'Shoes.dmi'
		verb
			Wear()
				usr.feetOverlays = icon
				Wear_Shoes(usr.feetOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Mini_Skirt
		name = "Mini Skirt"
		icon = 'Mini Skirt.dmi'
		var/can_color = 1
		verb
			Wear()
				usr.pantsOverlays += icon
				Wear_Pants(usr.pantsOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()

	Wrist_Bands
		name = "Wrist Bands"
		icon = 'Wrist Bands.dmi'
		verb
			Wear()
				usr.wristOverlays += icon
				Wear_WristBands(usr.wristOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()


	Scarf
		name = "Scarf"
		icon = 'Scarf.dmi'
		verb
			Wear()
				usr.scarfOverlays += icon
				Wear_Scarf(usr.scarfOverlays)
			Pick_up()
				set src in oview(1)
				Get()
			Drop_it()
				Drop()



