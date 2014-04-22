      ******************************************************************
      *PROGRAM : Build program for merchant location file              *
      *AUTHOR  : D. Sawyer                                             *
      *DATE    : 04/09/2014                                            *
      *ABSTRACT: Builds isam for merchant location file.               *
      ****************************************************************** 
       program-id. G3_BLD_VISA_MERLOC.

       environment division.
       COPY SELECT-MERLOC.
       configuration section.
       
       data division.
       COPY FD-MERLOC.
       working-storage section.
       
        01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.
           
       
       procedure division.

           OPEN INPUT MERLOC-FILE-TXT.
           OPEN OUTPUT MERLOC-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ MERLOC-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE MERLOC-REC FROM MERLOC-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BLD_VISA_MERLOC".
           DISPLAY "    COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "    ENDED WITH STATUS CODE OF ", WS-STAT.
          CLOSE MERLOC-FILE-TXT
                MERLOC-FILE.

           EXIT PROGRAM.
      

       
