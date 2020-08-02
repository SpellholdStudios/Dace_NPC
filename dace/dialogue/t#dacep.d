// ---------------------------------------------
// Dace SoA Post-joined Dialogue
// ---------------------------------------------
BEGIN T#DACEP

// Suss Track Leave
IF ~Global("T#DaceJoined","GLOBAL",1) GlobalLT("T#DaceSussTalks","GLOBAL",30)~ T#DP1_1
  SAY @2000
  ++ @2001 + T#DP1_2
  ++ @2002 + T#DP1_2
  ++ @2003 + T#DP1_3
END

IF ~~ T#DP1_2
  SAY @2004
  IF ~~ DO ~LeaveParty() EscapeArea() SetGlobal("T#DaceJoined","GLOBAL",0)~ EXIT
END

IF ~~ T#DP1_3
  SAY @2005
  IF ~~ EXIT
END


// Rom Track Leave
IF ~Global("T#DaceJoined","GLOBAL",1) Global("T#DaceRomanceActive","GLOBAL",2)~ T#DP3_1
  SAY @2006
  ++ @2007 + T#DP3_2
  ++ @2008 + T#DP3_2
  ++ @2009 + T#DP3_3
END

IF ~~ T#DP3_2
  SAY @2010
  IF ~~ DO ~LeaveParty() EscapeArea() SetGlobal("T#DaceJoined","GLOBAL",0) SetGlobal("T#DaceRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ T#DP3_3
  SAY @2011
  IF ~~ EXIT
END


// Int Track Leave
IF ~Global("T#DaceJoined","GLOBAL",1)~ T#DP2_1
  SAY @2012
  ++ @2013 + T#DP2_2
  ++ @2014  + T#DP2_3
END

IF ~~ T#DP2_2
  SAY @2015
  IF ~~ DO ~LeaveParty() EscapeArea() SetGlobal("T#DaceJoined","GLOBAL",0)~ EXIT
END

IF ~~ T#DP2_3
  SAY @2016
  IF ~~ EXIT
END


// amaunator temple--resurrect her

IF WEIGHT #-1 ~Global("T#DaceVampire","GLOBAL",4)~ T#DaceReturn
  SAY @2017
  = @2018 
  ++ @2019 + T#DaceReturn6
  ++ @2020 + T#DaceReturn6
  ++ @2021 + T#DaceReturn2
  ++ @2022 + T#DaceReturn3
  ++ @2023 + T#DaceReturn4
  ++ @2024 + T#DaceReturn5
END

IF ~~ T#DaceReturn2
  SAY @2025
  ++ @2026 + T#DaceReturn7
  ++ @2027 + T#DaceReturn7
  ++ @2028 + T#DaceReturn7
  ++ @2029 + T#DaceReturn7
END

IF ~~ T#DaceReturn3
  SAY @2030
  ++ @2026 + T#DaceReturn7
  ++ @2027 + T#DaceReturn7
  ++ @2028 + T#DaceReturn7
  ++ @2029 + T#DaceReturn7
END

IF ~~ T#DaceReturn4
  SAY @2031
  ++ @2026 + T#DaceReturn7
  ++ @2027 + T#DaceReturn7
  ++ @2028 + T#DaceReturn7
  ++ @2029 + T#DaceReturn7
END

IF ~~ T#DaceReturn5
  SAY @2032
  ++ @2026 + T#DaceReturn7
  ++ @2027 + T#DaceReturn7
  ++ @2028 + T#DaceReturn7
  ++ @2029 + T#DaceReturn7
END

IF ~~ T#DaceReturn6
  SAY @2033
  ++ @2026 + T#DaceReturn7
  ++ @2027 + T#DaceReturn7
  ++ @2028 + T#DaceReturn7
  ++ @2029 + T#DaceReturn7
END

IF ~~ T#DaceReturn7
  SAY @2034
  IF ~~ DO ~JoinParty() SetGlobal("T#DaceJoined","GLOBAL",1) EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(@1031)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(@1038)
IncrementGlobal("T#DaceVampire","GLOBAL",1)~ SOLVED_JOURNAL @2035 EXIT
END