      ******************************************************************
      *PROGRAM:  Capital One Account Signup                            *
      *AUTHOR:   Devin Leaman/Henry Hurlocker                          *
      *DATE:     4/9/2014                                              *
      *ABSTRACT: Account Signup                                        *
      ******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. G3-CAP1-ACCOUNT-SIGNUP IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-CHOLD.
      ******************************************************************
       DATA DIVISION.
       COPY FD-CHOLD.
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
       
       SCREEN SECTION.
       COPY SCREEN-CAP1-U-ADD.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
           MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
           MOVE "G3-CAP1-U-ADD" TO CAP1-M-PROG.
           OPEN I-O CH-FILE.
           PERFORM 200-GET-ID.
           DISPLAY ACCT-SIGNUP.
           
           PERFORM UNTIL CAP1-M-SEL = 'S' or 's'
               
               ACCEPT FORM-FNAME
               ACCEPT FORM-LNAME
               ACCEPT FORM-PHONE
               ACCEPT FORM-STREET
               ACCEPT FORM-ZIP
               ACCEPT FORM-EMAIL
               ACCEPT FORM-LIMIT
               ACCEPT FORM-SEL
               
           END-PERFORM.
           
           PERFORM 100-ADD.
           CLOSE CH-FILE.
           EXIT PROGRAM.
           
       100-ADD.
           DISPLAY BLANK-SCREEN.
           DISPLAY 'CREATING...'
           DISPLAY "PRESS 'ENTER' TO CONTINUE".
           ACCEPT WS-FLAG.
           MOVE WS-ACCNT-NUM TO CH-ID.
           MOVE WS-FNAME TO CH-FNAME.
           MOVE WS-LNAME TO CH-LNAME.
           MOVE WS-PHONE TO CH-PHONE.
           MOVE WS-ADDRESS TO CH-ADDRESS.
           MOVE WS-ZIP TO CH-ZIP.
           MOVE WS-EMAIL TO CH-EMAIL.
           MOVE WS-LIMIT TO CH-LIMIT.
           MOVE ZERO TO CH-BAL.
           WRITE CH-REC.
           DISPLAY 'RETURNING TO CAPITAL ONE MENU'.
           DISPLAY "PRESS 'ENTER' TO RETURN".
           
       200-GET-ID.
       MOVE ZERO TO CH-ID.
               START CH-FILE KEY NOT LESS THAN CH-ID
           INVALID KEY
               DISPLAY 'OOPS'
           NOT INVALID KEY
               READ CH-FILE NEXT RECORD
               COMPUTE CH-ID = CH-ID - 1
               MOVE CH-ID TO WS-ACCNT-NUM
       END-START.           
           