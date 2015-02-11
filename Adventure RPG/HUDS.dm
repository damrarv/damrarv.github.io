obj/hud
	Rest
		icon = 'HUDS.dmi'
		icon_state = "resting"
		screen_loc = "5,1"
		Click()
			usr.Rest()
	Save
		icon = 'HUDS.dmi'
		icon_state = "Save"
		screen_loc = "6,1"
		Click()
			usr.SaveP()
	Who
		icon = 'HUDS.dmi'
		icon_state = "who"
		screen_loc = "4,1"
		Click()
			var/tmp/C = 0
			for(var/mob/M in world)
				if(M.client&&M.AFK == 1)
					C += 1
					usr<<"<b><font color = black>[M.name]: (AFK)"
				else if (M.client)
					C += 1
					usr<<"<b><font color = black>[M.name]"
			usr << "<font size = 1>There are [C] Players Online"
	Whisper
		icon = 'HUDS.dmi'
		icon_state = "whisper"
		screen_loc = "3,1"
		Click()
			var/people = list()
			for(var/mob/P in oview())
				people += P
			var/M = input("Who do you want to whisper to?","Whisper") in people + list("Cancel")
			if(M != "Cancel")
				var.msg = input("What would you like to whisper to [M]","Whisper") as text
				M<<"<font size = 2><i><b>[usr] whispers - [msg]"
				usr<<"<font size = 2><i><b>You whisper to [M] - [msg]"
	Say
		icon = 'HUDS.dmi'
		icon_state = "say"
		screen_loc = "2,1"
		Click()
			var/msg = input("What would you like to say","Say") as text
			view(usr)<<"<font face = verdana><b>[usr] Says: [msg]"
	World_Chat
		icon = 'HUDS.dmi'
		icon_state = "OOC"
		screen_loc = "1,1"
		Click()
			var/msg = input("What do you want to say to the world?","World Chat") as text
			if(length(msg) >= 250)
				alert("Your message is too long")
				return
			else if(usr.AFK)
				world << "[usr] has returned from AFK"
				usr.AFK = 0
				world << "<font size = 1><font face = verdana><B>[usr.name] Says: [msg]"
			else
				world << "<font size = 1><font face = verdana><B>[usr.name] Says: [msg]"

mob/proc
	LoadHUDS()
		var/obj/hud/Save/A= new/obj/hud/Save
		src.client.screen += A
		var/obj/hud/Rest/B= new/obj/hud/Rest
		src.client.screen += B
		var/obj/hud/Whisper/C= new/obj/hud/Whisper
		src.client.screen += C
		var/obj/hud/World_Chat/E= new/obj/hud/World_Chat
		src.client.screen += E
		var/obj/hud/Say/S= new/obj/hud/Say
		src.client.screen += S
		var/obj/hud/Who/W= new/obj/hud/Who
		src.client.screen += W