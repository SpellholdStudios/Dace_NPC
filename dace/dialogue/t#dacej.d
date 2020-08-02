// ---------------------------------------------
// Dace SoA Interjections & Dialogue
// ---------------------------------------------
BEGIN T#DACEJ

// ---------------------------------------------
// Dace Interjections
// ---------------------------------------------

// Circus--Get riddle right--(..rewards those with a quick and agile mind)(Think this is Genie1.dlg)
INTERJECT_COPY_TRANS GENIE1 7 T#DRIDDLE
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@0
== GENIE1 @1
END


// After gaelan speaking to bayle, inserted somewhere into talking w/his boy(BRUS2)
INTERJECT_COPY_TRANS BRUS2 1 T#DBAYLE
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@2
== BRUS2 @3
END

INTERJECT_COPY_TRANS BRUS2 3 T#DBAYLE2
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@2
== BRUS2 @4
END


// copper coronet--amalas--picks fight(RUFFIAN.DLG)
INTERJECT_COPY_TRANS RUFPAL2 5 T#DAMALAS
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@5
END


// coronet--agree to help Nalia(Amazingly enough, NALIA.DLG.  Go figure. ;) )
INTERJECT_COPY_TRANS NALIA 50 T#DHELPNAL
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@6
END


// coronet--madame nin(MADAM.DLG)
INTERJECT_COPY_TRANS MADAM 4 T#DNIN
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@7
END

INTERJECT_COPY_TRANS MADAM 5 T#DNIN2
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@7
END

INTERJECT_COPY_TRANS MADAM 6 T#DNIN3
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@7
END


// d'arnise hold--aunt(DELCIA.DLG.  As an aside, I love it!)
INTERJECT_COPY_TRANS DELCIA 2 T#DAUNT
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@8
END


// windspear--garren's child--say you'll help(GARKID01 and GARKID02.  Hrms.  Or maybe you were looking for Garren himself, not the kid?  Out of it.  Garren is GARREN.DLG.  Ooh, ahh, that was a hard one.  *laughs at herself*)
INTERJECT_COPY_TRANS GARREN 35 T#DGARREN
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@9
END

INTERJECT_COPY_TRANS GARREN 36 T#DGARREN2
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@9
END


// firkraag(FIRKRA02)
INTERJECT_COPY_TRANS FIRKRA02 0 T#DFIRK
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@10
END


// lady elgea ransom/silver pants thing--can let her go or collect the ransom(ELGEA.DLG)
INTERJECT ELGEA 0 T#DELGEA
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@11
COPY_TRANS ELGEA 0


// nether scroll--if Edwin talks to lich and fight starts(NEVAZIAH.DLG)
INTERJECT_COPY_TRANS NEVAZIAH 16 T#DNETHER
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@12
== EDWINJ @13
END


// Bridge Aegisfield—talks to party about murders(INSPECT.DLG)
INTERJECT_COPY_TRANS INSPECT 13 T#DAEGIS
== T#DACEJ   IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN 
    @14
== INSPECT
    @15
== T#DACEJ
    @16
END


// govt. dist--viconia--everyone else chimes in about rescuing her or not(*laugh*  Priceless.  VICFAN1)
INTERJECT_COPY_TRANS VICG1 4 T#DVICSAV
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@17
END


// umar--kids ask for swords/ale(UHKID01)
INTERJECT_COPY_TRANS UHKID01 3 T#DKIDS
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@18
== UHKID01 @19
END


// chicken thing during wrangling w/ farmers to buy chicken, etc.(GEMFAR02.DLG)
INTERJECT_COPY_TRANS GEMFAR02 6 T#DCHIX
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@20
END


//  Temple--illithium quest-- only works in illithium  need to be mult. copies of this interject for diff. temples?  should only fire once, though(SCTELWYN/DLG for Helm's temple, SCYARRYL for Talos and SCSAIN.DLG for Lathander.)
INTERJECT_COPY_TRANS SCTELWYN 5 T#DaceJTemple1
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceJTemple","GLOBAL",0)~ THEN
@21
DO ~IncrementGlobal("T#DaceJTemple","GLOBAL",1)~
END


INTERJECT_COPY_TRANS SCYARRYL 6 T#DaceJTemple2
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceJTemple","GLOBAL",0)~ THEN
@21
DO ~IncrementGlobal("T#DaceJTemple","GLOBAL",1)~
END


INTERJECT_COPY_TRANS SCSAIN 6 T#DaceJTemple3
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceJTemple","GLOBAL",0)~ THEN
@21
DO ~IncrementGlobal("T#DaceJTemple","GLOBAL",1)~
END


// talking to diseased leader about their dead god in underground city(RIFTM01)
INTERJECT_COPY_TRANS RIFTM01 17 T#DBIZZARE
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@22
END


// docks--working for mae'var edwin--getting maevar documents, he says blah blah  " matter well in hand"
INTERJECT_COPY_TRANS EDWINJ 1 T#DEDDIEDOC
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@23
== EDWINJ @24
== T#DACEJ @25
== EDWINJ @26
END


// kangaxx(HLKANG.DLG)
INTERJECT_COPY_TRANS HLKANG 0 T#DKANG
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@27
END


// druid grove--encounter outside Faldorn's cave(Think the right dialogue file is CEDRUID2.DLG, though this might not be the right one.)
INTERJECT_COPY_TRANS CEDRUID2 5 T#DNUTTY
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@28
== CEDRUID2 @29
END


// Take trademeet quest—(Think you mean accepting the quest from the guy in the gates area?  If so, MESSEN.DLG)
INTERJECT_COPY_TRANS MESSEN 10 T#DTRADEQUEST
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@30
== MESSEN @31
END


// Trademeet—meet militia captain, tells you to go to see the mayor first—(TRGRD03.DLG)
INTERJECT_COPY_TRANS TRGRD03 8 T#DLUNCH
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@32
END


// Viekang in trademeet  tavern—(VIEKANG.DLG.  Cute. ;) )
INTERJECT_COPY_TRANS VIEKANG 7 T#DVIEK
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@33
== VIEKANG @34
END


// working for linvail--bodhi rumble--obligatory trash-talk, talks to you for forrrevah about Irenicus, etc.(BODHI2.DLG)
INTERJECT_COPY_TRANS BODHI2 15 T#DBODHIYAP
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@35
END


// working for bodhi--kill gaelan for key/kill linvail, obligatory trash-talk(Not sure which dialogue you want to interject into, or which area.  Bodhi's is BODHI.DLG when you're working for her.  Linvail is ARAN02, all one state of it.)
INTERJECT_COPY_TRANS ARAN02 0 T#DLINVAILYAP
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@36
== ARAN02 @37
END


// spellhold--Yosh betrays--(YOSHJ.DLG.  He has some very interesting lines in his YOSHIMO.DLG that I've never before seen.  Amusing.  Getting captured some how by a nymph?  *laugh*)
INTERJECT_COPY_TRANS YOSHJ 113 T#DYOSH
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@38
END



// bodhi rumble at end of maze/trash talk before slayer change(PPBODHI4.DLG)
INTERJECT_COPY_TRANS PPBODHI4 20 T#DBodh2
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@39
== PPBODHI4 @40
END


// Slayer interjections
INTERJECT Player1 3 T#DaceJSlayerDizzy
  == T#DACEJ IF ~InParty("T#Dace") !Global("AerieRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",2) OR(2) Global("T#DaceRomanceActive","GLOBAL",1) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN
  @41
END
  ++ @42 EXTERN T#DACEJ T#DDIZZY_2
  ++ @43 EXTERN T#DACEJ T#DDIZZY_2
  ++ @44 EXTERN T#DACEJ T#DDIZZY_2
  ++ @45 EXTERN T#DACEJ T#DDIZZY_2

APPEND T#DACEJ
IF ~~ T#DDIZZY_2
  SAY @46
  IF ~~ EXIT
END
END

INTERJECT_COPY_TRANS Player1 5 T#DaceJSlayerNoRom
  == T#DACEJ IF ~InParty("T#Dace")~ THEN
  @47
END


INTERJECT Player1 7 T#DaceJSlayerWake
  == T#DACEJ IF ~InParty("T#Dace") OR(2) Global("T#DaceRomanceActive","GLOBAL",1) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN
  @48
END
  ++ @49 DO ~SetGlobal("EndangerLovedOne","GLOBAL",221) ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
  ++ @50 DO ~SetGlobal("EndangerLovedOne","GLOBAL",221) ActionOverride(Player1,ReallyForceSpell(Player1,SLAYER_CHANGE))~ EXIT
  ++ @51 DO ~SetGlobal("EndangerLovedOne","GLOBAL",221) ActionOverride(Player1,ReallyForceSpell(Player1,SLAYER_CHANGE))~ EXIT


EXTEND_BOTTOM Player1 10
  IF ~OR(3) !InParty("T#Dace") Dead("T#Dace") StateCheck("T#Dace",CD_STATE_NOTVALID) Global("EndangerLovedOne","GLOBAL",221)~ THEN EXTERN Player1 12
END


INTERJECT Player1 10 T#DaceJEndanger
  == T#DACEJ IF ~InParty("T#Dace") Global("EndangerLovedOne","GLOBAL",221)~ THEN
  @52
END
  ++ @53 EXTERN T#DACEJ T#DaceJEndanger1
  ++ @54 EXTERN T#DACEJ T#DaceJEndanger2
  ++ @55 EXTERN T#DACEJ T#DaceJEndanger1
  ++ @56 EXTERN T#DACEJ T#DaceJEndanger1
  ++ @57 EXTERN T#DACEJ T#DaceJEndanger2
  ++ @58 EXTERN T#DACEJ T#DaceJEndanger1

APPEND T#DACEJ
  IF ~~ T#DaceJEndanger1
    SAY @59
    IF ~~ EXIT
  END
  
  IF ~~ T#DaceJEndanger2
    SAY @60
    IF ~~ EXIT
  END
END


// steal pirate horn--pirate lord's girlfriend in bed w/some guy(PPGIRL.DLG)
INTERJECT_COPY_TRANS PPLOVE 9 T#DPIRATEGIRL
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@61
END


// steal ship for saemon--getting ready to set sail(PPSAEM3.DLG)
INTERJECT_COPY_TRANS PPSAEM3 23 T#DSHIP2
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@62
== PPSAEM3 @63
END


// ship capsizes talk to king/priestess--right before they cast the translation spell--(SAHPRI1.DLG)
INTERJECT_COPY_TRANS SAHPR1 1 T#DSHIP3
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@64
END


// deep gnomes, talk to leader, kill thing to get gem(UDSVIR03.DLG)
INTERJECT UDSVIR03 12 T#DGNOME
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@65
COPY_TRANS UDSVIR03 12


// talking to adalon(UDSILVER.DLG.  Oh Dace.. *chuckle*)
INTERJECT_COPY_TRANS UDSILVER 14 T#DADALON
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@66
END


// vithal--imprisoned mage...obviously she can't say this if she has already been silenced by Adalon...I can't remember what comes first...?(UDVITH)
INTERJECT_COPY_TRANS UDVITH 0 T#DVITHAL
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@67
END


/* //entering ust natha, after the little display with the drow/slave/mother
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
~Eeesh.  Note to self: Keep mouth shut, act like a good little Drow.  Uh, bad little Drow?  Anyway, let's get this over with and get outta here, Ducky.~
END  */


//conversation with MATRON ARDULACE, tells you to get the blood of the noble races
I_C_T UDARDUL 10 T#DARDUL
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@68
END


/* //Talk to the Aboleth, the creature in the tank, and he tells you to get him Qilue's brain
I_C_T DAABOL
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
~Why am I suddenly hungry for fried eel?~
END */


// exit to underdark--getting grilled by Elban or whatever the devil his name is.  Elhan?(SUELHAN)
INTERJECT_COPY_TRANS C6WARSA2 3 T#DPRANCI
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@69
END


// drizzt
INTERJECT_COPY_TRANS C6DRIZZ1 39 T#DDRIZZT
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@70
END


// Suldaness--demin talks, explains Irenicus(SUDEMIN.DLG)
INTERJECT SUDEMIN 16 T#DDEMIN
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@71
=
@72
COPY_TRANS SUDEMIN 16


// dragon w/ goblet--(DRAGBLAC.DLG)
INTERJECT_COPY_TRANS DRAGBLAC 0 T#DGOBLET
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@73
END


// Tree of Life
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceTreeofLife","GLOBAL",0) OR(2) !Global("T#DaceRomanceActive","GLOBAL",2) Global("T#DaceJackass","GLOBAL",1) OR(2) !Global("T#DaceFriendshipActive","GLOBAL",1) Global("T#DaceJackass","GLOBAL",1)~ EXTERN PLAYER1 T#DTREEH
IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceTreeofLife","GLOBAL",0) Global("T#DaceFriendshipActive","GLOBAL",1)~ EXTERN PLAYER1 T#DTREEF
IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceTreeofLife","GLOBAL",0) Global("T#DaceRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 T#DTREER
END


// Tree of Life Romance
CHAIN PLAYER1 T#DTREER
  @74
END
  ++ @75 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEROM
  ++ @76 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEROM
  ++ @77 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEROM

APPEND T#DACEJ

IF ~~ T#DTREEROM
  SAY @78
  =
  @79
  =
  @80
  =
  @81
  COPY_TRANS PLAYER1 33
END

END


// Tree of Life Friend
CHAIN PLAYER1 T#DTREEF
  @82
END
  ++ @75 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEFRD
  ++ @76 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEFRD
  ++ @77 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEFRD

APPEND T#DACEJ

IF ~~ T#DTREEFRD
  SAY @83
  =
  @84
  =
  @85
  =
  @81
  COPY_TRANS PLAYER1 33
END

END


// Tree of Life Hostile/Tracks Forcibly Ended/Etc.
CHAIN PLAYER1 T#DTREEH
  @86
END
  ++ @87 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEHOS_1
  ++ @88 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEHOS_2
  ++ @89 DO ~IncrementGlobal("T#DaceTreeofLife","GLOBAL",1)~ EXTERN T#DACEJ T#DTREEHOS_3

APPEND T#DACEJ

IF ~~ T#DTREEHOS_1
  SAY @90
  COPY_TRANS PLAYER1 33
END

IF ~~ T#DTREEHOS_2
  SAY @91
  COPY_TRANS PLAYER1 33
END

IF ~~ T#DTREEHOS_3
  SAY @92
  COPY_TRANS PLAYER1 33
END

END


// In Hell
I_C_T PLAYER1 25 T#DaceJ_Hell
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN
@93
=
@94
END

I_C_T PLAYER1 25 T#DaceJ_Hell2
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) !Global("T#DaceRomanceActive","GLOBAL",2)~ THEN
@95
=
@96
END


// final iren battle--obligatory trash-talk(HELLJON.DLG)
INTERJECT_COPY_TRANS HELLJON 7 T#DREN1
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@97
END

