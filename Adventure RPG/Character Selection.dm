mob/var
	baseSelected = 0
	hairSelected = 0
	Oicon
	Ohair
	rhair
	ghair
	bhair
	hairover
	hair
	sex = ""

mob/proc
	hairSelect(hairstyle)
		hairover = hairstyle
		var/hairred = input("How much red do you want in your hair? (Enter RGB Values between 0-255)") as num
		var/hairblue = input("How much blue do you want in your hair? (Enter RGB Values between 0-255)") as num
		var/hairgreen = input("How much green do you want in your hair? (Enter RGB Values between 0-255)") as num
		hairover += rgb(hairred,hairgreen,hairblue)
		usr.rhair = hairred
		usr.ghair = hairgreen
		usr.bhair = hairblue
		usr.Ohair = hairover
		usr.hair = usr.Ohair
		usr.hairselected=1
		usr.overlays = null
		usr.overlays += usr.hair
		usr<<"hair select"
		return usr
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
	Male
		icon='Base_M.dmi'
		mouse_opacity=2
		Click()
			usr.icon='Base_M.dmi'
			usr.Oicon='Base_M.dmi'
			usr.baseSelected=1
	Female
		icon='Base_F.dmi'
		mouse_opacity=2
		Click()
			usr.icon='Base_F.dmi'
			usr.Oicon='Base_F.dmi'
			usr.baseSelected=1


	Dredlock
		icon='Hair.dmi'
		icon_state="dredlocksm"
		mouse_opacity=2
		Click()
			usr.hair = "dredlocksm"
			var/hairover = 'Dredlocks.dmi'
			usr.hairSelect(hairover)


	Short1
		icon='Hair.dmi'
		icon_state="short1m"
		mouse_opacity=2
		Click()
			usr.hair = "short1m"
			var/hairover = 'Short1.dmi'
			usr.overlays += hairover
			usr.hairSelect(hairover)


	Short2
		icon='Hair.dmi'
		icon_state="short2m"
		mouse_opacity=2
		Click()
			usr.hair = "short2m"
			var/hairover = 'Short2.dmi'
			usr.hairSelect(hairover)
	Short3
		icon='Hair.dmi'
		icon_state="short3m"
		mouse_opacity=2
		Click()
			usr.hair = "short3m"
			var/hairover = 'Short3.dmi'
			usr.hairSelect(hairover)

	Short4
		icon='Hair.dmi'
		icon_state="short4m"
		mouse_opacity=2
		Click()
			usr.hair = "short4m"
			var/hairover = 'Short4.dmi'
			usr.hairSelect(hairover)


	Short5
		icon='Hair.dmi'
		icon_state="short5m"
		mouse_opacity=2
		Click()
			usr.hair = "short5m"
			var/hairover = 'Short5.dmi'
			usr.hairSelect(hairover)

	Short6
		icon='Hair.dmi'
		icon_state="short6m"
		mouse_opacity=2
		Click()
			usr.hair = "short6m"
			var/hairover = 'Short6.dmi'
			usr.hairSelect(hairover)

	Short7
		icon='Hair.dmi'
		icon_state="short7m"
		mouse_opacity=2
		Click()
			usr.hair = "short7m"
			var/hairover = 'Short7.dmi'
			usr.hairSelect(hairover)

	Short8
		icon='Hair.dmi'
		icon_state="short8m"
		mouse_opacity=2
		Click()
			usr.hair = "short8m"
			var/hairover = 'Short8.dmi'
			usr.hairSelect(hairover)

	Short9
		icon='Hair.dmi'
		icon_state="short9m"
		mouse_opacity=2
		Click()
			usr.hair = "short9m"
			var/hairover = 'Short9.dmi'
			usr.hairSelect(hairover)

	Short10
		icon='Hair.dmi'
		icon_state="short10m"
		mouse_opacity=2
		Click()
			usr.hair = "short10m"
			var/hairover = 'Short10.dmi'
			usr.hairSelect(hairover)

	Long1
		icon='Hair.dmi'
		icon_state="long1m"
		mouse_opacity=2
		Click()
			usr.hair = "long1m"
			var/hairover = 'Long1.dmi'
			usr.hairSelect(hairover)


	Long2
		icon='Hair.dmi'
		icon_state="long2m"
		mouse_opacity=2
		Click()
			usr.hair = "long2m"
			var/hairover = 'Long2.dmi'
			usr.hairSelect(hairover)

	Long3
		icon='Hair.dmi'
		icon_state="long3m"
		mouse_opacity=2
		Click()
			usr.hair = "long3m"
			var/hairover = 'Long3.dmi'
			usr.hairSelect(hairover)

	Long4
		icon='Hair.dmi'
		icon_state="long4m"
		mouse_opacity=2
		Click()
			usr.hair = "long4m"
			var/hairover = 'Long4.dmi'
			usr.hairSelect(hairover)

	Tail1
		icon='Hair.dmi'
		icon_state="tail1m"
		mouse_opacity=2
		Click()
			usr.hair = "tail1m"
			var/hairover = 'Tail1.dmi'
			usr.hairSelect(hairover)

	Tail2
		icon='Hair.dmi'
		icon_state="tail2m"
		mouse_opacity=2
		Click()
			usr.hair = "tail2m"
			var/hairover = 'Tail2.dmi'
			usr.hairSelect(hairover)

	Mohawk
		icon='Hair.dmi'
		icon_state="mohawkm"
		mouse_opacity=2
		Click()
			usr.hair = "mohawkm"
			var/hairover = 'Mohawk.dmi'
			usr.hairSelect(hairover)

	CornRows
		icon='Hair.dmi'
		icon_state="cornrowsm"
		mouse_opacity=2
		Click()
			usr.hair = "cornrowsm"
			var/hairover = 'Cornrows.dmi'
			usr.hairSelect(hairover)


	Afro
		icon='Hair.dmi'
		icon_state="afrom"
		mouse_opacity=2
		Click()
			usr.hair = "afrom"
			var/hairover = 'Afro.dmi'
			usr.hairSelect(hairover)

	Squarecut
		icon='Hair.dmi'
		icon_state="squarecutm"
		mouse_opacity=2
		Click()
			usr.hair = "squarecutm"
			var/hairover = 'SquareCut.dmi'
			usr.hairSelect(hairover)

	Monk
		icon='Hair.dmi'
		icon_state="monkm"
		mouse_opacity=2
		Click()
			usr.hair = "monkm"
			var/hairover = 'Monk.dmi'
			usr.hairSelect(hairover)

	Ponytail
		icon='Hair.dmi'
		icon_state="pony tailm"
		mouse_opacity=2
		Click()
			usr.hair = "pony tailm"
			var/hairover = 'Ponytail.dmi'
			usr.hairSelect(hairover)

	DoubleBun
		icon='Hair.dmi'
		icon_state="doublebunm"
		mouse_opacity=2
		Click()
			usr.hair = "doublebunm"
			var/hairover = 'DoubleBun.dmi'
			usr.hairSelect(hairover)

	DoubleBun2
		icon='Hair.dmi'
		icon_state="doublebun2m"
		mouse_opacity=2
		Click()
			usr.hair = "doublebun2m"
			var/hairover = 'DoubleBun2.dmi'
			usr.hairSelect(hairover)

	Pigtails
		icon='Hair.dmi'
		icon_state="pigtailsm"
		mouse_opacity=2
		Click()
			usr.hair = "pigtailsm"
			var/hairover = 'Pigtails.dmi'
			usr.hairSelect(hairover)

	Pigtails2
		icon='Hair.dmi'
		icon_state="pigtails2m"
		mouse_opacity=2
		Click()
			usr.hair = "pigtails2m"
			var/hairover = 'Pigtails2.dmi'
			usr.hairSelect(hairover)
