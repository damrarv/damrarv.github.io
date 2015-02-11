mob/var
	xco=0
	yco=0
	zco=0
	PVerbs
mob/proc
	AutoSave()
		src.PrivateSave()
		spawn(500)
			src.AutoSave()
	SaveP()
		var/savefile/F = new ("players/[src.key].sav")
		src.PVerbs = src.verbs
		src.xco = src.x
		src.yco = src.y
		src.zco = src.z
		Write(F)
		src << "<font color = green><b>Your game has been saved"
	PrivateSave()
		var/savefile/F = new ("players/[src.key].sav")
		src.PVerbs = src.verbs
		src.xco = src.x
		src.yco = src.y
		src.zco = src.z
		Write(F)
	LoadPlayer()
		if(fexists("players/[src.key].sav"))
			var/savefile/F = new("players/[src.key].sav")
			Read(F)
			for(var/stuff in src.PVerbs)
				src.verbs += stuff
			world<<"<font color = green><B>[src]([src.key]) has logged in"
			src.loc = locate(xco,yco,zco)
		else
			alert("No file found")
mob/verb
	Save_Now()
		set name = "Save"
		SaveP()
