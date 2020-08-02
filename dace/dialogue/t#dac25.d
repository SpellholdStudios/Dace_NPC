// ---------------------------------------------
// Dace ToB Unjoined Dialogue
// ---------------------------------------------
BEGIN T#DAC25


//BEGINNING OF ILLASERA STUFF, WHICH IS GOING TO TAKE SOME MILDLY COMPLICATED-ISH CODING I DON'T QUITE UNDERSTAND YET, AND IS THUS JUST FLESHED OUT IN TEXT HERE
//illasera--several possibilities

/*
EXTEND_BOTTOM ILLASERA 8
  IF ~!InParty("T#Dace") OR(2) !Global("T#DaceFriendshipActive","GLOBAL",1) Global("T#DaceJackass","GLOBAL",1) OR(2) !Global("T#DaceRomanceActive","GLOBAL",2) Global("T#DaceJackass","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("t#dtcut")~ EXIT
  IF ~InParty("T#Dace") OR(2) !Global("T#DaceFriendshipActive","GLOBAL",1) Global("T#DaceJackass","GLOBAL",1) OR(2) !Global("T#DaceRomanceActive","GLOBAL",2) Global("T#DaceJackass","GLOBAL",1)~ EXTERN T#DAC25J T#DaceToB1
  IF ~InParty("T#Dace") OR(2) Global("T#DaceFriendshipActive","GLOBAL",1) Global("T#DaceRomanceActive","GLOBAL",2)~ EXTERN T#DAC25J T#DaceToB2
END
*/

// Not with group, not friend/romance
EXTEND_BOTTOM ILLASERA 8
/* Dace is not in party and not PC's friend / in committed romance */
  IF ~!InPartyAllowDead("T#Dace") !Dead("T#Dace") Global("T#DaceJackass","GLOBAL",1)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("t#dtcut")~ EXIT
/* Dace is in party but not PC's friend / in committed romance */
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceJackass","GLOBAL",1)~ THEN EXTERN T#DAC25J T#DaceToB1
/* Dace is in party and either PC's friend or in committed romance */
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) 
OR(2) Global("T#DaceFriendshipActive","GLOBAL",1) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN EXTERN T#DAC25J T#DaceToB2
END

APPEND T#DAC25

// Not with group, not friend/romance
IF ~Global("T#DaceToBExists","GLOBAL",1)~ T#DaceToBInt
  SAY @0
  ++ @1 + T#DaceToBInt.1
  ++ @2 + T#DaceToBInt.1
  ++ @3 + T#DaceToBInt.1
END

IF ~~ T#DaceToBInt.1
  SAY @4
  ++ @5 + T#DaceToBInt.2
  ++ @6 + T#DaceToBInt.2
  ++ @7 + T#DaceToBInt.2
END

IF ~~ T#DaceToBInt.2
  SAY @8
IF ~~ THEN DO ~Enemy()~ EXTERN ILLASERA T#DaceToBInt
END

END //APPEND


APPEND ILLASERA 
IF ~~ T#DaceToBInt
  SAY @59
COPY_TRANS ILLASERA 8
END

END




//If with group but didn't reach friend/rom level in SOA--upon meeting Illasera--she comes up and within her talk w/PC--
CHAIN T#DAC25J T#DaceToB1
  @9
  == ILLASERA @10
  == T#DAC25J @11
END
  ++ @5 EXTERN T#DAC25J T#DaceToBInt.2
  ++ @6 EXTERN T#DAC25J T#DaceToBInt.2
  ++ @7 EXTERN T#DAC25J T#DaceToBInt.2

APPEND T#DAC25J
/*
IF ~~ T#DaceToBInt.2
  SAY @8
  IF ~~ DO ~SetGlobal("IllaseraHostile","GLOBAL",1) Enemy() ActionOverride("ILLASERA",Enemy())~ EXIT
END
*/

IF ~~ T#DaceToBInt.2
  SAY @8
IF ~~ THEN DO ~Enemy()~ EXTERN ILLASERA T#DaceToBInt
END

END

//if with at beginning of TOB and either friend or Romance, she speaks to Illasera
/*
CHAIN T#DAC25J T#DaceToB2
  @12
  == ILLASERA @13              
  == T#DAC25J @14
  == ILLASERA @15
  DO ~SetGlobal("T#DaceToBIntroTalk","GLOBAL",1) SetGlobal("IllaseraHostile","GLOBAL",1) ActionOverride("ILLASERA",Enemy())~
EXIT
*/
CHAIN T#DAC25J T#DaceToB2
  @12
  == ILLASERA @13              
  == T#DAC25J @14
  == ILLASERA @15
END
  IF ~~ THEN DO ~SetGlobal("T#DaceToBIntroTalk","GLOBAL",1)~ EXTERN ILLASERA T#DaceToBInt



//directly after the battle and all of Ila's crew all sprite-dead
APPEND T#DAC25J

IF WEIGHT #-1 ~Global("T#DaceToBIntroTalk","GLOBAL",2)~ T#DaceToBIntro
  SAY @16
  = @17
  ++ @18 DO ~IncrementGlobal("T#DaceToBIntroTalk","GLOBAL",1)~ + T#DaceToBIntro.1
  ++ @19 DO ~IncrementGlobal("T#DaceToBIntroTalk","GLOBAL",1)~ + T#DaceToBIntro.1
  ++ @20 DO ~IncrementGlobal("T#DaceToBIntroTalk","GLOBAL",1)~ + T#DaceToBIntro.1
  ++ @21 DO ~IncrementGlobal("T#DaceToBIntroTalk","GLOBAL",1)~ + T#DaceToBIntro.1
  ++ @22 DO ~IncrementGlobal("T#DaceToBIntroTalk","GLOBAL",1)~ + T#DaceToBIntro.1
