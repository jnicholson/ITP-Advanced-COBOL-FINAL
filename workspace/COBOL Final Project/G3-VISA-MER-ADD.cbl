      ******************************************************************
      *PROGRAM:  Merchant Add Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MER-ADD.
      ******************************************************************
       ENVIRONMENT DIVISION.
       SELECT MER-FILE
               ASSIGN TO 'MER.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS SEQUENTIAL
               RECORD KEY IS MER-ID-KEY
               ALTERNATE RECORD KEY IS MER-NAME-KEY
               ALTERNATE RECORD KEY IS MER-EMAIL-KEY
               ALTERNATE RECORD KEY IS MER-PHONE-KEY
               FILE STATUS IS WS-STAT.
      ******************************************************************
       DATA DIVISION.
       FD  MER-FILE.		   
       01  MER-REC.	
           03 
        MER-ID-KEY.
               05  MER-ID	PIC 9(8).
           03  MER-NAME-KEY.
               05  MER-NAME	   PIC X(25).
           03  MER-ADDRESS	   PIC X(25).
           03  MER-ZIP		   PIC 9(5).
           03  MER-PHONE-KEY.
               05  MER-PHONE	   PIC 9(11). 
           03  MER-EMAIL-KEY.
               05 MER-EMAIL    PIC X(30).
           03  MER-ACCOUNT	   PIC 9(10).
           03  MER-ROUTE	   PIC 9(9).
       
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
           PERFORM 300-GET-ID.
           DISPLAY SIGNUPSCREEN
       PERFORM UNTIL VISA-M-SEL = 's' OR 'S'
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
      ******************************************************************
       300-GET-ID.
           PERFORM UNTIL VISA-M-EOF = 'Y'
               READ MER-FILE 
                   AT END 
                       MOVE 'Y' TO VISA-M-EOF
                       COMPUTE VISA-MER-EDIT-ID = MER-ID + 1
                   NOT AT END
           END-PERFORM.