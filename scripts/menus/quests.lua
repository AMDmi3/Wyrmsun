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
--      quests.lua - Define the menu for quests.
--
--      (c) Copyright 2014 by Andre Novellino Gouv�a
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

function RunQuestMenu()

	wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
	SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")

	if not (IsMusicPlaying()) then
		PlayMusic("music/legends_of_the_north.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	addQuestIcon("A Bargain is Struck", menu, "dwarf/icons/rugnur",
		"A gnomish monarch arrives at a small border outpost led by Rugnur, asking that his clan craft a special scepter for him.\n\nRewards: 2 Dwarven Technology Points, Caverns of Chaincolt Map.\n\nHint: The easiest way to obtain this quest is to play the Chaincolt Foothills map under default settings.",
		offx + 23 + 4 + (54 * 1), offy + 10 + 4 + (46 * 1))
	
--	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Closing the Gates")) then
--		addQuestIcon("Closing the Gates", menu, "dwarf/icons/baglur",
--			"With Baglur's aid, Rugnur has activated a series of glyphs, setting off an old mechanism and closing the gates to his clan's tunnels.\n\nOptimal Map: Caverns of Chaincolt\n\nRewards: 2 Dwarven Technology Points, Northern Wastelands Map.",
--			offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 1))
--	elseif (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") and wyrmsun.Version == "0.1.4") then
--		addQuestIcon("Closing the Gates", menu, "dwarf/icons/baglur",
--			"Having retreated from the raiders' onslaught, Rugnur reaches the gates to his clan's tunnels.\n\nOptimal Map: Caverns of Chaincolt",
--			offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 1))
--	else
--		addQuestIcon("Closing the Gates (Coming Soon)", menu, "dwarf/icons/baglur_transparent",
--			"Having retreated from the raiders' onslaught, Rugnur reaches the gates to his clan's tunnels.\n\nHint: The easiest way to obtain this quest is to play the Caverns of Chaincolt map under default conditions.",
--			offx + 23 + 4 + (54 * 2), offy + 10 + 4 + (46 * 1))
--	end

	menu:addFullButton("~!Previous Menu", "p", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:run()
end

function addQuestIcon(quest, menu, questicon_graphics, quest_description, x, y)
	local questicon
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, quest)) then
		questicon = CGraphic:New(questicon_graphics .. "_grayed.png")
	else
		questicon = CGraphic:New(questicon_graphics .. ".png")
	end
	questicon:Load()
	local b = ImageButton("")
--	b:setHotKey("")
	b:setActionCallback(
		function()
			local quest_menu = WarGameMenu(panel(5))
			quest_menu:setSize(352, 352)
    			quest_menu:setPosition((Video.Width - quest_menu:getWidth()) / 2, (Video.Height - quest_menu:getHeight()) / 2)
			quest_menu:addLabel(quest, 176, 11)
			local quest_menu_image = ImageWidget(questicon)
			quest_menu:add(quest_menu_image, 153, 48)

			local l = MultiLineLabel()
			l:setFont(Fonts["game"])
			l:setSize(324, 208)
			l:setLineWidth(324)
			quest_menu:add(l, 14, 112)
			l:setCaption(quest_description)
			
			quest_menu:addFullButton("~!Close", "c", 176 - (224 / 2), 352 - 40 * 1,
				function()
					quest_menu:stop()
				end)
			quest_menu:run()
		end
	)
	menu:add(b, x, y)
	b:setNormalImage(questicon)
	b:setPressedImage(questicon)
	b:setDisabledImage(questicon)
	b:setSize(46, 38)
	b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	return b
end
