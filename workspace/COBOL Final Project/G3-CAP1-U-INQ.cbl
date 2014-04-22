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
       01  FIRST-SCREEN.
           03  BLANK SCREEN.
           03  ACCNT-NUM-INQ.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Capital One'.
               05  LINE 08 COL 35 VALUE 'Account Inquiry'.
               05  LINE 10 COL 28 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 49 PIC X(8) TO WS-SEARCH-NUM 
                                           FULL REQUIRED AUTO.
               05  LINE 11 COL 28 VALUE '(Exit = 0)'.
               05  LINE 11 COL 47 PIC X(10) FROM CAP1-MSG.  
               
       01  SECOND-SCREEN.
           03  BLANK SCREEN.
           03  LINE 1 COL 1 VALUE "ACCOUNT NUMBER:".
           03  LINE 1 COL 17 PIC 9(8) FROM WS-ACCNT-NUM.
           03  LINE 2 COL 1 VALUE "FIRST NAME:".
           03  LINE 2 COL 12 PIC X(15) FROM WS-FNAME.
           03  LINE 3 COL 1 VALUE "LAST NAME:".
           03  LINE 3 COL 11 PIC X(15) FROM WS-LNAME.
           03  LINE 4 COL 1 VALUE "ADDRESS:".
           03  LINE 4 COL 9 PIC X(25) FROM WS-ADDRESS JUSTIFIED RIGHT.
           03  LINE 5 COL 9 PIC 9(5) FROM WS-ZIP.
                                                                                                                              
      ******************************************************************                                                                                             
       PROCEDURE DIVISION.                                                                                                                                           
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       OPEN INPUT CH-FILE.                                                                                                                            
       DISPLAY FIRST-SCREEN.
       ACCEPT ACCNT-NUM-INQ.
       PERFORM 100-LOOKUP.
       DISPLAY SECOND-SCREEN.
       STOP RUN.
       
       100-LOOKUP.
       IF WS-SEARCH-NUM EQUALS '0'
           STOP RUN
       END-IF.
       MOVE WS-SEARCH-NUM TO CH-ID-KEY
       READ CH-FILE
           INVALID KEY
               MOVE 'INVALID ID' TO CAP1-MSG
           NOT INVALID KEY
               MOVE SPACES TO CAP1-MSG
               PERFORM 200-MOVES
       END-READ.
       
       200-MOVES.
       MOVE CH-ID TO WS-ACCNT-NUM.
       MOVE CH-FNAME TO WS-FNAME.
       MOVE CH-LNAME TO WS-LNAME.
       MOVE CH-ADDRESS TO WS-ADDRESS.
       MOVE CH-ZIP TO WS-ADDRESS.
       MOVE CH-EMAIL TO WS-EMAIL.
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       