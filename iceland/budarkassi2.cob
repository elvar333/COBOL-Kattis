IDENTIFICATION DIVISION.
PROGRAM-ID. BUDARKASSI2.

DATA DIVISION.
    WORKING-STORAGE SECTION.
       01 INP PIC  X(15).
       01   N PIC  S9(6).
       01   K PIC  S9(6).
       01 OUT PIC  Z(11).

PROCEDURE DIVISION.
    PERFORM
        ACCEPT INP
       
        UNSTRING INP
            DELIMITED BY SPACE
            INTO N, K
            
        MULTIPLY N BY K GIVING OUT
       
        DISPLAY OUT
    END-PERFORM.