turf
	New
		mouse_opacity=2
		Click()
			var/name = input("","Choose your name") as text|null
			if(length(name) < 2)
				alert("Your name must be longer than 2 letters!")
				return
			usr.name="[html_encode(name)]"
			switch(input("Are you male or female?","Gender Selection", text) in list ("Male","Female"))
				if("Male")
					usr.loc = locate(27,147,2)
					usr.client.eye = locate(29,144,2)
					usr.client.perspective = EYE_PERSPECTIVE
					alert("Choose your character's base")
					usr.sex = "Male"
					usr.Frozen=1
				if("Female")
					usr.loc = locate(45,145,2)
					usr.client.eye = locate(47,143,2)
					usr.client.perspective = EYE_PERSPECTIVE
					alert("Choose your character's base")
					usr.sex = "Female"
					usr.Frozen=1
	Load
		mouse_opacity = 2
		Click()
			usr.LoadPlayer()
	Next
		mouse_opacity=2
		Click()
			switch(input("Select your Class","Class Selection", text) in list ("Knight Red","Samurai Green","Thief Blue","White Mage Yellow",
			"Knight Gold","Ninja Silver","Fighter Crystal","Archer Ruby","Beast Master Sapphire","Black Mage Emerald",
			"Protector Diamond","Protector Pearl","Summoner Platinum","Gunner White","Knight Black"))
				if("Knight Red")
					usr.class = "Knight"
					usr.dexHolder = "Red"
				if("Samurai Green")
					usr.class = "Samurai"
					usr.dexHolder = "Green"
				if("Thief Blue")
					usr.class = "Thief"
					usr.dexHolder = "Blue"
				if("White Mage Yellow")
					usr.class = "White Mage"
					usr.dexHolder = "Yellow"
				if("Knight Gold")
					usr.class = "Knight"
					usr.dexHolder = "Gold"
				if("Ninja Silver")
					usr.class = "Ninja"
					usr.dexHolder = "Silver"
				if("Fighter Crystal")
					usr.class = "Fighter"
					usr.dexHolder = "Crystal"
				if("Archer Ruby")
					usr.class = "Archer"
					usr.dexHolder = "Ruby"
				if("Beast Master Sapphire")
					usr.class = "Beast Master"
					usr.dexHolder = "Sapphire"
				if("Black Mage Emerald")
					usr.class = "Black Mage"
					usr.dexHolder = "Emerald"
				if("Protector Diamond")
					usr.class = "Protector"
					usr.dexHolder = "Diamond"
				if("Protector Pearl")
					usr.class = "Protector"
					usr.dexHolder = "Pearl"
				if("Summoner Platinum")
					usr.class = "Summoner"
					usr.dexHolder = "Platinum"
				if("Gunner White")
					usr.class = "Gunner"
					usr.dexHolder = "White"
				if("Knight Black")
					usr.class = "Knight"
					usr.dexHolder = "Black"
			usr.loc=locate(64,16,1)
			usr.client.eye=usr
			usr.client.perspective = MOB_PERSPECTIVE
			usr.client.view = 4
			usr.Frozen = 0
			if(usr.sex == "Male")
				var/obj/T_Shirt/T = new/obj/T_Shirt
				T.loc = usr
				var/obj/Pants/P = new/obj/Pants
				P.loc = usr
			if(usr.sex == "Female")
				var/obj/Female_TShirt/T = new/obj/Female_TShirt
				T.loc = usr
				var/obj/Mini_Skirt/P = new/obj/Mini_Skirt
				P.loc = usr
				var/obj/Tank_Top/Tank = new/obj/Tank_Top
				Tank.loc = usr
	ClassSelect
		icon = 'class selector.jpg'
		layer = 2
		mouse_opacity = 0
	Login
		icon = 'Login.png'
		mouse_opacity=0
	BaseSelect
		icon='Base Select.jpg'
		layer=2
		mouse_opacity=0