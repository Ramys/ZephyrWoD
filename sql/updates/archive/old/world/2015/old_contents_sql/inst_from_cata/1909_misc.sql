DELETE FROM `creature` WHERE `id` = 30090;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('30090','616','3','1','11686','0','754.733','1301.51','283.379','5.58505','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.521','1301.23','279.524','0.680678','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.356','1301.48','285.733','5.96903','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.192','1301.18','281.851','5.75959','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.688','1301.8','287.295','1.25664','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.733','1301.51','283.379','5.58505','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.521','1301.23','279.524','0.680678','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.356','1301.48','285.733','5.96903','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.192','1301.18','281.851','5.75959','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.688','1301.8','287.295','1.25664','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.733','1301.51','283.379','5.58505','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.521','1301.23','279.524','0.680678','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.356','1301.48','285.733','5.96903','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.192','1301.18','281.851','5.75959','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.688','1301.8','287.295','1.25664','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.733','1301.51','283.379','5.58505','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.521','1301.23','279.524','0.680678','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.356','1301.48','285.733','5.96903','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.192','1301.18','281.851','5.75959','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.688','1301.8','287.295','1.25664','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.733','1301.51','283.379','5.58505','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.521','1301.23','279.524','0.680678','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.356','1301.48','285.733','5.96903','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.192','1301.18','281.851','5.75959','3600','0','0','1','0','0','0','0','0'),
('30090','616','3','1','11686','0','754.688','1301.8','287.295','1.25664','3600','0','0','1','0','0','0','0','0');

UPDATE `creature_template` SET `mechanic_immune_mask` = 650854271 WHERE `entry` IN (28859,31734);

UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` IN (30084,32187);

UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `minlevel` = 80, `maxlevel` = 80, `flags_extra` = 130 WHERE entry IN (30334,30592);

UPDATE `creature_template` SET `spell6` = 57092, `spell7` = 60534 WHERE `entry` IN (30161,31752);

DELETE FROM `creature_template_addon` WHERE entry = 32187;
INSERT INTO `creature_template_addon` VALUES
(32187, 0, 0, 50331648, 1, 0, '55845');


-- Add spell script names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (56046,56047,61693,61694,57459,56438,61210,56397,58842,59084,59099,56070,56072,60936,60939,61028,61023);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(56046, 'spell_malygos_portal_beam'),
(56047, 'spell_malygos_random_portal'),
(61693, 'spell_malygos_arcane_storm'), -- Phase I /10/
(61694, 'spell_malygos_arcane_storm'), -- Phase I /25/
(57459, 'spell_malygos_arcane_storm'), -- Phase III
(56438, 'spell_arcane_overload'),
(61210, 'spell_nexus_lord_align_disk_aggro'),
(56397, 'spell_scion_of_eternity_arcane_barrage'),
(58842, 'spell_malygos_destroy_platform_channel'),
(59084, 'spell_alexstrasza_bunny_destroy_platform_boom_visual'),
(59099, 'spell_alexstrasza_bunny_destroy_platform_event'),
(56070, 'spell_wyrmrest_skytalon_summon_red_dragon_buddy'),
(56072, 'spell_wyrmrest_skytalon_ride_red_dragon_buddy_trigger'),
(60936, 'spell_malygos_surge_of_power_25'),
(60939, 'spell_malygos_surge_of_power_warning_selector_25'),
(61028, 'spell_alexstrasza_gift_beam'),
(61023, 'spell_alexstrasza_gift_beam_visual');

-- Add spell difficulties
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (61693,56272,57058);
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`) VALUES
(61693,61693,61694,0,0), -- Arcane Storm - Phase I
(56272,56272,60072,0,0), -- Arcane Breath
(57058,57058,60073,0,0); -- Arcane Shock (Nexus Lord)

