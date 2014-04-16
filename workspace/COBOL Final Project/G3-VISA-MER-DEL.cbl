      ******************************************************************
      *PROGRAM:  Merchant Delete Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/13/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MER-DEL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-MER.
      ******************************************************************
       DATA DIVISION.
       COPY FD-MER.
       
       WORKING-STORAGE SECTION.
       COPY WS-MER.
       
       01 WS-CTR    PIC 99.
       01 WS-SCTR    PIC 99.
       01 WS-BLANKS  PIC X(25) VALUE SPACES.
       
       SCREEN SECTION.
       COPY SCREEN-VISA-MER-CHECK.
       COPY SCREEN-VISA-MER-ID.
       COPY SCREEN-VISA-MER-DEL.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VISA-MER-DEL' TO VISA-M-PROG.
       OPEN I-O MER-FILE.
       PERFORM 100-CHECK.
       PERFORM 300-DELETE.
       CLOSE MER-FILE.
       EXIT PROGRAM.
      ******************************************************************
       100-CHECK.
       DISPLAY IDSCREEN.
       ACCEPT CHOOSEID.
       IF VISA-MER-SEARCH-ID = '99999999'
           EXIT PROGRAM
       END-IF.
       PERFORM UNTIL VISA-MER-CHECK = 'Y' OR 'y'
           MOVE SPACES TO VISA-MER-CHECK
           MOVE SPACES TO VISA-MER-DELETE
           MOVE VISA-MER-SEARCH-ID TO MER-ID
           READ MER-FILE
               INVALID KEY
                   MOVE 'INVALID ID' TO VISA-MER-MSG
               NOT INVALID KEY
                   MOVE SPACES TO VISA-MER-MSG
                   PERFORM 200-MOVE
           END-READ
           IF VISA-MER-RESP = 'C' OR 'c'
               CONTINUE
           ELSE
               DISPLAY IDSCREEN
               ACCEPT CHOOSEID
           END-IF
       END-PERFORM.
       PERFORM UNTIL VISA-MER-CHECK = 'Y' OR 'y'
           MOVE SPACES TO VISA-MER-CHECK
           DISPLAY DELETESCREEN
           ACCEPT  VISA-MER-DELETE
           IF VISA-MER-DELETE = 'N' OR 'n'
               MOVE SPACES TO VISA-MER-CHECK
               MOVE SPACES TO VISA-MER-DELETE
               CLOSE MER-FILE
               PERFORM 000-MAIN
           END-IF
       END-PERFORM.
      ******************************************************************
       200-MOVE.
       MOVE 'C'         TO VISA-MER-RESP.
       MOVE SPACES      TO VISA-MER-ORIG.
       MOVE MER-ID      TO VISA-MER-ORIG-ID.
       MOVE MER-NAME    TO VISA-MER-ORIG-NAME.
       MOVE MER-ADDRESS    TO VISA-MER-ORIG-ADDRESS.
       MOVE MER-PHONE      TO VISA-MER-ORIG-PHONE.
       MOVE MER-ZIP        TO VISA-MER-ORIG-ZIP.
       MOVE MER-ACCOUNT    TO VISA-MER-ORIG-ACCT.
       MOVE MER-ROUTE      TO VISA-MER-ORIG-ROUTE
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF VISA-MER-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO VISA-MER-RESP
           PERFORM 100-CHECK
       END-IF.
      ******************************************************************
       300-DELETE.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'DELETING...'
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT VISA-MER-RESP.
       DELETE  MER-FILE.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO VISA MENU'.
       DISPLAY "PRESS 'ENTER' TO RETURN".