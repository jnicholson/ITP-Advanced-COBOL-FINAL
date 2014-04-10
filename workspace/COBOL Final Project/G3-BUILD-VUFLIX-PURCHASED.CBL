       program-id. G3_BUILD_VUFLIX_PURCHASED.

       environment division.
       COPY SELECT-VUFLIX-PURCHASED.
       configuration section.

       data division.
       COPY FD-VUFLIX-PURCHASED.
       working-storage section.

         01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.


       procedure division.
       
       
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
           DISPLAY "G3_BUILD_VUFLIX_PURCHASED".
           DISPLAY "COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "ENDED WITH STATUS CODE OF ", WS-STAT.
           CLOSE VTP-FILE-TXT
                 VTP-FILE.
                 
           EXIT PROGRAM.
       

       end program G3_BUILD_VUFLIX_PURCHASED.
