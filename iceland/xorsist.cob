IDENTIFICATION DIVISION.
PROGRAM-ID. XORSIST.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 N   PIC S9(30).
  01 M   PIC S9(30).
  01 K   PIC S9(30).
  01 INP PIC X(100).
  01 OUT PIC X(100).

PROCEDURE DIVISION.
  PERFORM
    ACCEPT N
    COMPUTE M = function MOD(N, 4)
      IF M = 3
        DISPLAY "Enginn"
      ELSE
        IF M = 2
          DISPLAY "Gunnar"
        ELSE
          IF M = 1
            DISPLAY "1"
          ELSE
            DISPLAY function TRIM(N)
          END-IF
        END-IF
      END-IF
  END-PERFORM.
