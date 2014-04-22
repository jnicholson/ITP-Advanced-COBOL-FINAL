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
       01  WS-MEMBER.
           03  WS-FNAME        PIC X(15).
           03  WS-LNAME        PIC X(15).
           03  WS-ADDRESS      PIC X(25).
           03  WS-ZIP          PIC 9(5).
           03  WS-ACCNT-NUM    PIC 9(8).
           03  WS-EMAIL        PIC X(35).
           03  WS-PHONE        PIC 9(10).
       01  WS-STAT             PIC 99.
       
       SCREEN SECTION.
       01  FIRST-SCREEN.
           03  BLANK SCREEN.
           03  ACCNT-NUM-INQ.
               05  LINE 1 COL 1 VALUE "ACCOUNT NUMBER:".
               05  LINE 1 COL 17 PIC 9(8) TO WS-ACCNT-NUM.  
               
       01  SCND-SCREEN.
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
       OPEN INPUT CH-FILE.                                                                                                                            
       DISPLAY ACCNT-NUM-INQ.
       ACCEPT ACCNT-NUM-INQ.
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       