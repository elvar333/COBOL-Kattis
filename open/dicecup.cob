IDENTIFICATION DIVISION.
PROGRAM-ID. DICECUP.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INP PIC  X(10).
    01 N   PIC S9(2).
    01 M   PIC S9(2).
    01 LOP PIC S9(2).
    01 NXT PIC S9(2).
    01 OUT PIC  Z(2).

PROCEDURE DIVISION.
    PERFORM 
        ACCEPT INP

        UNSTRING INP
           DELIMITED BY SPACE
           INTO N, M

        COMPUTE LOP = function ABS(function MIN(N, M) - function MAX(N, M)) + 1
        COMPUTE NXT = function MIN(N, M) + 1
        PERFORM LOP TIMES
           MOVE NXT TO OUT
           DISPLAY function TRIM(OUT)
           COMPUTE NXT = NXT + 1
        END-PERFORM

    END-PERFORM.
