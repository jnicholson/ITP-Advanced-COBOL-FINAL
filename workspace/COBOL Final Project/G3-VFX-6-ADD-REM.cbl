      ******************************************************************
      *PROGRAM:  Vuflix Add/Remove Movie Page
      *AUTHOR:   Jarrod Lee
      *DATE:     4/21/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VFX-6-ADD-REM IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VFX-MOV.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VFX-MOV.
       
       WORKING-STORAGE SECTION.
       COPY WS-VFX.
       
       SCREEN SECTION.
       COPY SCREEN-VFX-6-ADD-REM.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-VFX-6-ADD-REM' TO VFX-M-PROG.
       OPEN I-O VML-FILE.
       MOVE SPACES TO VFX-6-SEL.
       MOVE SPACES TO VFX-6-RESP.
       PERFORM UNTIL VFX-6-SEL = 'X' OR 'x'
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-ADD-REM
           ACCEPT  PTSCREEN-ADD-REM
           EVALUATE VFX-6-SEL
               WHEN '1' PERFORM 100-ADD
               WHEN '2' PERFORM 100-EDIT
           END-EVALUATE
       END-PERFORM.
       CLOSE VML-FILE.
       GOBACK.
      ******************************************************************
       100-ADD.
       MOVE SPACES TO VFX-6-RESP.
       PERFORM UNTIL VFX-6-RESP = 'Y'
           READ VML-FILE NEXT RECORD
               AT END 
                   MOVE VML-ID TO VFX-6-VML-ID
                   MOVE 'Y' TO VFX-6-RESP
               NOT AT END
                   CONTINUE
       END-PERFORM.  
       ADD 1 TO VFX-6-VML-ID.
       MOVE VFX-6-VML-ID TO VFX-6-NEW-ID.
       PERFORM 200-ADD.
       PERFORM 300-ADD.
      ******************************************************************
       100-EDIT.
       MOVE SPACES TO VFX-6-RESP.
       DISPLAY PTSCREEN-LABEL.
       DISPLAY SPACES.
       DISPLAY SPACES.
       PERFORM UNTIL VFX-6-RESP = 'Y'
           READ VML-FILE NEXT RECORD
               AT END
                   MOVE 'Y' TO VFX-6-RESP
               NOT AT END
                   PERFORM 100-DISP
           END-READ
       END-PERFORM.
       PERFORM 200-DISP UNTIL VFX-6-RESP = 'X' OR 'x'.
      ******************************************************************
       100-DISP.
       ADD 1 TO VFX-6-CTR.
       IF VFX-6-CTR GREATER THAN 15
           PERFORM 200-DISP UNTIL VFX-6-RESP = 'N' OR 'n' OR 'X' OR 'x'
           DISPLAY PTSCREEN-HEADER
           DISPLAY PTSCREEN-LABEL
           DISPLAY SPACES
           MOVE 1 TO VFX-6-CTR
       END-IF.
       
       MOVE VML-ID     TO VFX-6-ID.
       MOVE VML-TITLE  TO VFX-6-TITLE.
       MOVE VML-GENRE  TO VFX-6-GENRE.
       MOVE VML-PRICE  TO VFX-6-PRICE.
  
       DISPLAY VFX-6-VML-LINE.
      ******************************************************************
       200-ADD.
       PERFORM UNTIL VFX-6-CHECK = 'S' OR 's'
           MOVE SPACES TO VFX-6-CHECK
           DISPLAY ADDSCREEN
           ACCEPT  A-TITLE
           ACCEPT  A-GENRE
           ACCEPT  A-PRICE
           ACCEPT  A-SH
           ACCEPT  A-SEL
           IF VFX-6-CHECK = 'R' OR 'r'
               MOVE SPACES TO VFX-6-CHECK
               CLOSE VML-FILE
      *         DISPLAY BLANK-SCREEN
      *         DISPLAY 'RETURNING TO VUFLIX MENU'
      *         DISPLAY "PRESS 'ENTER' TO RETURN"
      *         ACCEPT VFX-6-RESP
               PERFORM 000-MAIN
      *         GOBACK
           END-IF
       END-PERFORM.
      ******************************************************************
       200-EDIT.
       MOVE SPACES TO VFX-6-CHECK.
       MOVE VFX-6-VML-ID TO VML-ID-KEY.
       READ VML-FILE KEY VML-ID
           INVALID KEY
               DISPLAY 'OOPS'
               ACCEPT VFX-6-RESP
           NOT INVALID KEY
               PERFORM 300-EDIT
       END-READ.
      ******************************************************************
       200-DISP.
       MOVE SPACES TO VFX-6-RESP.
       DISPLAY CONT-FILE.
       ACCEPT  VFX-6-RESP.
       IF VFX-6-RESP = 'E' OR 'e'
           DISPLAY PTSCREEN-EDIT
           ACCEPT  PTSCREEN-EDIT
           PERFORM 200-EDIT
       ELSE
       IF VFX-6-RESP = 'N' OR 'n'
           CONTINUE
       ELSE
       IF VFX-6-RESP = 'X' OR 'x'
           GOBACK
       END-IF.
      ******************************************************************
       300-ADD.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'ADDING NEW MOVIE...'.
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT VFX-6-RESP.
       MOVE VFX-6-NEW-ID       TO VML-ID-KEY.
       MOVE VFX-6-NEW-TITLE    TO VML-TITLE-KEY.
       MOVE VFX-6-NEW-GENRE    TO VML-GENRE-KEY.
       MOVE VFX-6-NEW-PRICE    TO VML-PRICE.
       MOVE VFX-6-NEW-SH       TO VML-SH.
       WRITE VML-REC.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'MOVIE ADDED!'.
       DISPLAY "PRESS 'ENTER' TO RETURN".
       ACCEPT VFX-6-RESP.
      ******************************************************************
       300-EDIT.
       PERFORM UNTIL VFX-6-CHECK = 'S' OR 's'
           MOVE VML-ID TO VFX-6-ORIG-ID
           INSPECT FUNCTION REVERSE(VML-TITLE) 
           TALLYING WS-CTR FOR LEADING SPACES                        
           COMPUTE WS-SCTR = 35 - WS-CTR
           STRING WS-BLANKS(1:WS-CTR), VML-TITLE(1:WS-SCTR) 
                                       INTO VFX-6-ORIG-TITLE
           MOVE ZERO TO WS-CTR
           INSPECT FUNCTION REVERSE(VML-GENRE) 
           TALLYING WS-CTR FOR LEADING SPACES                       
           COMPUTE WS-SCTR = 10 - WS-CTR
           STRING WS-BLANKS(1:WS-CTR), VML-GENRE(1:WS-SCTR) 
                                       INTO VFX-6-ORIG-GENRE
           MOVE ZERO TO WS-CTR
           MOVE VML-PRICE TO VFX-6-ORIG-PRICE
           MOVE VML-SH TO VFX-6-ORIG-SH
           
           DISPLAY EDITSCREEN
           ACCEPT  E-TITLE
           ACCEPT  E-GENRE
           ACCEPT  E-PRICE
           ACCEPT  E-SH
           ACCEPT  E-SEL
           
           IF VFX-6-CHECK = 'R' OR 'r'
               MOVE SPACES TO VFX-6-CHECK
               CLOSE VML-FILE
               PERFORM 000-MAIN
           END-IF
       END-PERFORM.