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

DefineLanguageWord("Árus", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "irish",
	Type = "noun",
	Meanings = {"Dwelling"}
})

DefineLanguageWord("Bri", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "irish",
	Type = "noun",
	Meanings = {"Mountain", "Hill"}, -- source gives "Berg" as the meaning
	NumberCaseInflections = {
		"singular", "genitive", "Brig"
	}
})

DefineLanguageWord("Brot", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "irish",
	Type = "noun",
	Meanings = {"Prickle"},
	Gender = "masculine"
})

DefineLanguageWord("Búal", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "irish",
	Type = "noun",
	Meanings = {"Water"}, -- source gives the German "Wasser" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Bheg"}
})

DefineLanguageWord("Gas", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "irish",
	Type = "noun",
	Meanings = {"Sapling", "Sprout", "Shoot"},
	Gender = "feminine"
})

DefineLanguageWord("Gat", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "irish",
	Type = "noun",
	Meanings = {"Rod"}
})

DefineLanguageWord("Gius", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "irish",
	Type = "noun",
	Meanings = {"Fir", "Spruce"}
})

DefineLanguageWord("Íarn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "irish",
	Type = "noun",
	Meanings = {"Iron"} -- source gives the German "Eisen" as the meaning
})

DefineLanguageWord("Kass", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "irish",
	Type = "noun",
	Meanings = {"Curl", "Tress"}
})

DefineLanguageWord("Máo", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "irish",
	Type = "adjective",
	Meanings = {"More"}, -- "Máo" actually means "größer"
	ComparisonDegreeInflections = {
		"comparative", "Máo" -- source also gives alternative form "Móo"
	}
})

DefineLanguageWord("Medg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "irish",
	Type = "noun",
	Meanings = {"Whey"},
	Gender = "feminine"
})

DefineLanguageWord("Rīadaim", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "irish",
	Type = "verb",
	Meanings = {"Travel"}
})

DefineLanguageWord("Úr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "irish",
	Type = "noun",
	Meanings = {"Fire"} -- source gives "Feuer" as the meaning
})
