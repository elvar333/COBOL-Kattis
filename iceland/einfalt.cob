IDENTIFICATION DIVISION.
PROGRAM-ID. XORSIST.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 N   PIC S9(30).
  01 M   PIC S9(30).
  01 K   PIC S9(30).
  01 INP PIC X(100).
  01 OUT PIC Z(100).

PROCEDURE DIVISION.
  PERFORM
    ACCEPT N
    COMPUTE M = function FACTORIAL(N)
    MOVE M TO OUT
    DISPLAY function TRIM(OUT)
  END-PERFORM.
