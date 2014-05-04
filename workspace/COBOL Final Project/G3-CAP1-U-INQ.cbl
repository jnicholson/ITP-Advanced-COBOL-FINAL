      *******************************************************************                                                                                            
      *PROGRAM   : CAPITAL ONE USER INQUIRY                             *                                                                                            
      *AUTHOR    : RYAN TIMMERMAN                                       *
      *EDITED BY : DEVIN LEAMAN                                         *                                                  
      *DATE      : 4/15/2014                                            *                                                                                            
      *ABSTRACT  : USER INQUIRY                                         *                                                                                            
      *******************************************************************                                                                                            
       IDENTIFICATION DIVISION.                                                                                                                                      
       PROGRAM-ID. G3-CAP1-U-INQ AS "G3-CAP1-U-INQ" IS INITIAL.                                                                      
      *******************************************************************                                                                                             
       ENVIRONMENT DIVISION.
       COPY SELECT-CHOLD.                                                                                      
      *******************************************************************                                                                                             
       DATA DIVISION.    
       COPY FD-CHOLD.
                                                                                            
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
 
       SCREEN SECTION.
       COPY SCREEN-CAP1-U-INQ.                                           
      *******************************************************************                                                                                             
       PROCEDURE DIVISION.                                                                                                                                           
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       OPEN I-O CH-FILE.
       MOVE SPACES TO CAP1-SEARCH.
       MOVE SPACES TO WS-SEARCH-NUM.
       PERFORM 100-CHOICE-LOOP UNTIL WS-FLAG EQUALS 'N' OR 'n'.
       EXIT PROGRAM.
      ******************************************************************* 
       100-CHOICE-LOOP.
       PERFORM 700-VAR-RESET.                                                                                               
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
       DISPLAY ID-SCREEN.
       ACCEPT ID-INQ.
       MOVE CAP1-SEARCH TO CH-ID-KEY.
       READ CH-FILE
           INVALID KEY
               MOVE 'INVALID ID' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 600-MOVES
               DISPLAY ACCNT-DISP
               ACCEPT CONFIRMATION
       END-READ.
      ******************************************************************* 
       300-LNAME-LOOKUP.
       DISPLAY LNAME-SCREEN.
       ACCEPT LNAME-INQ.
       MOVE CAP1-SEARCH TO CH-LNAME-KEY.
       READ CH-FILE KEY CH-LNAME-KEY
           INVALID KEY
               MOVE 'INVALID LAST NAME' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 600-MOVES
               DISPLAY ACCNT-DISP
               ACCEPT CONFIRMATION
       END-READ.
      ******************************************************************* 
       400-EMAIL-LOOKUP.
       DISPLAY EMAIL-SCREEN.
       ACCEPT EMAIL-INQ.
       MOVE CAP1-SEARCH TO CH-EMAIL-KEY.
       READ CH-FILE KEY CH-EMAIL-KEY
           INVALID KEY
               MOVE 'INVALID EMAIL' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 600-MOVES
               DISPLAY ACCNT-DISP
               ACCEPT CONFIRMATION
       END-READ.
      ******************************************************************* 
       500-PHONE-LOOKUP.
       DISPLAY PHONE-SCREEN.
       ACCEPT PHONE-INQ.
       MOVE CAP1-SEARCH TO CH-PHONE-KEY.
       READ CH-FILE KEY CH-PHONE-KEY
           INVALID KEY
               MOVE 'INVALID PHONE' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 600-MOVES
               DISPLAY ACCNT-DISP
               ACCEPT CONFIRMATION
       END-READ.
      *******************************************************************
       600-MOVES.
       MOVE CH-ID TO WS-ACCNT-NUM.
       MOVE CH-FNAME TO WS-FNAME.
       MOVE CH-LNAME TO WS-LNAME.
       MOVE CH-PHONE TO WS-PHONE.
       MOVE CH-ADDRESS TO WS-ADDRESS.
       MOVE CH-ZIP TO WS-ZIP.
       MOVE CH-EMAIL TO WS-EMAIL.
       MOVE CH-LIMIT TO WS-LIMIT.
       MOVE CH-BAL TO WS-BAL.
      ******************************************************************* 
       700-VAR-RESET.
       MOVE '0' TO WS-SEARCH-NUM. 
       MOVE ZEROS TO CH-ID-KEY.
       MOVE SPACES TO CH-LNAME-KEY.
       MOVE SPACES TO CH-EMAIL-KEY.
       MOVE SPACES TO CAP1-SEARCH.
      ******************************************************************* 
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       