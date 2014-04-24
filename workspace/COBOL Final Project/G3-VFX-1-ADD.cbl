      ******************************************************************
      *PROGRAM:  Vuflix New Account Page
      *AUTHOR:   Jarrod Lee
      *DATE:     4/17/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VFX-1-ADD IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-MBR.
       COPY SELECT-ZIP.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VFX-MBR.
       COPY FD-ZIP.
       
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-1-ADD.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VFX-1-ADD' TO VFX-M-PROG.
       OPEN I-O VM-FILE.
       PERFORM 300-GET-ID.
       PERFORM 100-ACCEPT.
       PERFORM 200-ADD.
       CLOSE VM-FILE.
       GOBACK.
      ******************************************************************
       100-ACCEPT.
       PERFORM UNTIL VFX-1-CHECK = 'S' OR 's'
           MOVE SPACES TO VFX-1-CHECK
           DISPLAY ADDSCREEN
           ACCEPT  A-FNAME
           ACCEPT  A-LNAME
           ACCEPT  A-ADDRESS
           ACCEPT  A-ZIP
           ACCEPT  A-PHONE
           ACCEPT  A-EMAIL
           ACCEPT  A-CC
           ACCEPT  A-SEL
           IF VFX-1-CHECK = 'R' OR 'r'
               MOVE SPACES TO VFX-1-CHECK
               CLOSE VM-FILE
               DISPLAY BLANK-SCREEN
               DISPLAY 'RETURNING TO VUFLIX MENU'
               DISPLAY "PRESS 'ENTER' TO RETURN"
               ACCEPT VFX-1-RESP
               GOBACK
           END-IF
       END-PERFORM.
      ******************************************************************
       200-ADD.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'ADDING NEW MEMBER...'.
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT VFX-1-RESP.
       MOVE VFX-1-NEW-ID       TO VM-ID-KEY.
       MOVE VFX-1-NEW-FNAME    TO VM-FNAME.
       MOVE VFX-1-NEW-LNAME    TO VM-LNAME-KEY.
       MOVE VFX-1-NEW-ADDRESS  TO VM-ADDRESS.
       MOVE VFX-1-NEW-PHONE    TO VM-PHONE.
       MOVE VFX-1-NEW-EMAIL    TO VM-EMAIL.
       MOVE VFX-1-NEW-ZIP      TO VM-ZIP.
       MOVE VFX-1-NEW-CC       TO VM-CC.
       WRITE VM-REC.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO VUFLIX MENU'.
       DISPLAY "PRESS 'ENTER' TO RETURN".
       ACCEPT VFX-1-RESP.
      ******************************************************************
       300-GET-ID.
       MOVE ZERO TO VM-ID
               START VM-FILE KEY NOT LESS THAN VM-ID
           INVALID KEY
               DISPLAY 'OOPS'
               ACCEPT VFX-1-RESP
           NOT INVALID KEY
               READ VM-FILE NEXT RECORD
               COMPUTE VM-ID = VM-ID - 1
               MOVE VM-ID TO VFX-1-NEW-ID
       END-START.