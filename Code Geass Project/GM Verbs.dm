mob/GM1
	verb
		MusicPlay(S as sound)
			set name = "Play World Music"
			set category = "Staff"
			world << sound(S,0)
			world << "[src.name] plays [S] for us!"
		MusicStop()
			set name = "Stop World Music"
			set category = "Staff"
			world << sound(null)
			world << "[src.name] has stopped the music!"
		MusicPlayV(S as sound)
			set name = "Play View Music"
			set category = "Staff"
			view() << sound(S,0)
			view() << "[src.name] plays [S] for us!"
		MusicStopV()
			set name = "Stop View Music"
			set category = "Staff"
			view() << sound(null)
			view() << "[src.name] has stopped the music!"
		Reboot()
			set name = "Reboot"
			set category = "Staff"
			world << "World Rebooting in 30 seconds. Save!"
			text2file("[time2text(world.realtime)]: [usr] rebooted world<BR>","GMlog.html")
			sleep(300)
			world << "Reboot in 5"
			sleep(10)
			world << "4"
			sleep(10)
			world << "3"
			sleep(10)
			world << "2"
			sleep(10)
			world << "1"
			sleep(10)
			world.Reboot()
		Summon(mob/M in world)
			set name = "Summon"
			set category = "Staff"
			if(M != src)
				M.loc = locate(usr.x,usr.y-1,usr.z)
				src.dir = SOUTH
				M << "<font color=red><B>You have been summoned by [src.name]"
				if(usr.GM==1||usr.GM==2||usr.GM==3)
					text2file("[time2text(world.realtime)]: [src] has summoned [M]<BR>","GMlog.html")
		Teleport(mob/M in world)
			set popup_menu = 0
			set category = "Staff"
			M << "<font color=red>[usr] teleports next to you"
			usr << "<font color=red>You teleport next to [M]"
			usr.loc = locate(M.x,M.y-1,M.z)
		Mute(mob/M as mob in world,msg as text)
			set category = "Enforcer"
			M.OOC = 0
			world << "<font color=red><font size=1><B>[src] mutes [M] for [msg]"
			text2file("[time2text(world.realtime)]: [M] was muted by [usr] for [msg]<BR>","GMlog.html")
		Unmute(mob/M as mob in world)
			set category = "Enforcer"
			M.OOC = 1
			world << "<font color=red><font size=1><B>[src] unmutes [M]"
			text2file("[time2text(world.realtime)]: [M] was unmuted by [usr]<BR>","GMlog.html")
		GMOOC(msg as text)
			set category = "Staff"
			set name = "GM OOC"
			for(var/mob/M in world)
				if(M.GM)
					M<<"<font color=blue>(GM OOC)( [usr]: [msg] )"

mob/GM2
	verb
		World_Mute()
			set category = "Enforcer"
			set name = "Mute World"
			world << "<b><font size=1>[src] mutes the world!"
			Worldmute=0
		World_Unmute()
			set category = "Enforcer"
			set name = "Unmute World"
			world << "<b><font size=1>[src] unmutes the world!"
			Worldmute=1
		Rename(mob/M as mob in world, ID as text)
			set category="Enforcer"
			set desc="Change A Mob's ID"
			if(length(ID) <= 2)
				src<<"<font color = red> Their name must be longer then 2 characters!"
			else
				src<<"You rename [M] as [ID]"
				text2file("[time2text(world.realtime)]: [usr] has renamed [M] as [ID]<BR>","GMlog.html")
				M.name=ID
		Boot()
			set name = "Boot"
			set category = "Enforcer"
			var/varPeople = list()
			for(var/mob/T in world)
				varPeople += T
			var/M = input("Who would you like to boot?","Boot") in varPeople + list("Cancel")
			if(M == "Cancel")
				return
			if(src.client)
				if(M == src)
					src << "You can't boot yourself!"
					return
				if(M:GM == 5)
					src << "Can't boot level 5 GMs!"
				if(M:GM>usr:GM)
					usr<<"You cannot boot someone higher ranking that you are."
					return
				else
					if(M != null)
						var/R = input("Why are you booting [M:name]?","Boot") as text|null
						if(R == "" || R == null)
							usr<<"You MUST have a reason"
						else
							world << "[M:name]'s has been booted off the game for \"[R]\""
							text2file("[time2text(world.realtime)]: [usr] boots [M] for [R]<BR>","GMlog.html")
							del(M)

