       program-id. G3_BUILD_VISA_ISSUER as "G3_BUILD_VISA_ISSUER".

       environment division.
       COPY SELECT-ISS.
       configuration section.
       
       data division.
       COPY FD-ISS.
       working-storage section.

       01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.

       procedure division.

           OPEN INPUT ISS-FILE-TXT.
           OPEN OUTPUT ISS-FILE.
           PERFORM UNTIL WS-CHECK = 'Y'
               READ ISS-FILE-TXT
                   AT END
                       MOVE 'Y' TO WS-CHECK
                   NOT AT END
                       WRITE ISS-REC FROM ISS-REC-TXT
                       ADD 1 TO WS-COUNTER
           END-PERFORM.
           DISPLAY "G3_BUILD_VISA_ISSUER".
           DISPLAY "COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "ENDED WITH STATUS CODE OF ", WS-STAT.
           CLOSE ISS-FILE-TXT
                 ISS-FILE.
           EXIT PROGRAM.



       end program G3_BUILD_VISA_ISSUER.
