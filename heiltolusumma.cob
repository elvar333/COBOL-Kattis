IDENTIFICATION DIVISION.
PROGRAM-ID. HEILTOLUSUMMA.

DATA DIVISION.
    WORKING-STORAGE SECTION.
    01 INP PIC X(50).
        88 EOF VALUE SPACES.
    01 N PIC S9(16).
    01 ANS PIC Z(16).

PROCEDURE DIVISION.
    ACCEPT INP.

    UNSTRING INP 
        DELIMITED BY SPACE
        INTO N
    IF N < 1
       COMPUTE 
           ANS = N*(N+1)/2
       END-COMPUTE
    ELSE
       COMPUTE 
           ANS = -(-N*(-N+1)/2)+1
       END-COMPUTE
    END-IF
    DISPLAY N
    STOP RUN.
