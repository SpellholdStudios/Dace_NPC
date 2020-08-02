// ---------------------------------------------
// Dace ToB Interjections & Dialogue
// ---------------------------------------------
BEGIN T#DAC25J


// ---------------------------------------------
// Dace ToB Interjections
// ---------------------------------------------


//harlot in saradush
INTERJECT SARPRO01 0 T#DHARLOT
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN
@0
EXIT


// Volothamp Geddarm
EXTEND_TOP SARVOLO 9 #4
  + ~InParty("T#Dace")~ + @1 + T#DaceVolo
END

CHAIN SARVOLO T#DaceVolo
  @2
  == T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN @3
EXTERN SARVOLO 9


//post gromnir melissan again, tells what you have to do
INTERJECT_COPY_TRANS SARMEL01 53 T#DPOSTGROM
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@4
END


//oasis
INTERJECT_COPY_TRANS AMTGEN01 1 T#DOASIS
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@5
== AMTGEN01 @6
END


//dragon w/wardstone
INTERJECT_COPY_TRANS BAZDRA03 1 T#DABDRAGON
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@7
END


//elminster
INTERJECT_COPY_TRANS2 AMELM01 0 T#DELMIN
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@8
END


//Melissan obligatory trash-talk
/*
INTERJECT_COPY_TRANS FINMEL01 7 T#DMelEnd
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@9
== FINMEL01 @10
END
*/
INTERJECT_COPY_TRANS FINMEL01 0 T#DMelEnd
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ THEN
@9
== FINMEL01 @10
END


// Godhood suggestions
INTERJECT_COPY_TRANS3 FINSOL01 27 T#DaceFinSol
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN @11
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) !Global("T#DaceRomanceActive","GLOBAL",2)~ THEN @12
END


// Reaction to decision
EXTEND_BOTTOM FINSOL01 29
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DacePCGod","GLOBAL",0) Global("T#DaceRomanceActive","GLOBAL",2)~ DO ~SetGlobal("T#DacePCGod","GLOBAL",1)~ EXTERN T#DAC25J T#DacePCGodRom
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DacePCGod","GLOBAL",0) !Global("T#DaceRomanceActive","GLOBAL",2)~ DO ~SetGlobal("T#DacePCGod","GLOBAL",1)~ EXTERN T#DAC25J T#DacePCGod
END

EXTEND_BOTTOM FINSOL01 30
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DacePCGod","GLOBAL",0) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("T#DacePCGod","GLOBAL",1)~ EXTERN T#DAC25J T#DacePCGodRom
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DacePCGod","GLOBAL",0) !Global("T#DaceRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("T#DacePCGod","GLOBAL",1)~ EXTERN T#DAC25J T#DacePCGod
END

EXTEND_BOTTOM FINSOL01 31
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DacePCGod","GLOBAL",0) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("T#DacePCGod","GLOBAL",1)~ EXTERN T#DAC25J T#DacePCGodRom
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DacePCGod","GLOBAL",0) !Global("T#DaceRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("T#DacePCGod","GLOBAL",1)~ EXTERN T#DAC25J T#DacePCGod
END

EXTEND_BOTTOM FINSOL01 32
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DacePCNotGod","GLOBAL",0) Global("T#DaceRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("T#DacePCNotGod","GLOBAL",1)~ EXTERN T#DAC25J T#DacePCNotGodRom
  IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DacePCNotGod","GLOBAL",0) !Global("T#DaceRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("T#DacePCNotGod","GLOBAL",1)~ EXTERN T#DAC25J T#DacePCNotGod
END


APPEND T#DAC25J

IF ~~ T#DacePCNotGodRom
  SAY @13
  IF ~~ EXTERN FINSOL01 32
END

IF ~~ T#DacePCGodRom
  SAY @14
  IF ~~ EXTERN FINSOL01 29
END

IF ~~ T#DacePCNotGod
  SAY @15
  IF ~~ EXTERN FINSOL01 32
END

IF ~~ T#DacePCGod
  SAY @16
  IF ~~ EXTERN FINSOL01 29
END

END


// odren--taking on WK challenge
INTERJECT_COPY_TRANS GORODR1 11 T#DWATCHERSToB
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) GlobalGT("Chapter","Global",%bg2_chapter_7%)~ THEN
@17
END


// old priest--slippers
INTERJECT_COPY_TRANS GORPRI1 2 T#DSLIPPERSToB
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) GlobalGT("Chapter","Global",%bg2_chapter_7%)~ THEN
@18
== GORPRI1 @19
END


// yakman
INTERJECT_COPY_TRANS GORMAD1 1 T#DYAKMANToB
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) GlobalGT("Chapter","Global",%bg2_chapter_7%)~ THEN
@20
END


// deck of many things
INTERJECT_COPY_TRANS GORCAMB 17 T#DDECKToB
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) GlobalGT("Chapter","Global",%bg2_chapter_7%)~ THEN
@21
END


// machine
INTERJECT_COPY_TRANS GORCAR 8 T#DMACHINEToB
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) GlobalGT("Chapter","Global",%bg2_chapter_7%)~ THEN
@22
END


// green “challenge” dragon--after seeing red sentient dragon
INTERJECT_COPY_TRANS FSDRAGON 0 T#DWKDRAGONSToB
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) GlobalGT("Chapter","Global",%bg2_chapter_7%)~ THEN
@23
END


// odren dies
INTERJECT_COPY_TRANS GORODR1 65 T#DODRENToB
== T#DAC25J IF ~InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) GlobalGT("Chapter","Global",%bg2_chapter_7%)~ THEN
@24
END


// ---------------------------------------------
// Dace ToB scripted romance talks
// ---------------------------------------------
APPEND T#DAC25J

// "Gift"
IF ~Global("T#DaceToBGiftTalk","GLOBAL",2)~ T#DTG_1
  SAY @25
  ++ @26 + T#DTG_2
  ++ @27 + T#DTG_3
  ++ @28 + T#DTG_4
END

IF ~~ T#DTG_2
  SAY @29
  =
  @30
  ++ @31 + T#DTG_5
  ++ @32 + T#DTG_5
  ++ @33 + T#DTG_5
  ++ @34 + T#DTG_5
END

IF ~~ T#DTG_3
  SAY @35
  =
  @30
  ++ @31 + T#DTG_5
  ++ @32 + T#DTG_5
  ++ @33 + T#DTG_5
  ++ @34 + T#DTG_5
END

