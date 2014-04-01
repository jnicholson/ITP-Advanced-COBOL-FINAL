      *******************************************************************
      * AUTHOR       : JESSE NICHOLSON                                  *
      * CREATION DATE: 3/26/14                                          *
      * LAST EDIT    : 3/26/14                                          *
      * PURPOSE      : SCREENS FOR VISA ISSUER PAGES INCLUDED WITHIN    *
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
               05  WS-SEARCH-ID            PIC X(6).
               05  WS-SEARCH-NAME         PIC X(40).
               05  WS-SEARCH-ADDRESS.
                   07  WS-SEARCH-ADDRESS-STREET    PIC X(20).
                   07  WS-SEARCH-ADDRESS-ZIP       PIC 9(5).
               05  WS-SEARCH-CREDITCARD    PIC 9(19).
               
       01  WS-EDITOR.
           03  WS-EDITOR.
               05  WS-ISS-ID          PIC X(6).
               05  WS-ISS-NAME        PIC X(40).
               05  WS-ISS-ADDRESS     PIC X(40).
               05  WS-ISS-ZIP         PIC 9(5).
               05  WS-ISS-CC          PIC X(19).
               05  WS-ISS-EMAIL       PIC X(20).
               
       SCREEN SECTION.
       01  SCREEN-TITLE.
           03 SCREEN-TITLE-LINE-ONE.
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
               05  LINE 13 COL 30  VALUE "1.  SEARCH ISSUERS".
               05  LINE 15 COL 30  VALUE "2.  ADD ISSUER".
               05  LINE 17 COL 30  VALUE "3.  EDIT/DELETE ISSUER".
               05  LINE 19 COL 30  VALUE "B.  GO BACK".
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
      *-----------------------------------------------------------------
       01  SCREEN-SEARCH-ISSUER.
           03  SCREEN-SEARCH-OPTIONS.
               05  LINE 3  COL 30 VALUE "1. SEARCH BY ISSUER ID NUM".
               05  LINE 5  COL 30 VALUE "2. SEARCH BY ISSUER NAME".
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
               05  LINE 15 COL 30 VALUE "ENTER ISSUER FIRST NAME".
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