// ---------------------------------------------
// Dace ToB Post-joined Dialogue
// ---------------------------------------------
BEGIN T#DAC25P

//REJOIN IN TOB--FRIEND ONLY--CAN'T DROP ROMANCE DACE AND GET HER BACK  (Makes perfect sense to me! :) )
IF ~Global("T#DaceJoined","GLOBAL",0)~ T#DJ4_1
  SAY @0
    ++ @1 + T#DJ4_3
    ++ @2 + T#DJ4_2
END

IF ~~ T#DJ4_2
  SAY @3
  IF ~~ EXIT
END

IF ~~ T#DJ4_3
  SAY @4
  IF ~~ DO ~SetGlobal("T#DaceJoined","GLOBAL",1) JoinParty()~ EXIT
END


//Tob Leave Friend
IF ~Global("T#DaceJoined","GLOBAL",1) Global("T#DaceFriendshipActive","GLOBAL",1)~ T#DP4_1
  SAY @5
  ++ @6 + T#DP4_2
  ++ @7 + T#DP4_3
END

IF ~~ T#DP4_2
  SAY @8
  IF ~~ DO ~SetGlobal("T#DaceJoined","GLOBAL",0) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(2) MoveBetweenAreas("AR4500",[2237.1432],0)~ EXIT
END

IF ~~ T#DP4_3
  SAY @9
  IF ~~ EXIT
END


//Tob Leave Rom
IF ~Global("T#DaceJoined","GLOBAL",1) Global("T#DaceRomanceActive","GLOBAL",2)~ T#DP5_1
  SAY @10
  =
  @11
  ++ @12 + T#DP5_2
  ++ @13 + T#DP5_2
  ++ @14 + T#DP5_3
  ++ @15 + T#DP5_4
END

IF ~~ T#DP5_2
  SAY @16
  IF ~~ DO ~LeaveParty() SetGlobal("T#DaceJoined","GLOBAL",0) EscapeArea()~ EXIT
END

IF ~~ T#DP5_3
  SAY @17
  IF ~~ EXIT
END

IF ~~ T#DP5_4
  SAY @18
  IF ~~ EXIT
END
