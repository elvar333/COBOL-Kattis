IDENTIFICATION DIVISION.
PROGRAM-ID. Muna-að-breyta-þessu-drasli.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 X PIC S9(5).
    01 Y PIC S9(5).

PROCEDURE DIVISION.
    PERFORM 
        ACCEPT X
        ACCEPT Y

        IF X > 0 THEN
           IF Y > 0 THEN
               DISPLAY "1"
           ELSE
               DISPLAY "4"
           END-IF
        ELSE
           IF Y > 0 THEN
               DISPLAY "2"
           ELSE
               DISPLAY "3"
        END-IF

    END-PERFORM.
