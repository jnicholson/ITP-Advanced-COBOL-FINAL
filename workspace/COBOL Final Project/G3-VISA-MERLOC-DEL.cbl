      ***************************************************************** *
      *PROGRAM:  Merchant LOCATION Delete Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/13/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MERLOC-DEL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-MERLOC.
      ******************************************************************
       DATA DIVISION.
       COPY FD-MERLOC.
       
       WORKING-STORAGE SECTION.
       COPY WS-MERLOC.
       
       01 WS-CTR    PIC 99.
       01 WS-SCTR    PIC 99.
       01 WS-BLANKS  PIC X(25) VALUE SPACES.
       
       SCREEN SECTION.
       COPY SCREEN-VISA-MERLOC-CHECK.
       COPY SCREEN-VISA-MERLOC-ID.
       COPY SCREEN-VISA-MERLOC-DEL.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VISA-MER-DEL' TO VISA-M-PROG.
       OPEN I-O MERLOC-FILE.
       PERFORM 100-CHECK.
       PERFORM 300-DELETE.
       CLOSE MERLOC-FILE.
       EXIT PROGRAM.
      ******************************************************************
       100-CHECK.
       DISPLAY IDSCREEN.
       ACCEPT CHOOSEID.
       IF VISA-MERLOC-SEARCH-ID = '99999999'
           EXIT PROGRAM
       END-IF.
       PERFORM UNTIL VISA-MERLOC-CHECK = 'Y' OR 'y'
           MOVE SPACES TO VISA-MERLOC-CHECK
           MOVE SPACES TO VISA-MERLOC-DELETE
           MOVE VISA-MERLOC-SEARCH-ID TO MERLOC-ID
           READ MERLOC-FILE
               INVALID KEY
                   MOVE 'INVALID ID' TO VISA-MERLOC-MSG
               NOT INVALID KEY
                   MOVE SPACES TO VISA-MERLOC-MSG
                   PERFORM 200-MOVE
           END-READ
           IF VISA-MERLOC-RESP = 'C' OR 'c'
               CONTINUE
           ELSE
               DISPLAY IDSCREEN
               ACCEPT CHOOSEID
           END-IF
       END-PERFORM.
       PERFORM UNTIL VISA-MERLOC-CHECK = 'Y' OR 'y'
           MOVE SPACES TO VISA-MERLOC-CHECK
           DISPLAY DELETESCREEN
           ACCEPT  VISA-MERLOC-DELETE
           IF VISA-MERLOC-DELETE = 'N' OR 'n'
               MOVE SPACES TO VISA-MERLOC-CHECK
               MOVE SPACES TO VISA-MERLOC-DELETE
               CLOSE MERLOC-FILE
               PERFORM 000-MAIN
           END-IF
       END-PERFORM.
      ******************************************************************
       200-MOVE.
       MOVE 'C'         TO VISA-MERLOC-RESP.
       MOVE SPACES      TO VISA-MERLOC-ORIG.
       MOVE MERLOC-ID      TO VISA-MERLOC-ORIG-ID.
       MOVE MERLOC-NAME    TO VISA-MERLOC-ORIG-NAME.
       MOVE MERLOC-ADDRESS    TO VISA-MERLOC-ORIG-ADDRESS.
       MOVE MERLOC-PHONE      TO VISA-MERLOC-ORIG-PHONE.
       MOVE MERLOC-ZIP        TO VISA-MERLOC-ORIG-ZIP.
       MOVE MERLOC-ACCOUNT    TO VISA-MERLOC-ORIG-ACCT.
       MOVE MERLOC-ROUTE      TO VISA-MERLOC-ORIG-ROUTE
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF VISA-MERLOC-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO VISA-MERLOC-RESP
           PERFORM 100-CHECK
       END-IF.
      ******************************************************************
       300-DELETE.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'DELETING...'
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT VISA-MERLOC-RESP.
       DELETE  MERLOC-FILE.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO VISA MENU'.
       DISPLAY "PRESS 'ENTER' TO RETURN".