INTERJECT_COPY_TRANS HELLJON 8 T#DREN2
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@97
END

INTERJECT_COPY_TRANS HELLJON 9 T#DREN3
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@97
END

INTERJECT_COPY_TRANS HELLJON 10 T#DREN4
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@97
END


// odren--taking on WK challenge
INTERJECT_COPY_TRANS GORODR1 11 T#DWATCHERS
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@98
END


// old priest--slippers
INTERJECT_COPY_TRANS GORPRI1 2 T#DSLIPPERS
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@99
== GORPRI1 @100
END


// yakman
INTERJECT_COPY_TRANS GORMAD1 1 T#DYAKMAN
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@101
END


// deck of many things
INTERJECT_COPY_TRANS GORCAMB 17 T#DDECK
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@102
END


// machine
INTERJECT_COPY_TRANS GORCAR 8 T#DMACHINE
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@103
END


// green “challenge” dragon--after seeing red sentient dragon
INTERJECT_COPY_TRANS FSDRAGON 0 T#DWKDRAGONS
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@104
END


// odren dies
INTERJECT_COPY_TRANS GORODR1 65 T#DODREN
== T#DACEJ IF ~InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@105
END



// ---------------------------------------------
// Dace "Sussing out the PC" Path
// ---------------------------------------------
APPEND T#DACEJ

// 1.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",1)~ T#DS1_1
  SAY @106
  ++ @107 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS1_2
  ++ @108 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS1_3
  ++ @109 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS1_4
END

IF ~~ T#DS1_3
  SAY @110
  ++ @111 + T#DS1_2
  ++ @112 + T#DS1_2
  ++ @113 + T#DS1_2
  ++ @114 + T#DSjackass
END

IF ~~ T#DS1_2
  SAY @115
  ++ @116 + T#DS1_4
  ++ @117 + T#DS1_4
  ++ @118 + T#DS1_4
  ++ @119 + T#DS1_4
END

IF ~~ T#DS1_4
  SAY @120
  ++ @121 + T#DS1_5
  ++ @122 + T#DS1_5
  ++ @123 + T#DS1_5
  ++ @124 + T#DS1_5
END

IF ~~ T#DS1_5
  SAY @125
  IF ~~ EXIT
END

//Dace's generic response to a direct command to shut up.  Getting "jackass" as a GOTO will break her dialogues completely, and they can't be restarted.
IF ~~ T#DSjackass
  SAY @126
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",1)~ EXIT
END
       

// 2.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",3)~ T#DS2_1
  SAY @127
  ++ @128 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS2_2
  ++ @129 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS2_2
  ++ @130 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS2_2
  ++ @131 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS2_2
END

IF ~~ T#DS2_2
  SAY @132
  ++ @133 + T#DS2_3
  ++ @134 + T#DS2_3
  ++ @135 + T#DS2_3
  ++ @136 + T#DS2_3
END

IF ~~ T#DS2_3
  SAY @137
  ++ @138 + T#DS2_4
  ++ @139 + T#DS2_4
  ++ @140 + T#DS2_4
END

IF ~~ T#DS2_4
  SAY @141
  IF ~~ EXIT
END


// 3.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",5)~ T#DS3_1
  SAY @142
  ++ @143 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS3_2
  ++ @144 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS3_2
  ++ @145 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS3_2
  ++ @146 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS3_2
END

IF ~~ T#DS3_2
  SAY @147
  ++ @148 + T#DS3_3
  ++ @149 + T#DS3_3
  ++ @150 + T#DS3_3
  ++ @151 + T#DS3_3
END

IF ~~ T#DS3_3
  SAY @152
  =
  @153
  ++ @154 + T#DS3_5
  ++ @155 + T#DS3_4
  ++ @156 + T#DS3_5
  ++ @157 + T#DS3_5
END

IF ~~ T#DS3_4
  SAY @158
  ++ @159 + T#DS3_6
  ++ @160 + T#DS3_5  
  ++ @161 + T#DS3_5
END

IF ~~ T#DS3_5
  SAY @162
  ++ @163 + T#DS3_6
  ++ @164 + T#DS3_6
  ++ @165 + T#DS3_6
END

IF ~~ T#DS3_6
  SAY @166
  ++ @167 + T#DS3_7
  ++ @168 + T#DS3_7
  ++ @169 + T#DS3_7
END

IF ~~ T#DS3_7
  SAY @170
  ++ @171 + T#DS3_8
  ++ @172 + T#DS3_8
  ++ @173 + T#DS3_8
  ++ @174 + T#DS3_8
END

IF ~~ T#DS3_8
  SAY @175
  IF ~~ EXIT
END


// 4.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",7)~ T#DS4_1
  SAY @176
  ++ @177 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DSjackass
  ++ @178 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS4_2
  ++ @179 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS4_2
END

IF ~~ T#DS4_2
  SAY @180
  ++ @181 + T#DS4_3
  ++ @182 + T#DS4_4
  ++ @183 + T#DS4_5
  ++ @184 + T#DS4_6
END

IF ~~ T#DS4_3
  SAY @185
  IF ~~ EXIT
END

IF ~~ T#DS4_4
  SAY @186
  IF ~~ EXIT
END

IF ~~ T#DS4_5
  SAY @187
  IF ~~ EXIT  
END

IF ~~ T#DS4_6
  SAY @188
  IF ~~ EXIT
END


// 5.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",9)~ T#DS5_1
  SAY @189
  ++ @190 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS5_2
  ++ @191 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS5_3
  ++ @192 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS5_2
  ++ @193 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS5_3
END

IF ~~ T#DS5_2
  SAY @194
  IF ~~ EXIT
END

IF ~~ T#DS5_3
  SAY @195
  IF ~~ EXIT
END


// 6.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",11)~ T#DS6_1
  SAY @196
  ++ @197 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS6_2
  ++ @198 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS6_2
  ++ @199 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS6_2
  ++ @200 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS6_2
  ++ @201 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DSjackass
END

IF ~~ T#DS6_2
  SAY @202
  =
  @203
  ++ @204 + T#DS6_3
  ++ @205 + T#DS6_4
  ++ @206 + T#DS6_3
  ++ @207 + T#DS6_4
END

IF ~~ T#DS6_3
  SAY @208
  =
  @209
  ++ @210 + T#DS6_5
  ++ @211 + T#DS6_6
  ++ @212 + T#DS6_6
END


IF ~~ T#DS6_4
  SAY @213
  =
  @214
  IF ~~ EXIT
END

IF ~~ T#DS6_5
  SAY @215
  IF ~~ EXIT
END

IF ~~ T#DS6_6
  SAY @216  
  IF ~~ EXIT
END

// 7.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",13)~ T#DS7_1
  SAY @217
  ++ @218 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS7_2
  ++ @219 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS7_2
  ++ @220 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS7_2
  ++ @221 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS7_2
  ++ @222 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS7_2
  ++ @223 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS7_2
END

IF ~~ T#DS7_2
  SAY @224
  ++ @225 + T#DS7_4
  ++ @226 + T#DS7_4
  ++ @227 + T#DS7_7
  ++ @228 + T#DS7_4
  ++ @229 + T#DS7_4
  ++ @230 + T#DS7_4  
  ++ @231 + T#DS7_3
END

IF ~~ T#DS7_3
  SAY @232
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",3)~ EXIT
END

IF ~~ T#DS7_7
  SAY @233
  IF ~~ EXIT
END 

IF ~~ T#DS7_4
  SAY @234
  ++ @235 + T#DS7_5
  ++ @236 + T#DS7_5
  ++ @237 + T#DS7_5
  ++ @238 + T#DS7_5
  ++ @239 + T#DS7_6
  ++ @240 + T#DS7_6
END

IF ~~ T#DS7_5
  SAY @241
  IF ~~ EXIT
END

IF ~~ T#DS7_6
  SAY @242
  IF ~~ EXIT
END


// 8.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",15)~ T#DS8_1
  SAY @243
  ++ @244 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS8_2
  ++ @245 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS8_2
  ++ @246 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS8_2
  ++ @247 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS8_2
END

IF ~~ T#DS8_2
  SAY @248
  =
  @249
  =
  @250
  ++ @251 + T#DSjackass
  ++ @252 + T#DS8_3
  ++ @253 + T#DS8_3
END

IF ~~ T#DS8_3
  SAY @254
  =
  @255
  ++ @256 + T#DS8_6
  ++ @257 + T#DS8_6
  ++ @258 + T#DS8_4
  ++ @259 + T#DS8_6
  ++ @260 + T#DS8_5
END

IF ~~ T#DS8_4
  SAY @261
  IF ~~ EXIT
END

IF ~~ T#DS8_5
  SAY @262
  IF ~~ EXIT
END

IF ~~ T#DS8_6
  SAY @263
  ++ @264 + T#DS8_8
  ++ @265 + T#DS8_8
  ++ @266 + T#DS8_8
  ++ @267 + T#DS8_7
  ++ @268 + T#DS8_8
END

IF ~~ T#DS8_7
  SAY @269
  IF ~~ EXIT
END

IF ~~ T#DS8_8
  SAY @270
  IF ~~ EXIT
END


// 9.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",17)~ T#DS9_1
  SAY @271
  ++ @272 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS9_3
  ++ @273 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS9_2
  ++ @274 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS9_2
  ++ @275 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS9_3
  ++ @276 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS9_3
  ++ @277 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS9_3
END

IF ~~ T#DS9_2
  SAY @278
  =
  @279
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",1)~ EXIT
END

IF ~~ T#DS9_3
  SAY @280
  ++ @281 + T#DS9_4
  ++ @282 + T#DS9_4
  ++ @283 + T#DS9_4
  ++ @284 + T#DS9_4
END

IF ~~ T#DS9_4
  SAY @285
  ++ @286 + T#DS9_5
  ++ @287 + T#DS9_6
  ++ @288 + T#DS9_6
  ++ @289 + T#DS9_5
END

IF ~~ T#DS9_5
  SAY @290
  =
  @291
  =
  @292
  ++ @293 + T#DS9_7
  ++ @294 + T#DS9_7
  ++ @295 + T#DS9_7
  ++ @296 + T#DS9_7
END

IF ~~ T#DS9_6
  SAY @297
  =
  @292
  ++ @293 + T#DS9_7
  ++ @294 + T#DS9_7
  ++ @295 + T#DS9_7
  ++ @296 + T#DS9_7
END

IF ~~ T#DS9_7
  SAY @298
  =
  @299
  =
  @300
  IF ~~ EXIT
END

// 10.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",19)~ T#DS10_1
  SAY @301
  ++ @302 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS10_2
  ++ @303 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS10_2
  ++ @252 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS10_2
  ++ @304 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DSjackass
END

IF ~~ T#DS10_2
  SAY @305
  ++ @306 + T#DS10_3
  ++ @307 + T#DS10_3
  ++ @308 + T#DSjackass
END

IF ~~ T#DS10_3
  SAY @309
  ++ @310 + T#DS10_5
  ++ @311 + T#DS10_4  
  ++ @312 + T#DS10_4
END

IF ~~ T#DS10_4
  SAY @313
  ++ @314 + T#DS10_6
  ++ @315 + T#DS10_5
  ++ @316 + T#DS10_6
END

IF ~~ T#DS10_5
  SAY @317
  IF ~~ EXIT
END

IF ~~ T#DS10_6
  SAY @318
  =
  @319
  IF ~~ EXIT
END

// 11.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",21)~ T#DS13_1
  SAY @320
  ++ @321 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS13_2
  ++ @322 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS13_2 
  ++ @323 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS13_2
  ++ @324 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS13_2 
END

IF ~~ T#DS13_2
  SAY @325
  ++ @321 + T#DS13_3
  ++ @326 + T#DS13_3 
  ++ @327 + T#DS13_3 
END

IF ~~ T#DS13_3
  SAY @328
  ++ @329 + T#DS13_5
  ++ @330 + T#DS13_4
  ++ @331 + T#DS13_5
END

IF ~~ T#DS13_4
  SAY @332
  =
  @333
  IF ~~ EXIT
END 

IF ~~ T#DS13_5
  SAY @334
  IF ~~ EXIT
END


