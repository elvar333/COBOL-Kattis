IDENTIFICATION DIVISION.
PROGRAM-ID. XORSIST.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 N   PIC S9(30).
  01 M   PIC S9(30).
  01 K   PIC S9(30).
  01 INP PIC X(100).
  01 OUT PIC Z(100).

PROCEDURE DIVISION.
  PERFORM
    ACCEPT N
    DIVIDE N BY 4 GIVING K REMAINDER M
      IF M = 0
        MOVE N TO OUT
        DISPLAY function TRIM(OUT)
      ELSE
        IF M = 1
          DISPLAY "1"
        ELSE
          IF M = 2
            DISPLAY "Gunnar"
          ELSE
            DISPLAY "Enginn"
          END-IF
        END-IF
      END-IF
  END-PERFORM.
