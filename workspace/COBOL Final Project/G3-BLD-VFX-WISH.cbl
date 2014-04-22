      ******************************************************************
      *PROGRAM : Build program for wishlist file                       *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/09/2014                                            *
      *ABSTRACT: Builds isam for wishlist file.                        *
      ****************************************************************** 
       program-id. G3_BLD_VFX_WISH.
      *----------------------------------------------------------------- 
       environment division.
       COPY SELECT-VFX-WISH.
       configuration section.
      *----------------------------------------------------------------- 
       data division.
       COPY FD-VFX-WISH.
       working-storage section.

       01  MISC.
         03  WS-STAT                     PIC XX.
         03  WS-CHECK                    PIC X.
         03  WS-COUNTER                  PIC 9(4) VALUE ZERO.

      *----------------------------------------------------------------- 
       procedure division.
       100-MAIN.
           OPEN INPUT VW-FILE-TXT.
           OPEN OUTPUT VW-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ VW-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE VW-REC FROM VW-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BLD_VFX_WISH".
           DISPLAY "    COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "    ENDED WITH STATUS CODE OF ", WS-STAT.
           CLOSE VW-FILE-TXT
                 VW-FILE.
           EXIT PROGRAM.

