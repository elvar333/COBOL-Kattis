IDENTIFICATION DIVISION.
PROGRAM-ID. Muna-að-breyta-þessu-drasli.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 N PIC S9(3).
    01 M PIC S9(3) VALUE 1.
    01 K PIC  Z(3).

PROCEDURE DIVISION.
    PERFORM 
        ACCEPT N
        PERFORM N TIMES
           MOVE M TO K
           DISPLAY function TRIM(K), " Abracadabra"
           COMPUTE M = M + 1
        END-PERFORM
    END-PERFORM.
