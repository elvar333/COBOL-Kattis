IDENTIFICATION DIVISION.
PROGRAM-ID. HEILTOLUSUMMA. *> Virkar

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 N   PIC S9(38).
    01 COM PIC S9(38).
    01 OUT PIC  Z(38).

PROCEDURE DIVISION.
    PERFORM 
       ACCEPT N
       
       IF N < 1
          COMPUTE COM = 1-(N - 1) * N / 2
       ELSE
          COMPUTE COM = N * (N + 1) / 2
       END-IF
       
       IF COM = 0
          DISPLAY "0"
       ELSE
          MOVE COM TO OUT
          IF COM <= 0
              DISPLAY "-", function TRIM(OUT)
          ELSE
              DISPLAY function TRIM(OUT)
          END-IF
       END-IF
       
    END-PERFORM.
