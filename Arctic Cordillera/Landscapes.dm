//This is a Geography board game about the Arctic Cordillera created by Richard Damra and Sharujan Navabalan

obj
	Icepillarbottom
		icon='Icepillars.dmi'
		icon_state="bottom"
		density=1
	Icepillarmiddle
		icon='Icepillars.dmi'
		icon_state="middle"
		density=1
	Icepillartop
		icon='Icepillars.dmi'
		icon_state="top"
		density=1
	BlackPresent
		icon='BlackPresent.dmi'
		density=1
	BluePresent
		icon='BluePresent.dmi'
		density=1
	GreenPresent
		icon='GreenPresent.dmi'
		density=1
	PinkPresent
		icon='PinkPresent.dmi'
		density=1
	RedPresent
		icon='RedPresent.dmi'
		density=1
	Icepillarsmall
		icon='Icepillars.dmi'
		icon_state="small"
		density=1
	S
		icon='Start.dmi'
		icon_state="S"
	T
		icon='Start.dmi'
		icon_state="T"
	A
		icon='Start.dmi'
		icon_state="A"
	R
		icon='Start.dmi'
		icon_state="R"
	Bones
		icon='Bones.dmi'
	F
		icon='Finish.dmi'
		icon_state="F"
	I
		icon='Finish.dmi'
		icon_state="I"
	N
		icon='Finish.dmi'
		icon_state="N"
	S
		icon='Finish.dmi'
		icon_state="S"
	H
		icon='Finish.dmi'
		icon_state="H"

