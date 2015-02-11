mob/var
	level = 1
	MStr = 5
	Str = 5
	MDex = 5
	Dex = 5
	MInt = 5
	Int = 5
	MLuck = 5
	Luck = 5
	MDef = 50
	Def = 50
	M_MagicDef = 50
	MagicDef = 50
	Mhealth = 100
	health = 100
	Mmana = 100
	mana = 100
	Mexp = 50
	exp = 0
	money = 500
	class = ""
	dexHolder = ""
	tmp/Move_Delay = 0.5
	tmp/Frozen = 0
	tmp/Moveing = 0
	resting = 0
	AFK = 0
	hairselected = 0
obj/var
	worn = 0

mob
	Stat()
		statpanel("Stats")
		stat("-----------------------------------------")
		stat("           Status")
		stat("-----------------------------------------")
		stat("Name : [usr]")
		stat("Class: [class] [dexHolder]")
		stat("Money: $[money]")
		stat("Level: [level]")
		stat("Health: [health]/[Mhealth]")
		stat("Mana: [mana]/[Mmana]")
		stat("Strength: [Str]")
		stat("Dexterity: [Dex]")
		stat("Intelligence: [Int]")
		stat("Agility: [Luck]")
		stat("Defense: [Def]")
		stat("Magic Defense: [MagicDef]")
		stat("Experience: [exp]/[Mexp]")
		statpanel("Inventory")
		stat("",contents)

mob/proc
	Rest()
		if(usr.health < usr.Mhealth || usr.mana < usr.Mmana)
			usr.health += usr.Mhealth/50
			usr.mana += usr.Mmana/50
			if(usr.health > usr.Mhealth)
				usr.health = usr.Mhealth
			else if (usr.mana > usr.Mmana)
				usr.mana = usr.Mmana
			else if (usr.health == usr.Mhealth && usr.mana == usr.Mmana)
				usr.resting = 0
				usr.Frozen = 0
				usr<<"You finished resting"
				return
			usr.Frozen = 1
			sleep(30)
			Rest()
		else usr<<"You don't need to rest"

mob
	Move()
		if(src.Moveing || src.Frozen )
			return
		else
			src.Moveing = 1
			..()
			sleep(src.Move_Delay)
			src.Moveing = 0