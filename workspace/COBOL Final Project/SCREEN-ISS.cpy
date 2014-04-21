      *******************************************************************
      * FILE         : SCREEN-ISS                                       *
      * AUTHOR       : Dustyne Brown                                    *
      * DATE         : 4/8/14                                           *
      * LAST EDIT    : 4/12/14                                          *
      * PURPOSE      : PROVIDE ALL SCREENS NEEDED IN ORDER TO PROVIDE   *
      *                    ALL MENUS NEEDED FOR ISSUER MANAGEMENT.      *
      *******************************************************************     
              
       01  SCREEN-TITLE.
           03 SCREEN-TITLE-LINE-ONE.
               05  BLANK SCREEN.
               05  LINE 01 COL 01  "VISA ISSUER".
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
                   
      *-----------------------------------------------------------------*
       
       01  SCREEN-ISSUER-MENU.
           03  SCREEN-MENU-TITLE.
               05  LINE 08 COL 32  VALUE "VISA ISSUER MENU". 
           03  SCREEN-MENU-OPTIONS.                
               05  LINE 10 COL 32  VALUE "1) Search Issuers".           
               05  LINE 11 COL 32  VALUE "2) Add Issuer".               
               05  LINE 12 COL 32  VALUE "3) Edit Issuer".
               05  LINE 13 COL 32  VALUE "4) Delete Issuer".
               05  LINE 14 COL 32  VALUE "B) Previous Menu".            
           03  SCREEN-MENU-NAVIGATION.                                      
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-MENU-CLEAR.                                       
               05  LINE 08 COL 30  VALUE "                            ".
               05  LINE 10 COL 30  VALUE "                            ".
               05  LINE 11 COL 30  VALUE "                            ".
               05  LINE 13 COL 30  VALUE "                            ".
               05  LINE 15 COL 30  VALUE "                            ".
               05  LINE 17 COL 30  VALUE "                            ".
               05  LINE 19 COL 30  VALUE "                            ".
               05  LINE 21 COL 30  VALUE "                            ".
               
      *-----------------------------------------------------------------*
       
       01  SCREEN-ISSUER-SEARCH.
           03  SCREEN-SEARCH-TITLE.
               05  LINE 08 COL 31 VALUE "VISA ISSUER SEARCH".
           03  SCREEN-SEARCH-EDITOR-TITLE.
               05  LINE 08 COL 31 VALUE "VISA EDITOR SEARCH".
           03  SCREEN-SEARCH-DELETE-TITLE.
               05  LINE 08 COL 31 VALUE "VISA DELETE SEARCH".
           03  SCREEN-SEARCH-MENU.
               05  LINE 10 COL 31 VALUE "1) Search by ID Num".
               05  LINE 11 COL 31 VALUE "2) Search by Name".
               05  LINE 12 COL 31 VALUE "3) Search by State".
               05  LINE 13 COL 31 VALUE "4) Search by Email".
               05  LINE 14 COL 31 VALUE "5) Search by Phone".
               05  LINE 15 COL 31 VALUE "0) Return to Previous Menu".
           03  SCREEN-SEARCH-NAVIGATION.                                
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
               
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
               05  LINE 19 COL 25 VALUE "1) Return to Main Issuer Menu".
               05  LINE 20 COL 25 VALUE "2) Return to Search Menu".                                   
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-SEARCH-NOT-FOUND-ID.
               05  LINE 08 COL 32 VALUE "SEARCH BY ID NUM".             
               05  LINE 10 COL 15 VALUE "Unable to Find Record With ID N
      -                                 "um:".
               05  LINE 10 COL 50 PIC 9(3) FROM WS-ORIG-ID.
               05  LINE 12 COL 25 VALUE "1) Return to Main Issuer Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Search Menu".                                       
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.    
           03  SCREEN-SEARCH-NOT-FOUND-NAME.                            
               05  LINE 08 COL 33 VALUE "SEARCH BY NAME".               
               05  LINE 10 COL 15 VALUE "Unable to Find Record With Name
      -                                 ":".
               05  LINE 10 COL 50 PIC X(20) FROM WS-ORIG-NAME.
               05  LINE 12 COL 25 VALUE "1) Return to Main Issuer Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Search Menu".                                                                 
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-SEARCH-NOT-FOUND-STATE.
               05  LINE 08 COL 32 VALUE "SEARCH BY STATE".              
               05  LINE 10 COL 15 VALUE "Unable to Find Record With Stat
      -                                 "e:".
               05  LINE 10 COL 50 PIC X(2) FROM WS-ORIG-STATE.
               05  LINE 12 COL 25 VALUE "1) Return to Main Issuer Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Search Menu".                                                                
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-SEARCH-NOT-FOUND-EMAIL.
               05  LINE 08 COL 32 VALUE "SEARCH BY EMAIL".              
               05  LINE 10 COL 15 VALUE "Unable to Find Record With E-Ma
      -                                 "il:".
               05  LINE 10 COL 50 PIC X(20) FROM WS-ORIG-EMAIL.
               05  LINE 12 COL 25 VALUE "1) Return to Main Issuer Menu".                          
               05  LINE 13 COL 25 VALUE "2) Return to Search Menu".                                       
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-SEARCH-NOT-FOUND-PHONE.
               05  LINE 08 COL 32 VALUE "SEARCH BY PHONE".              
               05  LINE 10 COL 12 VALUE "Unable to Find Record With Phon
      -                                 "e Num:".
               05  LINE 10 COL 50 PIC X(11) FROM WS-ORIG-PHONE.
               05  LINE 12 COL 25 VALUE "1) Return to Main Issuer Menu".
               05  LINE 13 COL 25 VALUE "2) Return to Search Menu".                                                                 
               05  LINE 22 COL 30 VALUE "SELECT ACTION:".                   
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
               
      *-----------------------------------------------------------------*
               
       01  SCREEN-ISSUER-ADD.
           03  SCREEN-ISSUER-ADD-TITLE.
               05  LINE 08 COL 29 VALUE "VISA ISSUER ADD".
           03  SCREEN-ISSUER-ADD-DISPLAY.
               05  LINE 08 COL 29 VALUE "ISSUER DISPLAY RECORD".
               05  LINE 10 COL 30 VALUE "ID Num:".
               05  LINE 10 COL 40 PIC 9(3) FROM WS-ORIG-ID.
               05  LINE 11 COL 30 VALUE "Name:".
               05  LINE 12 COL 30 VALUE "Address:".
               05  LINE 13 COL 31 VALUE "Street:".
               05  LINE 14 COL 31 VALUE "City:".
               05  LINE 15 COL 31 VALUE "Zip:".
               05  LINE 16 COL 31 VALUE "State:".
               05  LINE 17 COL 30 VALUE "E-Mail".
               05  LINE 18 COL 30 VALUE "Phone:".
           03  SCREEN-ISSUER-ADD-NAME.
               05  LINE 11 COL 40 PIC X(20) TO  WS-ORIG-NAME.
           03  SCREEN-ISSUER-ADD-STREET.
               05  LINE 13 COL 40 PIC X(20) TO WS-ORIG-STREET.
           03  SCREEN-ISSUER-ADD-CITY.
               05  LINE 14 COL 40 PIC X(20) TO WS-ORIG-CITY.
           03  SCREEN-ISSUER-ADD-ZIP.
               05  LINE 15 COL 40 PIC 9(5) TO WS-ORIG-ZIP.
           03  SCREEN-ISSUER-ADD-STATE.
               05  LINE 16 COL 40 PIC X(2) TO WS-ORIG-STATE.
           03  SCREEN-ISSUER-ADD-EMAIL.
               05  LINE 17 COL 40 PIC X(20) TO WS-ORIG-EMAIL.
           03  SCREEN-ISSUER-ADD-PHONE.
               05  LINE 18 COL 40 PIC 9(11) TO WS-ORIG-PHONE.
           03  SCREEN-ISSUER-ADD-ACCEPT.                                     
               05  LINE 22 COL 21 VALUE "1 TO SAVE, 2 TO CANCEL:".       
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO. 
               
      *-----------------------------------------------------------------*
               
       01  SCREEN-ISSUER-EDITOR.
           03  SCREEN-ISSUER-EDIT-TITLE.
               05  LINE 08 COL 29 VALUE "VISA ISSUER EDITOR".
           03  SCREEN-ISSUER-ORIG.
               05  LINE 10 COL 01 VALUE "Original ID Num:".
               05  LINE 10 COL 18 PIC 9(3) FROM WS-ORIG-ID.
               05  LINE 11 COL 01 VALUE "Original Name:".
               05  LINE 11 COL 18 PIC X(20) FROM  WS-ORIG-NAME.
               05  LINE 12 COL 01 VALUE "Original Address:".
               05  LINE 13 COL 02 VALUE "Original Street:".
               05  LINE 13 COL 18 PIC X(20) FROM WS-ORIG-STREET.
               05  LINE 14 COL 02 VALUE "Original City:".
               05  LINE 14 COL 18 PIC X(20) FROM WS-ORIG-CITY.
               05  LINE 15 COL 02 VALUE "Original Zip:".
               05  LINE 15 COL 18 PIC 9(5) FROM WS-ORIG-ZIP.
               05  LINE 16 COL 02 VALUE "Original State:".
               05  LINE 16 COL 18 PIC X(2) FROM WS-ORIG-STATE.
               05  LINE 17 COL 01 VALUE "Original E-Mail".
               05  LINE 17 COL 18 PIC X(20) FROM WS-ORIG-EMAIL.
               05  LINE 18 COL 01 VALUE "Original Phone:".
               05  LINE 18 COL 18 PIC 9(11) FROM WS-ORIG-PHONE.
           03  SCREEN-ISSUER-EDIT.
               05  LINE 10 COL 40 VALUE "Edited ID Num:".
               05  LINE 10 COL 58 PIC 9(3) FROM WS-ORIG-ID.
               05  LINE 11 COL 40 VALUE "Edited Name:".
               05  LINE 12 COL 40 VALUE "Edited Address:".
               05  LINE 13 COL 41 VALUE "Edited Street:".
               05  LINE 14 COL 41 VALUE "Edited City:".
               05  LINE 15 COL 41 VALUE "Edited Zip:".
               05  LINE 16 COL 41 VALUE "Edited State:".
               05  LINE 17 COL 40 VALUE "Edited E-Mail:".
               05  LINE 18 COL 40 VALUE "Edited Phone:".
           03  SCREEN-ISSUER-EDIT-NAME. 
               05  LINE 11 COL 58 PIC X(20) TO WS-EDIT-NAME.
           03  SCREEN-ISSUER-EDIT-STREET.
               05  LINE 13 COL 58 PIC X(20) TO WS-EDIT-STREET.
           03  SCREEN-ISSUER-EDIT-CITY. 
               05  LINE 14 COL 58 PIC X(20) TO WS-EDIT-CITY.
           03  SCREEN-ISSUER-EDIT-ZIP.  
               05  LINE 15 COL 58 PIC 9(5)  TO WS-EDIT-ZIP.
           03  SCREEN-ISSUER-EDIT-STATE.
               05  LINE 16 COL 58 PIC X(2)  TO WS-EDIT-STATE.
           03  SCREEN-ISSUER-EDIT-EMAIL.
               05  LINE 17 COL 58 PIC X(20) TO WS-EDIT-EMAIL.
           03  SCREEN-ISSUER-EDIT-PHONE.
               05  LINE 18 COL 58 PIC 9(11) TO WS-EDIT-PHONE.
                   
      *-----------------------------------------------------------------*
       
       01  SCREEN-ISSUER-DELETE.
           03  SCREEN-ISSUER-DELETE-TITLE.
               05  LINE 08 COL 31 VALUE "VISA DELETE ISSUER".           
           03  SCREEN-ISSUER-DELETE-DISPLAY.                            
               05  LINE 10 COL 26 VALUE "Really delete the following rec
      -                                 "ord?".    
               05  LINE 11 COL 34 VALUE "ID:".
               05  LINE 11 COL 43 PIC 9(3) FROM WS-ORIG-ID.
               05  LINE 12 COL 34 VALUE "Name:".
               05  LINE 12 COL 43 PIC X(20) FROM WS-ORIG-NAME.
               05  LINE 13 COL 34 VALUE "Address:".
               05  LINE 14 COL 35 VALUE "Street:".
               05  LINE 14 COL 43 PIC X(20) FROM WS-ORIG-STREET.
               05  LINE 15 COL 35 VALUE "City:".
               05  LINE 15 COL 43 PIC X(20) FROM WS-ORIG-CITY.
               05  LINE 16 COL 35 VALUE "Zip:".
               05  LINE 16 COL 43 PIC 9(5) FROM WS-ORIG-ZIP.
               05  LINE 17 COL 35 VALUE "State:".
               05  LINE 17 COL 43 PIC X(2) FROM WS-ORIG-STATE.
               05  LINE 18 COL 34 VALUE "E-Mail:".
               05  LINE 18 COL 43 PIC X(20) FROM WS-ORIG-EMAIL.
               05  LINE 19 COL 34 VALUE "Phone:".
               05  LINE 19 COL 43 PIC 9(11) FROM WS-ORIG-PHONE.
           03  SCREEN-DELETE-NAVIGATION.                                
               05  LINE 21 COL 35 VALUE "1 DELETE".  
               05  LINE 22 COL 35 VALUE "2 CANCEL".
               05  LINE 22 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.