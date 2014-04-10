       program-id. G3_BUILD_VISA_MERCHANT_LOCATION.

       environment division.
       COPY SELECT-MERCHANT-LOCATION.
       configuration section.
       
       data division.
       COPY FD-MERCHANT-LOCATION.
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
           DISPLAY "G3_BUILD_VISA_MERCHANT_LOCATION".
           DISPLAY "COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "ENDED WITH STATUS CODE OF ", WS-STAT.
          CLOSE MERLOC-FILE-TXT
                MERLOC-FILE.


      

       end program G3_BUILD_VISA_MERCHANT_LOCATION.
