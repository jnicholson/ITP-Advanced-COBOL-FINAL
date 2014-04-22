      *******************************************************************                                                                                            
      *PROGRAM:  Capital One User Inquiry                               *                                                                                            
      *AUTHOR:   Ryan Timmerman, edited by Devin Leaman                 *                                                                                            
      *DATE:     4/15/2014                                              *                                                                                            
      *ABSTRACT: User Inquiry                                           *                                                                                            
      *******************************************************************                                                                                            
       IDENTIFICATION DIVISION.                                                                                                                                      
       PROGRAM-ID. G3-CAP1-U-INQ AS "G3-CAP1-U-INQ".                                                                                   
      ******************************************************************                                                                                             
       ENVIRONMENT DIVISION.
       COPY SELECT-CHOLD.                                                                                      
      ******************************************************************                                                                                             
       DATA DIVISION.    
       COPY FD-CHOLD.
                                                                                            
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
 
       SCREEN SECTION.
       COPY SCREEN-CAP1-U-INQ.                                           
                                                                                                                                                                     
       PROCEDURE DIVISION.                                                                                                                                           
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       OPEN INPUT CH-FILE. 
       PERFORM 100-LOOP UNTIL WS-FLAG EQUALS 'N' OR 'n'.
       STOP RUN.
      ****************************************************************** 
       100-LOOP.                                                                                                                           
       DISPLAY ACCNT-NUM-INQ.
       ACCEPT ACCNT-NUM-INQ.
       DISPLAY CONFIRMATION.
       ACCEPT CONFIRMATION.
       PERFORM 200-LOOKUP.
       IF CAP1-MSG NOT EQUAL TO SPACES THEN
           PERFORM 100-LOOP
       ELSE
           DISPLAY SECOND-SCREEN
           ACCEPT SECOND-SCREEN
       END-IF.
      ****************************************************************** 
       200-LOOKUP.
       IF WS-SEARCH-NUM EQUALS '00000000'
           STOP RUN
       END-IF.
       MOVE WS-SEARCH-NUM TO CH-ID-KEY
       READ CH-FILE
           INVALID KEY
               MOVE 'INVALID ID' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 300-MOVES
       END-READ.
      ****************************************************************** 
       300-MOVES.
       MOVE CH-ID TO WS-ACCNT-NUM.
       MOVE CH-FNAME TO WS-FNAME.
       MOVE CH-LNAME TO WS-LNAME.
       MOVE CH-ADDRESS TO WS-ADDRESS.
       MOVE CH-ZIP TO WS-ZIP.
       MOVE CH-EMAIL TO WS-EMAIL.
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       