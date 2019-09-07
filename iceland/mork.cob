IDENTIFICATION DIVISION.
PROGRAM-ID. MORK.

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
       ACCEPT M
       IF N = 0
           DISPLAY "Jebb"
       ELSE
           IF N = 2
               IF M = 2
                   DISPLAY "Jebb"
               ELSE
                   DISPLAY "Neibb"
               END-IF
           ELSE
               DISPLAY "Neibb"
           END-IF
       END-IF

    END-PERFORM.
