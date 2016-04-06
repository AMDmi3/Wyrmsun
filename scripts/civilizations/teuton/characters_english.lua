--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2016 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

DefineCharacter("Ælle", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Ælle",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "York",
	DeathYear = 588, -- died
	HistoricalRulerships = {
		0, 588, "teuton", "Deira" -- first recorded king of Deira
	}
})

DefineCharacter("Ida", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Ida",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Northumberland",
	Year = 547, -- became king of Bernicia
	HistoricalRulerships = {
		547, 0, "teuton", "Bernicia" -- first king of Bernicia
	}
})

DefineCharacter("Theodric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Theodric", -- in his age, the Anglo-Saxons suffered a siege in Holy Island for three days
	NameElements = {
		"compound", "prefix", "old-english", "noun", "Þéod", -- presumably
--		"compound", "suffix", "old-english", -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Northumberland",
	Father = "Ida",
	HistoricalRulerships = {
		0, 0, "teuton", "Bernicia" -- presumably, since his father was king of Bernicia
	}
})

DefineCharacter("Æthelric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75-76.
	Name = "Æthelric",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Northumberland",
	Year = 588, -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	Father = "Ida", -- the source says that his son Æthelfrith was grandson of Ida
	HistoricalRulerships = {
		588, 0, "teuton", "Bernicia", -- king of Bernicia
		588, 0, "teuton", "Deira" -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	}
})

DefineCharacter("Æthelfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 78.
	Name = "Æthelfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Northumberland",
	Year = 593, -- beginning of reign
	DeathYear = 616, -- died in battle against Rædwald
	ViolentDeath = true,
	Father = "Æthelric",
	Description = _("Aethelfrith was the king of Bernicia between 593 and 616. He simultaneously ruled over Deira, and is famed for his defeat of the Britons at Chester. Aethelfrith came to a tragic end at the hands of Raedwald of East Anglia in 616, being killed in battle."),
	HistoricalRulerships = {
		593, 616, "teuton", "Bernicia", -- king of Bernicia
		593, 616, "teuton", "Deira"
	}
	-- married the daughter of the Deiran king Ælle
	-- at some point between 613 and 616, he defeated the Britons at Chester; before the battle of Chester, Æthelfrith's warriors killed a group of British monks who stemmed from the monastery of Bangor Iscoed, and had come to pray for the Briton forces; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77-78
	-- at some point between 613 and 616, he defeated the Britons at Chester; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77-78
})

DefineCharacter("Ceawlin", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Ceawlin",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Wessex",
	DateReferenceCharacter = "Æthelfrith", -- contemporary of Æthelfrith of Bernicia
	HistoricalRulerships = {
		0, 0, "teuton", "Wessex"
	}
})

DefineCharacter("Edwin", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
	Name = "Edwin",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "York",
	Father = "Ælle",
	Year = 616, -- in 616 Rædwald of East Anglia (with whom Edwin had taken refuge), fought and won against Æthelfrith of Bernicia to support Edwin's claim to the Deiran throne
	HistoricalRulerships = {
		0, 0, "teuton", "Bernicia",
		0, 0, "teuton", "Deira" -- was the heir to Deira, but also became the king of Bernicia after the battle against Æthelfrith in 616
	}
})

DefineCharacter("Rædwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
	Name = "Rædwald",
	NameElements = {
		"compound", "prefix", "old-english", "noun", "Ræ̂d", -- presumably
--		"compound", "suffix", "old-english", -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "East Anglia",
	Year = 616, -- in the summer or early fall of 616, Rædwald (supporting Edwin's claim to the Deiran throne; Edwin had taken refuge with him) engaged in a battle against Æthelfrith of Bernicia, with the location being at the southern border of Deira, where the Idle river crosses with the Lincoln-Doncaster Roman road
	HistoricalRulerships = {
		616, 0, "teuton", "East Anglia"
	}
})

DefineCharacter("Lilla", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
	Name = "Lilla",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "York", -- presumably
	DateReferenceCharacter = "Edwin",
	Description = _("Lilla was a thegn of Edwin of Deira. He saved his lord's life by stopping an assassin from Wessex just as he was about to strike Edwin.")
})

DefineCharacter("Æthelberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
	Name = "Æthelberht",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Kent",
	DateReferenceCharacter = "Edwin", -- contemporary of Edwin, but probably not of the same generation, since his daughter married Edwin
	HistoricalRulerships = {
		0, 0, "teuton", "Kent"
	}
})

DefineCharacter("Penda", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Penda",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Mercia",
	DeathYear = 654, -- fall of Penda
	HistoricalRulerships = {
		0, 654, "teuton", "Mercia" -- king of Mercia
	}
})

DefineCharacter("Ethelred", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 127.
	Name = "Ethelred", -- did the massacre of the Danes in 1002 AD
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton", -- should be English?
	ProvinceOfOrigin = "Essex", -- presumably in England, so let's put in London's province
	Year = 1002 -- massacred the Danes
})

DefineCharacter("Aldhelm", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 98.
	Name = "Aldhelm", -- composed the "Helleborus" riddle
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something more appropriate for the composer of a riddle?
	Civilization = "teuton", -- Anglo-Saxon
	ProvinceOfOrigin = "Essex", -- presumably in England, so let's put in London's province
	DeathYear = 709 -- died in 709/710
})

DefineCharacter("Bede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
	Name = "Bede",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Essex", -- in England, so let's put in London's province
	Year = 731, -- wrote "Historia Ecclesiastica Venerabilis Bedae" around 731 AD
	AuthoredWorks = {"upgrade-work-historia-ecclesiastica-venerabilis-bedae"}
})

DefineCharacter("Nicolas Breakspear", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 126.
	Name = "Nicolas", -- son of a peasant employed in the Benedictine monastery of Saint Albans in Hertfordshire; was educated by the monks there; later became a cardinal and was sent on a mission to Norway to settle the Church there; was elected Pope in 1154 AD under the title of Hadrian IV
	ExtraName = "Breakspear", -- I assume this isn't his family name, but a nickname or something of the sort?
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "teuton", -- should be English
	ProvinceOfOrigin = "Essex", -- Hertfordshire (since his father worked there, he's probably from there)
	Year = 1154 -- elected Pope
})