IF ~~ T#DTG_4
  SAY @36
  =
  @30
  ++ @31 + T#DTG_5
  ++ @32 + T#DTG_5
  ++ @33 + T#DTG_5
  ++ @34 + T#DTG_5
END

IF ~~ T#DTG_5
  SAY @37
  ++ @38 + T#DTG_6
  ++ @39 + T#DTG_6
  ++ @40 + T#DTG_6
END

IF ~~ T#DTG_6
  SAY @41
  =
  @42
  =
  @43
  IF ~~ DO ~IncrementGlobal("T#DaceToBGiftTalk","GLOBAL",1) //DestroyItem("t#dhlcat")
TakeItemReplace("t#dhlsin","t#dhlcat","T#Dace") EquipItem("t#dhlsin") GiveItemCreate("t#dacbt",Player1,0,0,0)~ EXIT
END


// Challenge 1
IF ~Global("T#DaceToBCh1Talk","GLOBAL",2)~ T#DTC1_1
  SAY @44
  =
  @45
  =
  @46
  ++ @47 DO ~IncrementGlobal("T#DaceToBCh1Talk","GLOBAL",1)~ + T#DTC1_2
  ++ @48 DO ~IncrementGlobal("T#DaceToBCh1Talk","GLOBAL",1)~ + T#DTC1_2
  ++ @49 DO ~IncrementGlobal("T#DaceToBCh1Talk","GLOBAL",1)~ + T#DTC1_2
END

IF ~~ T#DTC1_2
  SAY @50
  ++ @51 + T#DTC1_3
  ++ @52 + T#DTC1_3
  ++ @53 + T#DTC1_3
END

IF ~~ T#DTC1_3
  SAY @54
  =
  @55
  =
  @56
  ++ @57 + T#DTC1_5
  ++ @58 + T#DTC1_5
  ++ @59 + T#DTC1_5
  ++ @60 + T#DTC1_5
  ++ @61 + T#DTC1_4
END

IF ~~ T#DTC1_4
  SAY @62
  IF ~~ DO ~SetGlobal("T#DaceRomanceActive","GLOBAL",3) SetGlobal("T#DaceEpi_dump","GLOBAL",1)~ EXIT
END

IF ~~ T#DTC1_5
  SAY @63
  =
  @64
  ++ @65 + T#DTC1_7
  ++ @66 + T#DTC1_6
  ++ @67 + T#DTC1_7
END

IF ~~ T#DTC1_6
  SAY @68
  =
  @69
  ++ @70 + T#DTC1_8
  ++ @71 + T#DTC1_8
  ++ @72 + T#DTC1_8
  ++ @73 + T#DTC1_8
  ++ @74 + T#DTC1_9
END

IF ~~ T#DTC1_7
  SAY @75
  =
  @76
  ++ @70 + T#DTC1_8
  ++ @71 + T#DTC1_8
  ++ @72 + T#DTC1_8
  ++ @73 + T#DTC1_8
  ++ @74 + T#DTC1_9
END

IF ~~ T#DTC1_8
  SAY @77
  IF ~~ EXIT
END

IF ~~ T#DTC1_9
  SAY @78
  IF ~~ DO ~SetGlobal("T#DaceRomanceActive","GLOBAL",3) SetGlobal("T#DaceEpi_dump","GLOBAL",1)~ EXIT
END


// Challenge 2
IF ~Global("T#DaceToBCh2Talk","GLOBAL",2)~ T#DTC2_1
  SAY @79
  ++ @80 DO ~IncrementGlobal("T#DaceToBCh2Talk","GLOBAL",1)~ + T#DTC2_2
  ++ @81 DO ~IncrementGlobal("T#DaceToBCh2Talk","GLOBAL",1)~ + T#DTC2_2
  ++ @82 DO ~IncrementGlobal("T#DaceToBCh2Talk","GLOBAL",1)~ + T#DTC2_2
  ++ @83 DO ~IncrementGlobal("T#DaceToBCh2Talk","GLOBAL",1)~ + T#DTC2_2
  ++ @84 DO ~IncrementGlobal("T#DaceToBCh2Talk","GLOBAL",1)~ + T#DTC2_2
END

IF ~~ T#DTC2_2
  SAY @85
  ++ @86 + T#DTC2_3
  ++ @87 + T#DTC2_4
  ++ @88 + T#DTC2_3
  ++ @89 + T#DTC2_4
END

IF ~~ T#DTC2_3
  SAY @90
  IF ~~ EXIT
END

IF ~~ T#DTC2_4
  SAY @91
  IF ~~ EXIT
END


// Challenge 3
IF ~Global("T#DaceToBCh3Talk","GLOBAL",2)~ T#DTC3_1
SAY @92
++ @93 DO ~IncrementGlobal("T#DaceToBCh3Talk","GLOBAL",1)~ + T#DTC3_2
++ @94 DO ~IncrementGlobal("T#DaceToBCh3Talk","GLOBAL",1)~ + T#DTC3_3
++ @95 DO ~IncrementGlobal("T#DaceToBCh3Talk","GLOBAL",1)~ + T#DTC3_3
++ @96 DO ~IncrementGlobal("T#DaceToBCh3Talk","GLOBAL",1)~ + T#DTC3_4
END

IF ~~ T#DTC3_2
  SAY @97
  ++ @98 + T#DTC3_5
  ++ @99 + T#DTC3_9
  ++ @100 + T#DTC3_9
  ++ @101 + T#DTC3_5
END

IF ~~ T#DTC3_3
  SAY @102
  ++ @98 + T#DTC3_5
  ++ @99 + T#DTC3_9
  ++ @100 + T#DTC3_9
  ++ @101 + T#DTC3_5
END

IF ~~ T#DTC3_4
  SAY @103
  ++ @98 + T#DTC3_5
  ++ @99 + T#DTC3_9
  ++ @100 + T#DTC3_9
  ++ @101 + T#DTC3_5
END

IF ~~ T#DTC3_5
  SAY @104
  =
  @105
  ++ @106 + T#DTC3_6
  ++ @107 + T#DTC3_7
  ++ @108 + T#DTC3_6
  ++ @109 + T#DTC3_8
END

IF ~~ T#DTC3_6
  SAY @110
  IF ~~ EXIT
END

IF ~~ T#DTC3_7
  SAY @111
  IF ~~ EXIT
END

IF ~~ T#DTC3_8
  SAY @112
  IF ~~ EXIT
END

