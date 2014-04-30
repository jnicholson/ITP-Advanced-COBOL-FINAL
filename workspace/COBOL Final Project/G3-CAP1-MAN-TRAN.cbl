      ******************************************************************
      *PROGRAM:  Group 3 CC Transaction manual entry
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/29/2014   
      *ABSTRACT: Program to manually add transactions.
      ******************************************************************
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. G3-CAP1-MAN-TRAN IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-CHOLD.
       COPY SELECT-CC-TRAN.
      ******************************************************************
       DATA DIVISION.
       COPY FD-CHOLD.
       COPY FD-CC-TRAN.
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
       
       01 WS-ACCOUNT                   PIC 9(8).
       01 WS-TRAN-TYPE                 PIC X VALUE SPACES.
       01 WS-AMOUNT                    PIC 99.99 VALUE ZERO.
       01 WS-CHECK                     PIC X VALUE SPACE.
       
       SCREEN SECTION.
       COPY SCREEN-CAP1-U-EDIT.
       
       01 INPUTSCREEN.
           03  BLANK SCREEN.
           03  HEAD.
               05  LINE 1 COL 1 PIC X(20)  FROM CAP1-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE "CAPITAL ONE MANUAL" 
      -         "TRANSACTION".
           03  FORM.
               05  FORM-ID.
                   07  LINE 10 COL 17 VALUE "ID: ".
                   07  LINE 10 COL 38 PIC X(8) FROM CAP1-ORIG-ID.
               05  FORM-PAYMENT-TYPE.
                   07  LINE 11 COL 17 VALUE "TRANS TYPE(D OR W):".
                   07  LINE 11 COL 38 PIC X TO WS-TRAN-TYPE.
               05  FORM-TRAN-AMOUNT.
                   07  LINE 12 COL 17 VALUE "AMOUNT: ".
                   07  LINE 12 COL 38 PIC 99.99 TO WS-AMOUNT.
           03  FORM-SEL.
               05  LINE 20 COL 23 PIC X TO CAP1-CHECK AUTO.
               05  LINE 20 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 20 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 21 COL 29 VALUE "(all other keys start over)".
               
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-CAP1-U-EDIT' TO CAP1-M-PROG.
       OPEN I-O CH-FILE.
       PERFORM 100-CHECK.
       PERFORM 200-CREATE-TRAN.
      * EXIT PROGRAM
       STOP RUN.
      ******************************************************************
       100-CHECK.
       DISPLAY IDSCREEN.
       ACCEPT CHOOSEID.
       IF CAP1-SEARCH = '99999999'
           EXIT PROGRAM
       END-IF.
       MOVE CAP1-SEARCH TO CH-ID-KEY.
       READ CH-FILE
           INVALID KEY
               MOVE 'INVALID ID' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 300-MOVE
       END-READ.
      ******************************************************************
       200-CREATE-TRAN.                                                 
       PERFORM UNTIL (CAP1-CHECK = 'S' OR 's') AND (WS-TRAN-TYPE = 'D'
                OR 'W')
           MOVE SPACES TO CAP1-CHECK
      *     PERFORM 400-EDIT-LOAD
           DISPLAY INPUTSCREEN
           ACCEPT FORM-PAYMENT-TYPE
           IF WS-TRAN-TYPE NOT EQUAL 'D' OR 'W' THEN
               MOVE 'INVALID TRANSACTION TYPE' TO CAP1-MSG
           END-IF
           ACCEPT FORM-TRAN-AMOUNT
           ACCEPT FORM-SEL
           IF CAP1-CHECK = 'R' OR 'r'
               MOVE SPACES TO CAP1-CHECK
               CLOSE CH-FILE
               CLOSE CC-TRAN-FILE
               PERFORM 000-MAIN
           END-IF
       END-PERFORM.
       IF WS-TRAN-TYPE EQUALS 'W' THEN
           CALL 'G3-LINK-CC-CHECK' USING WS-ACCOUNT,WS-AMOUNT, WS-CHECK
           IF WS-CHECK NOT EQUAL 'Y' THEN
               DISPLAY BLANK-SCREEN
               DISPLAY 'NOT ENOUGH FUNDS FOR TRANSACTION...'
               DISPLAY 'EXITING....'
               DISPLAY "PRESS 'ENTER' TO CONTINUE"
               ACCEPT CAP1-RESP
      *         EXIT PROGRAM
               STOP RUN
           END-IF
       END-IF.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'CREATING TRANSACTION...'
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT CAP1-RESP.
       
       MOVE FUNCTION CURRENT-DATE TO CC-TRAN-TSTAMP.
       MOVE WS-TRAN-TYPE TO TRAN-TYPE.
       MOVE WS-AMOUNT    TO CC-TRAN-PRICE.
       MOVE 'MANUAL TRANSACTION' TO CC-TRAN-ITEM.
       WRITE CC-TRAN-REC.
       
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO CAPITAL ONE MENU'.
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT CAP1-RESP.
      ******************************************************************
       300-MOVE.
       MOVE 'C' TO CAP1-RESP.
       MOVE CH-ID TO CAP1-ORIG-ID.
       MOVE CH-ID TO WS-ACCOUNT.
       MOVE CH-FNAME   TO CAP1-ORIG-F-NAME.
       MOVE CH-LNAME   TO CAP1-ORIG-L-NAME.
       MOVE CH-PHONE   TO CAP1-ORIG-PHONE.
       MOVE CH-ADDRESS TO CAP1-ORIG-ADDRESS.
       MOVE CH-ZIP     TO CAP1-ORIG-ZIP.
       MOVE CH-EMAIL   TO CAP1-ORIG-EMAIL.
       MOVE CH-LIMIT   TO CAP1-ORIG-LIMIT.
       MOVE CH-BAL     TO CAP1-ORIG-BAL.
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF
       CAP1-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO CAP1-RESP
           PERFORM 100-CHECK
       END-IF.
      ******************************************************************