mob/GM3
	verb
		Edit(var/O as obj|mob|turf in view(src))
			set name = "Edit"
			set category = "Staff"
			var/variable = input("Which variable?","Variable") in O:vars + list("Cancel")
			if(variable == "Cancel")
				return
			var/default
			var/typeof = O:vars[variable]
			if(isnull(typeof))
				default = "Text"
			else if(isnum(typeof))
				default = "Num"
			else if(istext(typeof))
				default = "Text"
			else if(isloc(typeof))
				default = "Reference"
			else if(isicon(typeof))
				typeof = "\icon[typeof]"
				default = "Icon"
			else if(istype(typeof,/atom) || istype(typeof,/datum))
				default = "Type"
			else if(istype(typeof,/list))
				default = "List"
			else if(istype(typeof,/client))
				default = "Cancel"
			else
				default = "File"
			var/class = input("What kind of variable?","Variable Type",default) in list("Text","Num","Type","Reference","Icon","File","Restore to default","List","Null","Cancel")
			switch(class)
				if("Cancel")
					return
				if("Restore to default")
					O:vars[variable] = initial(O:vars[variable])
					text2file("[time2text(world.realtime)]: [O] was restored to default by [usr]<BR>","GMlog.html")
				if("Text")
					O:vars[variable] = input("Enter new text:","Text",O:vars[variable]) as text
					text2file("[time2text(world.realtime)]: [O] had one of his [variable] edited with text by [usr]<BR>","GMlog.html")
				if("Num")
					O:vars[variable] = input("Enter new number:","Num",O:vars[variable]) as num
					text2file("[time2text(world.realtime)]: [O] had one of his [variable] edited with numbers by [usr]<BR>","GMlog.html")
				if("Type")
					O:vars[variable] = input("Enter type:","Type",O:vars[variable]) in typesof(/obj,/mob,/area,/turf)
				if("Reference")
					O:vars[variable] = input("Select reference:","Reference",O:vars[variable]) as mob|obj|turf|area in world
				if("File")
					O:vars[variable] = input("Pick file:","File",O:vars[variable]) as file
				if("Icon")
					O:vars[variable] = input("Pick icon:","Icon",O:vars[variable]) as icon
				if("List")
					input("This is what's in [variable]") in O:vars[variable] + list("Close")
				if("Null")
					if(alert("Are you sure you want to clear this variable?","Null","Yes","No") == "Yes")
						O:vars[variable] = null
		Coords(varX as num, varY as num, varZ as num)
			set name = "Coordinate Teleport"
			set category = "Staff"
			set desc = "Teleport to a certain coordinate"
			if(varX > world.maxx)
				src.x = world.maxx
			else
				if(varX < 1)
					src.x = 1
			if(varY > world.maxy)
				src.y = world.maxy
			else
				if(varY < 1)
					src.y = 1
			if(varZ > world.maxz)
				src.z = world.maxz
			else
				if(varZ < 1)
					src.z = 1
			src.loc = locate(varX,varY,varZ)
		Create()
			set name = "Create"
			set category = "Staff"
			var/varItem
			var/varType = input("What do you want to create?","Create") in list("Object","Mob","Turf","Cancel")
			if(varType == "Cancel")
				return
			if(varType == "Object")
				varItem = input("What do you want to make?","Create obj") in typesof(/obj) + list("Cancel")
			if(varType == "Mob")
				varItem = input("What do you want to make?","Create mob") in typesof(/mob) + list("Cancel")
			if(varType == "Turf")
				varItem = input("What do you want to make?","Create turf") in typesof(/turf) + list("Cancel")
			if(varItem == "Cancel")
				return
			new varItem(locate(src.x,src.y,src.z))
			text2file("[time2text(world.realtime)]: [usr] just used the create verb to make a [varItem]<BR>","GMlog.html")

mob/GM4
	verb
		EavesdropMode()
			set name = "Eavesdrop Mode"
			set category = "Staff"
			for(var/mob/M in world)
				M.eavesdrop = 1
			usr<<"Eavesdrop mode, activated."
		StopEavesdropMode()
			set name = "Stop Eavesdrop Mode"
			set category = "Staff"
			for(var/mob/M in world)
				M.eavesdrop = 0
			usr<<"Eavesdrop mode, deactivated."
		Eavesdrop(mob/M in world)
			set name = "Eavesdrop"
			set category = "Staff"
			M.eavesdrop=1
			usr<<"Eavesdropping on [M]."
		StopEavesdrop(mob/M in world)
			set name = "Stop Eavesdropping"
			set category = "Staff"
			M.eavesdrop=0
			usr<<"Done eavesdropping on [M]."
		Watch()
			set name = "Watch Player"
			set category = "Staff"
			if(usr.watching)
				usr.watching=0
				usr.client.eye=usr
				usr.client.perspective = MOB_PERSPECTIVE
				usr<<"You stop watching."
			else
				var/PList = list()
				for(var/mob/M in world)
					if(M!=usr)
						PList += M
				var/P = input("Who do you want to watch?","Watch") in PList + list("Cancel")
				if(P!="Cancel")
					for(var/mob/T in world)
						if(P==T)
							usr.client.eye=T
							usr.client.perspective = EYE_PERSPECTIVE
							usr.watching=1
							usr<<"You watch [T]"
							return