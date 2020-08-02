// ---------------------------------------------
// Dace SoA Unjoined Dialogue
// ---------------------------------------------
BEGIN T#DACE

// Initial encounter
IF ~AreaCheck("AR0700")~ T#DJ1_1
  SAY @0
  ++ @1 + T#DJ1_3
  ++ @2 + T#DJ1_3
  ++ @3 + T#DJ1_3
  ++ @4 + T#DJ1_2
  ++ @5 + T#DJ1_4
  ++ @6 + T#DJ1_3
END

IF ~~ T#DJ1_2
  SAY @7
  ++ @8 + T#DJ1_5
  ++ @9 + T#DJ1_5
  ++ @10 + T#DJ1_6
  ++ @11 + T#DJ1_6
END

IF ~~ T#DJ1_3
  SAY @12
  ++ @8 + T#DJ1_5
  ++ @13 + T#DJ1_5
  ++ @10 + T#DJ1_6
  ++ @11 + T#DJ1_6
END

IF ~~ T#DJ1_4
  SAY @14
  ++ @8 + T#DJ1_5
  ++ @13 + T#DJ1_5
  ++ @10 + T#DJ1_6
  ++ @11 + T#DJ1_6
END

IF ~~ T#DJ1_5
  SAY @15
  ++ @10 + T#DJ1_6
  ++ @11 + T#DJ1_6
  ++ @16 + T#DJ1_7
END

IF ~~ T#DJ1_6
  SAY @17
  ++ @18 + T#DJ1_7
  ++ @19 + T#DJ1_9
  ++ @20 + T#DJ1_8
  ++ @21 + T#DJ1_9
  ++ @22 + T#DJ1_9
END

IF ~~ T#DJ1_7
  SAY @23
  IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ T#DJ1_8
  SAY @24
  ++ @25 + T#DJ1_12
  ++ @26 + T#DJ1_10
  ++ @27 + T#DJ1_11
END

IF ~~ T#DJ1_9
  SAY @28
  ++ @25 + T#DJ1_12
  ++ @26 + T#DJ1_10
  ++ @27 + T#DJ1_11
END

IF ~~ T#DJ1_10
  SAY @29
  IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ T#DJ1_11
  SAY @30
  IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ T#DJ1_12
  SAY @31
  IF ~~ DO ~SetGlobal("T#DaceFromBeginning","GLOBAL",1) SetGlobal("T#DaceJoined","GLOBAL",1) JoinParty()~ EXIT
END


// other encounters in SOA
// Trademeet main entrance (hangs around, leaves after rakshasa quest closes)
IF ~AreaCheck("AR2000")~ T#DJ2_1
  SAY @32
  ++ @33 + T#DJ2_4
  ++ @34 + T#DJ2_2
  ++ @35 + T#DJ2_3
END

IF ~~ T#DJ2_2
  SAY @36
  IF ~~ EXIT
END

IF ~~ T#DJ2_3
  SAY @37
  IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ T#DJ2_4
  SAY @38
  IF ~~ DO ~SetGlobal("T#DaceJoined","GLOBAL",1) JoinParty()~ EXIT
END


// Dcks in chapter six
IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%) AreaCheck("AR0300")~ T#DJ3_1
  SAY @39
  ++ @40 + T#DJ3_5
  ++ @41 + T#DJ3_2
  ++ @42 + T#DJ3_3
  ++ @43 + T#DJ3_4
END

IF ~~ T#DJ3_2
  SAY @44
  IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ T#DJ3_3
  SAY @45
  IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ T#DJ3_4
  SAY @46
  IF ~~ DO ~SetGlobal("T#DaceJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ T#DJ3_5
  SAY @47
  IF ~~ DO ~SetGlobal("T#DaceJoined","GLOBAL",1) JoinParty()~ EXIT
END