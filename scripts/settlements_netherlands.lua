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
--      (c) Copyright 2017 by Andrettin
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

DefineSettlement("amsterdam", {
	Name = "Amsterdam",
	MapTemplate = "earth",
	Position = {3953, 857},
	Major = true,
	CulturalNames = {
--		"dutch", "Amsterdam"
	},
	HistoricalOwners = {
		1815, "netherlands" -- Amsterdam was a part of the Kingdom of the Netherlands in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "town-hall",
		1877, 0, "university" -- State university founded in Amsterdam in 1877; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
		-- Calvinist university founded in Amsterdam in 1905; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})