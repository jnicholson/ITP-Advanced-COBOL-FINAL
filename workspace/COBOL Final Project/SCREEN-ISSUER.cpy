      *******************0000**************************ddress******************
      * AUTHOR       : JESSE NICHOLSON                                  *
      * CREATION DATE: 3/26/14                                          *
      * LAST EDIT    : 3/26/14                                          *
      * PURPOSE      : SCREENS FOR VISA ISSUER PAGES INCLUDED WITHIN    *
      *******************************************************************
       SCREEN SECTION.
       01  SCREEN-TITLE.
           03 SCREEN-TITLE-LINE-ONE.
               05  BLANK SCREEN.
               05  LINE 01 COL 01  "VISA ISSUER MENU".
               05  LINE 01 COL 37 "TEAM 3".
               05  SCREEN-TITLE-DATE.
                   07  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
                   07  LINE 01 COL 73 VALUE "/".
                   07  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
                   07  LINE 01 COL 76 VALUE "/".
                   07  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
           03  SCREEN-TITLE-LINE-TWO.
               05  SCREEN-TITLE-TIME.
                   07  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
                   07  LINE 02 COL 78 VALUE ":".
                   07  LINE 02 COL 79 PIC X(2) FROM WS-MIN.
      *----------------------------------------------------------------- 
       01  SCREEN-ISSUER-MENU.
           03  SCREEN-MENU-OPTIONS.      
               05  LINE 08 COL 32  VALUE "VISA ISSUER MENU".            
               05  LINE 10 COL 34  VALUE "1) Search Issuers".           
               05  LINE 11 COL 34  VALUE "2) Add Issuer".                
               05  LINE 12 COL 34  VALUE "3) Edit/Delete Issuer".       
               05  LINE 13 COL 34  VALUE "B) Previous Menu".            
           03  SCREEN-MENU-NAVIGATION.                                      
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-MENU-CLEAR.
               05  LINE 3  COL 30  VALUE "                            ".
               05  LINE 5  COL 30  VALUE "                            ".
               05  LINE 7  COL 30  VALUE "                            ".
               05  LINE 9  COL 30  VALUE "                            ".
               05  LINE 11 COL 30  VALUE "                            ".
               05  LINE 13 COL 30  VALUE "                            ".
               05  LINE 15 COL 30  VALUE "                            ".
               05  LINE 17 COL 30  VALUE "                            ".
               05  LINE 19 COL 30  VALUE "                            ".
               05  LINE 21 COL 30  VALUE "                            ".
      *-----------------------------------------------------------------
       01  SCREEN-SEARCH-ISSUER.
           03  SCREEN-SEARCH-OPTIONS.
               05  LINE 08 COL 30 VALUE "VISA ISSUER SEARCH".
               05  LINE 10 COL 34 VALUE "1) Search By Issuer ID Num".
               05  LINE 11 COL 34 VALUE "2) Search By Issuer Name".
               05  LINE 12 COL 34 VALUE "3) Search By Address".         
               05  LINE 13 COL 34 VALUE "4) Search By Credit Card Type".
               05  LINE 14 COL 34 VALUE "5) Search By Email".
           03  SCREEN-SEARCH-NAVIGATION.
               05  LINE 22 COL 31 VALUE "SELECT ACTION: ".
               05  LINE 22 COL 45 PIC X TO WS-SEARCH-SELECTION AUTO.    
           03  SCREEN-SEARCH-ID.                                        
               05  LINE 22 COL 30 VALUE "                             ".
               05  LINE 22 COL 30 VALUE "Enter ID Num:".
               05  LINE 22 COL 44 PIC X(20) TO WS-SEARCH-ID.
           03  SCREEN-SEARCH-ID-CLEAR.                                  
               05  LINE 15 COL 30 VALUE "                             ".
           03  SCREEN-SEARCH-NAME.                                      
               05  LINE 15 COL 30 VALUE "                             ".
               05  LINE 15 COL 30 VALUE "Enter Issuer Name".
               05  LINE 15 COL 49 PIC X(40) TO WS-SEARCH-NAME.
           03  SCREEN-SEARCH-NAME-CLEAR.
               05  LINE 15 COL 30 VALUE "                             ".
               05  LINE 16 COL 30 VALUE "                             ".
           03  SCREEN-SEARCH-ADDRESS.
               05  LINE 15 COL 30 VALUE "                             ".
               05  LINE 15 COL 30 VALUE "ENTER STREET".
               05  LINE 15 COL 44 PIC X(20) TO WS-SEARCH-ADDRESS-STREET.
               05  LINE 16 COL 30 VALUE "ENTER CITY".
               05  LINE 16 COL 44 PIC X(20) TO WS-SEARCH-ADDRESS-CITY.
               05  LINE 17 COL 30 VALUE "ENTER STATE".
               05  LINE 17 COL 44 PIC X(20) TO WS-SEARCH-ADDRESS-STATE.
               05  LINE 18 COL 30 VALUE "ENTER ZIP".
               05  LINE 18 COL 44 PIC 9(5) TO WS-SEARCH-ADDRESS-ZIP.
           03  SCREEN-SEARCH-ADDRESS-CLEAR.
               05  LINE 15 COL 30 VALUE "                             ".
               05  LINE 16 COL 30 VALUE "                             ".
               05  LINE 17 COL 30 VALUE "                             ".
               05  LINE 18 COL 30 VALUE "                             ".
           03  SCREEN-SEARCH-CREDITCARD.
               05  LINE 15 COL 30 "ENTER CREDIT CARD NUMBER".
               05  LINE 15 COL 56 PIC 9(19) TO WS-SEARCH-CREDITCARD.
           03  SCREEN-SEARCH-CREDITCARD-CLEAR.                          
               05  LINE 15 COL 30 VALUE 
               "                                                  ".
           03  SCREEN-SEARCH-CLEAR.
               05  LINE 3  COL 30 VALUE "                             ".
               05  LINE 5  COL 30 VALUE "                             ".
               05  LINE 7  COL 30 VALUE "                             ".
               05  LINE 9  COL 30 VALUE "                             
               ".                                                        
               05  LINE 11 COL 30 VALUE "                             ".
               05  LINE 13 COL 30 VALUE "                             ".
               05  LINE 15 COL 30 VALUE "                             ".
               05  LINE 16 COL 30 VALUE "                             ".
               05  LINE 17 COL 30 VALUE "                             ".
               05  LINE 18 COL 30 VALUE "                             ".
      *-----------------------------------------------------------------
        01  SCREEN-EDITING.
           03  SCREEN-EDIT-ALL.
               05  LINE 03 COL 11 VALUE "ORIGINAL VALUES".
               05  LINE 05 COL 15 VALUE "ISSUER ID:".
               05  LINE 05 COL 25 PIC X(20) FROM  WS-ISS-ID.
               05  LINE 05 COL 15 VALUE "NAME:".
               05  LINE 06 COL 25 PIC X(40) FROM WS-ISS-NAME. 
               05  LINE 07 COL 15 VALUE "LAST NAME:". 
               05  LINE 07 COL 25 PIC X(20) FROM WS-ISS-LNAME. 
               05  LINE 08 COL 15 VALUE "STREET:".
               05  LINE 08 COL 25 PIC X(20) FROM WS-ISS-ADDRESS.
               05  LINE 11 COL 15 VALUE "ZIP:". 
               05  LINE 11 COL 25 PIC 9(5)  FROM WS-ISS-ZIP.   
               05  LINE 12 COL 15 VALUE "CREDIT CARD:".   
               05  LINE 12 COL 25 PIC X(19) FROM WS-ISS-CC.    
               05  LINE 13 COL 15 VALUE "EMAIL:".  
               05  LINE 13 COL 25 PIC X(20) FROM WS-ISS-EMAIL
           03  SCREEN-EDIT-ALL-CLEAR.
               05  LINE 03 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 05 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 06 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 07 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 08 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 09 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 10 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 11 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 12 COL 01 PIC X(80) VALUE SPACES.
               05  LINE 13 COL 01 PIC X(80) VALUE SPACES.
      *LINE 24 = LAST AVALIABLE LINE BEFORE SCROLL BAR USED.