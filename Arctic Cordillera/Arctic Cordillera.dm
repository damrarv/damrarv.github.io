//This is a Geography board game about the Arctic Cordillera created by Richard Damra and Sharujan Navabalan
client
	New()
		..()
	script = "<STYLE>BODY {background: silver; color: black}  IMG.icon{width:30;height:30}</STYLE>"

world
	hub = "Proto100.ArcticCordillera"
	name = "Arctic Cordillera"
	status = "<font size=1><font face=verdana><font color=blue>Richard's Server"
	view=7
	loop_checks=0

mob/Login()
	src.loc = locate(8,7,1)
	src.client.view=9
	src<<"<font color=blue><font size=2><B>Welcome to Arctic Cordillera Board Game Made By: Richard Damra"
	src.GameInstructions()
	world<<"<font size=3><font color=blue> [src] has logged in."
	switch(input("Pick a Colour.","Choose your base icon.", text) in list ("Blue","Green","Red","Black","Pink"))
		if("Blue")
			icon='BluePresent.dmi'
		if("Green")
			icon='GreenPresent.dmi'
		if("Red")
			icon='RedPresent.dmi'
		if("Black")
			icon='BlackPresent.dmi'
		if("Pink")
			icon='PinkPresent.dmi'



mob
	Logout()
		world<<"<font size=2><font color =black><B>Information: <font color = black>[src] Logged out"