IF ~~ T#DTC3_9
  SAY @113
  =
  @114
  IF ~~ DO ~SetGlobal("T#DaceRomanceActive","GLOBAL",3) SetGlobal("T#DaceEpi_dump","GLOBAL",1)~ EXIT
END


// Challenge 4
IF ~Global("T#DaceToBCh4Talk","GLOBAL",2)~ T#DTC4_1
  SAY @115
  ++ @116 DO ~IncrementGlobal("T#DaceToBCh4Talk","GLOBAL",1)~ + T#DTC4_2
  ++ @117 DO ~IncrementGlobal("T#DaceToBCh4Talk","GLOBAL",1)~ + T#DTC4_2
  ++ @118 DO ~IncrementGlobal("T#DaceToBCh4Talk","GLOBAL",1)~ + T#DTC4_3
  ++ @119 DO ~IncrementGlobal("T#DaceToBCh4Talk","GLOBAL",1)~ + T#DTC4_2
  ++ @120 DO ~IncrementGlobal("T#DaceToBCh4Talk","GLOBAL",1)~ + T#DTC4_2
END

IF ~~ T#DTC4_2
  SAY @121
  =
  @122
  ++ @123 + T#DTC4_4
  ++ @124 + T#DTC4_4
  ++ @125 + T#DTC4_4
  ++ @126 + T#DTC4_9
  ++ @127 + T#DTC4_9
  ++ @128 + T#DTC4_9
END

IF ~~ T#DTC4_3
  SAY @129
  IF ~~ DO ~SetGlobal("T#DaceEpi_notforever","GLOBAL",1)~ EXIT //THIS ENDING SETS ONE OF THE "NOT TOGETHER FOREVER" EPILOGUES
END

IF ~~ T#DTC4_4
  SAY @130
  =
  @131
  ++ @132 + T#DTC4_5
  ++ @133 + T#DTC4_5
  ++ @134 + T#DTC4_5
  ++ @135 + T#DTC4_9
END

IF ~~ T#DTC4_5
  SAY @136
  ++ @137 + T#DTC4_6
  ++ @138 + T#DTC4_6
  ++ @139 + T#DTC4_6
  ++ @140 + T#DTC4_9
END

IF ~~ T#DTC4_6
  SAY @141
  ++ @142 + T#DTC4_7
  ++ @143 + T#DTC4_7
  ++ @144 + T#DTC4_7
  ++ @145 + T#DTC4_9
END

IF ~~ T#DTC4_7
  SAY @146
  =
  @147
  =
  @148
  ++ @149 + T#DTC4_8
  ++ @150 + T#DTC4_8
  ++ @151 + T#DTC4_8
  ++ @152 + T#DTC4_9
END

IF ~~ T#DTC4_8
  SAY @153
  =
  @154
  =
  @155
  IF ~~ DO ~SetGlobal("T#DaceEpi_forever","GLOBAL",1)~ EXIT //THIS ENDING SETS ONE OF THE "TOGETHER FOREVER" EPILOGUES
END


IF ~~ T#DTC4_9
  SAY @156
  =
  @157
  IF ~~ DO ~SetGlobal("T#DaceEpi_notforever","GLOBAL",1)~ EXIT //THIS ENDING SETS ONE OF THE "NOT TOGETHER FOREVER" EPILOGUES
END


// Challenge 5
IF ~Global("T#DaceToBCh5Talk","GLOBAL",2)~ T#DTC5_1
  SAY @158
  ++ @159 DO ~IncrementGlobal("T#DaceToBCh5Talk","GLOBAL",1)~ + T#DTC5_2
  ++ @160 DO ~IncrementGlobal("T#DaceToBCh5Talk","GLOBAL",1)~ + T#DTC5_2
  ++ @161 DO ~IncrementGlobal("T#DaceToBCh5Talk","GLOBAL",1)~ + T#DTC5_2
  ++ @162 DO ~IncrementGlobal("T#DaceToBCh5Talk","GLOBAL",1)~ + T#DTC5_4
END

IF ~~ T#DTC5_2
  SAY @163
  ++ @164 + T#DTC5_3
  ++ @165 + T#DTC5_3
  ++ @166 + T#DTC5_3
  ++ @167 + T#DTC5_3
END

IF ~~ T#DTC5_3
  SAY @168
  IF ~~ EXIT
END

IF ~~ T#DTC5_4
  SAY @169
  ++ @170 + T#DTC5_3
  ++ @171 + T#DTC5_3
  ++ @172 + T#DTC5_3
  ++ @173 + T#DTC5_3
END


// Saradush
IF ~Global("T#DaceToBSaradushTalk","GLOBAL",2)~ T#DTSD_1
  SAY @174
  ++ @175 DO ~IncrementGlobal("T#DaceToBSaradushTalk","GLOBAL",1)~ + T#DTSD_2
  ++ @176 DO ~IncrementGlobal("T#DaceToBSaradushTalk","GLOBAL",1)~ + T#DTSD_7
  ++ @177 DO ~IncrementGlobal("T#DaceToBSaradushTalk","GLOBAL",1)~ + T#DTSD_12
  ++ @178 DO ~IncrementGlobal("T#DaceToBSaradushTalk","GLOBAL",1)~ + T#DTSD_16
END

IF ~~ T#DTSD_2
  SAY @179
  =
  @180
  ++ @181 + T#DTSD_3
  ++ @182 + T#DTSD_4
  ++ @183 + T#DTSD_5
  ++ @184 + T#DTSD_6
END

IF ~~ T#DTSD_3
  SAY @185
  IF ~~ EXIT
END

IF ~~ T#DTSD_4
  SAY @186
  IF ~~ EXIT
END

IF ~~ T#DTSD_5
  SAY @187
  IF ~~ EXIT
END

IF ~~ T#DTSD_6
  SAY @188
  IF ~~ EXIT
END

IF ~~ T#DTSD_7
  SAY @189
  ++ @190 + T#DTSD_8
  ++ @191 + T#DTSD_9
  ++ @192 + T#DTSD_10
  ++ @193 + T#DTSD_11
END

IF ~~ T#DTSD_8
  SAY @194
  IF ~~ DO ~SetGlobal("T#DaceRomanceActive","GLOBAL",3) SetGlobal("T#DaceEpi_dump","GLOBAL",1)~ EXIT
END

IF ~~ T#DTSD_9
  SAY @195
  IF ~~ EXIT
END

IF ~~ T#DTSD_10
  SAY @196
  IF ~~ EXIT
END

IF ~~ T#DTSD_11
  SAY @197
  IF ~~ EXIT
