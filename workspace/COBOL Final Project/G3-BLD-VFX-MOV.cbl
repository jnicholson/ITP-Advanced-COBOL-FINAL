      ******************************************************************
      *PROGRAM : Build program for movie file                          *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/09/2014                                            *
      *ABSTRACT: Builds isam for movie file.                           *
      ******************************************************************
       program-id. G3_BLD_VFX_MOV.
      *-----------------------------------------------------------------
       environment division.
       configuration section.
       COPY SELECT-VFX-MOV.
       
      *----------------------------------------------------------------- 
       data division.
       
       COPY FD-VFX-MOV.
       working-storage section.
       01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.
      *----------------------------------------------------------------- 
       procedure division.
       100-MAIN.
           OPEN INPUT VML-FILE-TXT.
           OPEN OUTPUT VML-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ VML-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE VML-REC FROM VML-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BLD_VFX_MOV".
           DISPLAY "    COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "    ENDED WITH STATUS CODE OF ", WS-STAT.
          CLOSE VML-FILE-TXT
                VML-FILE.
      
           EXIT PROGRAM.

       
