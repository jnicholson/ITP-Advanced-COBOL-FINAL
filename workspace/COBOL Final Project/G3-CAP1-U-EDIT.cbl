      ******************************************************************
      *PROGRAM:    Capital One User Record Edit                        *
      *AUTHOR:     Henry Hurlocker                                     *
      *DATE:       4/20/2014                                           *
      *ABSTRACT:   Edit Cap1 user recs                                 *
      ******************************************************************       
       PROGRAM-ID. G3_CAP1_U_EDIT IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-CHOLD.
      *******************************************************************
       DATA DIVISION.
       COPY FD-CHOLD.
      
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
       
       SCREEN SECTION.
       COPY SCREEN-CAP1-U-EDIT.
      ******************************************************************* 
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-CAP1-U-EDIT' TO CAP1-M-PROG.
       OPEN I-O CH-FILE.
       MOVE ZERO TO WS-SEARCH-NUM.
       MOVE SPACES TO CAP1-SEARCH.
       PERFORM 100-CHECK.
       PERFORM 700-EDIT.
       CLOSE CH-FILE.
       EXIT PROGRAM.
      *******************************************************************
       100-CHECK.
       DISPLAY MAIN-SCREEN.
       ACCEPT SEARCH-CHOICE.
       EVALUATE WS-SEARCH-NUM
           WHEN '1' PERFORM 200-ID-LOOKUP
           WHEN '2' PERFORM 300-LNAME-LOOKUP
           WHEN '3' PERFORM 400-EMAIL-LOOKUP
           WHEN '4' PERFORM 500-PHONE-LOOKUP
           WHEN '0' EXIT PROGRAM
       END-EVALUATE.
      ******************************************************************* 
       200-ID-LOOKUP.
       
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
               PERFORM 600-MOVE
       END-READ.
      *******************************************************************  
       300-LNAME-LOOKUP.
       DISPLAY LNAME-SCREEN.
       ACCEPT LNAME-INQ.
       MOVE CAP1-SEARCH TO CH-LNAME-KEY.
       READ CH-FILE KEY CH-LNAME-KEY
           INVALID KEY
               MOVE 'INVALID ID' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 600-MOVE
       END-READ.
      *******************************************************************
       400-EMAIL-LOOKUP.
       DISPLAY EMAIL-SCREEN.
       ACCEPT EMAIL-INQ.
       MOVE CAP1-SEARCH TO CH-EMAIL-KEY.
       READ CH-FILE KEY CH-EMAIL-KEY
           INVALID KEY
               MOVE 'INVALID ID' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 600-MOVE
       END-READ.
      ******************************************************************* 
       500-PHONE-LOOKUP.
       DISPLAY PHONE-SCREEN.
       ACCEPT PHONE-INQ.
       MOVE CAP1-SEARCH TO CH-PHONE-KEY.
       READ CH-FILE KEY CH-PHONE-KEY
           INVALID KEY
               MOVE 'INVALID ID' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 600-MOVE
       END-READ.
      ******************************************************************     
       600-MOVE.
       MOVE 'C' TO CAP1-RESP.
       MOVE CH-ID TO CAP1-ORIG-ID.
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
       700-EDIT.
       PERFORM UNTIL CAP1-CHECK = 'S' OR 's'
           MOVE SPACES TO CAP1-CHECK
      *     PERFORM 400-EDIT-LOAD
           DISPLAY EDITSCREEN
           ACCEPT E-ID
           ACCEPT E-FNAME
           ACCEPT E-LNAME
           ACCEPT E-PHONE
           ACCEPT E-ADDRESS
           ACCEPT E-ZIP
           ACCEPT E-EMAIL
           ACCEPT E-LIMIT
           ACCEPT E-SEL
           IF CAP1-CHECK = 'R' OR 'r'
               MOVE SPACES TO CAP1-CHECK
               CLOSE CH-FILE
               PERFORM 000-MAIN
           END-IF
       END-PERFORM.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'EDITING...'
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
       ACCEPT CAP1-RESP.
       IF CAP1-EDIT-ID NOT EQUAL SPACES
           MOVE CAP1-EDIT-ID TO CH-ID
       END-IF.
       IF CAP1-EDIT-F-NAME NOT EQUAL SPACES 
           MOVE CAP1-EDIT-F-NAME TO CH-FNAME
       END-IF.
       IF CAP1-EDIT-L-NAME NOT EQUAL SPACES
           MOVE CAP1-EDIT-L-NAME TO CH-LNAME
       END-IF.
       IF CAP1-EDIT-PHONE   NOT EQUALS SPACES
           MOVE CAP1-EDIT-PHONE TO CH-PHONE
       END-IF.
       IF CAP1-EDIT-ADDRESS NOT EQUAL SPACES
           MOVE CAP1-EDIT-ADDRESS TO CH-ADDRESS
       END-IF.
       IF CAP1-EDIT-ZIP NOT EQUAL SPACES
           MOVE CAP1-EDIT-ZIP TO CH-ZIP
       END-IF.
       IF CAP1-EDIT-EMAIL NOT EQUAL SPACES
           MOVE CAP1-EDIT-EMAIL TO CH-EMAIL
       END-IF.
       IF CAP1-EDIT-LIMIT NOT EQUAL SPACES
           MOVE CAP1-EDIT-LIMIT TO CH-LIMIT.
       REWRITE CH-REC.
       DISPLAY BLANK-SCREEN.
       DISPLAY 'RETURNING TO CAPITAL ONE MENU'.
       DISPLAY "PRESS 'ENTER' TO CONTINUE".
      ******************************************************************        
       700-EDIT-LOAD.
       INSPECT FUNCTION REVERSE(CH-FNAME)
           TALLYING WS-CTR FOR LEADING SPACES.
       COMPUTE WS-SCTR = 20 - WS-CTR.
       STRING WS-BLANKS(1:WS-CTR), CH-FNAME(1:WS-SCTR) INTO
       CAP1-ORIG-F-NAME.
       MOVE ZERO TO WS-CTR.
       
       INSPECT FUNCTION REVERSE(CH-LNAME)
           TALLYING WS-CTR FOR LEADING SPACES.
       COMPUTE WS-SCTR = 20 - WS-CTR.
       STRING WS-BLANKS(1:WS-CTR), CH-LNAME(1:WS-SCTR) INTO
       CAP1-ORIG-L-NAME.
       MOVE ZERO TO WS-CTR.       
           
       INSPECT FUNCTION REVERSE(CH-ADDRESS)
           TALLYING WS-CTR FOR LEADING SPACES.
       COMPUTE WS-SCTR = 20 - WS-CTR.
       STRING WS-BLANKS(1:WS-CTR), CH-ADDRESS(1:WS-SCTR) INTO
       CAP1-ORIG-ADDRESS.
       MOVE ZERO TO WS-CTR.              
       
    
       
           
           
           