// Suss Talk 12 "Just Ducky"
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",23)~ T#DS12
  SAY @335
  IF ~OR(2) !InParty("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ EXTERN MINSCJ T#DS12_minsc
END

END


CHAIN MINSCJ T#DS12_minsc
  @336
  == T#DACEJ @337
  == MINSCJ @338
  DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~
EXIT


APPEND T#DACEJ

// 13.
IF ~RealGlobalTimerExpired("T#DaceSussTalksTimer","GLOBAL") Global("T#DaceSussTalks","GLOBAL",25)~ T#DS14_1
  SAY @339
  ++ @340 DO ~IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS14_2
  ++ @341 DO ~IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS14_2
  ++ @342 DO ~IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS14_2
  ++ @343 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceSussTalks","GLOBAL",1)~ + T#DS14_2
END

IF ~~ T#DS14_2
  SAY @344
  =
  @345
  =
  @346
  ++ @347 + T#DS14_4
  ++ @348 + T#DS14_3
  ++ @349 + T#DS14_3
  ++@350 + T#DS14_3
  ++ @351 + T#DS14_4
END

IF ~~ T#DS14_3
  SAY @352
   IF ~~ EXIT
END

IF ~~ T#DS14_4
  SAY @353
  ++ @354 + T#DS14_5
  ++ @355 + T#DS14_6
  ++ @356 + T#DS14_6
  ++ @357 + T#DS14_5
END

IF ~~ T#DS14_5
  SAY @358
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",1)~ EXIT
END

IF ~~ T#DS14_6
  SAY @359
  IF ~~ EXIT
END


// ---------------------------------------------
// Dace "Intermediate" Path
// ---------------------------------------------


//SOA INT 1
IF ~RealGlobalTimerExpired("T#DaceIntTalksTimer","GLOBAL") Global("T#DaceIntTalks","GLOBAL",1)~ T#DI1_1
  SAY @360
  ++ @361 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI1_2
  ++ @362 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI1_2
  ++ @363 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI1_2
  ++ @364 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI1_2
END

IF ~~ T#DI1_2
  SAY @365
  = 
  @366
  ++ @367 + T#DI1_3
  ++ @368 + T#DI1_3
  ++ @369 + T#DI1_3
  ++ @370 + T#DI1_3
END

IF ~~ T#DI1_3
  SAY @371
  =
  @372
  =
  @373
  ++ @374 + T#DI1_4
  ++ @375 + T#DI1_5
  ++ @376 + T#DI1_6
  ++ @377 + T#DI1_7
  ++ @378 + T#DI1_8
  ++ @379 + T#DI1_6
END

IF ~~ T#DI1_4
  SAY @380
  IF ~~ EXIT
END

IF ~~ T#DI1_5
  SAY @381
  IF ~~ EXIT
END 

IF ~~ T#DI1_6
  SAY @382
  IF ~~ EXIT
END

IF ~~ T#DI1_7
  SAY @383
  IF ~~ EXIT
END

IF ~~ T#DI1_8
  SAY @384
  IF ~~ EXIT
END


//SOA INT 2
IF ~RealGlobalTimerExpired("T#DaceIntTalksTimer","GLOBAL") Global("T#DaceIntTalks","GLOBAL",3)~ T#DI2_1
  SAY @385 
  ++ @386 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI2_2
  ++ @387 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI2_2
  ++ @388 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI2_2
  ++ @389 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DIjackass
END

IF ~~ T#DIjackass
  SAY @390
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",1)~ EXIT
END

IF ~~ T#DI2_2
  SAY @391
  =
  @392
  =
  @393
  =
  @394
  =
  @395
  ++ @396 + T#DI2_3
  ++ @397 + T#DI2_5
  ++ @398 + T#DI2_5
  ++ @399 + T#DI2_5
END

IF ~~ T#DI2_3
  SAY @400
  =
  @401
  =
  @402
  ++ @403 + T#DI2_4
  ++ @404 + T#DI2_6
  ++ @405 + T#DI2_6
END

IF ~~ T#DI2_4
  SAY @406
  ++ @407 + T#DI2_6
  ++ @408 + T#DI2_6
  ++ @409 + T#DI2_6
  ++ @410 + T#DI2_6
END

IF ~~ T#DI2_5
  SAY @411
  =
  @402
  ++ @412 + T#DI2_6
  ++ @404 + T#DI2_6
  ++ @405 + T#DI2_6
  ++ @413 + T#DI2_6
END

IF ~~ T#DI2_6
  SAY @414
  =
  @415
  =
  @416
  ++ @417 + T#DI2_7
  ++ @418 + T#DI2_7
  ++ @419 + T#DI2_7
  ++ @420 + T#DI2_8
  ++ @421 + T#DI2_9
END

IF ~~ T#DI2_7
  SAY @422
  IF ~~ EXIT
END

IF ~~ T#DI2_8
  SAY @423  
  IF ~~ EXIT
END

IF ~~ T#DI2_9
  SAY @424
  IF ~~ EXIT
END



//SOA INT 3
IF ~RealGlobalTimerExpired("T#DaceIntTalksTimer","GLOBAL") Global("T#DaceIntTalks","GLOBAL",5)~ T#DI7_1
  SAY @425
  ++ @426 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI7_2
  ++ @427 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI7_2
  ++ @428 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI7_2
  ++ @429 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI7_2
END

IF ~~ T#DI7_2
  SAY @430
  ++ @431 + T#DI7_3
  ++ @432 + T#DI7_4
  ++ @433 + T#DI7_5  
  ++ @434 + T#DI7_6
  ++ @435 + T#DI7_7
END

IF ~~ T#DI7_3
  SAY @436
  ++ @437 + T#DI7_7
  ++ @438 + T#DI7_7
  ++ @439 + T#DI7_7  
END

IF ~~ T#DI7_4
  SAY @440
  ++ @437 + T#DI7_7
  ++ @438 + T#DI7_7
  ++ @441 + T#DI7_7
END

IF ~~ T#DI7_5
  SAY @442
  ++ @443 + T#DI7_7
  ++ @437 + T#DI7_7
  ++ @438 + T#DI7_7
END

IF ~~ T#DI7_6
  SAY @444
  ++ @437 + T#DI7_7
  ++ @438 + T#DI7_7
  ++ @445 + T#DI7_7
END

IF ~~ T#DI7_7
  SAY @446
  =
  @447
  ++ @448 + T#DI7_8
  ++ @449 + T#DI7_8
  ++ @450 + T#DI7_8
  ++ @451 + T#DI7_8
END

IF ~~ T#DI7_8
  SAY @452
  IF ~~ EXIT
END

//SOA INT 4
IF ~RealGlobalTimerExpired("T#DaceIntTalksTimer","GLOBAL") Global("T#DaceIntTalks","GLOBAL",7)~ T#DI8_1
  SAY @453
  ++ @454 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI8_2
  ++ @455 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI8_2
  ++ @456 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI8_2
  ++ @457 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI8_2
  ++ @458 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI8_2
END

IF ~~ T#DI8_2
  SAY @459
  ++ @460 + T#DI8_3
  ++ @461 + T#DI8_3
  ++ @462 + T#DI8_3
  ++ @463 + T#DI8_3
  ++ @464 + T#DI8_3
  ++ @465 + T#DI8_3
END

IF ~~ T#DI8_3
  SAY @466
  =
  @467
  ++ @468 + T#DI8_4
  ++ @469 + T#DI8_4
  ++ @470 + T#DI8_4
  ++ @471 + T#DI8_4
  ++ @472 + T#DI8_4
  ++ @473 + T#DI8_5
END

IF ~~ T#DI8_4
  SAY @474
  ++ @475 + T#DI8_5
  ++ @476 + T#DI8_5
  ++ @477 + T#DI8_5
  ++ @478 + T#DI8_5
END

IF ~~ T#DI8_5
  SAY @479
  =
  @480
  IF ~~ EXIT
END


//SOA INT 5
IF ~RealGlobalTimerExpired("T#DaceIntTalksTimer","GLOBAL") Global("T#DaceIntTalks","GLOBAL",9)~ T#DI10_1
  SAY @481
  ++ @482 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI10_2
  ++ @483 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI10_2
  ++ @484 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI10_2
  ++ @485 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI10_2
  ++ @486 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI10_2
END

IF ~~ T#DI10_2
  SAY @487
  =
  @488
  =
  @489
  =
  @490
  ++ @491 + T#DI10_3
  ++ @492 + T#DI10_3
  ++ @493 + T#DI10_3
  ++ @494 + T#DI10_3
END

IF ~~ T#DI10_3
  SAY @495
  ++ @496 + T#DI10_8
  ++ @497 + T#DI10_5
  ++ @498 + T#DI10_6
  ++ @499 + T#DI10_4
  ++ @500 + T#DI10_7
END

IF ~~ T#DI10_4
  SAY @501
  IF ~~ EXIT
END

IF ~~ T#DI10_5
  SAY @502
  IF ~~ EXIT
END

IF ~~ T#DI10_6
  SAY @503
  IF ~~ EXIT
END

IF ~~ T#DI10_7
  SAY @504
  IF ~~ EXIT
END

IF ~~ T#DI10_8
  SAY @505
  IF ~~ EXIT
END

// Only fire if you picked up Dace the first time and aren't in a romance...

//SOA INT 6
IF ~RealGlobalTimerExpired("T#DaceIntTalksTimer","GLOBAL") Global("T#DaceIntTalks","GLOBAL",11)~ T#DI12_1
  SAY @506
  ++ @507 + T#DI12_2
  ++ @508 + T#DI12_2
  ++ @509 + T#DI12_2
  ++ @510 + T#DI12jackass
END

IF ~~ T#DI12_2
  SAY @511
  ++ @512 + T#DI12_5
  ++ @513 + T#DI12_5
  ++ @514 + T#DI12_7
  ++ @515 + T#DI12_3
  ++ @516 + T#DI12_3
  ++ @517 + T#DI12_4
END

IF ~~ T#DI12jackass
  SAY @390
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ T#DI12_3
  SAY @518
  IF ~~ DO ~SetGlobal("T#DaceFriendshipActive","GLOBAL",1) IncrementGlobal("T#DaceIntTalks","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ T#DI12_4
  SAY @519
  =
  @520
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",1) IncrementGlobal("T#DaceIntTalks","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ T#DI12_5
  SAY @521
  =
  @522
  ++ @523 + T#DI12_6
  ++ @524 + T#DI12_6
  ++ @525 + T#DI12_7
  ++ @526 + T#DI12_7
  ++ @527 + T#DI12_3
  ++ @528 + T#DI12_3
END

IF ~~ T#DI12_6
  SAY @529
  =
  @530
  =
  @531
  ++ @532 + T#DI12_3
  ++ @533 + T#DI12_3
  ++ @534 + T#DI12_7
  ++ @535 + T#DI12_7
END

IF ~~ T#DI12_7
  SAY @536
  IF ~~ DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1) RestParty()~ EXIT
END


//SOA INT 7
IF ~Global("T#DaceIntTalks","GLOBAL",13)~ T#DI13_1
  SAY @537
  =
  @538
  ++ @539 DO ~IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI13_2
  ++ @540 DO ~IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI13_3
  ++ @541 DO ~IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI13_4
  ++ @542 DO ~IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI13_5
  ++ @543 DO ~IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI13_6
END

IF ~~ T#DI13_2
  SAY @544
  =
  @545
  ++ @546 + T#DI13_9
  ++ @547 + T#DI13_9
  ++ @548 + T#DI13_8
  ++ @549 + T#DI13_8
END

IF ~~ T#DI13_3
  SAY @550
  ++ @551 + T#DI13_7
  ++ @552 + T#DI13_7
  ++ @553 + T#DI13_5
  ++ @554 + T#DI13_6
END

IF ~~ T#DI13_4
  SAY @555
  ++ @546 + T#DI13_9
  ++ @556 + T#DI13_9
  ++ @548 + T#DI13_8
  ++ @549 + T#DI13_8
END

IF ~~ T#DI13_5
  SAY @557
  =
  @558
  IF ~~ DO ~SetGlobal("T#DaceFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ T#DI13_6
  SAY @559
  =
  @560
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",1)~ EXIT
END

IF ~~ T#DI13_7
  SAY @561
  ++ @546 + T#DI13_9
  ++ @556 + T#DI13_9
  ++ @548 + T#DI13_8
  ++ @549 + T#DI13_8
END

IF ~~ T#DI13_8
  SAY @562
  IF ~~ DO ~SetGlobal("T#DaceRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ T#DI13_9
  SAY @563
  =
  @564
  IF ~~ DO ~SetGlobal("T#DaceRomanceActive","GLOBAL",2)~ EXIT
END




// ---------------------------------------------
// Dace "Romance" Path
// ---------------------------------------------

//ROM SOA 1
IF ~Global("T#DaceRomanceTalks","GLOBAL",1)~ T#DS11_1
  SAY @565
  ++ @566 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DS11_2
  ++ @567 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DS11_2
  ++ @568 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DS11_2
  ++ @569 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DS11_2
END

//ROM SOA 2

IF ~Global("T#DaceRomanceTalks","GLOBAL",3)~ T#DS12_1
  SAY @570
  =
  @571
  ++ @572 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DS12_2
  ++ @573 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DS12_2
  ++ @574 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DS12_2
  ++ @575 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DS12_2
END


//ROM SOA 3
//male
IF ~Global("T#DaceRomanceTalks","GLOBAL",5) Gender(Player1,MALE)~ T#DRS1m_1
  SAY @576
  ++ @577 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS1m_3
  ++ @578 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS1m_2
  ++ @579 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS1m_2
END

IF ~~ T#DRS1m_2
  SAY @580
  ++ @581 + T#DRS1m_4
  ++ @582 + T#DRS1m_4
  ++ @583 + T#DRS1m_5
  ++ @584 + T#DRS1m_5
END

IF ~~ T#DRS1m_3
  SAY @585
  ++ @581 + T#DRS1m_4
  ++ @582 + T#DRS1m_4
  ++ @583 + T#DRS1m_5
  ++ @584 + T#DRS1m_5
END

IF ~~ T#DRS1m_4
  SAY @586
  ++ @587 + T#DRS1m_7
  ++ @588 + T#DRS1m_7
  ++ @589 + T#DRS1m_7
END

IF ~~ T#DRS1m_5
  SAY @590
  ++ @591 + T#DRS1m_6
  ++ @592 + T#DRS1m_6
  ++ @593 + T#DRS1m_6
END

IF ~~ T#DRS1m_6
  SAY @594
  ++ @587 + T#DRS1m_7
  ++ @588 + T#DRS1m_7
  ++ @589 + T#DRS1m_7
END

IF ~~ T#DRS1m_7
  SAY @595
  ++ @596 + T#DRS1m_8
  ++ @597 + T#DRS1m_9
  ++ @598 + T#DRS1m_10
  ++ @599 + T#DRS1m_11
END

IF ~~ T#DRS1m_8
  SAY @600
  IF ~~ EXIT
END

IF ~~ T#DRS1m_9
  SAY @601
  IF ~~ EXIT
END

IF ~~ T#DRS1m_10
  SAY @602
  IF ~~ EXIT
END

IF ~~ T#DRS1m_11
  SAY @603
  IF ~~ EXIT
END


//ROM SOA 3
//female
IF ~Global("T#DaceRomanceTalks","GLOBAL",5) Gender(Player1,FEMALE)~ T#DRS1f_1
  SAY @576
  ++ @577 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS1f_3
  ++ @578 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS1f_2
  ++ @579 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS1f_2
END

IF ~~ T#DRS1f_2
  SAY @604
  ++ @581 + T#DRS1f_4
  ++ @605 + T#DRS1f_4
  ++ @606 + T#DRS1f_4
  ++ @607 + T#DRS1f_5
END

IF ~~ T#DRS1f_3
  SAY @608
  ++ @581 + T#DRS1f_4
  ++ @605 + T#DRS1f_4
  ++ @606 + T#DRS1f_4
  ++ @607 + T#DRS1f_5
END

IF ~~ T#DRS1f_4
  SAY @586
  ++ @587 + T#DRS1f_6
  ++ @588 + T#DRS1f_6
  ++ @589 + T#DRS1f_6
END

IF ~~ T#DRS1f_5
  SAY @609
  ++ @587 + T#DRS1f_6
  ++ @588 + T#DRS1f_6
  ++ @589 + T#DRS1f_6
END

IF ~~ T#DRS1f_6
  SAY @595
  ++ @596 + T#DRS1f_7
  ++ @597 + T#DRS1f_8
  ++ @598 + T#DRS1f_9
  ++ @599 + T#DRS1f_10
END

IF ~~ T#DRS1f_7
  SAY @600
  IF ~~ EXIT
END

IF ~~ T#DRS1f_8
  SAY @601
  IF ~~ EXIT
END

IF ~~ T#DRS1f_9
  SAY @602
  IF ~~ EXIT
END

IF ~~ T#DRS1f_10
  SAY @603
  IF ~~ EXIT
END


//ROM SOA 4

IF ~Global("T#DaceRomanceTalks","GLOBAL",7)~T#DI11_1
  SAY @610
  =
  @611
  ++ @612 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI11_2
  ++ @613 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI11_3
  ++ @614 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI11_4
  ++ @615 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI11_3
END

IF ~~ T#DI11_2
  SAY @616
  =
  @617
  ++ @618 + T#DI11_5
  ++ @619 + T#DI11_6
  ++ @620 + T#DI11_7
  ++ @621 + T#DI11_12
END

IF ~~ T#DI11_3
  SAY @622
  =
  @617
  ++ @618 + T#DI11_5
  ++ @619 + T#DI11_6
  ++ @620 + T#DI11_7
  ++ @621 + T#DI11_12
END

IF ~~ T#DI11_4
  SAY @623
  =
  @617
  ++ @618 + T#DI11_5
  ++ @619 + T#DI11_6
  ++ @620 + T#DI11_7
  ++ @621 + T#DI11_12
END

IF ~~ T#DI11_5
  SAY @624
  ++ @625 + T#DI11_8
  ++ @626 + T#DI11_9
  ++ @627 + T#DI11_10
  ++ @628 + T#DI11_11
END

IF ~~ T#DI11_6
  SAY @629
  ++ @625 + T#DI11_8
  ++ @626 + T#DI11_9
  ++ @627 + T#DI11_10
  ++ @628 + T#DI11_11
END

IF ~~ T#DI11_7
  SAY @630
  ++ @625 + T#DI11_8
  ++ @626 + T#DI11_9
  ++ @627 + T#DI11_10
  ++ @628 + T#DI11_11
END

IF ~~ T#DI11_8
  SAY @631
  IF ~~ EXIT
END

IF ~~ T#DI11_9
  SAY @632
  IF ~~ EXIT
END

IF ~~ T#DI11_10
  SAY @633
  IF ~~ EXIT 
END

IF ~~ T#DI11_11
  SAY @634
  IF ~~ EXIT
END

IF ~~ T#DI11_12
  SAY @635
  IF ~~ EXIT
END


//ROM SOA 5
IF ~Global("T#DaceRomanceTalks","GLOBAL",9)~ T#DRS2_1
  SAY @636
  ++ @637 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS2_2
  ++ @361 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS2_2
  ++ @638 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS2_2
END

IF ~~ T#DRS2_2
  SAY @639
  ++ @640 + T#DRS2_3
  ++ @641 + T#DRS2_3  
  ++ @642 + T#DRS2_3
END

IF ~~ T#DRS2_3
  SAY @643
  ++ @644 + T#DRS2_4
  ++ @645 + T#DRS2_4
  ++ @646 + T#DRS2_4
END

IF ~~ T#DRS2_4
  SAY @647
  ++ @648 + T#DRS2_5
  ++ @649 + T#DRS2_5
  ++ @650 + T#DRS2_5
END

IF ~~ T#DRS2_5
  SAY @651
  ++ @652 + T#DRS2_6
  ++ @653 + T#DRS2_7
  ++ @654 + T#DRS2_8
  ++ @655 + T#DRS2_9
END

IF ~~ T#DRS2_6
  SAY @656
  IF ~~ EXIT
END

IF ~~ T#DRS2_7
  SAY @657
  IF ~~ EXIT
END

IF ~~ T#DRS2_8
  SAY @658
  IF ~~ EXIT
END

IF ~~ T#DRS2_9
  SAY @659
  IF ~~ EXIT
END


//ROM SOA 6
IF ~Global("T#DaceRomanceTalks","GLOBAL",11) OR(2) Class(Player1,FIGHTER_DRUID) Class(Player1,DRUID_ALL)~ T#DI4druid_1
  SAY @660
  ++ @661 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4druid_2
  ++ @662 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4druid_2
  ++ @663 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4druid_2
END


//ROM SOA 6 Monk
IF ~Global("T#DaceRomanceTalks","GLOBAL",11) Class(Player1,MONK)~ T#DI4monk_1
  SAY @664
  ++ @665 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4monk_2
  ++ @666 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4monk_2
  ++ @667 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4monk_2
END


//ROM SOA 6 Paladin
IF ~Global("T#DaceRomanceTalks","GLOBAL",11) Class(Player1,PALADIN_ALL)~ T#DI4pala_1
  SAY @668
  ++ @669 + T#DI4pala_2
  ++ @670 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4pala_2
  ++ @671 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4pala_2
  ++ @672 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4pala_2
END


//ROM SOA 6 Thief
IF ~Global("T#DaceRomanceTalks","GLOBAL",11) OR(2) Class(Player1,FIGHTER_THIEF) Class(Player1,THIEF_ALL)~ T#DI4thief_1
  SAY @673
  ++ @674 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4thief_2
  ++ @675 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4thief_2
  ++ @676 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DIthief_3
END


//ROM SOA 6 Cleric
IF ~Global("T#DaceRomanceTalks","GLOBAL",11) OR(4) Class(Player1,FIGHTER_CLERIC) Class(Player1,CLERIC_ALL) Class(Player1,CLERIC_THIEF) Class(Player1,CLERIC_MAGE)~ T#DIcler_1
  SAY @677
  ++ @678 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4cler_2
  ++ @679 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4cler_2
  ++ @680 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4cler_2
  ++ @681 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4cler_2
END


//ROM SOA 6 Fighter-types
IF ~Global("T#DaceRomanceTalks","GLOBAL",11) OR(3) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,FIGHTER_ALL) Kit(Player1,BARBARIAN)~ T#DI4fight_1
  SAY @682
  ++ @683 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4fight_2
  ++ @684 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4fight_3
  ++ @685 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4fight_4
END


//ROM SOA 6 Mage
IF ~Global("T#DaceRomanceTalks","GLOBAL",11) OR(6) Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,MAGE_THIEF) Class(Player1,FIGHTER_MAGE) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) Class(Player1,BARD_ALL)~ T#DI4mage_1
  SAY @686
  ++ @687 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4mage_2
  ++ @688 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4mage_2
  ++ @689 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4mage_2
  ++ @690 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4mage_2
