obj
	North
		icon='Arrows.dmi'
		icon_state="Up"
		Click()
			usr.dir=NORTH
	South
		icon='Arrows.dmi'
		icon_state="Down"
		Click()
			usr.dir=SOUTH
	East
		icon='Arrows.dmi'
		icon_state="Right"
		Click()
			usr.dir=EAST
	West
		icon='Arrows.dmi'
		icon_state="Left"
		Click()
			usr.dir=WEST

obj
	SchoolUniform
		name = "Ashford Academy School Uniform (Boy)"
		icon = 'Ashford Uniform Male.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Ashford Uniform Male.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Ashford Uniform Male.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"

	Bandana
		name = "Black Bandana"
		icon = 'Bandana.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Bandana.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Bandana.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"
	LloydSuit
		name = "Lloyd Asplund Suit"
		icon = 'Lloyd.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Lloyd.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Lloyd.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"

	ClovisSuit
		name = "Clovis La Britannia Suit"
		icon = 'Clovis suit.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Clovis suit.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Clovis suit.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"

	ClovisCape
		name = "Clovis La Britannia Cape"
		icon = 'Clovis Cape.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Clovis Cape.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Clovis Cape.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"

	DiethardSuit
		name = "Diethard Ried Suit"
		icon = 'Diethard Suit.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Diethard Suit.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Diethard Suit.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"

	ZeroMask
		name = "Mask of Zero"
		icon = 'Zero Mask.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Zero Mask.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Zero Mask.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"

	ZeroSuit
		name = "Zero Suit"
		icon = 'Zero Suit.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Zero Suit.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Zero Suit.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"

	ZeroCape
		name = "Zero Cape"
		icon = 'Zero Cape.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Zero Cape.dmi'
					usr << "<font color=blue>You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Zero Cape.dmi'
					usr << "<font color=blue>You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()
				if(src:worn == 1)
					usr << "<font color=blue>Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"<font color=blue>You picked up a [src]"
