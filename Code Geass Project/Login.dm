
mob/Login()
	src.loc=locate(6,192,1)
	src.client.view=4
	if(src.key=="Mega99"||src.key=="Hippotoilet"||src.key=="Proto100"||src.key=="FangBlade")
		src.verbs += typesof(/mob/GM1/verb)
		src.verbs += typesof(/mob/GM2/verb)
		src.verbs += typesof(/mob/GM3/verb)
		src.verbs += typesof(/mob/GM4/verb)
		src.GM=5
	if(src.key==""||src.key=="Svetimasxxx"||src.key=="Zane444"||src.key=="BrokenRuler"||src.key=="Sarasha")
		src.verbs += typesof(/mob/GM1/verb)
		src.verbs += typesof(/mob/GM2/verb)
		src.verbs += typesof(/mob/GM3/verb)
		src.GM=3
	if(src.key=="I hate trees"||src.key=="VietBunny"||src.key=="Nrutoster")
		src.verbs += typesof(/mob/GM1/verb)
		src.verbs += typesof(/mob/GM2/verb)
		src.GM=2
	if(src.key=="DarkNights")
		src.verbs += typesof(/mob/GM1/verb)
		src.GM=1

turf
	Login
		icon = 'Login.png'
		mouse_opacity=0
	Homeland
		icon='Homeland.jpg'
		mouse_opacity=0
	BaseSelect
		icon='Base Select.jpg'
		layer=2
		mouse_opacity=0
	Grass
		icon='Grass.dmi'
	New
		mouse_opacity=2
		Click()
			var/name = input("","Choose your name") as text|null
			if(length(name) < 2)
				alert("Your name must be longer than 2 letters!")
				return
			if(length(name) > 40)
				alert("Your name can not be longer then 40 letters!")
				return
			usr.name="[html_encode(name)]"
			if(usr.name=="Lelouch")
				usr<<"NO NPC names STOP TRING NOW OR RISK IP BAN!"
				return
			if(usr.name=="LELOUCH")
				usr<<"NO NPC names STOP TRING NOW OR RISK IP BAN!"
				return
			if(usr.name=="lelouch")
				usr<<"NO NPC names STOP TRING NOW OR RISK IP BAN!"
				return
			if(usr.name=="Suzaku")
				usr<<"NO NPC names STOP TRING NOW OR RISK IP BAN!"
				return
			if(usr.name=="SUZAKU")
				usr<<"NO NPC names STOP TRING NOW OR RISK IP BAN!"
				return
			if(usr.name=="suzaku")
				usr<<"NO NPC names STOP TRING NOW OR RISK IP BAN!"
				return
			switch(input("Are you male or female?","Gender Selection", text) in list ("Male","Female"))
				if("Male")
					usr.loc = locate(4,180,1)
					usr.client.eye = locate(6,177,1)
					usr.client.perspective = EYE_PERSPECTIVE
					alert("Choose your character's base")
					usr.Frozen=1
				if("Female")
					usr.loc = locate(4,163,1)
					usr.client.eye = locate(6,161,1)
					usr.client.perspective = EYE_PERSPECTIVE
					alert("Choose your character's base")
					usr.Frozen=1
	Next
		mouse_opacity=2
		Click()
			if(usr.BaseSelected)
				usr.client.eye = locate(25,193,1)
				usr.client.perspective = EYE_PERSPECTIVE
			else
				alert("You must select your character base first!")
	China
		mouse_opacity=2
		Click()
			switch(input("Are you sure you would like to be born as a Chinese citizen?","Homeland Selection",text) in list ("Yes","No"))
				if("Yes")
					usr.Homeland="China"
					alert("Your homeland is now China")
				if("No")
					alert("Please choose another Homeland")
					return
	Britannia
		mouse_opacity=2
		Click()
			switch(input("Are you sure you would like to be born as a Britannian citizen?","Homeland Selection",text) in list ("Yes","No"))
				if("Yes")
					usr.Homeland="Britannia"
					alert("Your homeland is now Britannia")
				if("No")
					alert("Please choose another Homeland")
					return
	Japan
		mouse_opacity=2
		Click()
			switch(input("Are you sure you would like to be born as a Japanese citizen?","Homeland Selection",text) in list ("Yes","No"))
				if("Yes")
					usr.Homeland="Japanese"
					alert("Your homeland is now Japan")
				if("No")
					alert("Please choose another Homeland")
					return
	Finish
		mouse_opacity=2
		Click()
			if(usr.Homeland=="")
				alert("You haven't choosen your homeland yet!")
				return
			else
				usr<<"You have been born as a [usr.Homeland] citizen"
				usr.loc=locate(85,43,2)
				usr.client.eye=usr
				usr.client.perspective = MOB_PERSPECTIVE
				usr.client.view=4
				usr.Frozen=0




obj
	Male
		icon='Base_M.dmi'
		mouse_opacity=2
		Click()
			usr.icon='Base_M.dmi'
			usr.Oicon='Base_M.dmi'
			usr.BaseSelected=1

obj
	Female
		icon='Base_F.dmi'
		mouse_opacity=2
		Click()
			usr.icon='Base_F.dmi'
			usr.Oicon='Base_F.dmi'
			usr.BaseSelected=1