END


//ROM SOA 6 Ranger
IF ~Global("T#DaceRomanceTalks","GLOBAL",11) OR(2) Class(Player1,CLERIC_RANGER) Class(Player1,RANGER_ALL)~ T#DI4rang_1
  SAY @691
  ++ @692 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4rang_2
  ++ @693 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4rang_2
  ++ @322 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4rang_2
  ++ @694 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI4rang_2
END


//ROM SOA 7
IF ~Global("T#DaceRomanceTalks","GLOBAL",13)~ T#DI3_1
  SAY @695
  ++ @696 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI3_3
  ++ @697 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI3_3
  ++ @698 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI3_2
  ++ @699 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI3_3
  ++ @700 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI3_2
END


//ROM SOA 8
IF ~Global("T#DaceRomanceTalks","GLOBAL",15)~ T#DI5_1
  SAY @701
  ++ @702 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI5_2
  ++ @703 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI5_2
  ++ @704 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI5_2
  ++ @705 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI5_2
  ++ @706 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DIjackass
END


//ROM SOA 9
IF ~Global("T#DaceRomanceTalks","GLOBAL",17)~ T#DI6_1
  SAY @707
  =
  @708
  ++ @709 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI6_2
  ++ @710 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI6_2
  ++ @711 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DIjackass
END


//ROM SOA 10
//GOOD
IF ~Global("T#DaceRomanceTalks","GLOBAL",19) Alignment(Player1,MASK_GOOD)~ T#DRS3g_1
  SAY @712
  ++ @713 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3g_2
  ++ @714 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3g_2
  ++ @715 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3g_2
  ++ @716 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3g_2
END

IF ~~ T#DRS3g_2
  SAY @717
  =
  @718
  ++ @719 + T#DRS3g_3
  ++ @720 + T#DRS3g_4
  ++ @721 + T#DRS3g_5
  ++ @722 + T#DRS3g_3
END

IF ~~ T#DRS3g_3
  SAY @723
  IF ~~ EXIT
END

IF ~~ T#DRS3g_4
  SAY @724
  IF ~~ EXIT
END

IF ~~ T#DRS3g_5
  SAY @725
  IF ~~ EXIT
END

IF ~~ T#DRS3g_6
  SAY @726
  IF ~~ EXIT
END


//ROM SOA 10
//NEUTRAL/EVIL
IF ~Global("T#DaceRomanceTalks","GLOBAL",19) OR(4) Alignment(Player1,LAWFUL_NEUTRAL) Alignment(Player1,NEUTRAL) Alignment(Player1,CHAOTIC_NEUTRAL) Alignment(Player1,MASK_EVIL)~ T#DRS3ne_1
  SAY @712
  ++ @713 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3ne_2
  ++ @714 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3ne_2
  ++ @715 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3ne_2
  ++ @716 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3ne_2
END

IF ~~ T#DRS3ne_2
  SAY @727
  =
  @728
  ++ @719 + T#DRS3ne_3
  ++ @729 + T#DRS3ne_4 
  ++ @730 + T#DRS3ne_5
  ++ @731 + T#DRS3ne_6
  ++ @732 + T#DRS3ne_5
END

IF ~~ T#DRS3ne_3
  SAY @733
  IF ~~ EXIT
END

IF ~~ T#DRS3ne_4
  SAY @734
  IF ~~ EXIT
END

IF ~~ T#DRS3ne_5
  SAY @735
  IF ~~ EXIT
END

IF ~~ T#DRS3ne_6
  SAY @736
  IF ~~ EXIT
END


//ROM SOA 11
IF ~Global("T#DaceRomanceTalks","GLOBAL",21)~ T#DI9_1
  SAY @737
  ++ @738 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI9_2
  ++ @739 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI9_2
  ++ @740 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI9_2
  ++ @741 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DI9_2
  ++ @742 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DIjackass
END


//ROM SOA 12
IF ~Global("T#DaceRomanceTalks","GLOBAL",23)~ T#DRS4_1
  SAY @743
  ++ @744 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3_2
  ++ @745 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3_2
  ++ @746 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3_2
  ++ @747 DO ~RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS3_2
END


//ROM SOA 13
IF ~Global("T#DaceRomanceTalks","GLOBAL",25)~ T#DRS5_1
  SAY @748
  ++ @749 DO ~IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS4_3
  ++ @750 DO ~IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS4_2
  ++ @751 DO ~IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS4_2
  ++ @752 DO ~IncrementGlobal("T#DaceRomanceTalks","GLOBAL",1)~ + T#DRS4_2
END


// ---------------------------------------------
// Dace "Friend" Path
// ---------------------------------------------

//SOA FRIEND 1
IF ~Global("T#DaceFriendTalks","GLOBAL",1)~ T#DS11_1
  SAY @565
  ++ @566 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DS11_2
  ++ @567 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DS11_2
  ++ @568 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DS11_2
  ++ @569 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DS11_2
END

IF ~~ T#DS11_2
  SAY @753
  ++ @754 + T#DS11_3
  ++ @755 + T#DS11_5
  ++ @756 + T#DS11_4
END

IF ~~ T#DS11_3
  SAY @757
  =
  @758
  IF ~~ EXIT
END

IF ~~ T#DS11_4
  SAY @759
  IF ~~ EXIT
END

IF ~~  T#DS11_5
  SAY @760
  =
  @761
  IF ~~ EXIT
END


//SOA FRIEND 2
IF ~Global("T#DaceFriendTalks","GLOBAL",3)~ T#DS12_1
  SAY @570
  =
  @571
  
  ++ @572 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DS12_2
  ++ @573 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DS12_2
  ++ @574 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DS12_2
  ++ @575 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DS12_2
END

IF ~~ T#DS12_2
  SAY @762
  ++ @763 + T#DS12_3
  ++ @764 + T#DS12_3
  ++ @765 + T#DS12_3  
  ++ @766 + T#DS12_3
END

IF ~~ T#DS12_3
  SAY @767
  =
  @768
  =
  @769
  ++ @770 + T#DS12_5
  ++ @771 + T#DS12_4
  ++ @772 + T#DS12_5
  ++ @773 + T#DS12_4
END

IF ~~ T#DS12_4
  SAY @774
  IF ~~ EXIT
END

IF ~~ T#DS12_5
  SAY @775
  IF ~~ EXIT
END


//SOA FRIEND 3
IF ~Global("T#DaceFriendTalks","GLOBAL",5)~ T#DI211_1
  SAY @610
  =
  @776
  ++ @612 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI211_2
  ++ @613 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI211_3
  ++ @614 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI211_4
  ++ @615 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI211_3
END

IF ~~ T#DI211_2
  SAY @616
  =
  @617
  ++ @618 + T#DI211_5
  ++ @619 + T#DI211_6
  ++ @620 + T#DI211_7
  ++ @621 + T#DI211_12
END

IF ~~ T#DI211_3
  SAY @777
  =
  @617
  ++ @618 + T#DI211_5
  ++ @619 + T#DI211_6
  ++ @620 + T#DI211_7
  ++ @621 + T#DI211_12
END

IF ~~ T#DI211_4
  SAY @778
  =
  @617
  ++ @618 + T#DI211_5
  ++ @619 + T#DI211_6
  ++ @620 + T#DI211_7
  ++ @621 + T#DI211_12
END

IF ~~ T#DI211_5
  SAY @779
  ++ @625 + T#DI211_8
  ++ @626 + T#DI211_9
  ++ @627 + T#DI211_10
END

IF ~~ T#DI211_6
  SAY @629
  ++ @625 + T#DI211_8
  ++ @626 + T#DI211_9
  ++ @627 + T#DI211_10
END

IF ~~ T#DI211_7
  SAY @780
  ++ @625 + T#DI211_8
  ++ @626 + T#DI211_9
  ++ @627 + T#DI211_10

END

IF ~~ T#DI211_8
  SAY @781
  IF ~~ EXIT
END

IF ~~ T#DI211_9
  SAY @782
  IF ~~ EXIT
END

IF ~~ T#DI211_10
  SAY @783
  IF ~~ EXIT 
END

IF ~~ T#DI211_12
  SAY @784
  IF ~~ EXIT
END


//SOA FRIEND 4
IF ~Global("T#DaceFriendTalks","GLOBAL",7) Class(Player1,DRUID_ALL)~ T#DI4druid_1
  SAY @660
  ++ @661 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4druid_2
  ++ @662 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4druid_2
  ++ @663 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4druid_2
END

IF ~~ T#DI4druid_2
  SAY @785
  ++ @786 + T#DI4druid_4
  ++ @787 + T#DI4druid_3
  ++ @788 + T#DI4druid_3
END

IF ~~ T#DI4druid_3
  SAY @789
  ++ @790 + T#DI4druid_5
  ++ @791 + T#DI4druid_6
  ++ @792 + T#DI4druid_7
END

IF ~~ T#DI4druid_4
  SAY @793
  ++ @790 + T#DI4druid_5
  ++ @791 + T#DI4druid_6
  ++ @792 + T#DI4druid_7
END

IF ~~ T#DI4druid_5
  SAY @794
  IF ~~ EXIT
END

IF ~~ T#DI4druid_6
  SAY @795
  IF ~~ EXIT
END

IF ~~ T#DI4druid_7
  SAY @796
  IF ~~ EXIT
END


//SOA FRIEND 4 Monk
IF ~Global("T#DaceFriendTalks","GLOBAL",7) Class(Player1,MONK)~ T#DI4monk_1
  SAY @664
  ++ @665 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4monk_2
  ++ @666 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4monk_2
  ++ @667 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4monk_2