END

IF ~~ T#DTSD_12
  SAY @198
  ++ @199 + T#DTSD_13
  ++ @200 + T#DTSD_14
  ++ @201 + T#DTSD_14
  ++ @202 + T#DTSD_15
END

IF ~~ T#DTSD_13
  SAY @203
  IF ~~ EXIT
  END

IF ~~ T#DTSD_14
  SAY @204
  IF ~~ EXIT
END

IF ~~ T#DTSD_15
  SAY @205
  IF ~~ EXIT
END

IF ~~ T#DTSD_16
  SAY @206
  IF ~~ EXIT
END


// Reassurance
IF ~Global("T#DaceToBReassureTalk","GLOBAL",2) Gender(Player1,MALE)~ T#DTGRM_1
  SAY @207
  ++ @208 DO ~IncrementGlobal("T#DaceToBReassureTalk","GLOBAL",1)~ + T#DTGRM_2
  ++ @209 DO ~IncrementGlobal("T#DaceToBReassureTalk","GLOBAL",1)~ + T#DTGRM_3
  ++ @210 DO ~IncrementGlobal("T#DaceToBReassureTalk","GLOBAL",1)~ + T#DTGRM_4
  ++ @211 DO ~IncrementGlobal("T#DaceToBReassureTalk","GLOBAL",1)~ + T#DTGRM_5
END

IF ~~ T#DTGRM_2
  SAY @212
  IF ~~ EXIT
END

IF ~~ T#DTGRM_3
  SAY @213
  IF ~~ EXIT
END

IF ~~ T#DTGRM_4
  SAY @214
  IF ~~ EXIT
END

IF ~~ T#DTGRM_5
  SAY @215
  IF ~~ EXIT
END
            

// Reassurance
IF ~Global("T#DaceToBReassureTalk","GLOBAL",2) Gender(Player1,FEMALE)~ T#DTGRF_1
  SAY @216
  ++ @208 DO ~IncrementGlobal("T#DaceToBReassureTalk","GLOBAL",1)~ + T#DTGRF_2
  ++ @217 DO ~IncrementGlobal("T#DaceToBReassureTalk","GLOBAL",1)~ + T#DTGRF_3
  ++ @218 DO ~IncrementGlobal("T#DaceToBReassureTalk","GLOBAL",1)~ + T#DTGRF_4
  ++ @219 DO ~IncrementGlobal("T#DaceToBReassureTalk","GLOBAL",1)~ + T#DTGRF_5
END

IF ~~ T#DTGRF_2
  SAY @212
  IF ~~ EXIT
END

IF ~~ T#DTGRF_3
  SAY @220
  IF ~~ EXIT
END

IF ~~ T#DTGRF_4
  SAY @214
  IF ~~ EXIT
END

IF ~~ T#DTGRF_5
  SAY @221
  IF ~~ EXIT
END



// ---------------------------------------------
// Dace ToB floating talks
// ---------------------------------------------
// "Check"
IF ~Global("T#DaceToBCheckTalk","GLOBAL",2)~ T#DTK_1
  SAY @222
  ++ @223 DO ~IncrementGlobal("T#DaceToBCheckTalk","GLOBAL",1) SetGlobal("T#DaceToBApologyTalk","GLOBAL",1) RealSetGlobalTimer("T#DaceToBApologyTalkTimer","GLOBAL",1800)~ + T#DTK_2
  ++ @224 DO ~IncrementGlobal("T#DaceToBCheckTalk","GLOBAL",1) SetGlobal("T#DaceToBApologyTalk","GLOBAL",1) RealSetGlobalTimer("T#DaceToBApologyTalkTimer","GLOBAL",1800)~ + T#DTK_3
  ++ @225 DO ~IncrementGlobal("T#DaceToBCheckTalk","GLOBAL",1) SetGlobal("T#DaceToBApologyTalk","GLOBAL",1) RealSetGlobalTimer("T#DaceToBApologyTalkTimer","GLOBAL",1800)~ + T#DTK_3
  ++ @226 DO ~IncrementGlobal("T#DaceToBCheckTalk","GLOBAL",1) SetGlobal("T#DaceToBApologyTalk","GLOBAL",1) RealSetGlobalTimer("T#DaceToBApologyTalkTimer","GLOBAL",1800)~ + T#DTK_4
END

IF ~~ T#DTK_2
  SAY @227
  IF ~~ DO ~SetGlobal("T#DaceRomanceActive","GLOBAL",3) SetGlobal("T#DaceEpi_dump","GLOBAL",1)~ EXIT
END

IF ~~ T#DTK_3
  SAY @228
  IF ~~ EXIT
END

IF ~~ T#DTK_4
  SAY @229
  ++ @230 + T#DTK_5
  ++ @231 + T#DTK_2
  ++ @232 + T#DTK_6
END

IF ~~ T#DTK_5
  SAY @233
  IF ~~ EXIT
END

IF ~~ T#DTK_6
  SAY @234
  IF ~~ EXIT
END



// "Apology"--For friendship AND romance
IF ~Global("T#DaceToBApologyTalk","GLOBAL",2)~ T#DTA_1
  SAY @235
  =
  @236
  ++ @237 DO ~IncrementGlobal("T#DaceToBApologyTalk","GLOBAL",1)~ + T#DTA_2
  ++ @238 DO ~IncrementGlobal("T#DaceToBApologyTalk","GLOBAL",1)~ + T#DTA_2
  ++ @239 DO ~IncrementGlobal("T#DaceToBApologyTalk","GLOBAL",1)~ + T#DTA_3
  ++ @240 DO ~IncrementGlobal("T#DaceToBApologyTalk","GLOBAL",1)~ + T#DTA_4
END

IF ~~ T#DTA_2
  SAY @241
  =
  @242
  IF ~~ EXIT
END 

IF ~~ T#DTA_3
  SAY @243
  =
  @244
  IF ~~ EXIT
END 

IF ~~ T#DTA_4
  SAY @245
  =
  @246 
  IF ~~ EXIT
END


// "Bacon Crisis"--FRIENDSHIP only
IF ~Global("T#DaceToBBaconTalk","GLOBAL",2)~ T#DTB_1
  SAY @247
  ++ @248 DO ~IncrementGlobal("T#DaceToBBaconTalk","GLOBAL",1)~ + T#DTB_2
  ++ @249 DO ~IncrementGlobal("T#DaceToBBaconTalk","GLOBAL",1)~ + T#DTB_2
  ++ @250 DO ~IncrementGlobal("T#DaceToBBaconTalk","GLOBAL",1)~ + T#DTB_2
  ++ @251 DO ~IncrementGlobal("T#DaceToBBaconTalk","GLOBAL",1)~ + T#DTB_2
