      ******************************************************************
      *PROGRAM : Build program C HOLD FILE                             *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/09/2014                                            *
      *ABSTRACT: Builds isam for CHOLD file.                           *
      ******************************************************************
       program-id. G3_BLD_CAP1_CHOLD.
      *-----------------------------------------------------------------
       environment division.
       configuration section.
       COPY SELECT-CHOLD.
       
      *----------------------------------------------------------------- 
       data division.
       
       COPY FD-CHOLD.
       working-storage section.
       01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.
      *----------------------------------------------------------------- 
       procedure division.
       100-MAIN.
           OPEN INPUT CH-FILE-TXT.
           OPEN OUTPUT CH-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ CH-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE CH-REC FROM CH-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BUILD_VUFLIX_MOVIE_LIST".
           DISPLAY "COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "ENDED WITH STATUS CODE OF ", WS-STAT.
          CLOSE CH-FILE-TXT
                CH-FILE.
      
           EXIT PROGRAM.

       

