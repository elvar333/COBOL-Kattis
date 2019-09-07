IDENTIFICATION DIVISION.
PROGRAM-ID. HEILTOLUSUMMA.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 N   PIC S9(38).
    01 COM PIC S9(38).
    01 OUT PIC  Z(38).

PROCEDURE DIVISION.
    PERFORM 
       ACCEPT N
       
       IF N = -1
           DISPLAY "0"
       ELSE
           IF N >= 1
               COMPUTE COM = N * (N + 1) / 2
               MOVE COM TO OUT
               DISPLAY function TRIM(OUT)
           ELSE
               COMPUTE N = N * -1
               COMPUTE COM = -N * (N + 1) / 2 + 1
               MOVE COM TO OUT
               DISPLAY function TRIM(OUT)
           END-IF
        END-IF
    END-PERFORM.