turf
	Ice1
		icon='Landscapes.dmi'
		icon_state="Ice1"
	Ice2
		icon='Landscapes.dmi'
		icon_state="Ice2"
	Ice3
		icon='Landscapes.dmi'
		icon_state="Ice3"
	Waterpath
		icon='Landscapes.dmi'
		icon_state="Waterpath"
	Rock
		icon='Landscapes.dmi'
		icon_state="Rock"
		density=1
	Snow
		icon='Landscapes.dmi'
		icon_state="Snow"
	Snow2
		icon='Landscapes.dmi'
		icon_state="Snow2"
	Snow3
		icon='Landscapes.dmi'
		icon_state="Snow3"
	SnowFlakes
		icon='Landscapes.dmi'
		icon_state="Snowfall"
	Grass
		icon='Landscapes.dmi'
		icon_state="Grass"
	Grass2
		icon='Landscapes.dmi'
		icon_state="Grass2"
	Grass3
		icon='Landscapes.dmi'
		icon_state="Grass3"
	Water
		icon='Landscapes.dmi'
		icon_state="Water"
	Water2
		icon='Landscapes.dmi'
		icon_state="Water2"
	Water3
		icon='Landscapes.dmi'
		icon_state="Water3"
	QuestionTurf
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,4)
					if(M.random==1)
						switch(input("What are the main landscapes of the Arctic Cordillera?","Answer the question to proceed.", text) in list ("Flat Land.","Mountainious Land.","Bumpy Hills.","Rocky Land.", "Grass Land."))
							if("Flat Land.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Mountainious Land.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(55,33,1)
								M.Frozen=0
								M.Froze=0
							if("Bumpy Hills.")
								usr<<"<font color=red>Wrong! You go back to the beggining. Your turn is over"
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Rocky Land.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-10,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Grass Land.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,25,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are 3 human activities the Arctic Cordillera people do?","Answer the question to proceed.", text) in list ("Hunting, Mining, Fishing", "Hunting, Fishing, Trapping.","Fishing, Skiing, Swimming.","Trapping, Farming, Fishing."))
							if("Hunting, Mining, Fishing")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Hunting, Fishing, Trapping.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(55,33,1)
								M.Frozen=0
								M.Froze=0
							if("Fishing, Skiing, Swimming.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-10,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Trapping, Farming, Fishing.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("What is the population of this ecozone?","Answer the question to proceed.", text) in list ("Almost 2000 People.","Almost 500 People.","Almost 1000 People.","Almost 1500 People.","Almost 700 People."))
							if("Almost 2000 People.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Almost 500 People.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Almost 1000 People.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(55,33,1)
								M.Frozen=0
								M.Froze=0
							if("Almost 1500 People.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,25,1)
								M.Frozen=0
								M.Froze=0
							if("Almost 700 People.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-10,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==4)
						switch(input("What are 3 major cities in this region?","Answer the question to proceed.",text) in list("Iqualit, Pond Inlet, Yellowknife.","Broughten Island, Hudson Bay, Whitehorse.","Ellesmere Island, Clyde River, Broughten Island.","Ponde Inlet, Clyde River, Broughten Island."))
							if("Iqualit, Pond Inlet, Yellowknife.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,25,1)
								M.Frozen=0
								M.Froze=0
							if("Broughten Island, Hudson Bay, Whitehorse.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Ellesmere Island, Clyde River, Broughten Island.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-10,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Ponde Inlet, Clyde River, Broughten Island.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(55,33,1)
								M.Frozen=0
								M.Froze=0
			else
				if(istype(A,/obj/)) del(A)



	QuestionTurf2
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("What are 3 human activities the Arctic Cordillera people do?","Answer the question to proceed.", text) in list ("Hunting, Mining, Fishing", "Hunting, Fishing, Trapping.","Fishing, Skiing, Swimming.","Trapping, Farming, Fishing."))
							if("Hunting, Mining, Fishing")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Hunting, Fishing, Trapping.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(60,4,1)
								M.Frozen=0
								M.Froze=0
							if("Fishing, Skiing, Swimming.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-10,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Trapping, Farming, Fishing.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What is the regular temperature in the winter?","Answer the question to proceed.", text) in list ("-29 Degrees.","-50 Degrees.","-40 Degrees.","-35 Degrees."))
							if("-29 Degrees.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("-50 Degrees.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,26,1)
								M.Frozen=0
								M.Froze=0
							if("-40 Degrees.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(60,4,1)
								M.Frozen=0
								M.Froze=0
							if("-35 Degrees.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("In the summer what is the temperature in Ellesmere mountains?","Answer the question to proceed",text) in list ("-2 Degrees.","5 Degrees.", "-6 Degrees.","0 Degrees."))
							if("-2 Degrees.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(60,4,1)
								M.Frozen=0
								M.Froze=0
							if("5 Degrees.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("-6 Degrees.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-10,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("0 Degrees.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,26,1)
								M.Frozen=0
								M.Froze=0

	QuestionTurf3
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,4)
					if(M.random==1)
						switch(input("What are the main landscapes of the Arctic Cordillera?","Answer the question to proceed.", text) in list ("Flat Land.","Mountainious Land.","Bumpy Hills.","Rocky Land.", "Grass Land."))
							if("Flat Land.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Mountainious Land.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(101,11,1)
								M.Frozen=0
								M.Froze=0
							if("Bumpy Hills.")
								usr<<"<font color=red>Wrong! You go back to the beggining. Your turn is over"
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Rocky Land.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-5,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Grass Land.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,25,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What is the regular temperature in the winter?","Answer the question to proceed.", text) in list ("-29 Degrees.","-50 Degrees.","-40 Degrees.","-35 Degrees."))
							if("-29 Degrees.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("-50 Degrees.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,26,1)
								M.Frozen=0
								M.Froze=0
							if("-40 Degrees.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(101,11,1)
								M.Frozen=0
								M.Froze=0
							if("-35 Degrees.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("Is there a lot of vegetation in the ecozone?","Answer the question to proceed.",text) in list ("Yes.","No."))
							if("Yes.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(101,11,1)
								M.Frozen=0
								M.Froze=0
							if("No.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==4)
						switch(input("In the summer what is the temperature in Ellesmere mountains?","Answer the question to proceed",text) in list ("-2 Degrees.","5 Degrees.", "-6 Degrees.","0 Degrees."))
							if("-2 Degrees.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(101,11,1)
								M.Frozen=0
								M.Froze=0
							if("5 Degrees.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("-6 Degrees.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-10,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("0 Degrees.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,26,1)
								M.Frozen=0
								M.Froze=0

	QuestionTurf4
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("What is the area of this ecozone?","Answer the question to proceed.",text) in list ("125 000 km.","239 000 km.","200 000 km.","150 000 km."))
							if("125 000 km.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("239 000 km.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(20,53,1)
								M.Frozen=0
								M.Froze=0
							if("200 000 km.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("150 000 km.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are the main landscapes of the Arctic Cordillera?","Answer the question to proceed.", text) in list ("Flat Land.","Mountainious Land.","Bumpy Hills.","Rocky Land.", "Grass Land."))
							if("Flat Land.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Mountainious Land.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(20,53,1)
								M.Frozen=0
								M.Froze=0
							if("Bumpy Hills.")
								usr<<"<font color=red>Wrong! You go back to the beggining. Your turn is over"
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Rocky Land.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-5,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Grass Land.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("What are the most common 3 types of birds visit the Arctic Cordillera?","Answer the question to proceed.",text) in list ("Hoary Redpoll, Little Ringed Plover, and Snow Bunting.","Hoary Redpoll, Little Ringed Plover, and Robins.","Little RInged Plover, Eagles, Parrot.","Hawk, Robin, Parrot."))
							if("Hoary Redpoll, Little Ringed Plover, and Snow Bunting.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(20,53,1)
								M.Frozen=0
								M.Froze=0
							if("Hoary Redpoll, Little Ringed Plover, and Robins.")
								usr<<"<font color=red>Wrong! You go back to the beggining. Your turn is over"
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Little RInged Plover, Eagles, Parrot.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Hawk, Robin, Parrot.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-5,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
	QuestionTurf5
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("What are the 3 kinds of rocks we learned about?","Answer the question to proceed.",text) in list ("Igneous Rock,Bedrock,and Sedimentary Rock.","Metamorphic Rock,Granite,and Limestone.","Sandstone,Sedimentary Rock,and Basalt.","Igneous Rock, Sedimentary Rock, and Metamorphic Rock."))
							if("Igneous Rock,Bedrock,and Sedimentary Rock.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Igneous Rock, Sedimentary Rock, and Metamorphic Rock.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(55,33,1)
								M.Frozen=0
								M.Froze=0
							if("Metamorphic Rock,Granite,and Limestone.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Sandstone,Sedimentary Rock,and Basalt.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are 3 human activities the Arctic Cordillera people do?","Answer the question to proceed.", text) in list ("Hunting, Mining, Fishing", "Hunting, Fishing, Trapping.","Fishing, Skiing, Swimming.","Trapping, Farming, Fishing."))
							if("Hunting, Mining, Fishing")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Hunting, Fishing, Trapping.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(55,33,1)
								M.Frozen=0
								M.Froze=0
							if("Fishing, Skiing, Swimming.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Trapping, Farming, Fishing.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("What are the soil like in the Tundra?","Answer the question to proceed.",text) in list ("Thin,mostly permafrost.","Acidy soil.","Wet soil.","Rich minerals."))
							if("Thin,mostly permafrost.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(55,33,1)
								M.Frozen=0
								M.Froze=0
							if("Acidy soil.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Wet soil.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Rich minerals.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y-1,usr.z)
								M.Frozen=0
								M.Froze=0
	QuestionTurf6
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("What are the 3 kinds of rocks we learned about?","Answer the question to proceed.",text) in list ("Igneous Rock,Bedrock,and Sedimentary Rock.","Metamorphic Rock,Granite,and Limestone.","Sandstone,Sedimentary Rock,and Basalt.","Igneous Rock, Sedimentary Rock, and Metamorphic Rock."))
							if("Igneous Rock,Bedrock,and Sedimentary Rock.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Igneous Rock, Sedimentary Rock, and Metamorphic Rock.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(83,50,1)
								M.Frozen=0
								M.Froze=0
							if("Metamorphic Rock,Granite,and Limestone.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Sandstone,Sedimentary Rock,and Basalt.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("An example of an Igneous rock includes:","Answer the questions to proceed.",text) in list ("Limestone,and Granite.","Marble, and Granite.","Sandstone, and Slate.","Granite, and Basalt."))
							if("Limestone,and Granite.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Marble, and Granite.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Sandstone, and Slate.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,27,1)
								M.Frozen=0
								M.Froze=0
							if("Granite, and Basalt.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(83,50,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("What are the main landscapes of the Arctic Cordillera?","Answer the question to proceed.", text) in list ("Flat Land.","Mountainious Land.","Bumpy Hills.","Rocky Land.", "Grass Land."))
							if("Flat Land.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Mountainious Land.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(83,50,1)
								M.Frozen=0
								M.Froze=0
							if("Bumpy Hills.")
								usr<<"<font color=red>Wrong! You go back to the beggining. Your turn is over"
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Rocky Land.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-5,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Grass Land.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,25,1)
								M.Frozen=0
								M.Froze=0
	QuestionTurf7
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("An example of an Igneous rock includes:","Answer the questions to proceed.",text) in list ("Limestone,and Granite.","Marble, and Granite.","Sandstone, and Slate.","Granite, and Basalt."))
							if("Limestone,and Granite.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Marble, and Granite.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Sandstone, and Slate.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,27,1)
								M.Frozen=0
								M.Froze=0
							if("Granite, and Basalt.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(49,82,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are the soil like in the Tundra?","Answer the question to proceed.",text) in list ("Thin,mostly permafrost.","Acidy soil.","Wet soil.","Rich minerals."))
							if("Thin,mostly permafrost.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(49,82,1)
								M.Frozen=0
								M.Froze=0
							if("Acidy soil.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Wet soil.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Rich minerals.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("What are the most common 3 types of birds visit the Arctic Cordillera?","Answer the question to proceed.",text) in list ("Hoary Redpoll, Little Ringed Plover, and Snow Bunting.","Hoary Redpoll, Little Ringed Plover, and Robins.","Little RInged Plover, Eagles, Parrot.","Hawk, Robin, Parrot."))
							if("Hoary Redpoll, Little Ringed Plover, and Snow Bunting.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(49,82,1)
								M.Frozen=0
								M.Froze=0
							if("Hoary Redpoll, Little Ringed Plover, and Robins.")
								usr<<"<font color=red>Wrong! You go back to the beggining. Your turn is over"
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Little RInged Plover, Eagles, Parrot.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Hawk, Robin, Parrot.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-3,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
	QuestionTurf8
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("What are 3 major cities in this region?","Answer the question to proceed.",text) in list("Iqualit, Pond Inlet, Yellowknife.","Broughten Island, Hudson Bay, Whitehorse.","Ellesmere Island, Clyde River, Broughten Island.","Ponde Inlet, Clyde River, Broughten Island."))
							if("Iqualit, Pond Inlet, Yellowknife.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(78,45,1)
								M.Frozen=0
								M.Froze=0
							if("Broughten Island, Hudson Bay, Whitehorse.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Ellesmere Island, Clyde River, Broughten Island.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-10,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Ponde Inlet, Clyde River, Broughten Island.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(35,108,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are the four main parts of soil?","Answer the question to proceed.", text) in list("Minerals,Bacteria&Organic Materials,Air,and Moisture.","Minerals,Leaching,Bedrock,and Topsoil.","Calcification,Sedimentary,Bedrock,and Basalt."))
							if("Minerals,Bacteria&Organic Materials,Air,and Moisture.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(35,108,1)
								M.Frozen=0
								M.Froze=0
							if("Minerals,Leaching,Bedrock,and Topsoil.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Calcification,Sedimentary,Bedrock,and Basalt.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(78,45,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("What types of vegetation are in the West Coast Forest?","Answer the question to proceed.",text)in list ("Douglas fir, and Red celar.","Cacti,and Coniferous.","Maple, and beech."))
							if("Douglas fir, and Red celar.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(35,108,1)
								M.Frozen=0
								M.Froze=0
							if("Cacti,and Coniferous.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(78,45,1)
								M.Frozen=0
								M.Froze=0
							if("Maple, and beech.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
	QuestionTurf9
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("What types of vegetation are in the West Coast Forest?","Answer the question to proceed.",text)in list ("Douglas fir, and Red celar.","Cacti,and Coniferous.","Maple, and beech."))
							if("Douglas fir, and Red celar.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(35,80,1)
								M.Frozen=0
								M.Froze=0
							if("Cacti,and Coniferous.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(78,45,1)
								M.Frozen=0
								M.Froze=0
							if("Maple, and beech.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What is the annual perciptation in this ecozone?","Answer the question to proceed.",text) in list("1000mm.","498mm.","600mm.","520mm."))
							if("1000mm.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("498mm.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(78,45,1)
								M.Frozen=0
								M.Froze=0
							if("600mm.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(35,80,1)
								M.Frozen=0
								M.Froze=0
							if("520mm.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-10,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("What are the 6 major components that Weather consist of?","Answer the question to proceed.",text) in list("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.","Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.","Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents."))
							if("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(35,80,1)
								M.Frozen=0
								M.Froze=0
							if("Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.")
								M.loc=locate(usr.x,usr.y-10,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(78,45,1)
								M.Frozen=0
								M.Froze=0
	QuestionTurf10
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("What are the 6 major components that Weather consist of?","Answer the question to proceed.",text) in list("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.","Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.","Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents."))
							if("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(141,4,1)
								M.Frozen=0
								M.Froze=0
							if("Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.")
								M.loc=locate(usr.x-5,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What is the annual perciptation in this ecozone?","Answer the question to proceed.",text) in list("1000mm.","498mm.","600mm.","520mm"))
							if("1000mm.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("498mm.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0
							if("600mm.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(141,4,1)
								M.Frozen=0
								M.Froze=0
							if("520mm.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-5,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("What are the four main parts of soil?","Answer the question to proceed.", text) in list("Minerals,Bacteria&Organic Materials,Air,and Moisture.","Minerals,Leaching,Bedrock,and Topsoil.","Calcification,Sedimentary,Bedrock,and Basalt."))
							if("Minerals,Bacteria&Organic Materials,Air,and Moisture.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(141,4,1)
								M.Frozen=0
								M.Froze=0
							if("Minerals,Leaching,Bedrock,and Topsoil.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Calcification,Sedimentary,Bedrock,and Basalt.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0
	QuestionTurf11
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("The Arctic Cordillera has the worlds most Spectacular Mountain Glacier Scenery.","Answer the question to proceed.",text) in list("True","False"))
							if("True")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(107,41,1)
								M.Frozen=0
								M.Froze=0
							if("False")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are the 6 major components that Weather consist of?","Answer the question to proceed.",text) in list("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.","Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.","Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents."))
							if("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(107,41,1)
								M.Frozen=0
								M.Froze=0
							if("Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.")
								M.loc=locate(usr.x,usr.y-3,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0

					if(M.random==3)
						switch(input("You can't see huge polar ice fields and airplance glaciers in this ecozone.","Answer the question to proceed.",text) in list("True","False"))
							if("True")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(107,41,1)
								M.Frozen=0
								M.Froze=0
							if("False")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
	QuestionTurf12
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("The Arctic Cordillera has the worlds most Spectacular Mountain Glacier Scenery.","Answer the question to proceed.",text) in list("True","False"))
							if("True")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(107,41,1)
								M.Frozen=0
								M.Froze=0
							if("False")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are the 6 major components that Weather consist of?","Answer the question to proceed.",text) in list("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.","Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.","Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents."))
							if("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(107,41,1)
								M.Frozen=0
								M.Froze=0
							if("Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.")
								M.loc=locate(usr.x-3,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0

					if(M.random==3)
						switch(input("You can't see huge polar ice fields and airplance glaciers in this ecozone.","Answer the question to proceed.",text) in list("True","False"))
							if("True")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(107,41,1)
								M.Frozen=0
								M.Froze=0
							if("False")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
	QuestionTurf13
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("The Arctic Cordillera has the worlds most Spectacular Mountain Glacier Scenery.","Answer the question to proceed.",text) in list("True","False"))
							if("True")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(79,141,1)
								M.Frozen=0
								M.Froze=0
							if("False")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What is the population of this ecozone?","Answer the question to proceed.", text) in list ("Almost 2000 People.","Almost 500 People.","Almost 1000 People.","Almost 1500 People.","Almost 700 People."))
							if("Almost 2000 People.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Almost 500 People.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Almost 1000 People.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(79,141,1)
								M.Frozen=0
								M.Froze=0
							if("Almost 1500 People.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,25,1)
								M.Frozen=0
								M.Froze=0
							if("Almost 700 People.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("Mountains are at least _______Meters above sea level.","Answer the question to proceed.",text) in list("900m","2000m","500m","1000m"))
							if("900m")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(79,141,1)
								M.Frozen=0
								M.Froze=0
							if("2000m")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("500m")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0
							if("1000m")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
	QuestionTurf14
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,3)
					if(M.random==1)
						switch(input("What are 2 factors that affect Climate?","Answer the question to proceed.",text) in list ("Ocean Current, and Wind Conditions.","Latitude and Ocean Current.","Temperature, and Forested Area.","Cloud Cover, and Forested Area."))
							if("Ocean Current, and Wind Conditions.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Latitude and Ocean Current.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(115,78,1)
								M.Frozen=0
								M.Froze=0
							if("Temperature, and Forested Area.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0
							if("Cloud Cover, and Forested Area.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-5,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("Mountains are at least _______Meters above sea level.","Answer the question to proceed.",text) in list("900m","2000m","500m","1000m"))
							if("500m")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(115,78,1)
								M.Frozen=0
								M.Froze=0
							if("2000m")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("900m")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0
							if("1000m")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-5,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==3)
						switch(input("You can't see huge polar ice fields and airplance glaciers in this ecozone.","Answer the question to proceed.",text) in list("True","False"))
							if("True")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(115,78,1)
								M.Frozen=0
								M.Froze=0
							if("False")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
	QuestionTurf15
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,2)
					if(M.random==1)
						switch(input("What are 2 factors that affect Climate?","Answer the question to proceed.",text) in list ("Ocean Current, and Wind Conditions.","Latitude and Ocean Current.","Temperature, and Forested Area.","Cloud Cover, and Forested Area."))
							if("Ocean Current, and Wind Conditions.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Latitude and Ocean Current.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(146,42,1)
								M.Frozen=0
								M.Froze=0
							if("Temperature, and Forested Area.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(23,31,1)
								M.Frozen=0
								M.Froze=0
							if("Cloud Cover, and Forested Area.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-5,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are the 6 major components that Weather consist of?","Answer the question to proceed.",text) in list("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.","Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.","Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents."))
							if("Temperature, Percipitation, Relative Humidity, Barometric Pressure, Wind Conditions, and Cloud Cover.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(146,42,1)
								M.Frozen=0
								M.Froze=0
							if("Transpiration,Precipitation,Downpour,Latitude,Evapouration, and Bodies of water.")
								M.loc=locate(usr.x,usr.y-5,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Cloud cover,Forested Area,Transpiration,Humidity,Bodies of Water,and Wind Currents.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(23,31,1)
								M.Frozen=0
								M.Froze=0

	QuestionTurf16
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,2)
					if(M.random==1)
						switch(input("What are the soil like in the Tundra?","Answer the question to proceed.",text) in list ("Thin,mostly permafrost.","Acidy soil.","Wet soil.","Rich minerals."))
							if("Thin,mostly permafrost.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(139,70,1)
								M.Frozen=0
								M.Froze=0
							if("Acidy soil.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Wet soil.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Rich minerals.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x,usr.y-3,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What are 3 major cities in this region?","Answer the question to proceed.",text) in list("Iqualit, Pond Inlet, Yellowknife.","Broughten Island, Hudson Bay, Whitehorse.","Ellesmere Island, Clyde River, Broughten Island.","Ponde Inlet, Clyde River, Broughten Island."))
							if("Iqualit, Pond Inlet, Yellowknife.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,25,1)
								M.Frozen=0
								M.Froze=0
							if("Broughten Island, Hudson Bay, Whitehorse.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Ellesmere Island, Clyde River, Broughten Island.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x,usr.y-5,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Ponde Inlet, Clyde River, Broughten Island.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(139,70,1)
								M.Frozen=0
								M.Froze=0

	QuestionTurf17
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,2)
					if(M.random==1)
						switch(input("What are the soil like in the Tundra?","Answer the question to proceed.",text) in list ("Thin,mostly permafrost.","Acidy soil.","Wet soil.","Rich minerals."))
							if("Thin,mostly permafrost.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(121,146,1)
								M.Frozen=0
								M.Froze=0
							if("Acidy soil.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Wet soil.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(39,11,1)
								M.Frozen=0
								M.Froze=0
							if("Rich minerals.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-3,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What is the annual perciptation in this ecozone?","Answer the question to proceed.",text) in list("1000mm.","498mm.","600mm.","520mm"))
							if("1000mm.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("498mm.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(25,53,1)
								M.Frozen=0
								M.Froze=0
							if("600mm.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(121,146,1)
								M.Frozen=0
								M.Froze=0
							if("520mm.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-5,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0

	QuestionTurf18
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,2)
					if(M.random==1)
						switch(input("What are 2 factors that affect Climate?","Answer the question to proceed.",text) in list ("Ocean Current, and Wind Conditions.","Latitude and Ocean Current.","Temperature, and Forested Area.","Cloud Cover, and Forested Area."))
							if("Ocean Current, and Wind Conditions.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Latitude and Ocean Current.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(121,135,1)
								M.Frozen=0
								M.Froze=0
							if("Temperature, and Forested Area.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(23,31,1)
								M.Frozen=0
								M.Froze=0
							if("Cloud Cover, and Forested Area.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(usr.x-2,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("What is Precipitation?","Answer the question to proceed.",text) in list("Moisture falling in the form of Rain,Hail,Sleet,or Snow.","Degree of heat in the atmosphere.","The air Pressure."))
							if("Moisture falling in the form of Rain,Hail,Sleet,or Snow.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(121,135,1)
								M.Frozen=0
								M.Froze=0
							if("Degree of heat in the atmosphere.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(23,31,1)
								M.Frozen=0
								M.Froze=0
							if("The air Pressure.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
	QuestionTurf19
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.Frozen=1
					M.Froze=1
					M.random=rand(1,2)
					if(M.random==1)
						switch(input("What is Precipitation?","Answer the question to proceed.",text) in list("Moisture falling in the form of Rain,Hail,Sleet,or Snow.","Degree of heat in the atmosphere.","The air Pressure."))
							if("Moisture falling in the form of Rain,Hail,Sleet,or Snow.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(126,128,1)
								M.Frozen=0
								M.Froze=0
							if("Degree of heat in the atmosphere.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(23,31,1)
								M.Frozen=0
								M.Froze=0
							if("The air Pressure.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
					if(M.random==2)
						switch(input("An example of an Igneous rock includes:","Answer the questions to proceed.",text) in list ("Limestone,and Granite.","Marble, and Granite.","Sandstone, and Slate.","Granite, and Basalt."))
							if("Limestone,and Granite.")
								usr<<"<font color=red>Wrong! You go back to the begginning. Your turn is over."
								M.loc=locate(8,7,1)
								M.Frozen=0
								M.Froze=0
							if("Marble, and Granite.")
								usr<<"<font color=red>Wrong! you go back one space and may not proceed. Your turn is over."
								M.loc=locate(usr.x-1,usr.y,usr.z)
								M.Frozen=0
								M.Froze=0
							if("Sandstone, and Slate.")
								usr<<"<font color=red>Wrong! You go back. Your turn is over."
								M.loc=locate(5,27,1)
								M.Frozen=0
								M.Froze=0
							if("Granite, and Basalt.")
								usr<<"<font color=green>Correct, you may proceed."
								M.loc=locate(126,128,1)
								M.Frozen=0
								M.Froze=0
	FinishTurf
		name = ""
		density = 0
		Enter(A)
			if(ismob(A))
				var/mob/M = A
				if(M.client)
					M.loc=locate(128,143,1)
					M<<"<font size=3><B><font color=red>Congradulations you have made it to the end of the game and the game will reboot/restart in 30 seconds for a new round."
			world << "<font size=3><font color=red><B>Game Rebooting in 30 seconds"
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



