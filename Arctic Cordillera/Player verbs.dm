//Player commands
//This is a Geography board game about the Arctic Cordillera created by Richard Damra and Sharujan Navabalan
mob
	verb
		WorldSay(msg as text)
			set name = "World Say"
			world << "[usr]: [msg]"


client
	command_text = "World Say "


