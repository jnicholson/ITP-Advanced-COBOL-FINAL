      ******************************************************************
      *PROGRAM:  Merchant Location Edit Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MERLOC-EDIT.
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
       COPY SCREEN-VISA-MERLOC-EDIT.
      ******************************************************************
        PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VISA-MERLOC-EDIT' TO VISA-M-PROG.
       OPEN I-O MERLOC-FILE.
       PERFORM 100-CHECK.
       PERFORM 300-EDIT.
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
       PERFORM UNTIL VISA-MERLOC-CHECK = 'S' OR 's'
           MOVE SPACES TO VISA-MERLOC-CHECK
           PERFORM 400-EDIT-LOAD
           DISPLAY EDITSCREEN
           ACCEPT  E-NAME
           ACCEPT  E-ADDRESS
           ACCEPT  E-ZIP
           ACCEPT  E-PHONE
           ACCEPT  E-ACCOUNT
           ACCEPT  E-ROUTE
           ACCEPT  E-SEL
           IF VISA-MERLOC-CHECK = 'R' OR 'r'
               MOVE SPACES TO VISA-MERLOC-CHECK
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
       300-EDIT.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'EDITING...'
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT VISA-MERLOC-RESP.
       IF VISA-MERLOC-EDIT-NAME NOT EQUAL SPACES 
           MOVE VISA-MERLOC-EDIT-NAME TO MERLOC-NAME
       END-IF.
       IF VISA-MERLOC-EDIT-ADDRESS NOT EQUAL SPACES
           MOVE VISA-MERLOC-EDIT-ADDRESS TO MERLOC-ADDRESS
       END-IF.
       IF VISA-MERLOC-EDIT-ZIP NOT EQUAL SPACES
           MOVE VISA-MERLOC-EDIT-ZIP TO MERLOC-ZIP
       END-IF.
       IF VISA-MERLOC-EDIT-PHONE NOT EQUAL SPACES
           MOVE VISA-MERLOC-EDIT-PHONE TO MERLOC-PHONE
       END-IF.
       IF VISA-MERLOC-EDIT-ACCT NOT EQUAL SPACES
           MOVE VISA-MERLOC-EDIT-ACCT TO MERLOC-ACCOUNT
       END-IF.
       IF VISA-MERLOC-EDIT-ROUTE NOT EQUAL SPACES
           MOVE VISA-MERLOC-EDIT-ROUTE TO MERLOC-ROUTE
       END-IF.
       REWRITE MERLOC-REC.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO VISA MENU'.
       DISPLAY "PRESS 'ENTER' TO RETURN".
      ******************************************************************
       400-EDIT-LOAD.
       INSPECT FUNCTION REVERSE(MERLOC-NAME) 
       TALLYING WS-CTR FOR LEADING SPACES.                        
       COMPUTE WS-SCTR = 25 - WS-CTR.
       STRING WS-BLANKS(1:WS-CTR), MERLOC-NAME(1:WS-SCTR) INTO 
       VISA-MERLOC-ORIG-NAME.
       MOVE ZERO TO WS-CTR.
       INSPECT FUNCTION REVERSE(MERLOC-ADDRESS) 
       TALLYING WS-CTR FOR LEADING SPACES.                        
       COMPUTE WS-SCTR = 25 - WS-CTR.
       STRING WS-BLANKS(1:WS-CTR), MERLOC-ADDRESS(1:WS-SCTR) INTO 
       VISA-MERLOC-ORIG-ADDRESS.
       MOVE ZERO TO WS-CTR.
