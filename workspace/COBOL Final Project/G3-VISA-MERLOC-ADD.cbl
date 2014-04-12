      ******************************************************************
      *PROGRAM:  Merchant Location Add Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MER-ADD.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-MERLOC.
      ******************************************************************
       DATA DIVISION.
       COPY FD-MERLOC.
       
       WORKING-STORAGE SECTION.
       COPY WS-MERLOC.
       
       SCREEN SECTION.
       COPY SCREEN-VISA-MERLOC-ADD.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
           MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP
           MOVE "G3-VISA-MERLOC-ADD" TO VISA-M-PROG
           OPEN I-O MERLOC-FILE
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
           CLOSE MERLOC-FILE.
           EXIT PROGRAM..
      ******************************************************************
       200-ADD.
           DISPLAY BLANK-SCREEN.
           DISPLAY 'CREATING...'
           DISPLAY "PRESS 'ENTER' TO CONTINUE".
           ACCEPT VISA-MERLOC-RESP.
           MOVE VISA-MERLOC-EDIT-ID TO MERLOC-ID
           MOVE VISA-MERLOC-EDIT-NAME TO MERLOC-NAME
           MOVE VISA-MERLOC-EDIT-ADDRESS TO MERLOC-ADDRESS
           MOVE VISA-MERLOC-EDIT-ZIP TO MERLOC-ZIP
           MOVE VISA-MERLOC-EDIT-PHONE TO MERLOC-PHONE
           MOVE VISA-MERLOC-EDIT-ACCT TO MERLOC-ACCOUNT
           MOVE VISA-MERLOC-EDIT-ROUTE TO MERLOC-ROUTE
           WRITE MERLOC-REC.
           DISPLAY BLANK-SCREEN.
           DISPLAY 'RETURNING TO VISA MENU'.
           DISPLAY "PRESS 'ENTER' TO RETURN".
           