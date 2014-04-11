      ******************************************************************
      *PROGRAM:  Vuflix Edit Account Page
      *AUTHOR:   Jarrod Lee
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VUFL-2-EA.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-MBR.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VFX-MBR.
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-ID.
       COPY SCREEN-VFX-CHECK.
       COPY SCREEN-VFX-EDIT.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VUFL-2-EA' TO VFX-M-PROG.
       OPEN I-O VM-FILE.
       PERFORM 100-CHECK.
       PERFORM 300-EDIT.
       CLOSE VM-FILE.
       EXIT PROGRAM.
      ******************************************************************
       100-CHECK.
       DISPLAY IDSCREEN.
       ACCEPT CHOOSEID.
       IF VFX-2-SEARCH-ID = '99999999'
           EXIT PROGRAM
       END-IF.
       PERFORM UNTIL VFX-2-CHECK = 'Y' OR 'y'
           MOVE SPACES TO VFX-2-CHECK
           MOVE VFX-2-SEARCH-ID TO VM-ID
           READ VM-FILE
               INVALID KEY
                   MOVE 'INVALID ID' TO VFX-2-MSG
               NOT INVALID KEY
                   MOVE SPACES TO VFX-2-MSG
                   PERFORM 200-MOVE
           END-READ
           IF VFX-2-RESP = 'C' OR 'c'
               CONTINUE
           ELSE
               DISPLAY IDSCREEN
               ACCEPT CHOOSEID
           END-IF
       END-PERFORM.
       PERFORM UNTIL VFX-2-CHECK = 'S' OR 's'
           MOVE SPACES TO VFX-2-CHECK
           DISPLAY EDITSCREEN
           ACCEPT  E-FNAME
           ACCEPT  E-LNAME
           ACCEPT  E-ADDRESS
           ACCEPT  E-ZIP
           ACCEPT  E-PHONE
           ACCEPT  E-EMAIL
           ACCEPT  E-CC
           ACCEPT  E-SEL
           IF VFX-2-CHECK = 'R' OR 'r'
               MOVE SPACES TO VFX-2-CHECK
               CLOSE VM-FILE
               PERFORM 000-MAIN
           END-IF
       END-PERFORM.
      ******************************************************************
       200-MOVE.
       MOVE 'C'        TO VFX-2-RESP.
       MOVE SPACES     TO VFX-2-ORIG.
       MOVE VM-ID      TO VFX-2-ORIG-ID.
       MOVE VM-FNAME   TO VFX-2-ORIG-FNAME.
      * INSPECT FUNCTION REVERSE(VM-FNAME) 
      * TALLYING WS-CTR FOR LEADING SPACES.                             
      * COMPUTE WS-SCTR = 15 - WS-CTR.
      * MOVE VM-FNAME( 1 : WS-SCTR) TO WS-ORIG-FNAME.
       MOVE VM-LNAME   TO VFX-2-ORIG-LNAME.
       MOVE VM-ADDRESS TO VFX-2-ORIG-ADDRESS.
       MOVE VM-PHONE   TO VFX-2-ORIG-PHONE.
       MOVE VM-EMAIL   TO VFX-2-ORIG-EMAIL.
       MOVE VM-ZIP     TO VFX-2-ORIG-ZIP.
       MOVE VM-CC      TO VFX-2-ORIG-CC.
       DISPLAY CHECKSCREEN.
       ACCEPT CHECK.
       IF VFX-2-CHECK = 'Y' OR 'y'
           CONTINUE
       ELSE
           MOVE SPACES TO VFX-2-RESP
           PERFORM 100-CHECK
       END-IF.
      ******************************************************************
       300-EDIT.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'EDITING...'
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT VFX-2-RESP.
       IF VFX-2-EDIT-FNAME NOT EQUAL SPACES 
           MOVE VFX-2-EDIT-FNAME TO VM-FNAME
       END-IF.
       IF VFX-2-EDIT-LNAME NOT EQUAL SPACES
           MOVE VFX-2-EDIT-LNAME TO VM-LNAME
       END-IF.
       IF VFX-2-EDIT-ADDRESS NOT EQUAL SPACES
           MOVE VFX-2-EDIT-ADDRESS TO VM-ADDRESS
       END-IF.
       IF VFX-2-EDIT-ZIP NOT EQUAL SPACES
           MOVE VFX-2-EDIT-ZIP TO VM-ZIP
       END-IF.
       IF VFX-2-EDIT-PHONE NOT EQUAL SPACES
           MOVE VFX-2-EDIT-PHONE TO VM-PHONE
       END-IF.
       IF VFX-2-EDIT-EMAIL NOT EQUAL SPACES
           MOVE VFX-2-EDIT-EMAIL TO VM-EMAIL
       END-IF.
       IF VFX-2-EDIT-CC NOT EQUAL SPACES
           MOVE VFX-2-EDIT-CC TO VM-CC
       END-IF.
       REWRITE VM-REC.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO VUFLIX MENU'.
       DISPLAY "PRESS 'ENTER' TO RETURN".
       
       