END

IF ~~ T#DI4monk_2
  SAY @797
  ++ @798 + T#DI4monk_3
  ++ @799 + T#DI4monk_3
  ++ @800 + T#DI4monk_3
  ++ @801 + T#DI4monk_3
END

IF ~~ T#DI4monk_3
  SAY @802
  IF ~~ EXIT
END


//SOA FRIEND 4 Paladin
IF ~Global("T#DaceFriendTalks","GLOBAL",7) Class(Player1,PALADIN_ALL)~ T#DI4pala_1
  SAY @668
  ++ @669 + T#DI4pala_2
  ++ @670 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4pala_2
  ++ @671 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4pala_2
  ++ @672 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4pala_2
END

IF ~~ T#DI4pala_2
  SAY @803
  ++ @804 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI4pala_3
  ++ @805 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI4pala_3
  ++ @806 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI4pala_3
  ++ @807 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceIntTalks","GLOBAL",1)~ + T#DI4pala_3
END

IF ~~ T#DI4pala_3
  SAY @808
  IF ~~ EXIT
END


//SOA FRIEND 4 Thief
IF ~Global("T#DaceFriendTalks","GLOBAL",7) Class(Player1,THIEF_ALL)~ T#DI4thief_1
  SAY @673
  ++ @674 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4thief_2
  ++ @675 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4thief_2
  ++ @676 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DIthief_3
END

IF ~~ T#DI4thief_2
  SAY @809
  IF ~~ EXIT
END

IF ~~ T#DIthief_3
  SAY @810
  IF ~~ EXIT
END


//SOA FRIEND 4 Cleric
IF ~Global("T#DaceFriendTalks","GLOBAL",7) Class(Player1,CLERIC_ALL)~ T#DIcler_1
  SAY @677
  ++ @678 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4cler_2
  ++ @679 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4cler_2
  ++ @680 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4cler_2
  ++ @681 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4cler_2
END

IF ~~ T#DI4cler_2
  SAY @811
  =
  @812
  ++ @813 + T#DI4cler_3
  ++ @814 + T#DI4cler_3
  ++ @815 + T#DI4cler_3
  ++ @816 + T#DI4cler_3
END

IF ~~ T#DI4cler_3
  SAY @817
  IF ~~ EXIT
END


//SOA FRIEND 4 Fighter-types
IF ~Global("T#DaceFriendTalks","GLOBAL",7) OR(2) Class(Player1,FIGHTER_ALL)~ T#DI4fight_1
  SAY @682
  ++ @683 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4fight_2
  ++ @684 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4fight_3
  ++ @685 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4fight_4
END

IF ~~ T#DI4fight_2
  SAY @818
  ++ @819 + T#DI4fight_5
  ++ @820 + T#DI4fight_5
  ++ @821 + T#DI4fight_5
  ++ @822 + T#DI4fight_5
  ++ @823 + T#DI4fight_5
  ++ @824 + T#DI4fight_5
  ++ @825 + T#DI4fight_5
END

IF ~~ T#DI4fight_3
  SAY @826
  ++ @819 + T#DI4fight_5
  ++ @820 + T#DI4fight_5
  ++ @821 + T#DI4fight_5
  ++ @822 + T#DI4fight_5
  ++ @823 + T#DI4fight_5
  ++ @824 + T#DI4fight_5
  ++ @825 + T#DI4fight_5
END

IF ~~ T#DI4fight_4
  SAY @827
  ++ @819 + T#DI4fight_5
  ++ @820 + T#DI4fight_5
  ++ @821 + T#DI4fight_5
  ++ @822 + T#DI4fight_5
  ++ @823 + T#DI4fight_5
  ++ @824 + T#DI4fight_5
  ++ @825 + T#DI4fight_5
END

IF ~~ T#DI4fight_5
  SAY @828
  =
  @829
  IF ~~ EXIT
END


//SOA FRIEND 4 Mage
IF ~Global("T#DaceFriendTalks","GLOBAL",7) Class(Player1,MAGE_ALL)~ T#DI4mage_1
  SAY @686
  ++ @687 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4mage_2
  ++ @688 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4mage_2
  ++ @689 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4mage_2
  ++ @690 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4mage_2
END

IF ~~ T#DI4mage_2
  SAY @830
  ++ @831 + T#DI4mage_3
  ++ @832 + T#DI4mage_3
  ++ @833 + T#DI4mage_3
  ++ @834 + T#DI4mage_3
END

IF ~~ T#DI4mage_3
  SAY @835
  ++ @836 + T#DI4mage_4
  ++ @837 + T#DI4mage_4
  ++ @838 + T#DI4mage_4
  ++ @839 + T#DI4mage_4
END

IF ~~ T#DI4mage_4
  SAY @840
  ++ @841 + T#DI4mage_5
  ++ @842 + T#DI4mage_6
  ++ @843 + T#DI4mage_7 
  ++ @844 + T#DI4mage_7
END

IF ~~ T#DI4mage_5
  SAY @845
  IF ~~ EXIT
END

IF ~~ T#DI4mage_6
  SAY @846
  IF ~~ EXIT
END

IF ~~ T#DI4mage_7
  SAY @847
  IF ~~ EXIT
END


//SOA FRIEND 4 Ranger
IF ~Global("T#DaceFriendTalks","GLOBAL",7) Class(Player1,RANGER_ALL)~ T#DI4rang_1
  SAY @691
  ++ @692 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4rang_2
  ++ @693 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4rang_2
  ++ @322 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4rang_2
  ++ @694 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI4rang_2
END

IF ~~ T#DI4rang_2
  SAY @848
  ++ @849 + T#DI4rang_4
  ++ @850 + T#DI4rang_4
  ++ @851 + T#DI4rang_3
  ++ @852 + T#DI4rang_4
END

IF ~~ T#DI4rang_3
  SAY @853
  IF ~~ EXIT
END

IF ~~ T#DI4rang_4
  SAY @854
  ++ @855 + T#DI4rang_5
  ++ @856 + T#DI4rang_6
  ++ @857 + T#DI4rang_7
END

IF ~~ T#DI4rang_5
  SAY @858
  IF ~~ EXIT
END

IF ~~ T#DI4rang_6
  SAY @859
  IF ~~ EXIT
END

IF ~~ T#DI4rang_7
  SAY @860
  IF ~~ EXIT
END


//SOA FRIEND 5
IF ~Global("T#DaceFriendTalks","GLOBAL",9)~ T#DI3_1
  SAY @695
  ++ @861 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI3_3
  ++ @697 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI3_3
  ++ @698 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI3_2
  ++ @699 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI3_3
  ++ @700 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI3_2
END

IF ~~ T#DI3_2
  SAY @862
  ++ @863 + T#DI3_4
  ++ @864 + T#DI3_4
  ++ @865 + T#DI3_4
  ++ @866 + T#DI3_4
END

IF ~~ T#DI3_3
  SAY @867
  ++ @863 + T#DI3_4
  ++ @864 + T#DI3_4
  ++ @865 + T#DI3_4
  ++ @866 + T#DI3_4
END

IF ~~ T#DI3_4
  SAY @868
  =
  @869
  ++ @870 + T#DI3_5
  ++ @871 + T#DI3_6
  ++ @872 + T#DI3_5
  ++ @873 + T#DI3_6
  ++ @874 + T#DI3_6
  ++ @875 + T#DI3_6
END  

IF ~~ T#DI3_5
  SAY @876
  IF ~~ EXIT
END

IF ~~ T#DI3_6
  SAY @877
  IF ~~ EXIT
END

//SOA FRIEND 6
IF ~Global("T#DaceFriendTalks","GLOBAL",11)~ T#DI5_1
  SAY @701
  ++ @702 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI5_2
  ++ @703 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI5_2
  ++ @704 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI5_2
  ++ @705 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI5_2
  ++ @706 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DIjackass
END

IF ~~ T#DI5_2
  SAY @878
  ++ @879 + T#DI5_3
  ++ @880 + T#DI5_3
  ++ @881 + T#DI5_3
  ++ @882 + T#DI5_3
  ++ @883 + T#DI5_3
END

IF ~~ T#DI5_3
  SAY @884
  =
  @885
  =
  @886
  ++ @887 + T#DI5_4
  ++ @888 + T#DI5_5
  ++ @889 + T#DI5_5
  ++ @890 + T#DI5_4
END

IF ~~ T#DI5_4
  SAY @891
  IF ~~ EXIT
END

IF ~~ T#DI5_5
  SAY @892
  IF ~~ EXIT
END


//SOA FRIEND 7
IF ~Global("T#DaceFriendTalks","GLOBAL",13)~ T#DI6_1
  SAY @707
  =
  @708
  ++ @709 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI6_2
  ++ @710 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI6_2
  ++ @711 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DIjackass
END

IF ~~ T#DI6_2
  SAY @893
  =
  @894
  =
  @895
  =
  @896
  ++ @897 + T#DI6_3
  ++ @898 + T#DI6_4
  ++ @899 + T#DI6_4
  ++ @900 + T#DI6_4
END

IF ~~ T#DI6_3
  SAY @901
  ++ @407 + T#DI6_4
  ++ @902 + T#DI6_4
  ++ @903 + T#DI6_4
END

IF ~~ T#DI6_4
  SAY @904
  =
  @905
  IF ~~ EXIT
END


//SOA FRIEND 8
IF ~Global("T#DaceFriendTalks","GLOBAL",15)~ T#DI9_1
  SAY @737
  ++ @738 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI9_2
  ++ @739 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI9_2
  ++ @740 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI9_2
  ++ @741 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DI9_2
  ++ @742 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DIjackass
END

IF ~~ T#DI9_2
  SAY @906
  ++ @907 + T#DI9_3
  ++ @908 + T#DI9_3
  ++ @909 + T#DI9_3
  ++ @910 + T#DI9_3
END

IF ~~ T#DI9_3
  SAY @911
  ++ @912 + T#DI9_4
  ++ @913 + T#DI9_4
  ++ @914 + T#DI9_4
  ++ @915 + T#DI9_4
END

IF ~~ T#DI9_4
  SAY @916
  IF ~~ EXIT
END


//SOA FRIEND 9
IF ~Global("T#DaceFriendTalks","GLOBAL",17)~ T#DRS3_1
  SAY @743
  ++ @744 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRS3_2
  ++ @745 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRS3_2
  ++ @746 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRS3_2
  ++ @747 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRS3_2
END

IF ~~ T#DRS3_2 
  SAY @917
  ++ @918 + T#DRS3_3
  ++ @919 + T#DRS3_3
  ++ @920 + T#DRS3_3
  ++ @921 + T#DRS3_3
END

IF ~~ T#DRS3_3
  SAY @922
  =
  @923
  ++ @924 + T#DRS3_4
  ++ @925 + T#DRS3_5
  ++ @926 + T#DRS3_4
  ++ @927 + T#DRS3_6
  ++ @928 + T#DRS3_6
  ++ @929 + T#DRS3_7
END

IF ~~ T#DRS3_4
  SAY @930 
  IF ~~ EXIT
END

IF ~~ T#DRS3_5
  SAY @931
  IF ~~ EXIT
END

IF ~~ T#DRS3_6
  SAY @932 
  IF ~~ EXIT
END

IF ~~ T#DRS3_7
  SAY @933
  IF ~~ EXIT
END


//SOA FRIEND 10
IF ~Global("T#DaceFriendTalks","GLOBAL",19)~ T#DRSF1_1
  SAY @934
  ++ @935 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRSF1_2
  ++ @936 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRSF1_2
  ++ @937 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRSF1_2
  ++ @938 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRSF1_2
END

IF ~~ T#DRSF1_2 
  SAY @939
  ++ @940 + T#DRSF1_3
  ++ @941 + T#DRSF1_4
  ++ @942 + T#DRSF1_5
  ++ @943 + T#DRSF1_6
  ++ @944 + T#DRSF1_7
END

IF ~~ T#DRSF1_3
  SAY @945  
  IF ~~ EXIT
END

IF ~~ T#DRSF1_4
  SAY @946
  IF ~~ EXIT
END

IF ~~ T#DRSF1_5
  SAY @947  
  IF ~~ EXIT
END

IF ~~ T#DRSF1_6
  SAY @948
  IF ~~ EXIT
END

IF ~~ T#DRSF1_7
  SAY @949
  IF ~~ EXIT
END


//SOA FRIEND 11
IF ~Global("T#DaceFriendTalks","GLOBAL",21)~ T#DRSF2_1
  SAY @950
  ++ @951 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRSF2_2
  ++ @952 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRSF2_2
  ++ @715 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRSF2_2
  ++ @953 DO ~RealSetGlobalTimer("T#DaceFriendTalksTimer","GLOBAL",2700) IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRSF2_2
END

IF ~~ T#DRSF2_2
  SAY @954
  ++ @955 + T#DRSF2_3
  ++ @956 + T#DRSF2_4 
  ++ @957 + T#DRSF2_5
  ++ @958 + T#DRSF2_6
  ++ @959 + T#DRSF2_5
END

IF ~~ T#DRSF2_3
  SAY @960
  IF ~~ EXIT
END

IF ~~ T#DRSF2_4
  SAY @961
  IF ~~ EXIT
END

IF ~~ T#DRSF2_5
  SAY @962
  IF ~~ EXIT
END

IF ~~ T#DRSF2_6
  SAY @963
  IF ~~ EXIT
END


//SOA FRIEND 12
IF ~Global("T#DaceFriendTalks","GLOBAL",23)~ T#DRS4_1
  SAY @964
  ++ @749 DO ~IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRS4_3
  ++ @750 DO ~IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRS4_2
  ++ @751 DO ~IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRS4_2
  ++ @752 DO ~IncrementGlobal("T#DaceFriendTalks","GLOBAL",1)~ + T#DRS4_2
END

IF ~~ T#DRS4_2
  SAY @965
  =
  @966
  ++ @967 + T#DRS4_4
  ++ @968 + T#DRS4_4
  ++ @969 + T#DRS4_5
  ++ @970 + T#DRS4_5
  + ~PartyGoldGT(1999)~ + @971 + T#DRS4_6
END

IF ~~ T#DRS4_3
  SAY @972
  =
  @966
  ++ @973 + T#DRS4_4
  ++ @968 + T#DRS4_4
  ++ @969 + T#DRS4_5
  ++ @970 + T#DRS4_5
  + ~PartyGoldGT(1999)~ + @971 + T#DRS4_6
END

IF ~~ T#DRS4_4
  SAY @974
  =
  @975
  + ~PartyGoldGT(1999)~ + @976 + T#DRS4_6
  + ~PartyGoldGT(1999)~ + @977 + T#DRS4_6
  ++ @978 + T#DRS4_5
  ++ @979 + T#DRS4_5
  ++ @980 + T#DRS4_8
