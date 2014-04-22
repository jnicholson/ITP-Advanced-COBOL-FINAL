      ******************************************************************
      *PROGRAM:  Merchant Edit Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MER-EDIT.
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
       COPY SCREEN-VISA-MER-EDIT.
      ******************************************************************
        PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VISA-MER-EDIT' TO VISA-M-PROG.
       OPEN I-O MER-FILE.
       PERFORM 100-CHECK.
       PERFORM 300-EDIT.
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
       PERFORM UNTIL VISA-MER-CHECK = 'S' OR 's'
           MOVE SPACES TO VISA-MER-CHECK
           PERFORM 400-EDIT-LOAD
           DISPLAY EDITSCREEN
           ACCEPT  E-NAME
           ACCEPT  E-ADDRESS
           ACCEPT  E-ZIP
           ACCEPT  E-PHONE
           ACCEPT  E-EMAIL
           ACCEPT  E-ACCOUNT
           ACCEPT  E-ROUTE
           ACCEPT  E-SEL
           IF VISA-MER-CHECK = 'R' OR 'r'
               MOVE SPACES TO VISA-MER-CHECK
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
       MOVE MER-EMAIL      TO VISA-MER-ORIG-EMAIL.
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
       300-EDIT.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'EDITING...'
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT VISA-MER-RESP.
       IF VISA-MER-EDIT-NAME NOT EQUAL SPACES 
           MOVE VISA-MER-EDIT-NAME TO MER-NAME
       END-IF.
       IF VISA-MER-EDIT-ADDRESS NOT EQUAL SPACES
           MOVE VISA-MER-EDIT-ADDRESS TO MER-ADDRESS
       END-IF.
       IF VISA-MER-EDIT-ZIP NOT EQUAL SPACES
           MOVE VISA-MER-EDIT-ZIP TO MER-ZIP
       END-IF.
       IF VISA-MER-EDIT-PHONE NOT EQUAL SPACES
           MOVE VISA-MER-EDIT-PHONE TO MER-PHONE
       END-IF.
       IF VISA-MER-EDIT-EMAIL NOT EQUAL SPACES
           MOVE VISA-MER-EDIT-EMAIL TO MER-EMAIL
       END-IF.
       IF VISA-MER-EDIT-ACCT NOT EQUAL SPACES
           MOVE VISA-MER-EDIT-ACCT TO MER-ACCOUNT
       END-IF.
       IF VISA-MER-EDIT-ROUTE NOT EQUAL SPACES
           MOVE VISA-MER-EDIT-ROUTE TO MER-ROUTE
       END-IF.
       REWRITE MER-REC.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO VISA MENU'.
       DISPLAY "PRESS 'ENTER' TO RETURN".
      ******************************************************************
       400-EDIT-LOAD.
       INSPECT FUNCTION REVERSE(MER-NAME) 
       TALLYING WS-CTR FOR LEADING SPACES.                        
       COMPUTE WS-SCTR = 25 - WS-CTR.
       STRING WS-BLANKS(1:WS-CTR), MER-NAME(1:WS-SCTR) INTO 
       VISA-MER-ORIG-NAME.
       MOVE ZERO TO WS-CTR.
       INSPECT FUNCTION REVERSE(MER-ADDRESS) 
       TALLYING WS-CTR FOR LEADING SPACES.                        
       COMPUTE WS-SCTR = 25 - WS-CTR.
       STRING WS-BLANKS(1:WS-CTR), MER-ADDRESS(1:WS-SCTR) INTO 
       VISA-MER-ORIG-ADDRESS.
       MOVE ZERO TO WS-CTR.
       INSPECT FUNCTION REVERSE(MER-EMAIL) 
       TALLYING WS-CTR FOR LEADING SPACES.                        
       COMPUTE WS-SCTR = 30 - WS-CTR.
       STRING WS-BLANKS(1:WS-CTR), MER-EMAIL(1:WS-SCTR) INTO 
       VISA-MER-ORIG-EMAIL.
       MOVE ZERO TO WS-CTR.
