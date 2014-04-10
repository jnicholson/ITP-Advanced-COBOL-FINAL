       program-id. G3_BUILD_VUFLIX_WISHLIST.

       environment division.
       COPY SELECT-VUFLIX-WISHLIST.
       configuration section.
       
       data division.
       COPY FD-VUFLIX-WISHLIST.
       working-storage section.

       01  MISC.
         03  WS-STAT                     PIC XX.
         03  WS-CHECK                    PIC X.
         03  WS-COUNTER                  PIC 9(4) VALUE ZERO.


       procedure division.
       
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
           DISPLAY "G3_BUILD_VISA_MERCHANT".
           DISPLAY "COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "ENDED WITH STATUS CODE OF ", WS-STAT.
           CLOSE VW-FILE-TXT
                 VW-FILE.
           EXIT PROGRAM.
       end program G3_BUILD_VUFLIX_WISHLIST.