END

IF ~~ T#DRS4_5
  SAY @981
  =
  @982
  + ~PartyGoldGT(1999)~ + @983 + T#DRS4_6
  + ~PartyGoldGT(1999)~ + @984 + T#DRS4_6
  ++ @985 + T#DRS4_7
  ++ @986 + T#DRS4_8
END

IF ~~ T#DRS4_6
  SAY @987
  =
  @988
  IF ~~ DO ~TakePartyGold(2000)~ EXIT
END

IF ~~ T#DRS4_7
  SAY @989
  =
  @990
  IF ~~ DO ~SetGlobal("T#DaceJackass","GLOBAL",1)~ EXIT
END

IF ~~ T#DRS4_8
  SAY @991
  =
  @992
  IF ~~ EXIT
END

END


// ---------------------------------------------
// Dace floating talks
// ---------------------------------------------
APPEND BT#DACE

//little boy
IF WEIGHT #-2 ~InParty(Myself)
    See(Player1)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY]) 
    Gender(Player1,MALE)
    Global("T#DaceChildTalk","GLOBAL",0)~ T#DSGLB_1
  SAY @993
  ++ @994 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLB_2
  ++ @995 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLB_3
  ++ @996 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLB_4
  ++ @997 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLB_5
  ++ @998 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLB_6
END

IF ~~ T#DSGLB_2
  SAY @999
  IF ~~ EXIT
END

IF ~~ T#DSGLB_3
  SAY @1000
  IF ~~ EXIT 
END

IF ~~ T#DSGLB_4
  SAY @1001
  IF ~~ EXIT
END

IF ~~ T#DSGLB_5
  SAY @1002
  IF ~~ EXIT
END

IF ~~ T#DSGLB_6
  SAY @1003
  IF ~~ EXIT
END


//little girl
IF WEIGHT #-2 ~InParty(Myself)
    See(Player1)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY]) 
    Gender(Player1,FEMALE)
    Global("T#DaceChildTalk","GLOBAL",0)~ T#DSGLG_1
  SAY @1004
  ++ @1005 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLG_2
  ++ @1006 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLG_3
  ++ @1007 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLG_4
  ++ @1008 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLG_5
  ++ @1009 DO ~IncrementGlobal("T#DaceChildTalk","GLOBAL",1)~ + T#DSGLG_6
END

IF ~~ T#DSGLG_2
  SAY @1010
  IF ~~ EXIT
END

IF ~~ T#DSGLG_3
  SAY @1011 
  IF ~~ EXIT
END

IF ~~ T#DSGLG_4
  SAY @1012
  IF ~~ EXIT
END

IF ~~ T#DSGLG_5
  SAY @1013
  IF ~~ EXIT
END

IF ~~ T#DSGLG_6
  SAY @1014
  IF ~~ EXIT
END


//friends w/girls/boys MALE
IF WEIGHT #-2 ~InParty(Myself)
    See(Player1)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY]) 
    Gender(Player1,MALE)
    Global("T#DaceGenderFriendsTalk","GLOBAL",0)~ T#DSGFM_1
  SAY @1015
  ++ @1016 DO ~IncrementGlobal("T#DaceGenderFriendsTalk","GLOBAL",1)~ + T#DSGFM_2
  ++ @1017 DO ~IncrementGlobal("T#DaceGenderFriendsTalk","GLOBAL",1)~ + T#DSGFM_3
  ++ @1018 DO ~IncrementGlobal("T#DaceGenderFriendsTalk","GLOBAL",1)~ + T#DSGFM_4
  ++ @1019 DO ~IncrementGlobal("T#DaceGenderFriendsTalk","GLOBAL",1)~ + T#DSGFM_5
END

IF ~~ T#DSGFM_2
  SAY @1020
  IF ~~ EXIT
END

IF ~~ T#DSGFM_3
  SAY @1021
  IF ~~ EXIT
END

IF ~~ T#DSGFM_4
  SAY @1022
  IF ~~ EXIT
END

IF ~~ T#DSGFM_5
  SAY @1023
  IF ~~ EXIT
END


//friends w/girls/boys FEMALE
IF WEIGHT #-2 ~InParty(Myself)
    See(Player1)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY]) 
    Gender(Player1,FEMALE)
    Global("T#DaceGenderFriendsTalk","GLOBAL",0)~ T#DSGFF_1
  SAY @1024
  ++ @1025 DO ~IncrementGlobal("T#DaceGenderFriendsTalk","GLOBAL",1)~ + T#DSGFF_2
  ++ @1026 DO ~IncrementGlobal("T#DaceGenderFriendsTalk","GLOBAL",1)~ + T#DSGFF_3
  ++ @1018 DO ~IncrementGlobal("T#DaceGenderFriendsTalk","GLOBAL",1)~ + T#DSGFF_4
  ++ @1019 DO ~IncrementGlobal("T#DaceGenderFriendsTalk","GLOBAL",1)~ + T#DSGFF_5
END

IF ~~ T#DSGFF_2
  SAY @1021
  IF ~~ EXIT
END

IF ~~ T#DSGFF_3
  SAY @1027
  IF ~~ EXIT
END

IF ~~ T#DSGFF_4
  SAY @1022
  IF ~~ EXIT
END

IF ~~ T#DSGFF_5
  SAY @1023
  IF ~~ EXIT
END

END


// ---------------------------------------------
// Dace Bodhi Abduction
// ---------------------------------------------
BEGIN T#DACVMP

// bodhinapping--when Bodhi says she's snatching Dace(BOHDIAMB)
ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2) !InParty("T#Dace") !Global("T#DaceRomanceActive","GLOBAL",2)~ DO 0

INTERJECT BODHIAMB 5 T#DaceBodhiAbduct
  == BODHIAMB IF ~Global("T#DaceRomanceActive","GLOBAL",2) InParty("T#Dace")~ THEN
  @1028
END
  IF ~OR(2) !InPartyAllowDead("T#Dace") Dead("T#Dace")~ EXTERN BODHIAMB 6
  IF ~InPartyAllowDead("T#Dace") !Dead("T#Dace")~ EXTERN BODHIAMB T#DaceBodhiAbduct_1
  
CHAIN BODHIAMB T#DaceBodhiAbduct_1
  @1029
  == T#DACEJ @1030
END
  IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("t#dact1")~
  UNSOLVED_JOURNAL @1031 EXIT

// Bodhi section 2
ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("T#DaceVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 T#DaceBodhi_1
  == C6BODHI IF ~Global("T#DaceVampire","GLOBAL",2)~ THEN 
  @1032
END
  ++ @1033 EXTERN C6BODHI T#DaceBodhi_2
  ++ @1034 EXTERN C6BODHI T#DaceBodhi_2
  ++ @1035 EXTERN C6BODHI T#DaceBodhi_2
  ++ @1036 EXTERN C6BODHI T#DaceBodhi_3


APPEND C6BODHI

IF ~~ T#DaceBodhi_2
SAY @1037
IF ~~ DO ~AddJournalEntry(@1038,QUEST)~ EXTERN T#DACVMP T#DaceBodhi_4
END

IF ~~ T#DaceBodhi_3
  SAY @1039
  IF ~~ + T#DaceBodhi_2
END

END

CHAIN T#DACVMP T#DaceBodhi_4
  @1040
  == C6BODHI @1041
EXTERN C6BODHI 28


// Normal new options...
EXTEND_BOTTOM C6ELHAN2 70
  + ~PartyHasItem("T#DACBDY")~ + @1042 GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 #5
  + ~Global("RevealUmar","GLOBAL",1) PartyHasItem("T#DACBDY")~ + @1043 GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
  + ~Global("RevealUmar","GLOBAL",1) PartyHasItem("T#DACBDY")~ + @1043 GOTO 10
END

EXTEND_BOTTOM IMNBOOK1 0
  + ~Global("RevealUmar","GLOBAL",1) PartyHasItem("T#DACBDY")~ + @1044 GOTO 4
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("T#DACBDY")~ 1 2 3


// Appending Oghmanite's dialogue
APPEND OGHMONK1
IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1) PartyHasItem("T#DACBDY")~ T#DaceOghma
  SAY @1045
  ++ @1046 + 5
  ++ @1043 + 6
END
END


// New Demin option
EXTEND_BOTTOM SUDEMIN 2
  + ~PartyHasItem("T#DACBDY")~ + @1047 GOTO 3
END

EXTEND_BOTTOM WARSAGE 0
  + ~!Dead("c6bodhi") Global("T#DaceVampire","GLOBAL",2)~ + @1048 GOTO 6
  + ~PartyHasItem("T#DACBDY")~ + @1049 GOTO 5
END


// ---------------------------------------------
// Dace Scenery Comments
// ---------------------------------------------
APPEND T#DACEJ


// Hannah as spider. Hannah is Hannah.dlg
IF ~Global("T#DaceJHan","GLOBAL",1)~ T#DaceJHan
  SAY @1050  
  = @1051
  IF ~~ DO ~IncrementGlobal("T#DaceJHan","GLOBAL",1)~ EXIT
END


// First spider Dace sees with the party if she is NOT there for Hannah-as-a-spider, above
IF ~Global("T#DaceJSpider","GLOBAL",1)~ T#DaceJSpider
  SAY @1052
  IF ~~ DO ~IncrementGlobal("T#DaceJSpider","GLOBAL",1)~ EXIT
END


// When party sees vamp/shadow thieves fight—(The vampire is VVHAREIS)
IF ~Global("T#DaceJVamps","GLOBAL",1)~ T#DaceJVamps
  SAY @1053
  IF ~~ DO ~IncrementGlobal("T#DaceJVamps","GLOBAL",1)~ EXIT
END


// take Umar quest from boy in govt. district—(DELON.DLG)
IF ~Global("T#DaceJDelon","GLOBAL",1)~ T#DaceJDelon
  SAY @1054
  ++ @1055 DO ~IncrementGlobal("T#DaceJDelon","GLOBAL",1)~ + T#DaceJDelon_1
  ++ @1056 DO ~IncrementGlobal("T#DaceJDelon","GLOBAL",1)~ + T#DaceJDelon_1
  ++ @1057 DO ~IncrementGlobal("T#DaceJDelon","GLOBAL",1)~ + T#DaceJDelon_2
END

IF ~~ T#DaceJDelon_1
  SAY @1058
  IF ~~ EXIT
END

IF ~~ T#DaceJDelon_2
  SAY @1059
  IF ~~ EXIT
END


// Sewers to slaver compound(AR0404)
IF ~Global("T#DaceJSewers","GLOBAL",1)~ T#DaceJSewers
  SAY @1060
  IF ~~ DO ~IncrementGlobal("T#DaceJSewers","GLOBAL",1)~ EXIT
END


// Planar sphere--lavok--to get demon's heart--walk out into abyss(AR0414)
IF ~Global("T#DaceJSphere","GLOBAL",1)~ T#DaceJSphere
  SAY @1061
  IF ~~ DO ~IncrementGlobal("T#DaceJSphere","GLOBAL",1)~ EXIT
END       


// Spider lair in graveyard (Poor Dace!  Pai'Na's room o' spiders is AR0804.)
IF ~Global("T#DaceJSpid2","GLOBAL",1)~ T#DaceJSpid2
  SAY @1062
  IF ~~ DO ~IncrementGlobal("T#DaceJSpid2","GLOBAL",1)~ EXIT
//(should this forcespell Fear on her, due to sheer number of spiders?  or not.  whatever.)
END


// City gate--lich in crooked crane(AR0082)  Aww, c'mon, wouldn't *you* want a lich in YOUR wall? ;)
IF ~Global("T#DaceJCLich","GLOBAL",1)~ T#DaceJCLich
  SAY @1063
  IF ~~ DO ~IncrementGlobal("T#DaceJCLich","GLOBAL",1)~ EXIT
END


// Planar prison--upon entering(AR0516)
IF ~Global("T#DaceJPlPrison","GLOBAL",1)~ T#DaceJPlPrison
  SAY @1064
  IF ~~ DO ~IncrementGlobal("T#DaceJPlPrison","GLOBAL",1)~ EXIT
END


// Umar cabin(AR1102)
IF ~Global("T#DaceJUmar","GLOBAL",1)~ T#DaceJUmar
  SAY @1065
   IF ~~ DO ~IncrementGlobal("T#DaceJUmar","GLOBAL",1)~ EXIT
END


// Shadow dragon in amaunator temple(AR1402)
IF ~Global("T#DaceJAma","GLOBAL",1)~ T#DaceJAma
  SAY @1066
  IF ~~ DO ~IncrementGlobal("T#DaceJAma","GLOBAL",1)~ EXIT
END

END


// Sewers in temple district--(AR0701, AERIEJ for her bit.)
CHAIN IF ~Global("T#DaceJTSewers","GLOBAL",1)~ THEN T#DACEJ T#DaceJTSewers
  @1067
  DO ~IncrementGlobal("T#DaceJTSewers","GLOBAL",1)~
  == AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @1068
  == T#DACEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @1069
EXIT


APPEND T#DACEJ

// Ocean voyage--disembark at Brynnlaw(AR1600)
IF ~Global("T#DaceJShip","GLOBAL",1)~ T#DaceJShip
  SAY @1070
  IF ~~ DO ~IncrementGlobal("T#DaceJShip","GLOBAL",1)~ EXIT
END


// Irenicus' room in Spellhold--
IF ~Global("T#DaceJSpellIren","GLOBAL",1)~ T#DaceJSpellIren
  SAY @1071
  IF ~~ DO ~IncrementGlobal("T#DaceJSpellIren","GLOBAL",1)~ EXIT
END


// underdark--as soon as entering--an incredibly long, frustrated, sarcastic Dace-ian monologue
IF ~Global("T#DaceUnderdark","GLOBAL",1)~ T#DaceJUnderdark
  SAY @1072
  = @1073
  = @1074
  = @1075
  = @1076
  ++ @1077 DO ~IncrementGlobal("T#DaceUnderdark","GLOBAL",1)~ + T#DaceJUnderdark1
  ++ @1078 DO ~IncrementGlobal("T#DaceUnderdark","GLOBAL",1)~ + T#DaceJUnderdark1
  ++ @1079 DO ~IncrementGlobal("T#DaceUnderdark","GLOBAL",1)~ + T#DaceJUnderdark1
  ++ @1080 DO ~IncrementGlobal("T#DaceUnderdark","GLOBAL",1)~ + T#DaceJUnderdark1
END

IF ~~ T#DaceJUnderdark1
  SAY @1081
  = @1082
  ++ @1083 + T#DaceJUnderdark2
  ++ @1084 + T#DaceJUnderdark4
  ++ @1085 + T#DaceJUnderdark4
  ++ @1086 + T#DaceJUnderdark3
END

IF ~~ T#DaceJUnderdark2
  SAY @1087
  IF ~~ EXIT
END