END

IF ~~ T#DTB_2
SAY @252
  ++ @253 + T#DTB_3
  ++ @254 + T#DTB_4
  ++ @255 + T#DTB_5
  ++ @256 + T#DTB_4
END

IF ~~ T#DTB_3
  SAY @257
  IF ~~ EXIT
END

IF ~~ T#DTB_4
  SAY @258
  IF ~~ EXIT
END

IF ~~ T#DTB_5
  SAY @259
  IF ~~ EXIT
END

END


APPEND BT#DAC25

// "Feast"
IF ~InParty(Myself)
    See(Player1)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY]) 
    Global("T#DaceToBFeastTalk","GLOBAL",0)~ T#DTF_1
  SAY @260
  =
  @261
  ++ @262 DO ~IncrementGlobal("T#DaceToBFeastTalk","GLOBAL",1)~ + T#DTF_2
  ++ @263 DO ~IncrementGlobal("T#DaceToBFeastTalk","GLOBAL",1)~ + T#DTF_2
  ++ @264 DO ~IncrementGlobal("T#DaceToBFeastTalk","GLOBAL",1)~ + T#DTF_2
  ++ @265 DO ~IncrementGlobal("T#DaceToBFeastTalk","GLOBAL",1)~ + T#DTF_2
END

IF ~~ T#DTF_2
  SAY @266
  =
  @267
  =
  @268
  ++ @269 + T#DTF_5
  ++ @270 + T#DTF_4
  ++ @271 + T#DTF_3
  ++ @272 + T#DTF_5
END

IF ~~ T#DTF_3
  SAY @273
  IF ~~ EXIT
END

IF ~~ T#DTF_4
  SAY @274
  IF ~~ EXIT
END

IF ~~ T#DTF_5
  SAY @275
  IF ~~ EXIT
END


// Treating differently
IF ~InParty(Myself)
    See(Player1)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY]) 
    Gender(Player1,MALE)
    Global("T#DaceToBDifferentTalk","GLOBAL",0)~ T#DTGDM_1
  SAY @276
  ++ @277 DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ + T#DTGDM_2
  ++ @278 DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ + T#DTGDM_3
  ++ @279 DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ + T#DTGDM_4
  ++ @280 DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ + T#DTGDM_5
END

IF ~~ T#DTGDM_2
  SAY @281
  IF ~~ EXIT
END

IF ~~ T#DTGDM_3
  SAY @282
  IF ~~ EXIT 
END

IF ~~ T#DTGDM_4
  SAY @283
  IF ~~ EXIT
END

IF ~~ T#DTGDM_5
  SAY @284
  IF ~~ EXIT
END


// Treating differently
IF ~InParty(Myself)
    See(Player1)
    !StateCheck(Myself,CD_STATE_NOTVALID)
    !StateCheck(Player1,CD_STATE_NOTVALID)
    CombatCounter(0)
    !See([ENEMY])
    Gender(Player1,FEMALE)
    Global("T#DaceToBDifferentTalk","GLOBAL",0)~ T#DTGDF_1
  SAY @285
  ++ @286 DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ + T#DTGDF_2
  ++ @278 DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ + T#DTGDF_3
  ++ @279 DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ + T#DTGDF_4
  ++ @287 DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ + T#DTGDF_5
END

IF ~~ T#DTGDF_2
  SAY @288
  IF ~~ EXIT
END

IF ~~ T#DTGDF_3
  SAY @282
  IF ~~ EXIT
END

IF ~~ T#DTGDF_4
  SAY @283
  IF ~~ EXIT
END

IF ~~ T#DTGDF_5
  SAY @289
  IF ~~ DO ~IncrementGlobal("T#DaceToBDifferentTalk","GLOBAL",1)~ EXIT
END

END


// ---------------------------------------------
// Dace Scenery Comments
// ---------------------------------------------
APPEND T#DAC25J

// Watchers Keep: mind flayer area
IF ~Global("T#DaceJWFlay","GLOBAL",1)~ T#DaceJWFlay
  SAY ~Oh, boy, more brain-suckers!  Better send Ducky in alone.  They'll ignore you, as there's nothin' in your head to suck.~[t#dac972]
  IF ~~ DO ~IncrementGlobal("T#DaceJWFlay","GLOBAL",1)~ EXIT
END


//  Watchers Keep: lich area
IF ~Global("T#DaceJWLich","GLOBAL",1)~ T#DaceJWLich
  SAY ~Oh.  A lich.  How delightful.  It's been about two days since we fought a lich, after all.~[t#dac972]
  IF ~~ DO ~IncrementGlobal("T#DaceJWLich","GLOBAL",1)~ EXIT
END


