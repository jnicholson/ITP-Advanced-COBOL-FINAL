      ******************************************************************
      *PROGRAM : Build program for purchase file                       *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/09/2014                                            *
      *ABSTRACT: Builds isam for purchase records                      *
      ******************************************************************
       program-id. G3_BLD_VFX_PUR.
      *----------------------------------------------------------------- 
       environment division.
       COPY SELECT-VFX-PUR.
       configuration section.
      *----------------------------------------------------------------- 
       data division.
       COPY FD-VFX-PUR.
       working-storage section.

         01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.

      *----------------------------------------------------------------- 
       procedure division.
       100-MAIN.
       
           OPEN INPUT VTP-FILE-TXT.
           OPEN OUTPUT VTP-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ VTP-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE VTP-REC FROM VTP-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BLD_VFX_PUR".
           DISPLAY "    COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "    ENDED WITH STATUS CODE OF ", WS-STAT.
           CLOSE VTP-FILE-TXT
                 VTP-FILE.
                 
           EXIT PROGRAM.
       


