UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=49634;
UPDATE `creature_template` SET `ScriptName`='npc_puzzle_box_of_yogg_saron' WHERE `entry`=49634;

DELETE FROM `creature_text` WHERE `entry`=49634;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(49634, 0, 0, 'Ny\'alotha is a city of old, terrible, unnumbered crimes.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 1, 'Y\'knath k\'th\'rygg k\'yi mrr\'ungha gr\'mula.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 2, 'The drowned god\'s heart is black ice.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 3, 'In the land of Ny\'alotha there is only sleep.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 4, 'Even death may die.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 5, 'You resist. You cling to your life as if it actually matters. You will learn.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 6, 'You will all be alone in the end.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 7, 'In the sleeping city of Ny\'alotha walk only mad things.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 8, 'There is no sharp distinction between the real and the unreal.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 9, 'Have you had the dream again? A black goat with seven eyes that watches from the outside.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 10, 'Look around. They will all betray you. Flee screaming into the black forest.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 11, 'In the sunken city, he lays dreaming.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 12, 'At the bottom of the ocean even light must die.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 13, 'The silent, sleeping, staring houses in the backwoods always dream. It would be merciful to tear them down.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 14, 'There is a little lamb lost in dark woods.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 15, 'All places, all things have souls. All souls can be devoured.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 16, 'What can change the nature of a man?', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 17, 'The fish know all the secrets. They know the cold. They know the dark.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 18, 'The giant rook watches from the dead trees. Nothing breathes beneath his shadow.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 19, 'The stars sweep chill currents that make men shiver in the dark.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 20, 'Open me! Open me! Open me! Then only will you know peace.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 21, 'Do you dream while you sleep or is it an escape from the horrors of reality?', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 22, 'The tortured spirits of your ancestors cling to you, screaming in silence. Apparently they are quite numerous.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 23, 'It is standing right behind you. Do not move. Do not breathe.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron'),
(49634, 0, 24, 'The void sucks at your soul. It is content to feast slowly.', 15, 0, 100, 0, 0, 0, 'Puzzle Box of Yogg-Saron');

DELETE FROM `locales_creature_text` WHERE `entry`=49634;
INSERT INTO `locales_creature_text` (`entry`,`textGroup`,`id`,`text_loc8`) VALUES
(49634, 0, 0, 'Ни\'алота – город, в котором издревле совершается множество страшных преступлений.'),
(49634, 0, 1, 'Й\'кнат к\'т\'ригг к\'йи мрр\'унгха гр\'мула.'),
(49634, 0, 2, 'Сердце утонувшего бога – это черный лед.'),
(49634, 0, 3, 'В Ни\'алоте есть только сон. '),
(49634, 0, 4, 'Даже смерть может умереть.'),
(49634, 0, 5, 'Ты сопротивляешься. Ты цепляешься за жизнь, как будто она имеет значение. Ничего, ты еще узнаешь правду.'),
(49634, 0, 6, 'В конце ты всегда остаешься один.'),
(49634, 0, 7, 'По спящему городу Ни\'алоте бродят только безумные существа.'),
(49634, 0, 8, 'Между реальностью и фантазией нет четких границ.'),
(49634, 0, 9, 'Тебе снова приснился этот сон? Про черного семиглазого козла, который следит за тобой?'),
(49634, 0, 10, 'Оглянись вокруг. Они все предадут тебя. Беги в черный лес, завывая от ужаса.'),
(49634, 0, 11, 'В затопленном городе спит он.'),
(49634, 0, 12, 'На дне океана умирает даже свет.'),
(49634, 0, 13, 'Молчаливые, тихие, наблюдающие дома всегда видят сны. Снести их – значит избавить от страданий.'),
(49634, 0, 14, 'В темном лесу заблудился ягненок.'),
(49634, 0, 15, 'У каждого места, у каждого объекта есть душа. Любую душу можно поглотить.'),
(49634, 0, 16, 'Что может изменить природу человека?'),
(49634, 0, 17, 'Рыбам известны все секреты. Они знают, что такое холод. Они знают, что такое мрак.'),
(49634, 0, 18, 'Огромный грач следит за всеми с верхушки мертвого дерева. Никто не смеет даже дышать под его сенью.'),
(49634, 0, 19, 'Холодный свет звезд заставляет людей дрожать во тьме.'),
(49634, 0, 20, 'Открой меня! Открой меня! Открой меня! Только тогда ты обретешь покой.'),
(49634, 0, 21, 'Видишь ли ты сны, когда спишь? Или ты просто уходишь от кошмара реальности?'),
(49634, 0, 22, 'Измученные души предков цепляются за тебя, заходясь в безмолвном крике. Похоже, их довольно много.'),
(49634, 0, 23, 'Оно стоит у тебя за спиной. Не двигайся. Не дыши.'),
(49634, 0, 24, 'Пустота пожирает твою душу. И будет делать это медленно.');