       program-id. G3_BUILD_VUFLIX_MOVIE_LIST.

       environment division.
       configuration section.
       COPY SELECT-VUFLIX-MOVIE-LIST.
       

       data division.
       
       COPY FD-VUFLIX-MOVIE-LIST.
       working-storage section.
       01  MISC.
           03  WS-STAT                     PIC XX.
           03  WS-CHECK                    PIC X.
           03  WS-COUNTER                  PIC 9(4) VALUE ZERO.
       procedure division.

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
           DISPLAY "COMPLETED ADDING ", WS-COUNTER.
           DISPLAY "ENDED WITH STATUS CODE OF ", WS-STAT.
          CLOSE VML-FILE-TXT
                VML-FILE.
      

       end program G3_BUILD_VUFLIX_MOVIE_LIST.
