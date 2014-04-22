      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-INQ                               *
      * AUTHOR        : RYAN TIMMERMAN                                  *     
      * CREATION DATE : 4/15/14                                          *
      * PURPOSE       : USER INQUIRY SCREEN                             *
      *******************************************************************
       
      *-----------------------------------------------------------------*
       01 SCREEN-SEARCH-MENUS.
           03  SCREEN-SEARCH-ID.
               05  LINE 08 COL 32 VALUE "SEARCH BY ID NUM".
               05  LINE 10 COL 23 VALUE "Enter Issuer ID:".
               05  LINE 10 COL 41 PIC 9(3) TO WS-ORIG-ID.
           03  SCREEN-SEARCH-NAME.
               05  LINE 08 COL 33 VALUE "SEARCH BY NAME".
               05  LINE 10 COL 27 VALUE "Enter Name:".
               05  LINE 10 COL 40 PIC X(20) TO WS-ORIG-NAME.
           03  SCREEN-SEARCH-STATE.
               05  LINE 08 COL 32 VALUE "SEARCH BY STATE".
               05  LINE 10 COL 27 VALUE "Enter State:".
               05  LINE 10 COL 41 PIC X(2) TO WS-ORIG-STATE.
           03  SCREEN-SEARCH-EMAIL.
               05  LINE 08 COL 33 VALUE "SEARCH BY EMAIL".
               05  LINE 10 COL 26 VALUE "Enter E-Mail:".
               05  LINE 10 COL 41 PIC X(20) TO WS-ORIG-EMAIL.
           03  SCREEN-SEARCH-PHONE.
               05  LINE 08 COL 33 VALUE "SEARCH BY PHONE".
               05  LINE 10 COL 34 VALUE "Enter Phone:".
               05  LINE 10 COL 55 PIC 9(11) TO WS-ORIG-PHONE.
           03  SCREEN-SEARCH-CLEAR.
               05  LINE 08 COL 33 VALUE "                             ".
               05  LINE 10 COL 10 VALUE "                             ".
               05  LINE 10 COL 34 VALUE "                             ".
               05  LINE 10 COL 55 VALUE "                             ".
               05  LINE 12 COL 25 VALUE "                             ".
               05  LINE 13 COL 25 VALUE "                             ".                                       
               05  LINE 22 COL 30 VALUE "                             ". 
           03  SCREEN-SEARCH-DISPLAY-REC.
               05  LINE 08 COL 29 VALUE "ISSUER DISPLAY RECORD".
               05  LINE 10 COL 20 VALUE "Original ID Num:".
               05  LINE 10 COL 40 PIC 9(3) FROM WS-ORIG-ID.
               05  LINE 11 COL 20 VALUE "Original Name:".
               05  LINE 11 COL 40 PIC X(20) FROM  WS-ORIG-NAME.
               05  LINE 12 COL 20 VALUE "Original Address:".
               05  LINE 13 COL 21 VALUE "Original Street:".
               05  LINE 13 COL 40 PIC X(20) FROM WS-ORIG-STREET.
               05  LINE 14 COL 21 VALUE "Original City:".
               05  LINE 14 COL 40 PIC X(20) FROM WS-ORIG-CITY.
               05  LINE 15 COL 21 VALUE "Original Zip:".
               05  LINE 15 COL 40 PIC 9(5) FROM WS-ORIG-ZIP.
               05  LINE 16 COL 21 VALUE "Original State:".
               05  LINE 16 COL 40 PIC X(2) FROM WS-ORIG-STATE.
               05  LINE 16 COL 20 VALUE "Original E-Mail".
               05  LINE 16 COL 40 PIC X(20) FROM WS-ORIG-EMAIL.
               05  LINE 17 COL 20 VALUE "Original Phone:".
               05  LINE 17 COL 40 PIC 9(11) FROM WS-ORIG-PHONE.
               05  LINE 19 COL 25 VALUE "1) Return to Search Menu".
               05  LINE 20 COL 25 VALUE "2) Return to Main Issuer Menu".                                   
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-SEARCH-NOT-FOUND-ID.
               05  LINE 08 COL 32 VALUE "SEARCH BY ID NUM".             
               05  LINE 10 COL 15 VALUE "Unable to Find Record With ID N
      -                                 "um:".
               05  LINE 10 COL 50 PIC 9(3) FROM WS-ORIG-ID.
               05  LINE 12 COL 25 VALUE "1) Return to Search Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Main Issuer Menu".                                       
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.    
           03  SCREEN-SEARCH-NOT-FOUND-NAME.                            
               05  LINE 08 COL 33 VALUE "SEARCH BY NAME".               
               05  LINE 10 COL 15 VALUE "Unable to Find Record With Name
      -                                 ":".
               05  LINE 10 COL 50 PIC X(20) FROM WS-ORIG-NAME.
               05  LINE 12 COL 25 VALUE "1) Return to Search Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Main Issuer Menu".                                       
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-SEARCH-NOT-FOUND-STATE.
               05  LINE 08 COL 32 VALUE "SEARCH BY STATE".              
               05  LINE 10 COL 15 VALUE "Unable to Find Record With Stat
      -                                 "e:".
               05  LINE 10 COL 50 PIC X(2) FROM WS-ORIG-STATE.
               05  LINE 12 COL 25 VALUE "1) Return to Search Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Main Issuer Menu".                                       
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-SEARCH-NOT-FOUND-EMAIL.
               05  LINE 08 COL 32 VALUE "SEARCH BY EMAIL".              
               05  LINE 10 COL 15 VALUE "Unable to Find Record With E-Ma
      -                                 "il:".
               05  LINE 10 COL 50 PIC X(20) FROM WS-ORIG-EMAIL.
               05  LINE 12 COL 25 VALUE "1) Return to Search Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Main Issuer Menu".                                       
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-SEARCH-NOT-FOUND-PHONE.
               05  LINE 08 COL 32 VALUE "SEARCH BY PHONE".              
               05  LINE 10 COL 12 VALUE "Unable to Find Record With Phon
      -                                 "e Num:".
               05  LINE 10 COL 50 PIC X(11) FROM WS-ORIG-PHONE.
               05  LINE 12 COL 25 VALUE "1) Return to Search Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Main Issuer Menu".                                       
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
               
      *-----------------------------------------------------------------*

