// ---------------------------------------------
// Dace ToB Banters
// ---------------------------------------------
BEGIN BT#DAC25

// ---------------------------------------------
// Dace ToB Aerie Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAerieToB","GLOBAL",0)
~
THEN BAERIE25 DACEAERT1
~Can I ask you something, Dace?~[t#dac972] 
DO ~IncrementGlobal("T#DaceAerieToB","GLOBAL",1)~
== BT#DAC25
@1
== BAERIE25
@2
== BT#DAC25
@3
== BAERIE25
@4
== BT#DAC25
@5
== BAERIE25
@6
== BT#DAC25
@7
== BAERIE25
@8
== BT#DAC25
@9
== BAERIE25
@10
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
Global("T#DaceAerieToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEAERT2
~Aerie, I'm honestly not tryin' to sound disrespectful, here, but I have one of my patented theological questions for you.  Strictly rhetorical, of course--I don't think anybody wonders how I feel about the ambitions and Damn Foolery involved in makin' such a choice--but if <CHARNAME> chooses or manages or is made to or whatever, oh, what I'm tryin' to is, how would that affect you?  If <CHARNAME> popped up as the next <PROLADY_LORD> of Murder? Or even of Fluffy Bunnies? Bein' a cleric, an' all?  Does it lessen the "realness" of Baervan, seein' a mortal friend of yours become a god?~[t#dac972] 
DO ~IncrementGlobal("T#DaceAerieToB","GLOBAL",1)~
== BAERIE25
@12
== BT#DAC25
@13
== BAERIE25
@14
== BT#DAC25
@15
== BAERIE25
@16
EXIT


// ---------------------------------------------
// Dace ToB Anomen Banters
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
Global("T#DaceAnomenToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEANOT1
~Got a serious religious query for ‘ya, Bunny.  I know you don't much like talkin' to me, but don't you have some kinda responsibility to answer me?  Aren't I one of the lost and wanderin'?~[t#dac972] 
DO ~IncrementGlobal("T#DaceAnomenToB","GLOBAL",1)~
== BANOME25
@18
== BT#DAC25
@19
== BANOME25
@20
== BT#DAC25
@21
== BANOME25
@22  
== BT#DAC25
@23
== BANOME25
@24
== BT#DAC25
@25  
EXIT

//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceAnomenToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEANOT1
~Bunny, ‘member what we were talkin' about before?  Well, I've been thinkin', and I still think it comes down, though, in the end, to an altar or a throne.  Your power isn't yours; it's only lent to you.~[t#dac972]
DO ~IncrementGlobal("T#DaceAnomenToB","GLOBAL",1)~
== BANOME25
@27
== BT#DAC25
@28
== BANOME25
@29
== BT#DAC25
@30
== BANOME25
@31
EXIT


// ---------------------------------------------
// Dace ToB Cernd Banters
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
Global("T#DaceCerndToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACECERT1
~Cernd, I still just can't get over the fact that you can do that thing you do.~[t#dac972] 
DO ~IncrementGlobal("T#DaceCerndToB","GLOBAL",1)~
== BCERND25
@33
== BT#DAC25
@34
== BCERND25
@35
== BT#DAC25
@36
== BCERND25
@37
== BT#DAC25
@38
== BCERND25
@39
== BT#DAC25
@40
EXIT


// ---------------------------------------------
// Dace ToB Edwin Banters
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
Global("T#DaceEdwinToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEEDWT1
~How would I do in business in Thay, Edwin?~[t#dac972] 
DO ~IncrementGlobal("T#DaceEdwinToB","GLOBAL",1)~
== BEDWIN25
@42
== BT#DAC25
@43
== BEDWIN25
@44
== BT#DAC25
@45
EXIT


//#2 This can only fire if conversations 2 and 3 fired in SOA...have to weight that somehow
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Edwin")
Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
GlobalGT("T#DaceEdwin","GLOBAL",3)
Global("T#DaceEdwinToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEEDWT1
~Edwin, honey, the other day I found myself thinkin' about our youthful indiscretions.~[t#dac972] 
DO ~IncrementGlobal("T#DaceEdwinToB","GLOBAL",1)~
== BEDWIN25
@47
== BT#DAC25
@48
== BEDWIN25
@49
== BT#DAC25
@50
== BEDWIN25
@51
== BT#DAC25
@52
== BEDWIN25
@53
== BT#DAC25
@54
== BEDWIN25
@55
== BT#DAC25
@56
EXIT


// ---------------------------------------------
// Dace ToB Haer'Dalis Banters
// ---------------------------------------------
// #1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("T#DaceHaerToB","GLOBAL",0)
~
THEN BHAERD25 DACEHAET1
~Forgive me, fierce falcon, but I have reached the limits of my endurance and cannot hold this back any longer.~[t#dac972]
DO ~IncrementGlobal("T#DaceHaerToB","GLOBAL",1)~
== BT#DAC25 
@58
== BHAERD25
@59
== BT#DAC25
@60
== BHAERD25
@61
== BT#DAC25
@62
== BHAERD25
@63
== BT#DAC25
@64
== BHAERD25
@65
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
Global("T#DaceHaerToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEHAET2
~So, Hank, when this is all over an' you sit down to write a glorious saga, are you gonna have to downplay your part in it?  Now, you don't exactly radiate humility, darlin', but I'm just askin' if it isn't bad form to be one of the heroes of your own tales.~[t#dac972]
DO ~IncrementGlobal("T#DaceHaerToB","GLOBAL",1)~
== BHAERD25
@67
== BT#DAC25
@68
== BHAERD25
@69
== BT#DAC25
@70
== BHAERD25
@71
== BT#DAC25
@72
== BHAERD25
@73
== BT#DAC25
@74
EXIT


// ---------------------------------------------
// Dace ToB Imoen Banters
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
Global("T#DaceImoenToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEIMOT1
 ~How's life treatin' you, kiddo?  Feelin' all  right?  So much goin' on...~[t#dac972] 
DO ~IncrementGlobal("T#DaceImoenToB","GLOBAL",1)~
== BIMOEN25
@76
== BT#DAC25
@77
== BIMOEN25
@78
== BT#DAC25
@79
== BIMOEN25
@80
== BT#DAC25
@81
== BIMOEN25
@82
== BT#DAC25
@83
== BIMOEN25
@84
EXIT


//#2 Must only fire if the PC and Dace are in "3" (Romance) status
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceRomanceActive","GLOBAL",2)
Global("T#DaceImoenToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEIMOT1
~Whatchu grinnin' at me for, you minx?~[t#dac972]
DO ~IncrementGlobal("T#DaceImoenToB","GLOBAL",1)~
== BIMOEN25
@86
== BT#DAC25
@87
== BIMOEN25
@88
== BT#DAC25
@89
== BIMOEN25
@90
== BT#DAC25
@91
== BIMOEN25
@92
EXIT


// ---------------------------------------------
// Dace ToB Jaheira Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Jaheira")
Range("Jaheira",30)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceJaheiraToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEJAHT1
~Sugarbear, I just have to ask you, as somebody who is just never gonna know.  What's it like, bein' a mother?~[t#dac972]
DO ~IncrementGlobal("T#DaceJaheiraToB","GLOBAL",1)~
== BJAHEI25
@94
== BT#DAC25
@95
== BJAHEI25
@96
== BT#DAC25
@97
== BJAHEI25
@98
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
Global("T#DaceJaheiraToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEJAHT2
~Hey, yum!  I knew you were hidin' in my pack somewhere, Mr.Bacon.~[t#dac972]
DO ~IncrementGlobal("T#DaceJaheiraToB","GLOBAL",1)~
== BJAHEI25
@100
== BT#DAC25
@101
== BJAHEI25
@102
== BT#DAC25
@103
== BJAHEI25
@104
EXIT


// ---------------------------------------------
// Dace ToB Jan Banters
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
Global("T#DaceJanToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEJANT1
~Hey, Jansen, can I get some turnip seeds from you when all this is over?  I have to admit, you've helped me develop a sort of taste for mashed turnip with bacon all mixed in, and I wouldn't mind growin' some on my land.~[t#dac972]
DO ~IncrementGlobal("T#DaceJanToB","GLOBAL",1)~
== BJAN25
@106
== BT#DAC25
@107
== BJAN25
@108  
== BT#DAC25
@109
EXIT


// ---------------------------------------------
// Dace ToB Keldorn Banters
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
Global("T#DaceKeldornToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEKELT1
~Keldorn.~[t#dac972]
DO ~IncrementGlobal("T#DaceKeldornToB","GLOBAL",1)~
== BKELDO25
@111
== BT#DAC25
@112
== BKELDO25
@113
== BT#DAC25
@114
== BKELDO25
@115
== BT#DAC25
@116
== BKELDO25
@117
== BT#DAC25
@118
== BKELDO25
@119
== BT#DAC25
@120
EXIT


//#2 this can only fire if Keldorn went through his family drama in SOA but stayed with CHARNAME
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
GlobalGT("T#DaceKeldorn","GLOBAL",2)
Global("T#DaceKeldornToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEKELT1
~I think I might try my hand at seducin' you now, Keldorn.  Not as though it could do any harm--the way I see it, you've got a free one comin', what with your wife doin' as she did.  It'd hardly even be corruption, really.  Just evenin' the score, see?~[t#dac972]
DO ~IncrementGlobal("T#DaceKeldornToB","GLOBAL",1)~
== BKELDO25
@122
== BT#DAC25
@123
== BKELDO25
@124
== BT#DAC25
@125
== BKELDO25
@126
== BT#DAC25
@127
EXIT


// ---------------------------------------------
// Dace ToB Korgan Banters
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
Global("T#DaceKorganToB","GLOBAL",0)
~
THEN BT#DAC25 DACEKORT1
~Hey, Korgan, d'ya wanna get matchin' tattoos?  We could get somethin' real tough, as befits us hard-bitten mercenary types.  An' we could be our own little gang--just you an' me an' our matchin', tough tattoos!~[t#dac972]
DO ~IncrementGlobal("T#DaceKorganToB","GLOBAL",1)~
== BKORGA25
@129
== BT#DAC25
@130
== BKORGA25
@131
EXIT


// ---------------------------------------------
// Dace ToB Mazzy Banters
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
Global("T#DaceMazzyToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEMAZT1
~When is that goddess of yours gonna get off her ass an' promote you to paladin, Mazzy?~[t#dac972]
DO ~IncrementGlobal("T#DaceMazzyToB","GLOBAL",1)~
== BMAZZY25
@133
== BT#DAC25
@134
== BMAZZY25
@135
== BT#DAC25
@136
EXIT


// ---------------------------------------------
// Dace ToB Minsc Banters
// ---------------------------------------------
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("T#DaceMinscToB","GLOBAL",0)
~
THEN BMINSC25 DACEMINT1
~Boo has something he wishes for me to tell you, Dace.~[t#dac972]
DO ~IncrementGlobal("T#DaceMinscToB","GLOBAL",1)~
== BT#DAC25
@138
== BMINSC25
@139
== BT#DAC25
@140
== BMINSC25
@141
== BT#DAC25
@142
== BMINSC25
@143
== BT#DAC25
@144
== BMINSC25
@145
== BT#DAC25
@146
== BMINSC25
@147
EXIT


// ---------------------------------------------
// Dace ToB Nalia Banters
// ---------------------------------------------
//#1
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("T#DaceNaliaToB","GLOBAL",0)
~
THEN BNALIA25 DACENALT1
~Dace?~[t#dac972]
DO ~IncrementGlobal("T#DaceNaliaToB","GLOBAL",1)~
== BT#DAC25 
@149
== BNALIA25
@150
== BT#DAC25
@151
== BNALIA25
@152
== BT#DAC25
@153
== BNALIA25
@154
== BT#DAC25
@155
== BNALIA25
@156
== BT#DAC25
@157
== BNALIA25
@158
EXIT


// ---------------------------------------------
// Dace ToB Sarevok Banters
// ---------------------------------------------
//#1  I want this one to trigger soon after getting Sarevok for the first time...possibly stick it onto the end of the convo the PC and Sarevok have?
CHAIN IF
~
Global("T#DaceSarevokToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACESART1
~Well, aren't you cute?  Big fella, that's for damn sure.  ‘Sposed to be dead, from what I hear, but that's never stopped anybody from droppin' by to visit <CHARNAME> before.  What is it about you, Ducky, that makes that true, by the way?~[t#dac972]
DO ~IncrementGlobal("T#DaceSarevokToB","GLOBAL",1)~
== BSAREV25
@160
== BT#DAC25
@161
== BSAREV25
@162
== BT#DAC25
@163
== BSAREV25
@164
== BT#DAC25
@165
EXIT


//#2A If PC and Dace are in romance
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Sarevok")
Range("Sarevok",30)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceSarevokToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACESART2
~Sarevok, honey,  do you think you and I could ever--~[t#dac972]
DO ~IncrementGlobal("T#DaceSarevokToB","GLOBAL",1)~
== BSAREV25
@167
== BT#DAC25
@168
== BSAREV25 IF ~Global("T#DaceRomanceActive","GLOBAL",2)~
@169
== BSAREV25 IF ~!Global("T#DaceRomanceActive","GLOBAL",2)~
@170
== BT#DAC25
@171
== BSAREV25
@172
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Sarevok")
Range("Sarevok",30)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceSarevokToB","GLOBAL",2)
~
THEN BT#DAC25 T#DACESART3
 ~...and then?~[t#dac972] 
DO ~IncrementGlobal("T#DaceSarevokToB","GLOBAL",1)~
== BSAREV25
@174
== BT#DAC25
@175
== BSAREV25
@176
== BT#DAC25
@177
== BSAREV25
@178
== BT#DAC25
@179
== BSAREV25
@180
== BT#DAC25
@181
EXIT


//#4
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Sarevok")
Range("Sarevok",30)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceSarevokToB","GLOBAL",3)
~
THEN BT#DAC25 T#DACESART4
~Sarevok, how would you feel about a cheese sandwich just now?~[t#dac972]
DO ~IncrementGlobal("T#DaceSarevokToB","GLOBAL",1)~
== BSAREV25
@183
== BT#DAC25
@184
== BSAREV25
@185
== BT#DAC25
@186
==BSAREV25
@187
== BT#DAC25
@188
EXIT


// ---------------------------------------------
// Dace ToB Valygar Banters
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
Global("T#DaceValygarToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEVALT1
~Valygar, I've got you all figured out, didja know that?~[t#dac972]
DO ~IncrementGlobal("T#DaceValygarToB","GLOBAL",1)~
== BVALYG25
@190
== BT#DAC25
@191
== BVALYG25
@192
== BT#DAC25
@193
== BVALYG25
@194
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
Global("T#DaceValygarToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEVALT2
~Valygar, ‘member when you asked about my horses?~[t#dac972]
DO ~IncrementGlobal("T#DaceValygarToB","GLOBAL",1)~
== BVALYG25
@196
== BT#DAC25
@197
== BVALYG25
@198
== BT#DAC25
@199
== BVALYG25
@100
== BT#DAC25
@200
== BVALYG25
@201
== BT#DAC25
@202
EXIT



// ---------------------------------------------
// Dace ToB Viconia Banters
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
Global("T#DaceViconiaToB","GLOBAL",0)
~
THEN BT#DAC25 T#DACEVICT1
~Had a dream about you last night, Vicky.~[t#dac972]
DO ~IncrementGlobal("T#DaceViconiaToB","GLOBAL",1)~
== BVICON25
@204
== BT#DAC25
@205
=
@206
== BVICON25
@207
== BT#DAC25
@208
== BVICON25
@209
== BT#DAC25
@210
EXIT


//#2
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("Viconia")
Range("Viconia",30)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
Global("T#DaceViconiaToB","GLOBAL",1)
~
THEN BT#DAC25 T#DACEVICT2
~Hey, Vicky, next time we're fightin', think you could maybe stop fixin' your nails for a second and see if I need healin'?~[t#dac972]
DO ~IncrementGlobal("T#DaceViconiaToB","GLOBAL",1)~
== BVICON25
@212
== BT#DAC25
@213
== BVICONI
@214
== BT#DAC25
@215
== BVICON25
@216
== BT#DAC25
@217
== BVICON25
@218
== BT#DAC25
@219
== BVICON25
@220
== BT#DAC25
@221
EXIT


//#3
CHAIN IF
~
CombatCounter(0)
!See([ENEMY])
InParty("T#Dace")
Range("T#Dace",30)
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("T#DaceViconiaToB","GLOBAL",2)
~
THEN BVICONI DACEVICT3
 ~...no, they *are* part spider.  The procedure is a magical one.~[t#dac972]
DO ~IncrementGlobal("T#DaceViconiaToB","GLOBAL",1)~
== BT#DAC25
@223
== BVICON25
@224
== BT#DAC25
@225
== BVICON25
@226
== BT#DAC25
@227
== BVICON25
@228
== BT#DAC25
@229
== BVICON25
@230
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
Global("T#DaceViconiaToB","GLOBAL",3)
~
THEN BT#DAC25 T#DACEVICT4
~What are you going to do after all this is over, Vicky?~[t#dac972]
DO ~IncrementGlobal("T#DaceVICT4","GLOBAL",1)~
== BVICON25
@232
== BT#DAC25
@233
== BVICON25
@234
== BT#DAC25
@235
== BVICON25
@236
== BT#DAC25
@237
== BVICON25
@238
== BT#DAC25
@239
== BVICON25
@240
== BT#DAC25
@241
== BVICON25
@242
== BT#DAC25
@243
EXIT
