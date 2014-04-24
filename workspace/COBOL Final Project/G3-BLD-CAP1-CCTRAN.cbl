      ******************************************************************
      *PROGRAM : Build program for movie file                          *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/09/2014                                            *
      *ABSTRACT: Builds isam for movie file.                           *
      ******************************************************************
       
       program-id. G3_BLD_CAP1_CCTRAN IS INITIAL.
      *-----------------------------------------------------------------
       environment division.
       configuration section.
       COPY SELECT-CC-TRAN.
      *-----------------------------------------------------------------
       data division.
       COPY FD-CC-TRAN.
       working-storage section.
       01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.
      *-----------------------------------------------------------------
       procedure division.
       100-MAIN.
           OPEN INPUT CC-TRAN-FILE-TXT.
           OPEN OUTPUT CC-TRAN-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ CC-TRAN-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE CC-TRAN-REC FROM CC-TRAN-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BLD_CAP1-CCTRAN".
           DISPLAY "    COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "    ENDED WITH STATUS CODE OF ", WS-STAT.
          CLOSE CC-TRAN-FILE-TXT
                CC-TRAN-FILE.
      
           EXIT PROGRAM.
