      ******************************************************************
      *PROGRAM : Build program for merhcant file                       *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/09/2014                                            *
      *ABSTRACT: Builds isam for merchant file.                        *
      ****************************************************************** 
       program-id. G3_BLD_VISA_MER.
      *----------------------------------------------------------------- 
       environment division.
       configuration section.
       COPY SELECT-MER.
      *----------------------------------------------------------------- 
       data division.
       COPY FD-MER.
       working-storage section.
       
       01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.
      *-----------------------------------------------------------------     
       procedure division.
       100-MAIN.
           OPEN INPUT MER-FILE-TXT.
           OPEN OUTPUT MER-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ MER-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE MER-REC FROM MER-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BLD_VISA_MER".
           DISPLAY "    COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "    ENDED WITH STATUS CODE OF ", WS-STAT.
          CLOSE MER-FILE-TXT
                MER-FILE.
           EXIT PROGRAM.


