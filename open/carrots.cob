IDENTIFICATION DIVISION.
PROGRAM-ID. CARROTS.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 N   PIC S9(4).
    01 M   PIC S9(4).
    01 INP PIC X(4).
    01 OUT PIC X(4).

PROCEDURE DIVISION.
    PERFORM
       ACCEPT INP
       UNSTRING INP
           DELIMITED BY SPACE
           INTO N, OUT
       DISPLAY function TRIM(OUT)
       PERFORM N TIMES
           ACCEPT INP
       END-PERFORM
   END-PERFORM.
