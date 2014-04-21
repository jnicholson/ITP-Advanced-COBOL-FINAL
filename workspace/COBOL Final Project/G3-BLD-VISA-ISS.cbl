      *******************************************************************
      *PROGRAM : Build program for issuer file                          *
      *AUTHOR  : D. Sawyer,    Dustyne Brown                            *
      *DATE    : 04/09/2014    4/11/12                                  *
      *ABSTRACT: Builds isam for issuer file.                           *
      *******************************************************************
       
       PROGRAM-ID. G3_BLD_VISA_ISS.
       
      *=================================================================*
       
       ENVIRONMENT DIVISION.
       
       COPY SELECT-ISS.
       
      *=================================================================*
       
       DATA DIVISION.
       
       COPY FD-ISS.
       
      *-----------------------------------------------------------------*
       
       WORKING-STORAGE SECTION.

       01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.
           
      *=================================================================*
       
       PROCEDURE DIVISION.
       
       100-MAIN.
           OPEN INPUT ISS-FILE-TXT.
           OPEN OUTPUT ISS-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ ISS-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE ISS-REC FROM ISS-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BUILD_VISA_ISSUER".
           DISPLAY "COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "ENDED WITH STATUS CODE OF ", WS-STAT.
           CLOSE ISS-FILE-TXT
                 ISS-FILE.
           EXIT PROGRAM.




