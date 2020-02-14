IDENTIFICATION DIVISION.
PROGRAM-ID. upprodun.

DATA DIVISION.
WORKING-STORAGE SECTION.
   01 N   PIC S9(30).
   01 M   PIC S9(30).
   01 X   PIC S9(30).
   01 Z   PIC S9(30).
   01 A   PIC S9(30).
   01 INP PIC X(100).
   01 OUT PIC X(500) VALUE "**************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************".

PROCEDURE DIVISION.
   ACCEPT N
   ACCEPT M
   DIVIDE M BY N GIVING X REMAINDER Z
   ADD 1 TO X GIVING A
   PERFORM N TIMES
      IF Z > 0
         DISPLAY OUT(1:A)
         SUBTRACT 1 FROM Z
      ELSE
         DISPLAY OUT(1:X)
      END-IF
   END-PERFORM.