//sendai enclave spider  passage CHANGE CODE AREA TRIGGER
IF ~Global("T#DaceJToBSpiders","GLOBAL",1)~ T#DAC25JToBLich
  SAY ~We definitely should have picked the other door.~[t#dac972]
  IF ~~ DO ~IncrementGlobal("T#DaceJToBSpiders","GLOBAL",1) RealSetGlobalTimer("T#DaceJToBSpidersTimer","GLOBAL",30) Panic()~ EXIT //(Dace panicks completely.  That's a helluva lot of spiders)
END


//sendai lich
IF ~Global("T#DaceJToBLich","GLOBAL",1)~ T#DAC25JToBLich
  SAY ~This is lich--what?  Seventy-eight?  A hundred and two?  I lost count.  Or is that dragons I'm thinking of?  What, I'm sorry, am I bein' flippant again?  You have to admit, we do seem to meet more than our fair share of liches, dolls.   An' dragons, for that matter.~[t#dac972]
  IF ~~ DO ~IncrementGlobal("T#DaceJToBLich","GLOBAL",1)~ EXIT
END


//sendai and statues
IF ~Global("T#DaceJToBSendaiStatues","GLOBAL",1)~ T#DAC25JToBLich
  SAY ~Isn't she even slightly alarmed by the fact that we got this far?  Do all Bhaalspawn tend towards mild craziness?  I'm startin' to reconsider this committment stuff, Duckster.~[t#dac972]
  IF ~~ DO ~IncrementGlobal("T#DaceJToBSendaiStatues","GLOBAL",1)~ EXIT
END


//eye room in Ab's lair CHANGE CODE--AREA TRIGGERED
IF ~Global("T#DaceJToBEyes","GLOBAL",1)~ T#DAC25JToBLich
  SAY ~This is, ahh, odd.  Hey, Ducky, did you see that?  Didja see it?  See?  Get it?  Yeah, don't gimme that look.  I'm havin' a bad day.  A lot of bad days, actually.  Let me have the occasional truly terrible floatin' eyeball joke, please.~[t#dac972]
  IF ~~ DO ~IncrementGlobal("T#DaceJToBEyes","GLOBAL",1)~ EXIT
END

END

// ---------------------------------------
// Dace Wraith Encounter
// ---------------------------------------
//WRAITH ENCOUNTER--Dace gets Ila

EXTEND_BOTTOM HGWRA01 18
  IF ~Global("T#DaceRomanceActive","GLOBAL",2) InParty("T#Dace") InMyArea("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID)~ DO ~SetGlobal("T#DaceWraith","GLOBAL",1)~ EXTERN HGWRA01 T#Dacewraith
END

EXTEND_BOTTOM HGWRA01 24
  IF ~Global("T#DaceRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("t#dawra")~ EXIT
END

APPEND HGWRA01
IF ~~ T#Dacewraith
  SAY @296
  IF ~~ EXTERN T#DAC25J T#Dacewraith2
END
END

APPEND T#DAC25J
IF ~~ T#Dacewraith2
  SAY @297
  IF ~~ EXTERN HGWRA01 24
END
END

BEGIN T#WILA
IF ~NumTimesTalkedTo(0)~ T#Dacewraith3
  SAY @298
  IF ~~ EXTERN T#DAC25J T#Dacewraith4
END

CHAIN T#DAC25J T#Dacewraith4
  @299
  == T#WILA @300
  == T#DAC25J @301
  == T#WILA @302
  == T#DAC25J @303
END
  ++ @304 EXTERN HGWRA01 25
  ++ @305 EXTERN HGWRA01 25
  ++ @306 EXTERN HGWRA01 25
  + ~CheckStatGT(Player1,16,WIS)~ + @307 EXTERN HGWRA01 25


// After-talk
APPEND T#DAC25J
IF ~Global("T#DaceWraith","GLOBAL",2)~ T#DaceWraithtalk
  SAY @308
  ++ @309 DO ~IncrementGlobal("T#DaceWraith","GLOBAL",1)~ + T#DaceWraithtalk2
  ++ @310 DO ~IncrementGlobal("T#DaceWraith","GLOBAL",1)~ + T#DaceWraithtalk2
  ++ @311 DO ~IncrementGlobal("T#DaceWraith","GLOBAL",1)~ + T#DaceWraithtalk2
  ++ @312 DO ~IncrementGlobal("T#DaceWraith","GLOBAL",1)~ + T#DaceWraithtalk2
END

IF ~~ T#DaceWraithtalk2
  SAY @313
  IF ~~ EXIT
END




// ---------------------------------------
// Dace Initiated ToB Flirts
// ---------------------------------------
// Romantic flirts
IF ~Global("T#DaceToBTimeForFlirt","GLOBAL",1) Global("T#DaceRomanceActive","GLOBAL",2)~ T#DaceInit_ToBFlirts
  SAY ~(Dace moves to your side leans against you slightly to get your attention, smiling at you in a calm, warm manner that is very unlike the crooked, brittle grin she used to shoot you. The love that the two of you share has matured into a comfortable, passionate, steady relationship.  Her eyes are still cheerfully wicked, though, and she still has a sharp kidney-poking finger--facts you're careful to keep in mind as you give her your full attention.)~[t#dac972]
  IF ~RandomNum(10,1)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts1
  IF ~RandomNum(10,2)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts2
  IF ~RandomNum(10,3)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts3
  IF ~RandomNum(10,4)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts4
  IF ~RandomNum(10,5)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts5
  IF ~RandomNum(10,6)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts6
  IF ~RandomNum(10,7)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts7
  IF ~RandomNum(10,8)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts8
  IF ~RandomNum(10,9)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts7
  IF ~RandomNum(10,10)~ DO ~SetGlobal("T#DaceToBTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T#DaceToBFlirtTimer","GLOBAL",1800)~ + T#DaceInit_ToBFlirts8
END

IF ~~ T#DaceInit_ToBFlirts1
  SAY ~Love you, darlin'.  Just didn't want you to forget, what with the killin' and teleportin' and extra-planar goings-on.  And... well, I'm here for you.  Bah, anyway, listen to me, dissolvin' at your feet. That's all I wanted to say.~[t#dac798]
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts2
  SAY @316
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts3
  SAY @317
  = ~You know, Ducky... sometimes I get to thinkin' about exactly how fond of you I am, and then I sometimes get to worryin'... especially with everything that's goin' on for you just now.  I know you're a big kid, and half-god, and all that nonsense... but be careful, will you?  For Dace?~[t#dac799]
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts4
  SAY @319
  = ~Oh, my darlin'... sometimes you make my breath catch right in my throat with the boundlessness of the Damn Foolery you inspire in me.~[t#dac800]
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts5
  SAY @321
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts6
  SAY @322
  = @323
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts7
  SAY @324
  = ~Much too slow, Ducky.  Much too slow.~[t#dac802]
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts8
  SAY @326
  = ~Sorry.  Got all carried away with lovin' you for a second there.~[t#dac803]
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts9
  SAY @328
  IF ~~ EXIT
END

IF ~~ T#DaceInit_ToBFlirts10
  SAY @329
  IF ~~ EXIT
END


// ---------------------------------------------
// Dace ToB Flirts
// ---------------------------------------------

IF ~IsGabber(Player1) CombatCounter(0) InParty("T#Dace") !StateCheck("T#Dace",CD_STATE_NOTVALID) Global("T#DaceRomanceActive","GLOBAL",2)~ T#DaceFlirtsToB
  SAY @330
  + ~RandomNum(5,1)~ + @331 + T#DaceFlirtsToB_cheek1
  + ~RandomNum(5,2)~ + @331 + T#DaceFlirtsToB_cheek2
  + ~RandomNum(5,3)~ + @331 + T#DaceFlirtsToB_cheek3
  + ~RandomNum(5,4)~ + @331 + T#DaceFlirtsToB_cheek4
  + ~RandomNum(5,5)~ + @331 + T#DaceFlirtsToB_cheek5
  + ~RandomNum(5,1)~ + @332 + T#DaceFlirtsToB_deep1
  + ~RandomNum(5,2)~ + @332 + T#DaceFlirtsToB_deep2
  + ~RandomNum(5,3)~ + @332 + T#DaceFlirtsToB_deep3
  + ~RandomNum(5,4)~ + @332 + T#DaceFlirtsToB_deep4
  + ~RandomNum(5,5)~ + @332 + T#DaceFlirtsToB_deep5
  + ~RandomNum(5,1)~ + @333 + T#DaceFlirtsToB_hand1
  + ~RandomNum(5,2)~ + @333 + T#DaceFlirtsToB_hand2
  + ~RandomNum(5,3)~ + @333 + T#DaceFlirtsToB_hand3
  + ~RandomNum(5,4)~ + @333 + T#DaceFlirtsToB_hand4
  + ~RandomNum(5,5)~ + @333 + T#DaceFlirtsToB_hand5
  + ~RandomNum(6,1)~ + @334 + T#DaceFlirtsToB_arm1
  + ~RandomNum(6,2)~ + @334 + T#DaceFlirtsToB_arm2
  + ~RandomNum(6,3)~ + @334 + T#DaceFlirtsToB_arm3
  + ~RandomNum(6,4)~ + @334 + T#DaceFlirtsToB_arm4
  + ~RandomNum(6,5)~ + @334 + T#DaceFlirtsToB_arm5
  + ~RandomNum(6,6)~ + @334 + T#DaceFlirtsToB_arm6
  + ~RandomNum(6,1)~ + @335 + T#DaceFlirtsToB_hug1
  + ~RandomNum(6,2)~ + @335 + T#DaceFlirtsToB_hug2
  + ~RandomNum(6,3)~ + @335 + T#DaceFlirtsToB_hug3
  + ~RandomNum(6,4)~ + @335 + T#DaceFlirtsToB_hug4
  + ~RandomNum(6,5)~ + @335 + T#DaceFlirtsToB_hug5
  + ~RandomNum(6,6)~ + @335 + T#DaceFlirtsToB_hug6
  + ~RandomNum(5,1)~ + @336 + T#DaceFlirtsToB_face1
  + ~RandomNum(5,2)~ + @336 + T#DaceFlirtsToB_face2
  + ~RandomNum(5,3)~ + @336 + T#DaceFlirtsToB_face3
  + ~RandomNum(5,4)~ + @336 + T#DaceFlirtsToB_face4
  + ~RandomNum(5,5)~ + @336 + T#DaceFlirtsToB_face5
  + ~RandomNum(5,1)~ + @337 + T#DaceFlirtsToB_study1
  + ~RandomNum(5,2)~ + @337 + T#DaceFlirtsToB_study2
  + ~RandomNum(5,3)~ + @337 + T#DaceFlirtsToB_study3
  + ~RandomNum(5,4)~ + @337 + T#DaceFlirtsToB_study4
  + ~RandomNum(5,5)~ + @337 + T#DaceFlirtsToB_study5
  + ~RandomNum(5,1)~ + @338 + T#DaceFlirtsToB_hair1
  + ~RandomNum(5,2)~ + @338 + T#DaceFlirtsToB_hair2
  + ~RandomNum(5,3)~ + @338 + T#DaceFlirtsToB_hair3
  + ~RandomNum(5,4)~ + @338 + T#DaceFlirtsToB_hair4
  + ~RandomNum(5,5)~ + @338 + T#DaceFlirtsToB_hair5
  + ~RandomNum(5,1)~ + @339 + T#DaceFlirtsToB_neck1
  + ~RandomNum(5,2)~ + @339 + T#DaceFlirtsToB_neck2
  + ~RandomNum(5,3)~ + @339 + T#DaceFlirtsToB_neck3
  + ~RandomNum(5,4)~ + @339 + T#DaceFlirtsToB_neck4
  + ~RandomNum(5,5)~ + @339 + T#DaceFlirtsToB_neck5
  + ~RandomNum(6,1)~ + @340 + T#DaceFlirtsToB_love1
  + ~RandomNum(6,2)~ + @340 + T#DaceFlirtsToB_love2
  + ~RandomNum(6,3)~ + @340 + T#DaceFlirtsToB_love3
  + ~RandomNum(6,4)~ + @340 + T#DaceFlirtsToB_love4
  + ~RandomNum(6,5)~ + @340 + T#DaceFlirtsToB_love5
  + ~RandomNum(6,6)~ + @340 + T#DaceFlirtsToB_love6
  + ~RandomNum(4,1) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @341 + T#DaceFlirtsToB_bathe1
  + ~RandomNum(4,2) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @341 + T#DaceFlirtsToB_bathe2
  + ~RandomNum(4,3) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @341 + T#DaceFlirtsToB_bathe3
  + ~RandomNum(4,4) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @341 + T#DaceFlirtsToB_bathe4
  + ~RandomNum(5,1)~ + @342 + T#DaceFlirtsToB_howru1
  + ~RandomNum(5,2)~ + @342 + T#DaceFlirtsToB_howru2
  + ~RandomNum(5,3)~ + @342 + T#DaceFlirtsToB_howru3
  + ~RandomNum(5,4)~ + @342 + T#DaceFlirtsToB_howru4
  + ~RandomNum(5,5)~ + @342 + T#DaceFlirtsToB_howru5
  + ~RandomNum(5,1)~ + @343 + T#DaceFlirtsToB_glad1
  + ~RandomNum(5,2)~ + @343 + T#DaceFlirtsToB_glad2
  + ~RandomNum(5,3)~ + @343 + T#DaceFlirtsToB_glad3
  + ~RandomNum(5,4)~ + @343 + T#DaceFlirtsToB_glad4
  + ~RandomNum(5,5)~ + @343 + T#DaceFlirtsToB_glad5
  + ~GlobalGT("T#DaceViconiaToB","GLOBAL",0) InParty("Viconia") !Dead("Viconia")~ + @344 + T#DaceFlirtsToB_vic
  ++ @345 + T#DaceFlirtsToB_end
END

IF ~~ T#DaceFlirtsToB_cheek1
  SAY @346
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_cheek2
  SAY @347
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_cheek3
  SAY ~Mmmm... nice. Love you, Ducky.  Thanks for puttin' up with me.~[t#dac740]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_cheek4
  SAY @349
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_cheek5
  SAY @350
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_deep1
  SAY @351
  = ~Hummmm... back to the grind now, I suppose, you old slave driver.~[t#dac741]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_deep2
  SAY @353 
  = ~Can't get away quite so easily as that, Ducky.~[t#dac743]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_deep3
  SAY @355
  = ~Dammit, Duck, if you don't want to listen, just say so.  Don't distract me like that!~[t#dac742]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_deep4
  SAY @357
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_deep5
  SAY @358
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hand1
  SAY @359
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hand2
  SAY @360
  = @361
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hand3
  SAY @362
  = @363
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hand4
  SAY @364
  = @365
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hand5
  SAY ~Hmph.  Hand-holding again?  Tra-la-la... whatever makes you happy, honey.~[t#dac744]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_arm1
  SAY @367
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_arm2
  SAY @368
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_arm3
  SAY @369
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_arm4
  SAY @370
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_arm5
  SAY @371
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_arm6
  SAY @372
  = @373
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hug1
  SAY @374
  = ~Gods, but I love you, Ducky... and if you ever try an' leave me I swear by all that's good-to-eat that I'll skin you alive.~[t#dac745]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hug2
  SAY @376
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hug3
  SAY @377
  = @378
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hug4
  SAY ~Why, thank you, darlin'... hey, are you all right?  Or just trying to cop a feel? Anythin' to make your day a little brighter, though, doll.~[t#dac746]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hug5
  SAY @380
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hug6
  SAY @381
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_face1
  SAY @382
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_face2
  SAY ~Hrm.  Must've been a good Dace today if I'm gettin' petted... ~[t#dac747]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_face3
  SAY @384 
  = @385
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_face4
  SAY @386
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_face5
  SAY @387
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_study1
  SAY @388
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_study2
  SAY ~Keep your eyes on the road, Ducky.  I'd like to sit down sometime today.~[t#dac748]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_study3
  SAY @390
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_study4
  SAY @391
  = @392
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_study5
  SAY @393
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hair1
  SAY @394
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hair2
  SAY @395
  = @396
  ++ @397 + T#DaceFlirtsToB_hair1
  ++ @398 + T#DaceFlirtsToB_hair2
  ++ @399 + T#DaceFlirtsToB_hair3
END

IF ~~ T#DaceFlirtsToB_hair21
  SAY @400
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hair22
  SAY @401
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hair23
  SAY @402
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hair3
  SAY @403
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hair4
  SAY @404
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_hair5
  SAY ~Purr.~[t#dac749]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_neck1
  SAY @406
  = @407
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_neck2
  SAY @408
  = ~Honey... are your eyes glowin'?  Never... never mind.  Musta been the light.~[t#dac750]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_neck3
  SAY @410
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_neck4
  SAY @411
  = @412
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_neck5
  SAY @413
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_love1
  SAY ~Love you too, m'Duck.~[t#dac751]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_love2
  SAY ~Never get tired of you sayin' that, Ducky.  Right back at you.~[t#dac752]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_love3
  SAY ~Oh, poor Ducky... it's like they say, I suppose... there's no accountin' for taste.~[t#dac753]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_love4
  SAY ~Do you, now?  I'm not going to forget you said that, you know.  Might even hold you to it, if the mood strikes me.~[t#dac754]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_love5
  SAY ~Bah, mush and stuff-and-nonsense.  Suppose you want me to say I love you, too.  Well, I do.  Now stow it and keep movin' so I can sit down sometime today.~[t#dac755]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_love6
  SAY ~Might be rather fond of you, m'self, darlin'.~[t#dac756]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_bathe1
  SAY ~Nice try, Ducky... but I don't see a gaping head wound on me, do you?  Yeah, I'm probably in full posession of my facilities right now, so bathing with you isn't happening.~[t#dac757]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_bathe2
  SAY ~Oh, for cryin' out loud... !  Fine, Ducky.  Fine.  I'll get into a tiny, tepid tub with you and we'll soak in our collective filth.  Will that make you happy?~[t#dac758]
  = @422
  = @423
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T#DaceFlirtsToB_bathe3
  SAY @424
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_bathe4
  SAY @425
  = ~All right, darlin'.~[t#dac760]
  = @427
  = @428
  = ~Uhhnnn... .Ducky, I don't tell you enough that I love you, and I know I'm difficult a lot of the time, and... never mind, let's just enjoy this for once, and I'll shut my big Damn Fool mouth... and then we'll go to bed, all right?~[t#dac761]
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T#DaceFlirtsToB_howru1
  SAY ~Happy as a clam.  Why do they say that, anyway?  Who decided that clams are particularly happy critters?  Could sure go for a fried clam or two right now... ~[t#dac762]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_howru2
  SAY @431
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_howru3
  SAY @432
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_howru4
  SAY ~Horrible!  I just found a spider in my HAIR, Ducky.  My hair!  I'll kill you if you tell anybody I said this, but... hold me, will you?~[t#dac763]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_howru5
  SAY @434
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_glad1
  SAY ~Fishing for reassurance again, My Needy Bhaalspawn?  Won't find it here... ask me again later.  Maybe I'll have mercy on you.~[t#dac764]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_glad2
  SAY ~If I say yes, will you let me sit down for awhile?~[t#dac765]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_glad3
  SAY @437
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_glad4
  SAY ~Do bears pee in the woods?~[t#dac766]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_glad5
  SAY ~I don't know... I do know I love you... but I'm still not sure I shouldn't kill you all the same.~[t#dac767]
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_vic
  SAY @440
  ++ @441 EXIT
  ++ @442 EXIT
  ++ @443 + T#DaceFlirtsToB_vic1
  ++ @444 + T#DaceFlirtsToB_vic1
  ++ @445 + T#DaceFlirtsToB_vic1
END

IF ~~ T#DaceFlirtsToB_vic1
  SAY @446
  IF ~~ EXIT
END

IF ~~ T#DaceFlirtsToB_end
  SAY ~Oh... oh, gods.  I'd ask if you're kiddin', <CHARNAME>, but I can see by the look in your eyes that you're not.  How... how could you?  Just outta curiosity... ?  When you knew how hard it was for me to come to terms with... with actually lovin' you.  After everything I gambled to be with you... and everything you've done for me, how you've made me trust you... care so much... when I always told myself what nonsense that was, how it'd bite me on the rear someday... how?  Never mind.  Don't speak to me anymore, please.  I... told you I'd see this through, and I will, but—just—oh, my poor heart.~[t#dac768]
  IF ~~ DO ~SetGlobal("T#DaceRomanceActive","GLOBAL",3)~ EXIT
END

END