      *******************************************************************
      * AUTHOR       : DUSTYNE BROWN                                    *
      * CREATION DATE: 3/19/14                                          *
      * LAST EDIT    : 3/19/14                                          *
      * PURPOSE      : CREATE THE SCREENS FOR EDITING MEMBER DATA       *
      *******************************************************************
       01  WS-TIME-LOG.
           03  WS-DATE.
               05  WS-YEAR             PIC X(4).
               05  WS-MONTH            PIC X(2).
               05  WS-DAY              PIC X(2).
           03  WS-TIME.
               05  WS-HOUR             PIC X(2).
               05  WS-MIN              PIC X(2).
               
       01  WS-SCREEN-NAVIGATION-VARIABLES.
           03  WS-ACTION-SELECTION         PIC X.
           03  WS-SEARCH-SELECTION         PIC X.
           03  WS-SEARCH-ENTRY.
               05  WS-SEARCH-ID            PIC X(20).
               05  WS-SEARCH-FNAME         PIC X(20).
               05  WS-SEARCH-LNAME         PIC X(20).
               05  WS-SEARCH-ADDRESS.
                   07  WS-SEARCH-ADDRESS-STREET    PIC X(20).
                   07  WS-SEARCH-ADDRESS-CITY      PIC X(20).
                   07  WS-SEARCH-ADDRESS-STATE     PIC X(2).
                   07  WS-SEARCH-ADDRESS-ZIP       PIC 9(5).
               05  WS-SEARCH-CREDITCARD    PIC 9(19).
               
       01  WS-EDITOR.
           03  WS-EDITOR-ORIGINAL.
               05  WS-ORIG-ID          PIC X(20).
               05  WS-ORIG-FNAME       PIC X(20).
               05  WS-ORIG-LNAME       PIC X(20).
               05  WS-ORIG-STREET      PIC X(20).
               05  WS-ORIG-CITY        PIC X(20).
               05  WS-ORIG-STATE       PIC X(2).
               05  WS-ORIG-ZIP         PIC 9(5).
               05  WS-ORIG-CC          PIC X(19).
               05  WS-ORIG-EMAIL       PIC X(20).
           03 WS-EDITOR-EDITED.
               05  WS-EDIT-ID          PIC X(20).
               05  WS-EDIT-FNAME       PIC X(20).
               05  WS-EDIT-LNAME       PIC X(20).
               05  WS-EDIT-STREET      PIC X(20).
               05  WS-EDIT-CITY        PIC X(20).
               05  WS-EDIT-STATE       PIC X(2).
               05  WS-EDIT-ZIP         PIC 9(5).
               05  WS-EDIT-CC          PIC X(19).
               05  WS-EDIT-EMAIL       PIC X(20).
               
       SCREEN SECTION.
       01  SCREEN-TITLE.
           03 SCREEN-TITLE-LINE-ONE.
               05  LINE 01 COL 01  "CUSTOMER DATA EDITOR".
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
               
       01  SCREEN-MENU.
           03  SCREEN-MENU-OPTIONS.
               05  LINE 3  COL 30  VALUE "1. EDIT FIRST NAME".
               05  LINE 5  COL 30  VALUE "2. EDIT LAST NAME".
               05  LINE 7  COL 30  VALUE "3. EDIT STREET".
               05  LINE 9  COL 30  VALUE "4. EDIT CITY".
               05  LINE 11 COL 30  VALUE "5. EDIT STATE".
               05  LINE 13 COL 30  VALUE "6. EDIT ZIP CODE".
               05  LINE 15 COL 30  VALUE "7. EDIT CREDIT CARD NUMBER".
               05  LINE 17 COL 30  VALUE "8. EDIT EMAIL ADDRESS".
               05  LINE 19 COL 30  VALUE "9. EDIT ALL".
           03  SCREEN-MENU-NAVIGATION.
               05  LINE 21 COL 30 VALUE "SELECT ACTION:".
               05  LINE 21 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
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
           
       01  SCREEN-SEARCH-CUSTOMER.
           03  SCREEN-SEARCH-OPTIONS.
               05  LINE 3  COL 30 VALUE "1. SEARCH BY MEMBER ID NUM".
               05  LINE 5  COL 30 VALUE "2. SEARCH BY MEMBER NAME".
               05  LINE 7  COL 30 VALUE "3. SEARCH BY ADDRESS".         
               05  LINE 11 COL 30 VALUE "4. SEARCH BY CREDIT CARD".
               05  LINE 13 COL 30 VALUE "5. SEARCH BY EMAIL".
           03  SCREEN-SEARCH-NAVIGATION.
               05  LINE 15 COL 30 VALUE "SELECT ACTION: ".
               05  LINE 15 COL 45 PIC X TO WS-SEARCH-SELECTION AUTO.    
           03  SCREEN-SEARCH-ID.                                        
               05  LINE 15 COL 30 VALUE "                             ".
               05  LINE 15 COL 30 VALUE "ENTER ID NUM:".
               05  LINE 15 COL 44 PIC X(20) TO WS-SEARCH-ID.
           03  SCREEN-SEARCH-ID-CLEAR.                                  
               05  LINE 15 COL 30 VALUE "                             ".
           03  SCREEN-SEARCH-NAME.                                      
               05  LINE 15 COL 30 VALUE "                             ".
               05  LINE 15 COL 30 VALUE "ENTER MEMBER FIRST NAME".
               05  LINE 15 COL 49 PIC X(20) TO WS-SEARCH-FNAME.
               05  LINE 16 COL 30 VALUE "ENTER MEMBER LAST NAME".
               05  LINE 16 COL 49 PIC X(20) TO WS-SEARCH-FNAME.
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
               05  LINE 9  COL 30 VALUE "                             ". 
               05  LINE 11 COL 30 VALUE "                             ".
               05  LINE 13 COL 30 VALUE "                             ".
               05  LINE 15 COL 30 VALUE "                             ".
               05  LINE 16 COL 30 VALUE "                             ".
               05  LINE 17 COL 30 VALUE "                             ".
               05  LINE 18 COL 30 VALUE "                             ".
               
       01  SCREEN-EDITING.
           03  SCREEN-EDIT-ALL.
               05  LINE 03 COL 01 VALUE "ORIGINAL VALUES".
               05  LINE 05 COL 01 VALUE "MEMBER ID:".
               05  LINE 05 COL 15 PIC X(20) FROM  WS-ORIG-ID.
               05  LINE 05 COL 01 VALUE "FIRST NAME:".
               05  LINE 06 COL 15 PIC X(20) FROM WS-ORIG-FNAME. 
               05  LINE 07 COL 01 VALUE "LAST NAME:". 
               05  LINE 07 COL 15 PIC X(20) FROM WS-ORIG-LNAME. 
               05  LINE 08 COL 01 VALUE "STREET:".
               05  LINE 08 COL 15 PIC X(20) FROM WS-ORIG-STREET.
               05  LINE 09 COL 01 VALUE "CITY:".  
               05  LINE 09 COL 15 PIC X(20) FROM WS-ORIG-CITY.  
               05  LINE 10 COL 01 VALUE "STATE:". 
               05  LINE 10 COL 15 PIC X(2)  FROM WS-ORIG-STATE. 
               05  LINE 11 COL 01 VALUE "ZIP:". 
               05  LINE 11 COL 15 PIC 9(5)  FROM WS-ORIG-ZIP.   
               05  LINE 12 COL 01 VALUE "CREDIT CARD:".   
               05  LINE 12 COL 15 PIC X(19) FROM WS-ORIG-CC.    
               05  LINE 13 COL 01 VALUE "EMAIL:".  
               05  LINE 13 COL 15 PIC X(20) FROM WS-ORIG-EMAIL. 
               05  LINE 03 COL 40 VALUE "EDITED VALUES".
               05  LINE 05 COL 40 VALUE "MEMBER ID:".
               05  LINE 05 COL 55 PIC X(20) TO WS-EDIT-ID.  
               05  LINE 06 COL 40 VALUE "FIRST NAME:".
               05  LINE 06 COL 55 PIC X(20) TO WS-EDIT-FNAME.
               05  LINE 07 COL 40 VALUE "LAST NAME:".
               05  LINE 07 COL 55 PIC X(20) TO WS-EDIT-LNAME.
               05  LINE 08 COL 40 VALUE "STREET:".
               05  LINE 08 COL 55 PIC X(20) TO WS-EDIT-STREET.
               05  LINE 09 COL 40 VALUE "CITY:".
               05  LINE 09 COL 55 PIC X(20) TO WS-EDIT-CITY. 
               05  LINE 10 COL 40 VALUE "STATE". 
               05  LINE 10 COL 55 PIC X(2)  TO WS-EDIT-STATE. 
               05  LINE 11 COL 40 VALUE "ZIP:".
               05  LINE 11 COL 55 PIC 9(5)  TO WS-EDIT-ZIP.
               05  LINE 12 COL 40 VALUE "CREDIT CARD:".   
               05  LINE 12 COL 55 PIC X(19) TO WS-EDIT-CC.   
               05  LINE 13 COL 40 VALUE "EMAIL:".
               05  LINE 13 COL 55 PIC X(20) TO WS-EDIT-EMAIL.
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

