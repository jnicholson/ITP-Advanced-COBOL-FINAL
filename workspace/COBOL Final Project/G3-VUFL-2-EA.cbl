      ******************************************************************
      *PROGRAM:  Vuflix Edit Account Page
      *AUTHOR:   Jarrod Lee
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VUFL-2-EA.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VUFLIX-MEMBER.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VUFLIX-MEMBER.
       
       WORKING-STORAGE SECTION.
       COPY WS-VUFLIX-EDIT.
       
       SCREEN SECTION.
       COPY SCREEN-VUFLIX-ID.
       COPY SCREEN-VUFLIX-CHECK.
       COPY SCREEN-VUFLIX-EDIT.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VUFL-2-EA' TO WS-PROG.
       OPEN I-O VM-FILE.
       PERFORM 100-CHECK.
       PERFORM 300-EDIT.
       CLOSE VM-FILE.
       GOBACK.
      ******************************************************************
       100-CHECK.
       DISPLAY IDSCREEN.
       ACCEPT CHOOSEID.
       IF WS-SEARCH-ID = '99999999'
           GOBACK
       END-IF.
       PERFORM UNTIL WS-CHECK = 'Y' OR 'y'
           MOVE SPACES TO WS-CHECK
           MOVE WS-SEARCH-ID TO VM-ID
           READ VM-FILE
               INVALID KEY
                   MOVE 'INVALID ID' TO WS-MSG
               NOT INVALID KEY
                   MOVE SPACES TO WS-MSG
                   PERFORM 200-MOVE
           END-READ
           IF WS-RESP = 'C' OR 'c'
               CONTINUE
           ELSE
               DISPLAY IDSCREEN
               ACCEPT CHOOSEID
           END-IF
       END-PERFORM.
       PERFORM UNTIL WS-CHECK = 'S' OR 's'
           MOVE SPACES TO WS-CHECK
           DISPLAY EDITSCREEN
           ACCEPT  E-FNAME
           ACCEPT  E-LNAME
           ACCEPT  E-ADDRESS
           ACCEPT  E-ZIP
           ACCEPT  E-PHONE
           ACCEPT  E-EMAIL
           ACCEPT  E-CC
           ACCEPT  E-SEL
           IF WS-CHECK = 'R' OR 'r'
               MOVE SPACES TO WS-CHECK
               CLOSE VM-FILE
               PERFORM 000-MAIN
           END-IF
       END-PERFORM.
      ******************************************************************
       200-MOVE.
       MOVE 'C'        TO WS-RESP.
       MOVE SPACES     TO WS-ORIG.
       MOVE VM-ID      TO WS-ORIG-ID.
       MOVE VM-FNAME   TO WS-ORIG-FNAME.
       MOVE VM-LNAME   TO WS-ORIG-LNAME.
       MOVE VM-ADDRESS TO WS-ORIG-ADDRESS.
       MOVE VM-PHONE   TO WS-ORIG-PHONE.
       MOVE VM-EMAIL   TO WS-ORIG-EMAIL.
       MOVE VM-ZIP     TO WS-ORIG-ZIP.
       MOVE VM-CC      TO WS-ORIG-CC.
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF WS-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO WS-RESP
           PERFORM 100-CHECK
       END-IF.
      ******************************************************************
       300-EDIT.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'EDITING...'
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT WS-RESP.
       IF WS-EDIT-FNAME NOT EQUAL SPACES 
           MOVE WS-EDIT-FNAME TO VM-FNAME
       END-IF.
       IF WS-EDIT-LNAME NOT EQUAL SPACES
           MOVE WS-EDIT-LNAME TO VM-LNAME
       END-IF.
       IF WS-EDIT-ADDRESS NOT EQUAL SPACES
           MOVE WS-EDIT-ADDRESS TO VM-ADDRESS
       END-IF.
       IF WS-EDIT-ZIP NOT EQUAL SPACES
           MOVE WS-EDIT-ZIP TO VM-ZIP
       END-IF.
       IF WS-EDIT-PHONE NOT EQUAL SPACES
           MOVE WS-EDIT-PHONE TO VM-PHONE
       END-IF.
       IF WS-EDIT-EMAIL NOT EQUAL SPACES
           MOVE WS-EDIT-EMAIL TO VM-EMAIL
       END-IF.
       IF WS-EDIT-CC NOT EQUAL SPACES
           MOVE WS-EDIT-CC TO VM-CC
       END-IF.
       REWRITE VM-REC.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO VUFLIX MENU'.
       DISPLAY "PRESS 'ENTER' TO RETURN".
       GOBACK.
       
       
