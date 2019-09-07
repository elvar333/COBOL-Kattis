IDENTIFICATION DIVISION.
PROGRAM-ID. STIGAGJOF.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 N   PIC S9(3).
    01 M   PIC S9(30).
    01 K   PIC S9(30).
    01 INP PIC X(100).
    01 CHK PIC X(100).
    01 SPL PIC X(100).
    01 OUT PIC S9(3) VALUE 0.
    01 DIS PIC Z(3).

PROCEDURE DIVISION.
    PERFORM 
        ACCEPT INP
        ACCEPT N
        PERFORM N TIMES
           ACCEPT SPL
           UNSTRING SPL
               DELIMITED BY SPACE
               INTO M, CHK, K
            
           IF CHK = INP
              IF K > OUT
                 COMPUTE OUT = K
              END-IF
           END-IF
        END-PERFORM
        
        MOVE OUT TO DIS
        IF OUT = 0
           DISPLAY "0"
        ELSE
           DISPLAY function TRIM(DIS)
    END-PERFORM.