-- Insert missing creature template addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (28859,30234,30248,32295,30592,31748,31749);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28859,0,0,0x1000000|0x2000000,0x1,0, ''), -- Malygos
(30234,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk (Nexus Lord), add aura "Flight"
(30248,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk (Scion of Eternity), add aura "Flight"
(31748,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk Difficulty (Nexus Lord), add aura "Flight"
(31749,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk Difficulty (Scion of Eternity), add aura "Flight"
(32295,0,0,0x1000000|0x2000000,0x1,0, ''), -- Alexstrasza
(30592,0,0,0x1000000|0x2000000,0x1,0, '57428'); -- Static Field bunny

-- Add, restructure and update missing texts and sounds
DELETE FROM `creature_text` WHERE `entry` IN (28859,32295,30084);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28859,0,0, 'Lesser beings, intruding here! A shame that your excess courage does not compensate for your stupidity!',14,0,100,0,10000,14512,'Malygos - Intro'),
(28859,0,1, 'None but the blue dragonflight are welcome here. Perhaps this is the work of Alexstrasza? Well, then, she has sent you to your deaths!',14,0,100,0,11000,14513,'Malygos - Intro'),
(28859,0,2, 'What could you hope to accomplish? To storm brazenly into my domain... to employ magic... against ME?',14,0,100,0,13000,14514,'Malygos - Intro'),
(28859,0,3, 'I am without limits here. The rules of your cherished reality do not apply. In this realm, I am in control!',14,0,100,0,10000,14515,'Malygos - Intro'),
(28859,0,4, 'I give you one chance. Pledge fealty to me, and perhaps I will not slaughter you for your insolence.',14,0,100,0,7000,14516,'Malygos - Intro'),
(28859,1,0, 'My patience has reached its limit, I will be rid of you!',14,0,100,0,4000,14517,'Malygos - Start phase 1'),
(28859,2,0, 'You will not succeed while I draw breath!',14,0,100,0,3000,14518,'Malygos - Begin to cast Deep Breath'),
(28859,3,0, 'Your stupidity has finally caught up to you!',14,0,100,0,3250,14519,'Malygos - Killed Player (Phase 1)'),
(28859,3,1, 'More artifacts to confiscate...',14,0,100,0,2800,14520,'Malygos - Killed Player (Phase 1)'),
(28859,3,2, 'How very naive.',14,0,100,0,4800,14521,'Malygos - Killed Player (Phase 1)'),
(28859,4,0, 'I had hoped to end your lives quickly, but you have proven more... resilient than I anticipated. Nonetheless, your efforts are in vain. It is you reckless, careless mortals who are to blame for this war. I do what I must, and if it means your extinction.... then SO BE IT!!',14,0,100,0,22900,14522,'Malygos - End Phase One'),
(28859,5,0, 'Few have experienced the pain I will now inflict upon you!',14,0,100,0,5500,14523,'Malygos - Start phase 2'), -- Unused by Blizzard for some reason
(28859,6,0, 'I will teach you IGNORANT children just how little you know of magic...',14,0,100,0,7000,14524,'Malygos - Anti-Magic Shell'),
(28859,7,0, 'Watch helplessly as your hopes are swept away...',14,0,100,0,4000,14525,'Malygos - Magic Blast'),
(28859,8,0, 'Your energy will be put to good use!',14,0,100,0,2000,14526,'Malygos - Killed Player (Phase 2)'),
(28859,8,1, 'I am the spell-weaver! My power is infinite!',14,0,100,0,5200,14527,'Malygos - Killed Player (Phase 2)'),
(28859,8,2, 'Your spirit will linger here forever!',14,0,100,0,3800,14528,'Malygos - Killed Player (Phase 2)'),
(28859,9,0, 'ENOUGH! If you intend to reclaim Azeroth''s magic, then you shall have it...',14,0,100,0,7000,14529,'Malygos - End Phase 2'),
(28859,10,0, 'Now your benefactors make their appearance... But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?',14,0,100,0,13000,14530,'Intro Phase 3'),
(28859,11,0, 'SUBMIT!',14,0,100,0,1000,14531,'Malygos - Start phase 3'), -- Unused by Blizzard for some reason
(28859,12,0, 'Malygos takes a deep breath.',41,0,100,0,10000,0,'Malygos - Surge of Power warning (Phase 2)'),
(28859,13,0, 'The powers at work here exceed anything you could possibly imagine!',14,0,100,0,5000,14532,'Malygos - Surge of Power'),
(28859,14,0, 'I AM UNSTOPPABLE!',14,0,100,0,2000,14533,'Malygos - Buffed by a spark'),
(28859,15,0, 'Alexstrasza! Another of your brood falls!',14,0,100,0,3600,14534,'Malygos - Killed Player (Phase 3)'),
(28859,15,1, 'Little more then gnats!',14,0,100,0,2650,14535,'Malygos - Killed Player (Phase 3)'),
(28859,15,2, 'Your red allies will share your fate...',14,0,100,0,3000,14536,'Malygos - Killed Player (Phase 3)'),
(28859,16,0, 'Still standing? Not for long...',14,0,100,0,3600,14537,'Malygos - Spell Casting 1(Phase 3)'),
(28859,16,1, 'Your cause is lost!',14,0,100,0,2000,14538,'Malygos - Spell Casting 2 (Phase 3)'),
(28859,16,2, 'Your fragile mind will be shattered!',14,0,100,0,4000,14539,'Malygos - Spell Casting 3 (Phase 3)'),
(28859,17,0, 'Unthinkable! The mortals will destroy... everything! My sister, what have you...',14,0,100,0,8500,14540,'Malygos - Death'),
(28859,18,0, '%s fixes his eyes on you!',42,0,100,0,3000,0,'Malygos - Surge of Power warning (Phase 3)'),
(28859,19,0, '%s goes into a berserker rage!',41,0,100,0,10000,0,'Malygos - Hit berserk timer (Any phase)'),
(32295,0,0, 'I did what I had to, brother. You gave me no alternative.',14,0,100,0,4000,14406,'Alexstrasza - Yell text 1'),
(32295,1,0, 'And so ends the Nexus War.',14,0,100,0,4000,14407,'Alexstrasza - Yell text 2'),
(32295,2,0, 'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos''s recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world''s mightiest has fallen.',14,0,100,0,24000,14408,'Alexstrasza - Yell text 3'),
(32295,3,0, 'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life... goes on.',14,0,100,0,22000,14409,'Alexstrasza - Yell text 4'),
(30084,0,0, 'A Power Spark forms from a nearby rift!',41,0,100,0,10000,0, 'Power spark to portal');

DELETE FROM `locales_creature_text` WHERE `entry` IN (28859,32295,30084);
INSERT INTO `locales_creature_text` (`entry`,`textGroup`,`id`,`text_loc8`) VALUES
(28859, 0, 0, 'Низшие создания, вторгшиеся сюда! Как жаль что ваш ум не так силен как ваша храбрость!'),
(28859, 0, 1, 'Никому кроме синих драконов не позволено находится здесь! Возможно, это происки Алекстразы? Что ж, значит она послала вас на верную смерть.'),
(28859, 0, 2, 'А что вы планировали, беспардонно ворваться в мои владения? Использовать МАГИЮ? Против МЕНЯ?'),
(28859, 0, 3, 'Здесь меня ничто не ограничивает... Законы вашей драгоценной реальности тут неприменимы... В этом мире Я главный...'),
(28859, 0, 4, 'Я дам вам шанс. Присягните на верность мне и, может быть, я не уничтожу вас за вашу наглость!'),
(28859, 1, 0, 'Мое терпение лопнуло, ПОРА ОТ ВАС ИЗБАВИТЬСЯ!'),
(28859, 2, 0, 'Пока я дышу, вам не добиться своего!'),
(28859, 3, 0, 'Ну вот ты и встретился со своей глупостью!'),
(28859, 3, 1, 'Еще один экспонат для моей коллекции...'),
(28859, 3, 2, 'Мха! Ха! Ха! Ха!Ха! Ха! Так... наивно...'),
(28859, 4, 0, 'Я надеялся быстро с вами покончить, но вы оказались более... живучими, чем я ожидал. Тем не менее, все ваши попытки тщетны, это вы безрассудные, беспечные, смертные, вы виноваты в этой войне! Я сделаю то что я должен сделать... Если это потребует вашего полного уничтожения... ДА БУДЕТ ТАК!'),
(28859, 5, 0, 'Немногие испытывали боль, подобной той, что я сейчас причиню вам!'),
(28859, 6, 0, 'Я покажу вам, МАЛОГРАМОТНЫМ детям, как мало вы знаете о магии...'),
(28859, 7, 0, 'Смотрите беспомощно, как утекают ваши надежды...'),
(28859, 8, 0, 'Твою энергию используют по назначению!'),
(28859, 8, 1, 'Я ХРАНИТЕЛЬ МАГИИ! Моя сила БЕЗГРАНИЧНА!'),
(28859, 8, 2, 'Твой дух будет вечно скитаться здесь!'),
(28859, 9, 0, 'Хватит! Раз вы хотите магии Азерота, то вы ее получите...'),
(28859, 10, 0, 'Вот и ваши благодетели появились... Но слишком поздно. Сил находящихся здесь хватит чтобы разрушить этот мир десять раз подряд! А что вы думаете они сделают с вами?'),
(28859, 11, 0, 'СДАВАЙТЕСЬ!'),
(28859, 12, 0, 'Малигос глубоко вздыхает'),
(28859, 13, 0, 'Вам не хватит воображения, чтобы оценить мощь сил, задействованных здесь!'),
(28859, 14, 0, 'МЕНЯ НЕ ОСТАНОВИТЬ!'),
(28859, 15, 0, 'Алекстраза! Еще один из твоих пал!'),
(28859, 15, 1, 'Чуть больше комара!'),
(28859, 15, 2, 'Твоих красных союзников ждет таже участь...'),
(28859, 16, 0, 'Еще на ногах? Ненадолго...'),
(28859, 16, 1, 'Вы проиграли!'),
(28859, 16, 2, 'Ваш хрупкий разум будет сокрушен!'),
(28859, 17, 0, 'НЕВЕРОЯТНО! Смертные разрушат... Все... Сестра моя... Что ты...'),
(28859, 18, 0, 'Малигос направляет взгляд на Вас!'),
(28859, 19, 0, 'Малигос входит в берсерк!'),
(32295, 0, 0, 'Я сделала то, что должна была сделать, брат. Ты не оставил мне выбора.'),
(32295, 1, 0, 'Война Нексуса окончена.'),
(32295, 2, 0, 'Итоги войны черезмерно печалят меня, но разрушения и колоссальные потери жизней должны были быть остановлены. Несмотря на последние прегрешения Малигоса, Я буду оплакивать его. Когда-то он был заступником, защитником. Сегодня пал один из сильнейших этого мира!'),
(32295, 3, 0, 'Красные драконы возьмут на себя бремя заживления ран Азерота. Возвращайтесь домой к своим людям и отдохните. Будущее несет вам новые испытания, и вы должны быть готовы к ним. Жизнь... Продолжается.'),
(30084, 0, 0, 'Искра мощи появляется из ближайшей расселины!');

UPDATE `locales_creature` SET `name_loc8` = 'Дар Алекстразы' WHERE entry = 32448;

-- Add conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (56047,58846,61028,56429,56505,59099,61714,61715,57432,57429,61210,56548,56431,56438);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,56047,0,0,31,0,3,30118,0,0,0,'', 'Random Portal can implicitly hit only Portal (Malygos)'),
(13,1,56047,0,0,29,0,28859,30,0,1,0,'', 'Random Portal can implicitly hit only target that is not in 30 yards near Malygos'),
(13,1,58846,0,0,32,0,0x0010,0,0,0,0,'', 'Summon Red Dragon Buddy force cast can implicitly hit only players'),
(13,1,61028,0,0,31,0,3,32448,0,0,0,'', 'Alexstrasza''s Gift Beam can hit only Alexstrasza''s Gift'),
(13,1,56429,0,0,31,0,3,31253,0,0,0,'', 'Summon Arcane Bomb can hit only Alexstrasza the Life-Binder (bunny)'),
(13,1,56505,0,0,31,0,3,30334,0,0,0,'', 'Surge of Power (phase II) can hit only Surge of Power'),
(13,1,56548,0,0,31,0,3,30234,0,1,0,'', 'Surge of Power triggered damage spell (phase II) can''t hit melee Hover Disk'),
(13,3,56431,0,0,31,0,3,30234,0,1,0,'', 'Arcane Overload damage and knockback spell can''t hit melee Hover Disk'),
(13,1,56438,0,0,1,0,1,56438,0,1,0,'', 'Arcane Overload damage reduce aura can''t apply to target that already is affected by such'),
(13,6,59099,0,0,32,0,0x0010,0,0,0,0,'', 'Destroy Platform Event effect 1 and 2 can hit only players'),
(13,7,61714,0,0,31,0,3,30245,0,0,0,'', 'Berserk (spell 2) can hit Nexus Lord'),
(13,7,61714,0,1,31,0,3,30249,0,0,0,'', 'Berserk (spell 2) can hit Scion of Eternity'),
(13,7,61715,0,0,31,0,3,30592,0,0,0,'', 'Berserk (spell 3) can hit Static Field bunny'),
(13,1,57432,0,0,31,0,3,30161,0,0,0,'', 'Arcane Pulse can hit only drakes'),
(13,3,57429,0,0,31,0,3,30161,0,0,0,'', 'Static Field can hit only drakes'),
(13,1,61210,0,0,33,1,0,4,0,0,0,'', 'Align Disk Aggro can only hit the vehicle of the passenger caster');

-- Add missing equipment
DELETE FROM `creature_equip_template` WHERE `entry` IN (30245,31750,30249,31751);
INSERT INTO `creature_equip_template` (`entry`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(30245,30714,0,0), -- Nexus Lord
(31750,30714,0,0), -- Nexus Lord (Difficulty)
(30249,29107,0,0), -- Scion of Eternity
(31751,29107,0,0); -- Scion of Eternity (Difficulty)

-- Update accessories of hover disks to die with the vehicle and have lower despawn time. They should fall from hover disks,
-- and despawn after 5 sec, but for some reason they keep staying standing while dead. This needs to be fixed coreside.
UPDATE `vehicle_template_accessory` SET `minion`=1,`summontype`=6,`summontimer`=1000 WHERE `entry`=30234 AND `seat_id`=0;
UPDATE `vehicle_template_accessory` SET `minion`=1,`summontype`=6,`summontimer`=1000 WHERE `entry`=30248 AND `seat_id`=0;

-- Add flag GO not selectable for both and extra condition for Heart of Magic
UPDATE `gameobject_template` SET `flags`=16 WHERE `entry`=193967; -- Alexstrasza Gift
UPDATE `gameobject_template` SET `flags`=20 WHERE `entry`=194159; -- Heart of Magic

-- Add some gameobject data update
-- UPDATE `gameobject` SET `animprogress`=255,`spawntimesecs`=300 WHERE `guid` IN (47509); -- that spawn time has no influence, but having different values doesn't look correct

-- Delete static GO spawns of Alexstrasza's Gift Boxes, they are dynamic (10/25)
-- DELETE FROM `gameobject` WHERE `guid` IN (47668,47669);

-- Add map difficulty checks for achievement "Denyin the Scion"
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7573,7574) AND `type`=12;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`) VALUES
(7573,12,0), -- 10 mode
(7574,12,1); -- 25 mode

-- Delete Nexus Lords SAI script, because of incapacity to handle the combat spell mechanic of Arcane Shock correctly
-- Delete Scions of Eternity SAI script, because of incapacity to handle non reactive AI when being attacked in a way it won't bug other encounter mechanics.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (30245,30249) AND `source_type`=0;

-- Add SAI support for Alexstrasza since is only short timed event after boss mechanic ends
SET @NPC_ALEXSTRASZA  := 32295;
SET @ACTIONLIST       := @NPC_ALEXSTRASZA * 100;
SET @SPELL_GIFT_BEAM  := 61028;

UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@NPC_ALEXSTRASZA;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_ALEXSTRASZA AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ACTIONLIST AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_ALEXSTRASZA,0,0,0,54,0,100,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,788.07,1276.09,246.9,0,'Alexstrasza - On just summoned - Move to pos'),
(@NPC_ALEXSTRASZA,0,1,0,34,0,100,0,8,1,0,0,80,@ACTIONLIST,2,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - On point 1 reached - Start actionlist'),
(@ACTIONLIST,9,0,0,0,0,100,0,0,0,0,0,11,@SPELL_GIFT_BEAM,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 0 - Cast Gift Beam'),
(@ACTIONLIST,9,1,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 1 - Yell 0'),
(@ACTIONLIST,9,2,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 2 - Yell 1'),
(@ACTIONLIST,9,3,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 3 - Yell 2'),
(@ACTIONLIST,9,4,0,0,0,100,0,24000,24000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 4 - Yell 3');

-- Add areatrigger script for the improvised platform that is killing/rooting falling players
DELETE FROM `areatrigger_scripts` WHERE `entry`=5342;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5342, 'at_eye_of_eternity_improvised_floor');

-- /////////////// Various misc in creature, creature template and creature addon ///////////////
-- Update some guids spawn positions
-- UPDATE `creature` SET `position_x`=754.362,`position_y`=1301.61,`position_z`=266.171,`orientation`=4.24115 WHERE `guid`=116911; -- Alexstrasza the Life-Binder (Bunny)
-- UPDATE `creature` SET `position_x`=747.61,`position_y`=1393.43,`position_z`=295.9722,`orientation`=3.03832 WHERE `guid`=116900; -- Malygos

-- Update some creature guids to be have static MovementType and spawn dist to 0 accordingly
-- UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid` IN
-- (116900, -- Malygos
-- 116899, -- Alexstrasza''s Gift Bunny
-- 116911); -- Alexstrasza the Life-Binder (Bunny)

-- Update template to InhabitType "Air" for various creatures
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (28859,31734,30245,31750,30249,31751,32295,32448);

-- Clear scripts names for Alexstrasza the Life-Binder (Bunny)
UPDATE `creature_template` SET `AIName`='',`ScriptName`='' WHERE `entry`=31253;

--  Update Portal (Malygos) initial flags before the encounter starts
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x00000100|0x02000000,`flags_extra`=128 WHERE `entry`=30118; -- Immunity to Players + Not selectable

-- Update flags extra to trigger & civilian for Static Field and add script name
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_static_field',`flags_extra`=130 WHERE `entry`=30592;

-- Update flags extra to extra trigger & extra civilian for Alexstrasza Bunny
UPDATE `creature_template` SET `flags_extra`=130, `ScriptName`='' WHERE `entry`=31253;

-- Remove uneeded creature_addon data
-- DELETE FROM `creature_addon` WHERE `guid` IN
-- (116900); -- Malygos is boss so is unique and needs only the template addon.

-- Update templates for both types of hover disks
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`VehicleId`=223,`InhabitType`=4 WHERE `entry` IN (30248,31749); -- Hover disk for Scions
UPDATE `creature_template` SET `ScriptName`='npc_caster_hover_disk' WHERE `entry`=30248;
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`InhabitType`=4 WHERE `entry` IN (30234,31748); -- Hover disk for Nexus Lords
UPDATE `creature_template` SET `ScriptName`='npc_melee_hover_disk' WHERE `entry`=30234;
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_nexus_lord' WHERE `entry`=30245; -- Nexus Lord
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_scion_of_eternity' WHERE `entry`=30249; -- Scion of Eternity

-- Fix model display for Vortex Triggers (in creature handling).
-- Remove extra trigger flag because for some reason it was bugging model displaying as always visible,
-- since it has the invisible one for triggers first and other as second, this is the only nonhacky way (don't try to change it unless core side != c++ hack in instance script)
UPDATE `creature_template` SET `flags_extra`=flags_extra &~ 0x00000080 WHERE `entry`=30090;
UPDATE `creature` SET `modelid`=11686 WHERE `id` = 30090;


-- Add conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56438;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,56438,0,0,1,0,56438,0,0,1,0,'', 'Arcane Overload damage reduce aura can''t apply to target that already is affected by such');

-- Delete wrongly inserted spell linked spell of Scion of Eternity - "Arcane Barrage".
-- It should be handled in the original caster spell with spellscript effect.
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=56397 AND `spell_effect`=63934 AND`type`=1;

-- Update flags in creature for Malygos since differ from these in creature_template
UPDATE `creature` SET `unit_flags`=320,`dynamicflags`=8 WHERE `id`=28859;

-- Delete condition that can cause some damage reduction "spikes" leading to leaking damage,
-- or in simple language some delay can cause not applying.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56438;

-- Delete condition that is already covered by spell attribute
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=58846;

-- Update some gameobject data that is correct in WDB, but parsed wrong for some reason
UPDATE `gameobject_template` SET `faction`=35,`data17`=1,`data18`=0 WHERE `entry`=193908;

UPDATE `gameobject_template` SET `ScriptName` = '' WHERE `entry` IN (193958,193960);
-- UPDATE `gameobject` SET `position_x` = 754.362, `position_y` = 1301.61, `position_z` = 266.171, `orientation` = 6.23742, `rotation2` = 0.022883, `rotation3` = '-0.999738', `spawntimesecs` = 300, `animprogress` = 0 WHERE guid = 47508;
-- UPDATE `gameobject` SET `position_x` = 754.255, `position_y` = 1301.72, `position_z` = 266.17, `orientation` = -1.6057, `rotation2` = 0, `rotation3` = 0, `spawntimesecs` = 300, `animprogress` = 255 WHERE guid = 47509;

DELETE FROM `event_scripts` WHERE `id` = 20711;

-- Update portal InhabitType, otherwise it falls on summon
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=30118;

-- Update drakes templates
UPDATE `creature_template` SET `unit_flags`=8,`InhabitType`=4 WHERE `entry`=30161; -- no fly aura present only enabled gravity in sniffs

-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (30084,30161);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30084,0,0,50331648,1,0,'55845'), -- Power Spark
(30161,0,0,50331648,1,0,'60534'); -- Wyrmrest Skytalon (uses no fly aura)

UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` IN (30084,32187);
UPDATE `creature_template` SET `flags_extra` = 0, `VehicleId` = 223 WHERE `entry` IN (30234,31748);
UPDATE `creature_template` SET `flags_extra` = 0, `VehicleId` = 223 WHERE `entry` IN (30248,31749);
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` IN (30245,31750);

DELETE FROM `creature_template_addon` WHERE `entry` = 30090;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('30090','0','0','50331648','1','0','55883');

UPDATE `creature_template` SET `VehicleId` = 220 WHERE `entry` IN (30161,31752);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (31748);
