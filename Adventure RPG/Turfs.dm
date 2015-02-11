
turf
	Dirt
		icon='Landscapes.dmi'
		icon_state="Dirt"
	Wall
		icon='Landscapes.dmi'
		icon_state="Wall"
	Dark_Grass
		icon='Landscapes.dmi'
		icon_state="DarkGrass"
	Grass
		icon='Landscapes.dmi'
		icon_state="Grass"
	Grass2
		icon='Landscapes.dmi'
		icon_state="Grass2"
	Dirt2
		icon='Landscapes.dmi'
		icon_state="Dirt2"
	Snow
		icon='Landscapes.dmi'
		icon_state="Snow"
	WaterPath
		icon='Landscapes.dmi'
		icon_state="Waterpath"
	Road
		icon='Landscapes.dmi'
		icon_state="Road"
	Stone_Path
		icon='Landscapes.dmi'
		icon_state="StoneFloor"
	BlackFloor
		icon='Landscapes.dmi'
		icon_state="BlackFloor"
	JailTurf
		icon='Landscapes.dmi'
		icon_state="JailTurf"
	CemPath1
		icon = 'Landscapes.dmi'
		icon_state = "cempath1"
	CemPath2
		icon = 'Landscapes.dmi'
		icon_state = "cempath2"
	CemPath3
		icon = 'Landscapes.dmi'
		icon_state = "cempath3"
	CemPath4
		icon = 'Landscapes.dmi'
		icon_state = "cempath4"
	CemPath5
		icon = 'Landscapes.dmi'
		icon_state = "cempath5"
	CemPath6
		icon = 'Landscapes.dmi'
		icon_state = "cempath6"
	CemPath7
		icon = 'Landscapes.dmi'
		icon_state = "cempath7"
	CemPath8
		icon = 'Landscapes.dmi'
		icon_state = "cempath8"
	CemPath9
		icon = 'Landscapes.dmi'
		icon_state = "cempath9"
	CemPath10
		icon = 'Landscapes.dmi'
		icon_state = "cempath10"
	Black_Floor
		icon = 'Landscapes.dmi'
		icon_state = "BlackFloor"
	Cement_Floor
		icon = 'Landscapes.dmi'
		icon_state = "Cement"
	Black_White_Floor
		icon = 'Landscapes.dmi'
		icon_state = "WhiteFloor"
	Water1
		icon = 'Landscapes.dmi'
		icon_state = "Water"
		density = 1
	Washroom_Floor
		icon = 'Landscapes.dmi'
		icon_state = "Washroom Floor"
	Cement_Floor2
		icon = 'Landscapes.dmi'
		icon_state = "Even more cement"
	New_Grass
		icon = 'Landscapes.dmi'
		icon_state = "New Grass"
	New_Grass2
		icon = 'Landscapes.dmi'
		icon_state = "New Grass2"
	School_Floor
		icon = 'Landscapes.dmi'
		icon_state = "School Floor"
	Fog
		icon = 'Landscapes.dmi'
		icon_state = "Fog"
	Blue_Wall
		icon = 'Landscapes.dmi'
		icon_state = "ripplestone wall"
	Jade_Wall
		icon = 'Landscapes.dmi'
		icon_state = "jadewall"
	Beach_Sand
		icon = 'Landscapes.dmi'
		icon_state = "beachsand"
obj
	FancyFountain
		icon = 'Landscapes.dmi'
		icon_state = "Fountain2"
		density=1
	PoolWater
		icon = 'Landscapes.dmi'
		icon_state= "poolwater"
	PoolCorner1
		icon = 'Landscapes.dmi'
		icon_state = "corner1"
	PoolCorner2
		icon = 'Landscapes.dmi'
		icon_state = "corner2"
	PoolCorner3
		icon = 'Landscapes.dmi'
		icon_state = "corner3"
	PoolCorner4
		icon = 'Landscapes.dmi'
		icon_state = "corner4"
	PoolSide1
		icon = 'Landscapes.dmi'
		icon_state = "side1"
	PoolSide2
		icon = 'Landscapes.dmi'
		icon_state = "side2"
	PoolSide3
		icon = 'Landscapes.dmi'
		icon_state = "side3"
	PoolSide4
		icon = 'Landscapes.dmi'
		icon_state = "side4"
	SmallTree
		icon = 'Landscapes.dmi'
		icon_state = "small tree"
		density = 1
	Tree2A
		icon = 'Landscapes.dmi'
		icon_state = "tree2a"
	Tree2B
		icon = 'Landscapes.dmi'
		icon_state = "tree2b"
	Tree3A
		icon = 'Landscapes.dmi'
		icon_state = "tree3a"
	Tree3B
		icon = 'Landscapes.dmi'
		icon_state = "tree3b"
	Bridge_Side
		icon = 'Landscapes.dmi'
		icon_state = "Bridge side"
	Bridge_Front
		icon = 'Landscapes.dmi'
		icon_state = "Bridge front"

area/Purge
	Enter()
		usr <<"Welcome to area"
		return ..()

mob/proc
	Die()
		loc = locate(/area/Purge)
mob/verb
	Kill_Me()
		Die()

mob/verb
	set_gender(G in list ("male","female"))
		gender = G
		usr << "You are \an [gender]"
	write_message(msg as message)
		desc = msg
	read()
		usr << browse(desc)

client/Topic(T)
	if (T == "intro")
		usr << "helllo"
	else ..()