END

IF ~~ T#DaceToBIntro.1
  SAY @23
  ++ @24 + T#DaceToBIntro.2
  ++ @25 + T#DaceToBIntro.2
  ++ @26 + T#DaceToBIntro.kickout
  ++ @27 EXIT
END

IF ~~ T#DaceToBIntro.2
  SAY @28
  ++ @29 + T#DaceToBIntro.3
  ++ @30 + T#DaceToBIntro.3
  ++ @31 + T#DaceToBIntro.kickout
  ++ @32 + T#DaceToBIntro.3
END

IF ~~ T#DaceToBIntro.3
  SAY @33
  ++ @34 + T#DaceToBIntro.4
  ++ @35 + T#DaceToBIntro.4
  ++ @36 + T#DaceToBIntro.4
  ++ @37 + T#DaceToBIntro.4
END

IF ~~ T#DaceToBIntro.4
  SAY @38
  ++ @39 + T#DaceToBIntro.kickout
  ++ @40 + T#DaceToBIntro.5
  ++ @41 + T#DaceToBIntro.5
  ++ @42 + T#DaceToBIntro.5
END

IF ~~ T#DaceToBIntro.5
  SAY @43
  ++ @44 + T#DaceToBIntro.6
  ++ @45 + T#DaceToBIntro.6
  ++ @46 + T#DaceToBIntro.7
  ++ @47 + T#DaceToBIntro.kickout
  ++ @48 + T#DaceToBIntro.kickout
END

IF ~~ T#DaceToBIntro.6
  SAY @49
  IF ~~ + T#DaceToBIntro.7
END

IF ~~ T#DaceToBIntro.7
  SAY @50
  IF ~~ EXIT
END

IF ~~ T#DaceToBIntro.kickout
  SAY @51
  IF ~~ DO ~SetGlobal("T#DaceJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END

END



//If NOT with at beginning of TOB and either friend or romance--after Illasera defeated, Dace spawns, walks over
APPEND T#DAC25

IF WEIGHT #-1 ~Global("T#DaceToBJoin","GLOBAL",1)~ T#DaceToBJoin
  SAY @52
  ++ @18 DO ~IncrementGlobal("T#DaceToBJoin","GLOBAL",1)~ + T#DaceToBJoin.1
  ++ @19 DO ~IncrementGlobal("T#DaceToBJoin","GLOBAL",1)~ + T#DaceToBJoin.1
  ++ @20 DO ~IncrementGlobal("T#DaceToBJoin","GLOBAL",1)~ + T#DaceToBJoin.1
  ++ @21 DO ~IncrementGlobal("T#DaceToBJoin","GLOBAL",1)~ + T#DaceToBJoin.1
  ++ @22 DO ~IncrementGlobal("T#DaceToBJoin","GLOBAL",1)~ + T#DaceToBJoin.1
END

 IF ~~ T#DaceToBJoin.1
  SAY @23
  ++ @24 + T#DaceToBJoin.2
  ++ @25 + T#DaceToBJoin.2
  ++ @26 + T#DaceToBJoin.kickout
  ++ @27 EXIT
END

IF ~~ T#DaceToBJoin.2
  SAY @28
  ++ @29 + T#DaceToBJoin.3
  ++ @30 + T#DaceToBJoin.3
  ++ @31 + T#DaceToBJoin.kickout
  ++ @32 + T#DaceToBJoin.3
END

IF ~~ T#DaceToBJoin.3
  SAY @33
  ++ @34 + T#DaceToBJoin.4
  ++ @35 + T#DaceToBJoin.4
  ++ @36 + T#DaceToBJoin.4
  ++ @37 + T#DaceToBJoin.4
END

IF ~~ T#DaceToBJoin.4
  SAY @38
  ++ @39 + T#DaceToBJoin.kickout
  ++ @40 + T#DaceToBJoin.5
  ++ @41 + T#DaceToBJoin.5
  ++ @42 + T#DaceToBJoin.5
END

IF ~~ T#DaceToBJoin.5
  SAY @43
  ++ @44 + T#DaceToBJoin.6
  ++ @45 + T#DaceToBJoin.6
  ++ @46 + T#DaceToBJoin.7
  ++ @47 + T#DaceToBJoin.kickout
  ++ @48 + T#DaceToBJoin.kickout
END

IF ~~ T#DaceToBJoin.6
  SAY @49
  IF ~~ + T#DaceToBJoin.7
END

IF ~~ T#DaceToBJoin.7
  SAY @53
  ++ @54 + T#DaceToBJoin.8
  ++ @55 + T#DaceToBJoin.8
  ++ @56 + T#DaceToBJoin.8
  ++ @57 + T#DaceToBJoin.kickout
END

IF ~~ T#DaceToBJoin.8
  SAY @58
  IF ~~ DO ~SetGlobal("T#DaceJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ T#DaceToBJoin.kickout
  SAY @51
  IF ~~ DO ~SetGlobal("T#DaceJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END

END