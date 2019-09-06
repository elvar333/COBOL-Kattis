IDENTIFICATION DIVISION.
PROGRAM-ID. TELJA.

DATA DIVISION.
WORKING-STORAGE SECTION.
	01 N   PIC S9(30).
	01 M   PIC S9(30) VALUE 1.
	01 K   PIC Z(30) VALUE 1.
	01 INP PIC X(100).
	01 OUT PIC X(100).

PROCEDURE DIVISION.
	PERFORM
		ACCEPT N
		PERFORM N TIMES
		     DISPLAY function TRIM(K)
			 ADD 1 TO M
			 MOVE M TO K
	    END-PERFORM
	END-PERFORM.