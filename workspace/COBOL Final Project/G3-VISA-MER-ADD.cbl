      ******************************************************************
      *PROGRAM:  Merchant Add Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MER-ADD.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-MER.
      ******************************************************************
       DATA DIVISION.
       COPY FD-MER.
       
       WORKING-STORAGE SECTION.
       COPY WS-MER.
       
       SCREEN SECTION.
       COPY SCREEN-VISA-MER-ADD.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
           MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP
           MOVE "G3-VISA-MER-ADD" TO VISA-M-PROG
           OPEN I-O MER-FILE
           DISPLAY SIGNUPSCREEN
       PERFORM UNTIL VISA-M-SEL = 's' OR 'S'
           ACCEPT  E-ID
           ACCEPT  E-NAME
           ACCEPT  E-ADDRESS
           ACCEPT  E-ZIP
           ACCEPT  E-PHONE
           ACCEPT  E-ACCOUNT
           ACCEPT  E-ROUTE
           ACCEPT  E-SEL
       END-PERFORM
           PERFORM 200-ADD
           CLOSE MER-FILE.
           EXIT PROGRAM..
      ******************************************************************
       200-ADD.
           DISPLAY BLANK-SCREEN.
           DISPLAY 'CREATING...'
           DISPLAY "PRESS 'ENTER' TO CONTINUE".
           ACCEPT VISA-MER-RESP.
           MOVE VISA-MER-EDIT-ID TO MER-ID
           MOVE VISA-MER-EDIT-NAME TO MER-NAME
           MOVE VISA-MER-EDIT-ADDRESS TO MER-ADDRESS
           MOVE VISA-MER-EDIT-ZIP TO MER-ZIP
           MOVE VISA-MER-EDIT-PHONE TO MER-PHONE
           MOVE VISA-MER-EDIT-ACCT TO MER-ACCOUNT
           MOVE VISA-MER-EDIT-ROUTE TO MER-ROUTE
           WRITE MER-REC.
           DISPLAY BLANK-SCREEN.
           DISPLAY 'RETURNING TO VISA MENU'.
           DISPLAY "PRESS 'ENTER' TO RETURN".
           