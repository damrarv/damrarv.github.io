//Player Procedures
//This is a Geography board game about the Arctic Cordillera created by Richard Damra and Sharujan Navabalan




mob
	Move()
		if(src.Moveing || src.Frozen )
			return
		else
			src.Moveing = 1
			..()
			sleep(src.Move_Delay)
			src.Moveing = 0

mob/proc/GameInstructions.()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana;font-size: 10px}</STYLE>
		<head>
		<BODY>
		<title>Gaming Instructions</title>
		</head>
		<body bgcolor=#000000 text=#f5f5f5>

		<center><h2>The Game Instructions Are As Follows:<br></h2>
		<strong>The Instructions. Read!</strong><br>
		1.Use the arrow keys to move around<br>
		2.Once you come upon an object blocking your path it will most likely ask you a question when you get close enough.<br>
		3.All questions asked in the game are at random with at least 30 different questions.<br>
		4.Answer a question wrong, the consequences will vary from starting all over to being transported to another part of the board game and you may get lost.<br>
		5.Some questions will appear more than once, keep playing this and you will notice more different questions.<br>
		6.The objective of the game is to reach the end point and once you do the game will restart itself.<br>
		7.Your player look will be in a form of wrapped Christmas presents. You choose a colour at the beginning of the game.<br>
		8.Questions vary from Multiple choice to True or False Questions.<br>
		9.Have fun and play often.<br>
		<br>
		"}
	usr << browse(helptext)