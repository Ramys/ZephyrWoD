DELETE FROM `conditions` WHERE SourceEntry = 171772;
INSERT INTO `conditions`
            (`SourceTypeOrReferenceId`,
             `SourceGroup`,
             `SourceEntry`,
             `SourceId`,
             `ElseGroup`,
             `ConditionTypeOrReference`,
             `ConditionTarget`,
             `ConditionValue1`,
             `ConditionValue2`,
             `ConditionValue3`,
             `NegativeCondition`,
             `ErrorTextId`,
             `ScriptName`,
             `Comment`)
VALUES ('17',
        '0',
        '171772',
        '0',
        '0',
        '4',
        '0',
        '6720',
        '0',
        '0',
        '0',
        '0',
        '',
        'Blixthraz Cannon only usable on Frostfire Ridge');