IF ~~ T#DaceJUnderdark3
  SAY @1088
  IF ~~ EXIT
END

IF ~~ T#DaceJUnderdark4
  SAY @1089
  IF ~~ EXIT
END


//to phaere, keeps you in quarters if male--IF you are in INT/ROM/or FRIEND status with Dace
IF ~Global("T#DaceJLuckyBastard","GLOBAL",1)~ T#DaceJPh
  SAY @1090
  ++ @1091 DO ~IncrementGlobal("T#DaceJLuckyBastard","GLOBAL",1)~ + T#DaceJPh1
  ++ @1092 DO ~IncrementGlobal("T#DaceJLuckyBastard","GLOBAL",1)~ + T#DaceJPh2
  ++ @1093 DO ~IncrementGlobal("T#DaceJLuckyBastard","GLOBAL",1)~ + T#DaceJPh3
  ++ @1094 DO ~IncrementGlobal("T#DaceJLuckyBastard","GLOBAL",1)~ + T#DaceJPh1
END

IF ~~ T#DaceJPh1
  SAY @1095     ++ @1096 + T#DaceJPh4
  ++ @1097 + T#DaceJPh5
  ++ @1098 + T#DaceJPh4
  ++ @1099 + T#DaceJPh5
  ++ @1100 + T#DaceJPh6
END

IF ~~ T#DaceJPh2
  SAY @1101
  ++ @1096 + T#DaceJPh4
  ++ @1097 + T#DaceJPh5
  ++ @1098 + T#DaceJPh4
  ++ @1099 + T#DaceJPh5
  ++ @1100 + T#DaceJPh6
END

IF ~~ T#DaceJPh3
  SAY @1102
  ++ @1096 + T#DaceJPh4
  ++ @1097 + T#DaceJPh5                         
  ++ @1098 + T#DaceJPh4
  ++ @1099 + T#DaceJPh5
  ++ @1100 + T#DaceJPh6
END

IF ~~ T#DaceJPh4
  SAY @1103
  IF ~~ EXIT
END

IF ~~ T#DaceJPh5
  SAY @1104
  IF ~~ EXIT
END

IF ~~ T#DaceJPh6
  SAY @1105
  IF ~~ EXIT
END


// After Deirex is dead
IF ~Global("T#DaceJDeirex","GLOBAL",1)~ T#DaceJDeirex
  SAY @1106
  IF ~~ DO ~IncrementGlobal("T#DaceJDeirex","GLOBAL",1)~ EXIT
END



//if in cell in Illithid Lair after enslaved
IF ~Global("T#DaceJIllithid","GLOBAL",2)~ T#DaceJIllithid
  SAY @1107
  IF ~~ DO ~IncrementGlobal("T#DaceJIllithid","GLOBAL",1)~ EXIT
END


//Kuo-Toa dungeon, demogorgon lair, tells you to put a sacrifice in front of it to awaken the five
IF ~Global("T#DaceJDemo","GLOBAL",1)~ T#DaceJDemo
  SAY @1108
  IF ~~ DO ~IncrementGlobal("T#DaceJDemo","GLOBAL",1)~ EXIT
END



// Moonblade elf/balor cutscene--(AR2808, not sure how else to trigger it unless you go off the spritedead bit again.)
IF ~Global("T#DaceJMoonBlade","GLOBAL",1)~ T#DaceJMoonBlade
  SAY @1109
  IF ~~ DO ~IncrementGlobal("T#DaceJMoonBlade","GLOBAL",1)~ EXIT
END


// Watchers Keep: mind flayer area
IF ~Global("T#DaceJWFlay","GLOBAL",1)~ T#DaceJWFlay
  SAY @1110
  IF ~~ DO ~IncrementGlobal("T#DaceJWFlay","GLOBAL",1)~ EXIT
END


//  Watchers Keep: lich area
IF ~Global("T#DaceJWLich","GLOBAL",1)~ T#DaceJWLich
  SAY @1111
  IF ~~ DO ~IncrementGlobal("T#DaceJWLich","GLOBAL",1)~ EXIT
END


// Khittix--random comments
IF ~Global("T#DaceJKhittix","GLOBAL",1) RandomNum(6,1)~ T#DaceJKhittix1
  SAY @1112
  IF ~~ DO ~IncrementGlobal("T#DaceJKhittix","GLOBAL",1)~ EXIT
END


IF ~Global("T#DaceJKhittix","GLOBAL",1) RandomNum(6,2)~ T#DaceJKhittix2
  SAY @1113
  IF ~~ DO ~IncrementGlobal("T#DaceJKhittix","GLOBAL",1)~ EXIT
END


IF ~Global("T#DaceJKhittix","GLOBAL",1) RandomNum(6,3)~ T#DaceJKhittix3
  SAY @1114
  IF ~~ DO ~IncrementGlobal("T#DaceJKhittix","GLOBAL",1)~ EXIT
END


IF ~Global("T#DaceJKhittix","GLOBAL",1) RandomNum(6,4)~ T#DaceJKhittix4
  SAY @1115
  IF ~~ DO ~IncrementGlobal("T#DaceJKhittix","GLOBAL",1)~ EXIT
END


IF ~Global("T#DaceJKhittix","GLOBAL",1) RandomNum(6,5)~ T#DaceJKhittix5
  SAY @1116
  IF ~~ DO ~IncrementGlobal("T#DaceJKhittix","GLOBAL",1)~ EXIT
END


IF ~Global("T#DaceJKhittix","GLOBAL",1) RandomNum(6,6)~ T#DaceJKhittix6
  SAY @1117
  IF ~~ DO ~IncrementGlobal("T#DaceJKhittix","GLOBAL",1)~ EXIT
END


// ---------------------------------------
// Dace Initiated Flirts
// ---------------------------------------
// Intermediate flirts
IF ~Global("T#DaceTimeForFlirt","GLOBAL",1) GlobalGT("T#DaceIntTalks","GLOBAL",0) !Global("T#DaceFriendshipActive","GLOBAL",1) !Global("T#DaceRomanceActive","GLOBAL",2)~ T#DaceInit_IntFlirts
  SAY @1118
  IF ~RandomNum(8,1)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts1
  IF ~RandomNum(8,2)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts5
  IF ~RandomNum(8,2) Alignment(Player1,MASK_GOOD)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts2G
  IF ~RandomNum(8,2) OR(3) Alignment(Player1,NEUTRAL) Alignment(Player1,CHAOTIC_NEUTRAL) Alignment(Player1,LAWFUL_NEUTRAL)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts2N
  IF ~RandomNum(8,2) Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts2E
  IF ~RandomNum(8,3)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts3
  IF ~RandomNum(8,4)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts4
  IF ~RandomNum(8,5)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts5
  IF ~RandomNum(8,6)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts6
  IF ~RandomNum(8,7)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts7
  IF ~RandomNum(8,8)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_IntFlirts8
END

IF ~~ T#DaceInit_IntFlirts1
  SAY @1119
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts2G
  SAY @1120
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts2N
  SAY @1121
  = @1122
  = @1123
  = @1124
  = @1125
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts2E
  SAY @1126
  = @1127
  = @1128
  = @1129
  = @1130
  = @1131
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts3
  SAY @1132 
  = @1133
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts4
  SAY @1134
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts5
  SAY @1135
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts6
  SAY @1136
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts7
  SAY @1137
  IF ~~ EXIT
END

IF ~~ T#DaceInit_IntFlirts8
  SAY @1138
  IF ~~ EXIT
END


// Romantic flirts
IF ~Global("T#DaceTimeForFlirt","GLOBAL",1) Global("T#DaceRomanceActive","GLOBAL",2)~ T#DaceInit_RomFlirts
  SAY @1139
  IF ~RandomNum(8,1)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_RomFlirts1
  IF ~RandomNum(8,2)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_RomFlirts2
  IF ~RandomNum(8,3)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_RomFlirts3
  IF ~RandomNum(8,4)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_RomFlirts4
  IF ~RandomNum(8,5)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_RomFlirts5
  IF ~RandomNum(8,6)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_RomFlirts6
  IF ~RandomNum(8,7)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_RomFlirts7
  IF ~RandomNum(8,8)~ DO ~SetGlobal("T#DaceTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceFlirtTimer","GLOBAL",1800)~ + T#DaceInit_RomFlirts8
END

IF ~~ T#DaceInit_RomFlirts1
  SAY @1140
  = @1141
  = @1141
  IF ~~ EXIT
END

IF ~~ T#DaceInit_RomFlirts2
  SAY @1142
  = @1143
  IF ~~ EXIT
END

IF ~~ T#DaceInit_RomFlirts3
  SAY @1144
  IF ~~ EXIT
END

IF ~~ T#DaceInit_RomFlirts4
  SAY @1145
  = @1146
  = @1147
  = @1148 
  = @1149
  = @1150
  = @1151
  IF ~~ EXIT
END

IF ~~ T#DaceInit_RomFlirts5
  SAY @1152
  = @1153
  IF ~~ EXIT
END

IF ~~ T#DaceInit_RomFlirts6
  SAY @1154
  = @1155
  IF ~~ EXIT
END

IF ~~ T#DaceInit_RomFlirts7
  SAY @1156
  IF ~~ EXIT
END

IF ~~ T#DaceInit_RomFlirts8
  SAY @1157
  IF ~~ EXIT
END



// ---------------------------------------------
// Dace SoA Flirts
// ---------------------------------------------
IF ~IsGabber(Player1) CombatCounter(0) InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) GlobalGT("T#DaceSussTalks","GLOBAL",17) GlobalLT("T#DaceIntTalks","GLOBAL",25) !Global("T#DaceRomanceActive","GLOBAL",2) !Global("T#DaceFriendshipActive","GLOBAL",1)~ T#DaceFlirtsInt
  SAY @1158
  + ~RandomNum(5,1)~ + @1159 + T#DaceIntFlirt_hand1
  + ~RandomNum(5,2)~ + @1159 + T#DaceIntFlirt_hand2
  + ~RandomNum(5,3)~ + @1159 + T#DaceIntFlirt_hand3
  + ~RandomNum(5,4)~ + @1159 + T#DaceIntFlirt_hand4
  + ~RandomNum(5,5)~ + @1159 + T#DaceIntFlirt_hand5
  + ~RandomNum(5,1)~ + @1160 + T#DaceIntFlirt_hair1
  + ~RandomNum(5,2)~ + @1160 + T#DaceIntFlirt_hair2
  + ~RandomNum(5,3)~ + @1160 + T#DaceIntFlirt_hair3
  + ~RandomNum(5,4)~ + @1160 + T#DaceIntFlirt_hair4
  + ~RandomNum(5,5)~ + @1160 + T#DaceIntFlirt_hair5
  + ~RandomNum(6,1)~ + @1161 + T#DaceIntFlirt_arm1
  + ~RandomNum(6,2)~ + @1161 + T#DaceIntFlirt_arm2
  + ~RandomNum(6,3)~ + @1161 + T#DaceIntFlirt_arm3
  + ~RandomNum(6,4)~ + @1161 + T#DaceIntFlirt_arm4
  + ~RandomNum(6,5)~ + @1161 + T#DaceIntFlirt_arm5
  + ~RandomNum(6,6)~ + @1161 + T#DaceIntFlirt_arm5
  + ~RandomNum(5,1)~ + @1162 + T#DaceIntFlirt_hug1
  + ~RandomNum(5,2)~ + @1162 + T#DaceIntFlirt_hug2
  + ~RandomNum(5,3)~ + @1162 + T#DaceIntFlirt_hug3
  + ~RandomNum(5,4)~ + @1162 + T#DaceIntFlirt_hug4
  + ~RandomNum(5,5)~ + @1162 + T#DaceIntFlirt_hug5
  + ~RandomNum(5,1)~ + @1163 + T#DaceIntFlirt_poke1
  + ~RandomNum(5,2)~ + @1163 + T#DaceIntFlirt_poke2
  + ~RandomNum(5,3)~ + @1163 + T#DaceIntFlirt_poke3
  + ~RandomNum(5,4)~ + @1163 + T#DaceIntFlirt_poke4
  + ~RandomNum(5,5)~ + @1163 + T#DaceIntFlirt_poke5
  + ~RandomNum(4,1)~ + @1164 + T#DaceIntFlirt_cheek1
  + ~RandomNum(4,2)~ + @1164 + T#DaceIntFlirt_cheek2
  + ~RandomNum(4,3)~ + @1164 + T#DaceIntFlirt_cheek3
  + ~RandomNum(4,4)~ + @1164 + T#DaceIntFlirt_cheek4
  + ~RandomNum(5,1)~ + @1165 + T#DaceIntFlirt_study1
  + ~RandomNum(5,2)~ + @1165 + T#DaceIntFlirt_study2
  + ~RandomNum(5,3)~ + @1165 + T#DaceIntFlirt_study3
  + ~RandomNum(5,4)~ + @1165 + T#DaceIntFlirt_study4
  + ~RandomNum(5,5)~ + @1165 + T#DaceIntFlirt_study5
  + ~RandomNum(7,1)~ + @1166 + T#DaceIntFlirt_howru1
  + ~RandomNum(7,2)~ + @1166 + T#DaceIntFlirt_howru2
  + ~RandomNum(7,3)~ + @1166 + T#DaceIntFlirt_howru3
  + ~RandomNum(7,4)~ + @1166 + T#DaceIntFlirt_howru4
  + ~RandomNum(7,5)~ + @1166 + T#DaceIntFlirt_howru5
  + ~RandomNum(7,6)~ + @1166 + T#DaceIntFlirt_howru6
  + ~RandomNum(7,7)~ + @1166 + T#DaceIntFlirt_howru7
  + ~Global("T#DaceAnoSleep","GLOBAL",3)~ + @1167 DO ~IncrementGlobal("T#DaceAnoSleep","GLOBAL",1)~ + T#DaceAnoFlirt
  + ~GlobalGT("T#DaceEdwin","GLOBAL",4) Global("T#DaceEddieNookie","GLOBAL",0)~ + @1168 DO ~IncrementGlobal("T#DaceEddieNookie","GLOBAL",1)~ + T#DaceEddieFlirt
  + ~GlobalGT("T#DaceViconia","GLOBAL",2) Global("T#DaceVickyTalk","GLOBAL",0)~ + @1169 DO ~IncrementGlobal("T#DaceVickyTalk","GLOBAL",1)~ + T#DaceVickyTalk
  ++ @1170 EXIT
END

