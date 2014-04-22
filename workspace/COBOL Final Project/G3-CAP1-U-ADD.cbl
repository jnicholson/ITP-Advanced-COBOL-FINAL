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
       COPY SCREEN-CAP1-U-ADD.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
           MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
           MOVE "G3-CAP1-U-ADD" TO CAP1-M-PROG.
           OPEN I-O CH-FILE.
           DISPLAY ACCT-SIGNUP.
           
           PERFORM UNTIL CAP1-M-SEL = 'S' or 's'
               ACCEPT FORM-ID
               ACCEPT FORM-FNAME
               ACCEPT FORM-LNAME
               ACCEPT FORM-STREET
               ACCEPT FORM-ZIP
               ACCEPT FORM-EMAIL
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
           MOVE WS-ACNT-NUM TO CH-ID.
           MOVE WS-FNAME TO CH-FNAME.
           MOVE WS-LNAME TO CH-LNAME.
           MOVE WS-STREET TO CH-ADDRESS.
           MOVE WS-ZIP TO CH-ZIP.
           MOVE WS-EMAIL TO CH-EMAIL.
           WRITE CH-REC.
           DISPLAY 'RETURNING TO CAPITAL ONE MENU'.
           DISPLAY "PRESS 'ENTER' TO RETURN".