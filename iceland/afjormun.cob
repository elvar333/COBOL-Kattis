IDENTIFICATION DIVISION.
PROGRAM-ID. AFJORMUN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 N PIC S9(5).
    01 INP PIC X(300).
    01 RES PIC X(300).

*> Ekki klárað
*>  Á eftir að setja fyrsta staf í Upper Case

PROCEDURE DIVISION.
    PERFORM 
        ACCEPT N
        PERFORM N TIMES
           ACCEPT INP
           MOVE function UPPER-CASE(INP(1:1)) TO RES(1:1)
           MOVE function LOWER-CASE(INP(2:299)) TO RES(2:299)
           DISPLAY function TRIM(RES)
        END-PERFORM
    END-PERFORM.
