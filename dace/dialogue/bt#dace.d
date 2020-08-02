// ---------------------------------------------
// Dace SoA Banters
// ---------------------------------------------
BEGIN BT#DACE

// ---------------------------------------------
// Dace SoA Aerie Banters
// ---------------------------------------------
//#1
CHAIN IF 
~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAerie","GLOBAL",0)
~
THEN BT#DACE T#DACEAERS1
~Aerie, hon... let's talk about your hair.  How the dickens do you justify takin' the time to keep it like--well, like that?  How do you even *find* the time?~[t#dac972]
DO ~IncrementGlobal("T#DaceAerie","GLOBAL",1)~
== BAERIE
@1
== BT#DACE
@2 
== BAERIE
@3
== BT#DACE
@4
== BAERIE
@5
== BT#DACE
@6
EXIT


//#2
CHAIN IF 
~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAerie","GLOBAL",1)
~ 
THEN BT#DACE T#DACEAERS2A
~Did I ever tell you ‘bout the time I met Chiktikka Fastpaws?~[t#dac972]
DO ~IncrementGlobal("T#DaceAerie","GLOBAL",1)~
== BAERIE
@8
== BT#DACE
@9
== BAERIE
@10
== BT#DACE
@11  
== BAERIE
@12
== BT#DACE
@13
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAerie","GLOBAL",2)
~
THEN BT#DACE T#DACEAERS3
~You look upset, angel.~[t#dac972] 
DO ~IncrementGlobal("T#DaceAerie","GLOBAL",1)~
== BAERIE
@15
== BT#DACE
@16
== BAERIE
@17 
== BT#DACE
@18
== BAERIE
@19  
== BT#DACE
@20
== BAERIE
@21 
== BT#DACE
@22  
== BAERIE
@23
== BT#DACE
@24
EXIT


//#4
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAerie","GLOBAL",3)
~
THEN BT#DACE T#DACEAERS3
~You know, it's a funny thing, Aerie--I worry about *you* sometimes.~[t#dac972] 
DO ~IncrementGlobal("T#DaceAerie","GLOBAL",1)~
== BAERIE
@26
== BT#DACE
@27
== BAERIE
@28 
== BT#DACE
@29
== BAERIE
@30  
== BT#DACE
@31
== BAERIE
@32 
== BT#DACE
@33  
== BAERIE
@34
== BT#DACE
@35
EXIT


// ---------------------------------------------
// Dace SoA Anomen Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAnomen","GLOBAL",0)
~
THEN BT#DACE T#DACEANOS1
~Bunny, I was wonderin' about somethin'.  Big, handsome fella like you must be a hit with the ladies, right?  Or does the whole man-of-god thing kinda scare 'em off?  Would scare me off, that's for damn sure, but you sometimes set my teeth on edge anyway, so I can't as how I'm an impartial jury.~[t#dac972] 
DO ~IncrementGlobal("T#DaceAnomen","GLOBAL",1)~
== BANOMEN 
@37
== BT#DACE
@38
== BANOMEN 
@39 
== BT#DACE 
@40
== BANOMEN
@41
== BT#DACE
@42
== BANOMEN
@43
== BT#DACE
@44
== BANOMEN
@45
== BT#DACE
@46
== BANOMEN
@47
EXIT 


//#2  THIS ONE IS FOR IF ANOMEN IS STILL A MEMBER OF THE ORDER, OR IF HIS QUEST JUST HASN'T HAPPENED YET
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
OR(2)
  Global("AnomenIsKnight","GLOBAL",1)
  Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("T#DaceAnomen","GLOBAL",1)
~
THEN BT#DACE T#DACEANOS2A
~Hey, Bunny, want to sleep with me tonight?~[t#dac972] 
EXTERN BANOMEN T#DACEANOS2A_1

APPEND BANOMEN
IF ~~ T#DACEANOS2A_1
  SAY @49
  IF ~Global("AnomenIsKnight","GLOBAL",1)~ DO ~IncrementGlobal("T#DaceAnomen","GLOBAL",1)~ EXTERN BT#DACE T#DACEANOS2A_2
  IF ~Global("AnomenIsKnight","GLOBAL",0)~ DO ~IncrementGlobal("T#DaceAnoSleep","GLOBAL",1)~ EXTERN BT#DACE T#DACEANOS2A_2
END
END

CHAIN BT#DACE T#DACEANOS2A_2
@50
== BANOMEN
@51
== BT#DACE
@52  
== BANOMEN
@53
== BT#DACE
@54
== BANOMEN
@55
EXIT


//#2B  THIS ONE NEEDS TO FIRE SOON AFTER ANOMEN HAS "FALLEN," IF HE DOES, IF #2 HAS NEVER FIRED.  IF #2 FIRES, #2C FIRES AFTER THE TEST. NEITHER FIRES IF PC IS IN A ROMANCE WITH ANOMEN.
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
Global("T#DaceAnoSleep","GLOBAL",0)
Global("T#DaceAnomen","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)
~
THEN BT#DACE T#DACEANOS2B
~Hey, Bunny, want to sleep with me tonight?~[t#dac972] 
DO ~IncrementGlobal("T#DaceAnomen","GLOBAL",1) SetGlobal("T#DaceAnoSleep","GLOBAL",3)~
== BANOMEN
@56
== BT#DACE
@50
== BANOMEN
@57
== BT#DACE
@58
== BANOMEN
@59
== BT#DACE
@60
== BANOMEN
@61
== BT#DACE
@62
EXIT


//#2C  THIS ONE FIRES IF ANOMEN HAS FAILED HIS TEST BUT #2 ALREADY FIRED EARLIER.  DOES NOT FIRE IF PC IN ROMANCE WITH ANOMEN.
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
Global("T#DaceAnomen","GLOBAL",1)
Global("T#DaceAnoSleep","GLOBAL",1)
~
THEN BT#DACE T#DACEANOS2B
~Hey, Bunny, the offer still stands, you know...~[t#dac972] 
DO ~IncrementGlobal("T#DaceAnomen","GLOBAL",1) SetGlobal("T#DaceAnoSleep","GLOBAL",3)~
== BANOMEN
@56
== BT#DACE
@64
== BANOMEN
@57
== BT#DACE
@65
== BANOMEN
@66
== BT#DACE
@60
== BANOMEN
@67
== BT#DACE
@62
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAnomen","GLOBAL",2)
~
THEN BT#DACE T#DACEANOS3
~Bunny, I was thinkin'... could I talk to you ‘bout your daddy for a minute?~[t#dac972] 
DO ~IncrementGlobal("T#DaceAnomen","GLOBAL",1)~
== BANOMEN
@69
== BT#DACE
@70  
== BANOMEN
@71
== BT#DACE
@72
== BANOMEN
@73  
== BT#DACE
@74
EXIT



//#4
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAnomen","GLOBAL",3)
~
THEN BT#DACE T#DACEANOS4
~Bunny, darlin', did anybody ever tell you that you're a hoot?~[t#dac972] 
DO ~IncrementGlobal("T#DaceAnomen","GLOBAL",1)~
== BANOMEN
@76
== BT#DACE
@77  
== BANOMEN
@78
== BT#DACE
@79
== BANOMEN
@80
== BT#DACE
@81
EXIT


// ---------------------------------------------
// Dace SoA Cernd Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
Range("Cernd",30)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceCernd","GLOBAL",0)
~
THEN BT#DACE T#DACECERS1
~Don't you get twigs in that mane of yours, Cernd?  When you're out galavantin' around with the woodsprites, or whatever it is you do?~[t#dac972] 
DO ~IncrementGlobal("T#DaceCernd","GLOBAL",1)~
== BCERND
@83
== BT#DACE
@84
== BCERND
@85
== BT#DACE
@86
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
Range("Cernd",30)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceCernd","GLOBAL",1)
~
THEN BT#DACE T#DACECERS2
~So, Cernd, when you're a werewolf... ~[t#dac972] 
DO ~IncrementGlobal("T#DaceCernd","GLOBAL",1)~
== BCERND
@88
== BT#DACE
@89
== BCERND
@90
== BT#DACE
@91
== BCERND
@92
== BT#DACE
@93
EXIT


// ---------------------------------------------
// Dace SoA Edwin Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Edwin")
Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Gender("Edwin",MALE)
Global("T#DaceEdwin","GLOBAL",0)
~
THEN BT#DACE T#DACEEDWS1
~Edwin... how would I go about developin' a new school of magic?~[t#dac972] 
DO ~IncrementGlobal("T#DaceEdwin","GLOBAL",1)~
== BEDWIN 
@95
== BT#DACE
@96 
== BEDWIN 
@97 
== BT#DACE
@98
== BEDWIN
@99
== BMINSC IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
@100
== BT#DACE IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN
@101
EXIT 
 


//#2
CHAIN IF
~
Global("T#DaceEdwin","GLOBAL",2)
~
THEN BT#DACE T#DACEEDWS2A
~Hey, Edwin, you know how you're always talking about what a hit you are with the ladies?  Yeah, well, prove it.~[t#dac972] 
DO ~IncrementGlobal("T#DaceEdwin","GLOBAL",1)~
== BEDWIN
@103
== BT#DACE
@104
== BEDWIN
@105
== BT#DACE
@106  
== BEDWIN
@107
== BT#DACE
@108
== BEDWIN
@109
== BT#DACE
@110
== BAERIE IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
@111
== BVICONI
@112
== BT#DACE IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
@113
== BEDWIN
@114
DO ~RestParty()~
EXIT


//#3 Must trigger after next "waking" period after the conversation above
CHAIN IF
~
Global("T#DaceEdwin","GLOBAL",4)
~
THEN BT#DACE T#DACEEDWS3
~Good mornin', Edwin.~[t#dac972]
DO ~IncrementGlobal("T#DaceEdwin","GLOBAL",1)~
== BEDWIN
@116
== BT#DACE
@117  
== BEDWIN
@118
== BT#DACE
@119
== BEDWIN
@120  
== BT#DACE
@121
== BEDWIN
@122 
== BT#DACE
@123
== BEDWIN
@124
== BT#DACE
@125
== BEDWIN
@126  
== BT#DACE
@127
== BEDWIN
@128
== BT#DACE
@129
== BEDWIN
@130
EXIT


//#4
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Edwin")
Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Gender("Edwin",MALE)
Global("T#DaceEdwin","GLOBAL",5)
~
THEN BT#DACE T#DACEEDWS4
~Edwin, despite everythin', you and I have settled into a perfectly fine understandin', haven't we?  We like each other all right, irritate the hell out of each other, share a sort of grudging respect for one another, that sort of thing.~[t#dac972] 
DO ~IncrementGlobal("T#DaceEdwin","GLOBAL",1)~
== BEDWIN
@132
== BT#DACE
@133  
== BEDWIN
@134
== BT#DACE
@135
== BEDWIN
@136
== BT#DACE
@137
== BEDWIN
@138
EXIT


//#EDWINA1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Edwin")
Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
Global("T#DaceEdwina","GLOBAL",0)
~
THEN BT#DACE T#DACEEDWS4
~Everybody's been takin' a shot at you, haven't they, honey?  Just doesn't seem fair to me... not like you tried to do this, you know?  Anyway, I just wanted you to know that, despite my bein' known for actin' as a generally negative, haranguing, verbally abusive force in our little motley crew, I'm not gonna take a shot at you.  For being accidentally turned into a woman, I mean.  Just wouldn't be right, would it, Edwina?  For me to bring it up like that... ~[t#dac972]
DO ~IncrementGlobal("T#DaceEdwina","GLOBAL",1)~
== BEDWIN
@140
EXIT


//#EDWINA2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Edwin")
Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
Global("T#DaceEdwina","GLOBAL",1)
~
THEN BT#DACE T#DACEEDWS4
~You do make an awfully cute filly, darlin', if it makes you feel any better.~[t#dac972] 
DO ~IncrementGlobal("T#DaceEdwina","GLOBAL",1)~
== BEDWIN
@142
== BT#DACE
@143  
== BEDWIN
@144
== BT#DACE
@145
== BEDWIN
@146
== BT#DACE
@147
EXIT


// ---------------------------------------------
// Dace SoA Haer'Dalis Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceHaerDalis","GLOBAL",0)
~
THEN BT#DACE T#DACEHAES1
~Hey, tiefling--I call people things, things that aren't usually their names.  I'm sure you've noticed.  You do it, too, which is just dandy by me, and so I've decided to let you know what I'm gonna be callin' you in the future.~[t#dac972]
DO ~IncrementGlobal("T#DaceHaerDalis","GLOBAL",1)~
== BHAERDA
@149
== BT#DACE
@150
== BHAERDA
@151
== BT#DACE
@152
== BHAERDA
@153
== BT#DACE
@154
== BHAERDA
@155
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceHaerDalis","GLOBAL",1)
~
THEN BT#DACE T#DACEJHAES2
~So, in your eyes, Everythin' is just sorta windin' down to a slow stop at Nothin'?~[t#dac972] 
DO ~IncrementGlobal("T#DaceHaerDalis","GLOBAL",1)~
== BHAERDA
@157
== BT#DACE
@158
== BHAERDA
@159
== BT#DACE
@160
== BHAERDA
@161
== BT#DACE
@162
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceHaerDalis","GLOBAL",2)
~
THEN BT#DACE T#DACEHAES3
~So, Hank, is it true what they say about tieflings?~[t#dac972]
DO ~IncrementGlobal("T#DaceHaerDalis","GLOBAL",1)~
== BHAERDA
@164
== BT#DACE
@165
== BHAERDA
@166
== BT#DACE
@167
EXIT


//#4
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceHaerDalis","GLOBAL",3)
~
THEN BT#DACE T#DACEHAES4
~D'ya know somethin', Hank?~[t#dac972] 
DO ~IncrementGlobal("T#DaceHaerDalis","GLOBAL",1)~
== BHAERDA
@169
== BT#DACE
@170
=
@171
== BHAERDA
@172
== BT#DACE
@173
== BHAERDA
@174
== BT#DACE
@175
EXIT


// ---------------------------------------------
// Dace SoA Imoen Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceImoen","GLOBAL",0)
~
THEN BT#DACE T#DACEIMOS1
~So, you must be the infamous Imoen, eh, darlin'?  Kinda scrawnier than I pictured you, but you seem like a sweet kid.  <CHARNAME> seems to think you're worth a fine mess of trouble, though--been whippin' us like a mad horse-driver to get us to ya.~[t#dac972] 
DO ~IncrementGlobal("T#DaceImoen","GLOBAL",1)~
== BIMOEN2 
@177
== BT#DACE
@178 
== BIMOEN2 
@179 
EXIT 


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceImoen","GLOBAL",1)
~
THEN BT#DACE T#DACEIMOS2A
~Gotta hand it to you, kiddo. Don't know if I'd still be in one piece after all this spooky stuff. ~[t#dac972] 
DO ~IncrementGlobal("T#DaceImoen","GLOBAL",1)~
== BIMOEN2
@181
== BT#DACE
@182
== BIMOEN2
@183
== BT#DACE
@184 
EXIT


//#3 
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceImoen","GLOBAL",2)
~
THEN BT#DACE T#DACEIMOS3
~<CHARNAME>, I'm bored.  Do something entertaining.~[t#dac972] 
DO ~IncrementGlobal("T#DaceImoen","GLOBAL",1)~
== BIMOEN2
@186
== BT#DACE
@187  
== BIMOEN2
@188
== BT#DACE
@189
== BIMOEN2
@190  
== BT#DACE
@191
== BIMOEN2
@192
== BT#DACE
@193  
== BIMOEN2
@194
== BT#DACE
@195
== BIMOEN2
@196  
== BT#DACE
@197
== BIMOEN2
@198  
== BT#DACE
@199
== BIMOEN2
@200
EXIT


//#4 Must only fire if the PC and Dace are in "3" (Romance) status
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceRomanceActive","GLOBAL",2)
Global("T#DaceImoen","GLOBAL",3)
~
THEN BT#DACE T#DACEIMOS4
~Would you look at the cute behind on our leader, kids?  We are lucky, lucky minions.~[t#dac972] 
DO ~IncrementGlobal("T#DaceImoen","GLOBAL",1)~
== BIMOEN2
@202
== BT#DACE
@203  
== BIMOEN2
@204
== BT#DACE
@205
== BIMOEN2
@206
== BT#DACE
@207
== BIMOEN2
@208
== BT#DACE
@209
== BIMOEN2
@210
EXIT


// ---------------------------------------------
// Dace SoA Jaheira Banters
// ---------------------------------------------
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("T#DaceJaheira","GLOBAL",0)
~
THEN BJAHEIR DACEJAHS1
~You know, Dace, people have proper names for a reason.  Perhaps these names were given at birth or chosen later in life, but it is still an individual's choice on how he or she wishes to be addressed.  While an occasional term of endearment is acceptable, I find your constant habit of using these sarcastic diminutives and your assigning of alternate names to everyone you meet to be most offensive.~[t#dac972]
DO ~IncrementGlobal("T#DaceJaheira","GLOBAL",1)~
== BT#DACE
@212
== BJAHEIR
@213
== BT#DACE
@214
== BJAHEIR
@215
== BT#DACE
@216
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jaheira")
Range("Jaheira",30)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceJaheira","GLOBAL",1)
~
THEN BT#DACE T#DACEJAHS2
~Hey, Sugarbear?~[t#dac972] 
DO ~IncrementGlobal("T#DaceJaheira","GLOBAL",1)~
== BJAHEIR
@218
== BT#DACE
@219
== BJAHEIR
@220
== BT#DACE
@221
== BJAHEIR
@222
== BT#DACE
@223
== BJAHEIR
@224
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jaheira")
Range("Jaheira",30)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceJaheira","GLOBAL",2)
~
THEN BT#DACE T#DACEJAHS3
~Religious question for you, Sugarbear.~[t#dac972] 
DO ~IncrementGlobal("T#DaceJaheira","GLOBAL",1)~
== BJAHEIR
@226
== BT#DACE
@227
== BJAHEIR
@228
== BT#DACE
@229
== BJAHEIR
@230
== BT#DACE
@231
== BJAHEIR
@232
== BT#DACE
@233
== BJAHEIR
@234
== BT#DACE
@235
== BJAHEIR
@236
== BT#DACE
@237 
== BJAHEIR
@238
== BT#DACE
@239
EXIT


// ---------------------------------------------
// Dace SoA Jan Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jan")
Range("Jan",30)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceJan","GLOBAL",0)
~
THEN BT#DACE T#DACEJANS1
~Jan, do you think a horse could ever breed with a griffin?~[t#dac972] 
DO ~IncrementGlobal("T#DaceJan","GLOBAL",1)~
== BJAN
@241
== BT#DACE
@242
== BJAN
@243
== BT#DACE
@244
== BJAN
@245
== BT#DACE
@246
== BJAN
@247
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jan")
Range("Jan",30)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceJan","GLOBAL",1)
~
THEN BT#DACE T#DACEJANS2
~Jan, I know you like turnips, but what about bacon?  It's vastly superior to those roots of yours, darlin', I'm sorry.  It just is.~[t#dac972] 
DO ~IncrementGlobal("T#DaceJan","GLOBAL",1)~
== BJAN
@249
= @250
== BT#DACE
@251
== BJAN
@252
== BT#DACE
@253
== BJAN
@254
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jan")
Range("Jan",30)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceJan","GLOBAL",2)
~
THEN BT#DACE T#DACEJANS3
~Hey, Jan, tell us a story!~[t#dac972] 
DO ~IncrementGlobal("T#DaceJan","GLOBAL",1)~
== BJAN
@256
== BT#DACE
@257
== BJAN
@258
== BT#DACE
@259
== BJAN
@260
== BT#DACE
@261
== BJAN
@262
== BT#DACE
@263
== BJAN
@264
EXIT


// ---------------------------------------------
// Dace SoA Keldorn Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceKeldorn","GLOBAL",0)
~
THEN BT#DACE T#DACEKELS1
~You irritate me, Keldorn.~[t#dac972] 
DO ~IncrementGlobal("T#DaceKeldorn","GLOBAL",1)~
== BKELDOR
@266
== BT#DACE
@267 
== BKELDOR 
@268 
== BT#DACE 
@269
== BKELDOR
@270
== BT#DACE
@271
== BKELDOR 
@272 
== BT#DACE 
@273
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceKeldorn","GLOBAL",1)
~
THEN BT#DACE T#DACEKELS2A
~Keldorn, honey, I'm bored.  Let me pick a fight with you?  You'd just have to somethin' morally upstandin' and hidebound an' we could start from there.~[t#dac972] 
DO ~IncrementGlobal("T#DaceKeldorn","GLOBAL",1)~
== BKELDOR
@275
== BT#DACE
@276
== BKELDOR
@277
== BT#DACE
@278  
== BKELDOR
@279
== BT#DACE
@280
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceKeldorn","GLOBAL",2)
~
THEN BT#DACE T#DACEKELS3
~What's eating you, handsome?  You're givin' me that Righteous Paladin Eye.~[t#dac972] 
DO ~IncrementGlobal("T#DaceKeldorn","GLOBAL",1)~
== BKELDOR
@282
== BT#DACE
@283
== BKELDOR
@284 
== BT#DACE
@285
== BKELDOR
@286  
== BT#DACE
@287
== BKELDOR
@288 
== BT#DACE
@289  
== BKELDOR
@290
== BT#DACE
@291
== BKELDOR
@292  
== BT#DACE
@293
== BKELDOR
@294  
== BT#DACE
@295
== BKELDOR
@296
EXIT


// ---------------------------------------------
// Dace SoA Korgan Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Korgan")
Range("Korgan",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceKorgan","GLOBAL",0)
~
THEN BT#DACE T#DACEKORS1
~Hey, Korgan, if you were a rock, what kind of rock would you be, d'ya think?~[t#dac972] 
DO ~IncrementGlobal("T#DaceKorgan","GLOBAL",1)~
== BKORGAN
@298
== BT#DACE
@299
== BKORGAN
@300  
== BT#DACE
@301
== BKORGAN
@302
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("T#DaceKorgan","GLOBAL",1)
~
THEN BKORGAN DACEKORS2
~D'yae know why I like ye, Linton?~[t#dac972]
DO ~IncrementGlobal("T#DaceKorgan","GLOBAL",1)~
== BT#DACE
@304
== BKORGAN
@305
== BT#DACE
@306
== BKORGAN
@307
== BT#DACE
@308
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Korgan")
Range("Korgan",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceKorgan","GLOBAL",2)
~
THEN BT#DACE T#DACEKORS3
~Why the dickens d'ya use that silly thing, Korgan?~[t#dac972] 
DO ~IncrementGlobal("T#DaceKorgan","GLOBAL",1)~
== BKORGAN
@310
== BT#DACE
@311
=
@312
== BKORGAN
@313
== BT#DACE
@314
EXIT


// ---------------------------------------------
// Dace SoA Mazzy Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Mazzy")
Range("Mazzy",30)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceMazzy","GLOBAL",0)
~
THEN BT#DACE T#DACEMAZS1
~Know what I like about you, Mazzy?~[t#dac972] 
DO ~IncrementGlobal("T#DaceMazzy","GLOBAL",1)~
== BMAZZY 
@316
== BT#DACE
@317 
== BMAZZY 
@318 
== BT#DACE 
@319
== BMAZZY
@320
== BT#DACE
@321
== BMAZZY
@322
== BT#DACE
@323
== BMAZZY
@324
== BT#DACE
@325
== BMAZZY
@326
EXIT 


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Mazzy")
Range("Mazzy",30)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceMazzy","GLOBAL",1)
~
THEN BT#DACE T#DACEMAZS2A
~Are halflings born with big heads?~[t#dac972] 
DO ~IncrementGlobal("T#DaceMazzy","GLOBAL",1)~
== BMAZZY
@328
== BT#DACE
@329
== BMAZZY
@330
== BT#DACE
@331  
== BMAZZY
@332
== BT#DACE
@333
== BMAZZY
@334
== BT#DACE
@335
== BMAZZY
@336
== BT#DACE
@337
== BMAZZY
@338
== BT#DACE
@339
EXIT


// ---------------------------------------------
// Dace SoA Minsc Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
Global("T#DaceMinsc","GLOBAL",0)
~
THEN BT#DACE T#DACEMINS1
~Hey, Minsc, I've got an idea!  Want to play a game as we travel?~[t#dac972] 
DO ~IncrementGlobal("T#DaceMinsc","GLOBAL",1)~
== BMINSC
@341  
== BT#DACE
@342
== BMINSC
@343
== BT#DACE
@344
== BMINSC
@345
== BT#DACE
@346
=
@347
=
@348
== BMINSC
@349
== BT#DACE
@350
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceMinsc","GLOBAL",1)
~
THEN BT#DACE T#DACEMINS2
~Here you go, Minsc.~[t#dac972] 
DO ~IncrementGlobal("T#DaceMinsc","GLOBAL",1)~
== BMINSC
@352
== BT#DACE
@353
== BMINSC
@354
== BT#DACE
@355
== BMINSC
@356
== BT#DACE
@357
== BMINSC
@358
== BT#DACE
@359
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceMinsc","GLOBAL",2)
~
THEN BT#DACE T#DACEMINS3
~Minsc, the more I think about it, the more I think that you might not be the first Rashemaar I've ever met.~[t#dac972] 
DO ~IncrementGlobal("T#DaceMinsc","GLOBAL",1)~
== BMINSC
@361
== BT#DACE
@362
== BMINSC
@363
== BT#DACE
@364
== BMINSC
@365
== BT#DACE
@366
== BMINSC
@367
== BT#DACE
@368
== BMINSC
@369
== BT#DACE
@370
EXIT


// ---------------------------------------------
// Dace SoA Nalia Banters
// ---------------------------------------------
//#1
//(triggered banter? either after keep or funeral?)
CHAIN IF
~
Global("T#DaceNalia","GLOBAL",2)
~
THEN BT#DACE T#DACENALS1
~Nalia, what woulda been so bad ‘bout just marryin' that fella?~[t#dac972] 
DO ~IncrementGlobal("T#DaceNalia","GLOBAL",1)~
== BNALIA
@372
== BT#DACE
@373
=
@374
== BNALIA
@375
=
@376
== BT#DACE
@377
== BNALIA
@378
== BT#DACE
@379
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Nalia")
Range("Nalia",30)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceNalia","GLOBAL",3)
~
THEN BT#DACE T#DACENALS2
~Hey, Nalia, do you keep a secret diary?~[t#dac972] 
DO ~IncrementGlobal("T#DaceNalia","GLOBAL",1)~
== BNALIA
@220
== BT#DACE
@381
== BNALIA
@382
== BT#DACE
@383
== BNALIA
@384
== BT#DACE
@385
== BNALIA
@386
== BT#DACE
@387
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Nalia")
Range("Nalia",30)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceNalia","GLOBAL",4)
~
THEN BT#DACE T#DACENALS3
~Damn.  Nalia, I was just about to say somethin' to you, but then it occurred to me that I might be bein' insensitive again, so I had to go and stop myself from sayin' it.~[t#dac972]
DO ~IncrementGlobal("T#DaceNalia","GLOBAL",1)~
== BNALIA
@389
== BT#DACE
@390
== BNALIA
@391
== BT#DACE
@392
== BNALIA
@393
== BT#DACE
@394
== BNALIA
@395
== BT#DACE
@396
EXIT


// ---------------------------------------------
// Dace SoA Valygar Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Valygar")
Range("Valygar",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceValygar","GLOBAL",0)
~
THEN BT#DACE T#DACEVALS1
~Hey, Valygar, can I call you “Stuart?”  You look like a “Stuart” to me, and “Valygar's" kinda a mouthful.~[t#dac972] 
DO ~IncrementGlobal("T#DaceValygar","GLOBAL",1)~
== BVALYGA
@398
== BT#DACE
@399
== BVALYGA
@400
== BT#DACE
@401
== BVALYGA
@398
== BT#DACE
@402
== BVALYGA
@403
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Valygar")
Range("Valygar",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceValygar","GLOBAL",1)
~
THEN BT#DACE T#DACEVALS2
~Hey, <CHARNAME>, hold up for a second.  I've gotta'...mmm...lessee, euphemism for the faint-of-heart among us.  How about, "relieve myself"?  Yeah. Now.~[t#dac972]
DO ~IncrementGlobal("T#DaceValygar","GLOBAL",1)~
== BVALYGA
@405
== BT#DACE
@406
== BVALYGA
@407
== BT#DACE
@408
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("T#DaceValygar","GLOBAL",2)
~
THEN BVALYGA DACEVALS3
~Linton.~[t#dac972]
DO ~IncrementGlobal("T#DaceValygar","GLOBAL",1)~
== BT#DACE
@410
== BVALYGA
@411
== BT#DACE
@412
== BVALYGA
@413
== BT#DACE
@414
EXIT


// ---------------------------------------------
// Dace SoA Viconia Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Viconia")
Range("Viconia",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceViconia","GLOBAL",0)
~
THEN BT#DACE T#DACEVICS1
~Hey, Vicky?~[t#dac972]
DO ~IncrementGlobal("T#DaceViconia","GLOBAL",1)~
== BVICONI
@416
== BT#DACE
@417
== BVICONI
@418
== BT#DACE
@419
== BVICONI
@420
== BT#DACE
@421
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("T#DaceViconia","GLOBAL",1)
~
THEN BVICONI DACEVICS2
~Linton, out of curiosity, do you have any actual skills to lend to <CHARNAME>'s cause, or do your specialties really lie in pointless ramblings, quaintly rustic observations, and ignorant rudeness, as they seem to?~[t#dac972]
DO ~IncrementGlobal("T#DaceViconia","GLOBAL",1)~
== BT#DACE
@423
== BVICONI
@424
== BT#DACE
@425
== BVICONI
@426
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Viconia")
Range("Viconia",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceViconia","GLOBAL",2)
~
THEN BT#DACE T#DACEVICS3
~Golly, DeVir... those're sure some shanks you've got on ‘ya.~[t#dac972] 
DO ~IncrementGlobal("T#DaceViconia","GLOBAL",1)~
== BVICONI
@428
== BT#DACE
@429
== BVICONI
@430
== BT#DACE
@431
== BVICONI
@432
== BT#DACE
@433
EXIT


//#4
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("T#DaceViconia","GLOBAL",3)
~
THEN BVICONI DACEVICS4
~Really, Linton, why is it that you have such difficulty with the Common tongue?~[t#dac972]
DO ~IncrementGlobal("T#DaceViconia","GLOBAL",1)~
== BT#DACE
@435
== BVICONI
@436
== BT#DACE
@437
== BVICONI
@438
== BT#DACE
@439
== BVICONI
@440
== BT#DACE
@441
== BVICONI
@442
== BT#DACE
@443
== BVICONI
@444
== BT#DACE
@445
EXIT


//#5
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("T#DaceViconia","GLOBAL",4)
~
THEN BVICONI DACEVICS5
~You know, Linton, I've been watching you. I almost wonder if you aren't deliberately even more infuriatingly rustic and difficult when you're speaking to me than you usually are.~[t#dac972]
DO ~IncrementGlobal("T#DaceViconia","GLOBAL",1)~
== BT#DACE
@447
== BVICONI
@448
== BT#DACE
@449
=
@450
== BVICONI
@451
== BT#DACE
@452
=
@453
== BVICONI
@454
== BT#DACE
@455
== BVICONI
@456
== BT#DACE
@457
== BVICONI
@458
EXIT


//#6
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Viconia")
Range("Viconia",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceViconia","GLOBAL",5)
~
THEN BT#DACE T#DACEVICS6
~DeVir, have you ever eaten snake?~[t#dac972] 
DO ~IncrementGlobal("T#DaceViconia","GLOBAL",1)~
== BVICONI
@405
== BT#DACE
@460
== BVICONI
@461
== BVICONI
@462
== BT#DACE
@463
== BVICONI
@464
== BT#DACE
@465
== BVICONI
@466
== BT#DACE
@467
== BVICONI
@468
== BT#DACE
@262
== BVICONI
@469
== BT#DACE
@470
EXIT


//#7
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("T#DaceViconia","GLOBAL",6)
~
THEN BVICONI DACEVICS7
~Dace, I've been thinking about your obsession with horses.~[t#dac972]
DO ~IncrementGlobal("T#DaceViconia","GLOBAL",1)~
== BT#DACE
@472
== BVICONI
@473
== BT#DACE
@474
== BVICONI
@475
== BT#DACE
@476
== BVICONI
@477
== BT#DACE
@478
== BVICONI
@88
== BT#DACE
@479
== BVICONI
@480
EXIT


//#8
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Viconia")
Range("Viconia",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceViconia","GLOBAL",7)
~
THEN BT#DACE T#DACEVICS8
~...so I said, "Why don't *you* tell *me* what's wrong with my undergarments, bucko, and then *I'll* tell *you* where the antidote is."~[t#dac972]
DO ~IncrementGlobal("T#DaceViconia","GLOBAL",1)~
== BVICONI
@482
== BT#DACE
@483
== BVICONI
@484
== BT#DACE
@485
== BT#DACE
@486
== BVICONI
@487
EXIT


// ---------------------------------------------
// Dace SoA Yoshimo Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Yoshimo")
Range("Yoshimo",30)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceYoshimo","GLOBAL",0)
~
THEN BT#DACE T#DACEYOSS1
~Yoshimo, the rest of these poor darlin's only have the two of us to go by, but I was meanin' to ask you somethin'.  Is it just me, or are we bounty hunters a regular pack of charmers and sweethearts?~[t#dac972] 
DO ~IncrementGlobal("T#DaceYoshimo","GLOBAL",1)~
== BYOSHIM
@489
== BT#DACE
@490
== BYOSHIM
@491
== BT#DACE
@492
== BYOSHIM
@493
== BT#DACE
@494
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("T#DaceYoshimo","GLOBAL",1)
~
THEN BYOSHIM DACEYOSS2
~What got you started in the business, Dace?  You will forgive me for asking, but you do not always seem like the stereotypical bounty hunter.~[t#dac972]
DO ~IncrementGlobal("T#DaceYoshimo","GLOBAL",1)~
== BT#DACE
@496
== BYOSHIM
@497 
== BT#DACE
@498
== BYOSHIM
@499
== BT#DACE
@500
== BYOSHIM
@501
== BT#DACE
@502
== BYOSHIM
@503
== BT#DACE
@33
== BYOSHIM
@504
== BT#DACE
@505
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Yoshimo")
Range("Yoshimo",30)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceYoshimo","GLOBAL",2)
~
THEN BT#DACE T#DACEYOSS1
~Yeah, all right, I suppose you can look at it like that, in which case we are in the field of heavy industry, but I prefer to see it as a service-sector profession.  How do you go about constructin' your code, then?~[t#dac972] 
DO ~IncrementGlobal("T#DaceYoshimo","GLOBAL",1)~
== BYOSHIM
@507
== BT#DACE
@508
== BYOSHIM
@509
== BT#DACE
@510
== BYOSHIM
@511
== BT#DACE
@512
== BYOSHIM
@513
== BT#DACE
@514
== BYOSHIM
@515
== BT#DACE
@516
== BYOSHIM
@517
EXIT