IF ~IsGabber(Player1) CombatCounter(0) InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceRomanceActive","GLOBAL",2)~ T#DaceFlirtsRom
  SAY @1171
  + ~RandomNum(4,1)~ + @1172 + T#DaceRomFlirt_kiss1
  + ~RandomNum(4,2)~ + @1172 + T#DaceRomFlirt_kiss2
  + ~RandomNum(4,3)~ + @1172 + T#DaceRomFlirt_kiss3
  + ~RandomNum(4,4)~ + @1172 + T#DaceRomFlirt_kiss4
  + ~RandomNum(6,1)~ + @1173 + T#DaceRomFlirt_deep1
  + ~RandomNum(6,2)~ + @1173 + T#DaceRomFlirt_deep2
  + ~RandomNum(6,3)~ + @1173 + T#DaceRomFlirt_deep3
  + ~RandomNum(6,4)~ + @1173 + T#DaceRomFlirt_deep4
  + ~RandomNum(6,5)~ + @1173 + T#DaceRomFlirt_deep5
  + ~RandomNum(6,6)~ + @1173 + T#DaceRomFlirt_deep6
  + ~RandomNum(5,1)~ + @1174 + T#DaceRomFlirt_neck1
  + ~RandomNum(5,2)~ + @1174 + T#DaceRomFlirt_neck2
  + ~RandomNum(5,3)~ + @1174 + T#DaceRomFlirt_neck3
  + ~RandomNum(5,4)~ + @1174 + T#DaceRomFlirt_neck4
  + ~RandomNum(5,5)~ + @1174 + T#DaceRomFlirt_neck5
  + ~RandomNum(5,1)~ + @1175 + T#DaceRomFlirt_hand1
  + ~RandomNum(5,2)~ + @1175 + T#DaceRomFlirt_hand2
  + ~RandomNum(5,3)~ + @1175 + T#DaceRomFlirt_hand3
  + ~RandomNum(5,4)~ + @1175 + T#DaceRomFlirt_hand4
  + ~RandomNum(5,5)~ + @1175 + T#DaceRomFlirt_hand5
  + ~RandomNum(5,1)~ + @1176 + T#DaceRomFlirt_hug1
  + ~RandomNum(5,2)~ + @1176 + T#DaceRomFlirt_hug2
  + ~RandomNum(5,3)~ + @1176 + T#DaceRomFlirt_hug3
  + ~RandomNum(5,4)~ + @1176 + T#DaceRomFlirt_hug4
  + ~RandomNum(5,5)~ + @1176 + T#DaceRomFlirt_hug5
  + ~RandomNum(5,1)~ + @1177 + T#DaceRomFlirt_face1
  + ~RandomNum(5,2)~ + @1177 + T#DaceRomFlirt_face2
  + ~RandomNum(5,3)~ + @1177 + T#DaceRomFlirt_face3
  + ~RandomNum(5,4)~ + @1177 + T#DaceRomFlirt_face4
  + ~RandomNum(5,5)~ + @1177 + T#DaceRomFlirt_face5
  + ~RandomNum(5,1)~ + @1165 + T#DaceRomFlirt_study1
  + ~RandomNum(5,2)~ + @1165 + T#DaceRomFlirt_study2
  + ~RandomNum(5,3)~ + @1165 + T#DaceRomFlirt_study3
  + ~RandomNum(5,4)~ + @1165 + T#DaceRomFlirt_study4
  + ~RandomNum(5,5)~ + @1165 + T#DaceRomFlirt_study5
  + ~RandomNum(5,1)~ + @1178 + T#DaceRomFlirt_hair1
  + ~RandomNum(5,2)~ + @1178 + T#DaceRomFlirt_hair2
  + ~RandomNum(5,3)~ + @1178 + T#DaceRomFlirt_hair3
  + ~RandomNum(5,4)~ + @1178 + T#DaceRomFlirt_hair4
  + ~RandomNum(5,5)~ + @1178 + T#DaceRomFlirt_hair5
  + ~RandomNum(5,1)~ + @1179 + T#DaceRomFlirt_hellcat1
  + ~RandomNum(5,1)~ + @1179 + T#DaceRomFlirt_hellcat2
  + ~RandomNum(5,1)~ + @1179 + T#DaceRomFlirt_hellcat3
  + ~RandomNum(5,1)~ + @1179 + T#DaceRomFlirt_hellcat4
  + ~RandomNum(5,1)~ + @1179 + T#DaceRomFlirt_hellcat5
  + ~RandomNum(3,1)~ + @1180 + T#DaceRomFlirt_rear1
  + ~RandomNum(3,2)~ + @1180 + T#DaceRomFlirt_rear2
  + ~RandomNum(3,3)~ + @1180 + T#DaceRomFlirt_rear3
  + ~RandomNum(4,1) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @1181 + T#DaceRomFlirt_bathe1
  + ~RandomNum(4,2) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @1181 + T#DaceRomFlirt_bathe2
  + ~RandomNum(4,3) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @1181 + T#DaceRomFlirt_bathe3
  + ~RandomNum(4,4) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @1181 + T#DaceRomFlirt_bathe4
  + ~RandomNum(5,1)~ + @1182 + T#DaceRomFlirt_arm1
  + ~RandomNum(5,2)~ + @1182 + T#DaceRomFlirt_arm2
  + ~RandomNum(5,3)~ + @1182 + T#DaceRomFlirt_arm3
  + ~RandomNum(5,4)~ + @1182 + T#DaceRomFlirt_arm4
  + ~RandomNum(5,5)~ + @1182 + T#DaceRomFlirt_arm5
  + ~RandomNum(6,1)~ +  @1183 + T#DaceRomFlirt_glad1
  + ~RandomNum(6,2)~ +  @1183 + T#DaceRomFlirt_glad2
  + ~RandomNum(6,3)~ +  @1183 + T#DaceRomFlirt_glad3
  + ~RandomNum(6,4)~ +  @1183 + T#DaceRomFlirt_glad4
  + ~RandomNum(6,5)~ +  @1183 + T#DaceRomFlirt_glad5
  + ~RandomNum(6,6)~ +  @1183 + T#DaceRomFlirt_glad6
  + ~RandomNum(6,1)~ +  @1184 + T#DaceRomFlirt_2nite1
  + ~RandomNum(6,2)~ +  @1184 + T#DaceRomFlirt_2nite2
  + ~RandomNum(6,3)~ +  @1184 + T#DaceRomFlirt_2nite3
  + ~RandomNum(6,4)~ +  @1184 + T#DaceRomFlirt_2nite4
  + ~RandomNum(6,5)~ +  @1184 + T#DaceRomFlirt_2nite5
  + ~RandomNum(6,6)~ +  @1184 + T#DaceRomFlirt_2nite6
  ++ @1185 + T#DaceRomFlirt_end
  + ~Global("T#DaceAnoSleep","GLOBAL",3)~ + @1167 DO ~IncrementGlobal("T#DaceAnoSleep","GLOBAL",1)~ + T#DaceAnoFlirt
  + ~GlobalGT("T#DaceEdwin","GLOBAL",4) Global("T#DaceEddieNookie","GLOBAL",0)~ + @1167 DO ~IncrementGlobal("T#DaceEddieNookie","GLOBAL",1)~ + T#DaceEddieFlirt
  + ~GlobalGT("T#DaceViconia","GLOBAL",2) Global("T#DaceVickyTalk","GLOBAL",0)~ + @1169 DO ~IncrementGlobal("T#DaceVickyTalk","GLOBAL",1)~ + T#DaceVickyTalk
  ++ @1170 EXIT
END


// Edwin protest
IF ~~ T#DaceEddieFlirt
  SAY @1186
  ++ @1187 + T#DaceEddieFlirt1
  ++ @1188 + T#DaceEddieFlirt2
  ++ @1189 + T#DaceEddieFlirt3
  ++ @1190 + T#DaceEddieFlirt4
  ++ @1191 + T#DaceEddieFlirt5
END

IF ~~ T#DaceEddieFlirt1
  SAY @1192
  IF ~~ EXIT
END

IF ~~ T#DaceEddieFlirt2
  SAY @1193
  IF ~~ EXIT
END

IF ~~ T#DaceEddieFlirt3
  SAY @1194
  IF ~~ EXIT
END

IF ~~ T#DaceEddieFlirt4
  SAY @1195
  IF ~~ EXIT
END

IF ~~ T#DaceEddieFlirt5
  SAY @1196
  IF ~~ EXIT
END



// Anomen protest
IF ~~ T#DaceAnoFlirt
  SAY @1186
  ++ @1197 + T#DaceAnoFlirt1
  ++ @1188 + T#DaceAnoFlirt2
  ++ @1189 + T#DaceAnoFlirt3
  ++ @1190 + T#DaceAnoFlirt4
  ++ @1198 + T#DaceAnoFlirt5
END

IF ~~ T#DaceAnoFlirt1
  SAY @1199
  IF ~~ EXIT
END

IF ~~ T#DaceAnoFlirt2
  SAY @1200
  IF ~~ EXIT
END

IF ~~ T#DaceAnoFlirt3
  SAY @1201
  IF ~~ EXIT
END

IF ~~ T#DaceAnoFlirt4
  SAY @1195
  IF ~~ EXIT
END

IF ~~ T#DaceAnoFlirt5
  SAY @1196
  IF ~~ EXIT
END



//Needs to pop up in force talks after Dace's 3rd SOA banter with Viconia if the PC is in any one of the romanace states with Viconia
IF ~~ T#DaceVickyTalk
  SAY @1202
  ++ @1203 EXIT
  ++ @1204 EXIT
  ++ @1205 + T#DaceVickyTalk1
  ++ @1206 + T#DaceVickyTalk1
  ++ @1207 + T#DaceVickyTalk1
END

IF ~~ T#DaceVickyTalk1
  SAY @1208
  IF ~~ EXIT
END



// Flirt responses, Intermediate
IF ~~ T#DaceIntFlirt_hand1
  SAY @1209
  = @1210
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hand2
  SAY @1211
  = @1212
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hand3
  SAY @1213
  = @1214
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hand4
  SAY @1215
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hand5
  SAY @1216
  = @1217
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hair1
  SAY @1218
  = @1219
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hair2
  SAY @1220
  = @1221
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hair3
  SAY @1222
  = @1223
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hair4
  SAY @1224
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hair5
  SAY @1225
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_arm1
  SAY @1226
  IF ~~ EXIT
END


IF ~~ T#DaceIntFlirt_arm2
  SAY @1227
  IF ~~ EXIT
END


IF ~~ T#DaceIntFlirt_arm3
  SAY @1228
  IF ~~ EXIT
END


IF ~~ T#DaceIntFlirt_arm4
  SAY @1229
  IF ~~ EXIT
END


IF ~~ T#DaceIntFlirt_arm5
  SAY @1230
  IF ~~ EXIT
END


IF ~~ T#DaceIntFlirt_arm6
  SAY @1231
  = @1232
  IF ~~ EXIT
END


IF ~~ T#DaceIntFlirt_hug1
  SAY @1233
  = @1234
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hug2
  SAY @1235
  = @1236
  = @1237
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hug3
  SAY @1238
  = @1239
  = @1240
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hug4
  SAY @1241
  = @1242
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_hug5
  SAY @1243
  = @1244
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_poke1
  SAY @1245
  = @1246
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_poke2
  SAY @1247
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_poke3
  SAY @1248
  = @1249
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_poke4
  SAY @1250
  = @1251
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_poke5
  SAY @1252
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_cheek1
  SAY @1253
  = @1254
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_cheek2
  SAY @1255
  = @1256
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_cheek3
  SAY @1257
  = @1258
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_cheek4
  SAY @1259
  = @1260
  = @1261
  = @1262
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_study1
  SAY @1263
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_study2
  SAY @1264
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_study3
  SAY @1265
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_study4
  SAY @1266
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_study5
  SAY @1267
  = @1268
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_howru1
  SAY @1269
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_howru2
  SAY @1270
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_howru3
  SAY @1271
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_howru4
  SAY @1272
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_howru5
  SAY @1273
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_howru6
  SAY @1274
  IF ~~ EXIT
END

IF ~~ T#DaceIntFlirt_howru7
  SAY @1275
  IF ~~ EXIT
END



// Romance
IF ~~ T#DaceRomFlirt_kiss1
  SAY @1276
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_kiss2
  SAY @1277
  = @1278
  IF ~~ EXIT
END


IF ~~ T#DaceRomFlirt_kiss3
  SAY @1279
  = @1280
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_kiss4
  SAY @1281
  = @1282
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_kiss5
  SAY @1283
  = @1284
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_deep1
  SAY @1285
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_deep2
  SAY @1286
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_deep3
  SAY @1287
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_deep4
  SAY @1288
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_deep5
  SAY @1289
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_deep6
  SAY @1290
  = @1291
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_neck1
  SAY @1292
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_neck2
  SAY @1293
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_neck3
  SAY @1294
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_neck4
  SAY @1295
  = @1296
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_neck5
  SAY @1297
  = @1298
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hand1
  SAY @1299
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hand2
  SAY @1300
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hand3
  SAY @1301
  = @1302
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hand4
  SAY @1303
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hand5
  SAY @1304
  = @1305
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hug1
  SAY @1306
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hug2
  SAY @1307
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hug3
  SAY @1308
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hug4
  SAY @1309
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hug5
  SAY @1310
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_face1
  SAY @1311
  = @1312
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_face2
  SAY @1313
  = @1314
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_face3
  SAY @1315
  = @1316
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_face4
  SAY @1317
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_face5
  SAY @1318
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_study1
  SAY @1319
  = @1320
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_study2
  SAY @1321
  = @1322
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_study3
  SAY @1323
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_study4
  SAY @1324
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_study5
  SAY @1325
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hair1
  SAY @1326
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hair2
  SAY @1327
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hair3
  SAY @1328
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hair4
  SAY @1329
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hair5
  SAY @1330
  = @1331
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hellcat1
  SAY @1332
  = @1333
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hellcat2
  SAY @1334
  = @1335
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hellcat3
  SAY @1336
  = @1337
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hellcat4
  SAY @1338
  = @1339
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_hellcat5
  SAY @1340
  = @1341
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_rear1
  SAY @1342
  = @1343
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_rear2
  SAY @1344
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_rear3
  SAY @1345
  = @1346
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_bathe1
  SAY @1347
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_bathe2
  SAY @1348
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_bathe3
  SAY @1349
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_bathe4
  SAY @1350
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_arm1
  SAY @1351
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_arm2
  SAY @1352
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_arm3
  SAY @1353
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_arm4
  SAY @1354
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_arm5
  SAY @1355
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_glad1
  SAY @1356
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_glad2
  SAY @1357
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_glad3
  SAY @1358
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_glad4
  SAY @1359
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_glad5
  SAY @1360
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_glad6
  SAY @1361
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_2nite1
  SAY @1362
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_2nite2
  SAY @1363
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_2nite3
  SAY @1364
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_2nite4
  SAY @1365
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_2nite5
  SAY @1366
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_2nite6
  SAY @1367
  IF ~~ EXIT
END

IF ~~ T#DaceRomFlirt_end
  SAY @1368
  IF ~~ DO ~SetGlobal("T#DaceRomance","GLOBAL",3)~ EXIT
END


END