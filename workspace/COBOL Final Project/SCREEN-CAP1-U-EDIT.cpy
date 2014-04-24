      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-EDIT                              *
      * AUTHOR        : HENRY HURLOCKER                                 * 
      * EDITED BY     : DEVIN LEAMAN                                    *
      * CREATION DATE : 4/20/14                                         *
      * PURPOSE       : USER EDITING SCREEN                             *
      *******************************************************************
       
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
           
       01  MAIN-SCREEN.
           03  BLANK SCREEN.
           03  LINE 01 COL 01 VALUE 'G3-CAP1-U-EDIT'.
           03  LINE 01 COL 38 VALUE 'TEAM 3'.
           03  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
           03  LINE 01 COL 73 VALUE '/'.
           03  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
           03  LINE 01 COL 76 VALUE '/'.
           03  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
           03  LINE 06 COL 35 VALUE 'Capital One     '.
           03  LINE 08 COL 32 VALUE 'Account Search  '.
           03  LINE 10 COL 30 VALUE '1) Account ID   '.
           03  LINE 11 COL 30 VALUE '2) Last Name    '.
           03  LINE 12 COL 30 VALUE '3) Email Address'.
           03  LINE 13 COL 30 VALUE '4) Phone Number '.
           03  LINE 15 COL 30 VALUE 'Enter a number: '.
           03  SEARCH-CHOICE.
               05  LINE 15 COL 45 PIC X     TO WS-SEARCH-NUM 
                                            FULL REQUIRED AUTO.
               05  LINE 16 COL 30 VALUE '(Exit = 0)'.
               05  LINE 16 COL 55 PIC X(10) FROM CAP1-MSG. 
               
       01  IDSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEID.
               05  LINE 01 COL 01 PIC X(20) FROM CAP1-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE 'Capital One User Edit'.
               05  LINE 08 COL 35 VALUE 'Select Account'.
               05  LINE 10 COL 19 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 40 PIC X(8)  TO CAP1-SEARCH 
                                            FULL REQUIRED.
               05  LINE 10 COL 49 VALUE '(99999999 = Exit)'.
               05  LINE 11 COL 35 PIC X(10) FROM CAP1-MSG.
               
       01  LNAME-SCREEN.
           03  BLANK SCREEN.
           03  HEADER.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-EDIT'.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE 'Capital One     '.
               05  LINE 08 COL 32 VALUE 'Last Name Search  '.
           03  LNAME-INQ.
               05  LINE 10 COL 30 VALUE 'Enter Last Name:'.
               05  LINE 10 COL 47 PIC X(20)  TO CAP1-SEARCH.
               
       01  EMAIL-SCREEN.
           03  BLANK SCREEN.
           03  HEADER.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-EDIT'.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE 'Capital One     '.
               05  LINE 08 COL 32 VALUE 'Email Address Search  '.
           03  EMAIL-INQ.
               05  LINE 10 COL 30 VALUE 'Enter Email Address:'.
               05  LINE 10 COL 51 PIC X(35)  TO CAP1-SEARCH.  
               
       01  PHONE-SCREEN.
           03  BLANK SCREEN.
           03  HEADER.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-EDIT'.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE 'Capital One     '.
               05  LINE 08 COL 32 VALUE 'Phone Number Search  '.
           03  PHONE-INQ.
               05  LINE 10 COL 30 VALUE 'Enter Phone Number:'.
               05  LINE 10 COL 51 PIC X(10)  TO CAP1-SEARCH.  
               
       01  CHECKSCREEN.
           03  BLANK SCREEN. 
           03  CHECK.
               05  LINE 01 COL 01 PIC X(20) FROM CAP1-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 34 VALUE 'CHECK ACCOUNT'.
               05  LINE 08 COL 26 VALUE 'ID'.
               05  LINE 08 COL 45 PIC X(8)  FROM CAP1-ORIG-ID.
               05  LINE 09 COL 26 VALUE 'First Name'.
               05  LINE 09 COL 45 PIC X(20) FROM CAP1-ORIG-F-NAME.
               05  LINE 10 COL 26 VALUE 'Last Name'.
               05  LINE 10 COL 45 PIC X(20) FROM CAP1-ORIG-L-NAME.  
               05  LINE 11 COL 26 VALUE 'Phone Number'.
               05  LINE 11 COL 45 PIC X(11) FROM CAP1-ORIG-PHONE.
               05  LINE 12 COL 26 VALUE 'Address'.
               05  LINE 12 COL 45 PIC X(20) FROM CAP1-ORIG-ADDRESS.                                                                
               05  LINE 13 COL 26 VALUE 'Zip'.
               05  LINE 13 COL 45 PIC X(5)  FROM CAP1-ORIG-ZIP.
               05  line 14 COL 26 VALUE 'Email'.
               05  LINE 14 COL 45 PIC X(30) FROM CAP1-ORIG-EMAIL.
               05  line 15 COL 26 value 'Limit'.
               05  LINE 15 COL 45 PIC 9(4)  FROM CAP1-ORIG-LIMIT.
               05  LINE 16 COL 26 VALUE 'Balance'.
               05  LINE 16 COL 45 PIC 9(4).99 FROM CAP1-ORIG-BAL.
               05  LINE 19 COL 28 VALUE 'Is this your information?'.
               05  LINE 21 COL 30 PIC X     TO CAP1-CHECK AUTO.
               05  LINE 21 COL 32 VALUE "Press 'Y' to confirm".     
                                                                           
       01  EDITSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 PIC X(20) FROM CAP1-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE 'EDIT ACCOUNT'.
               05  LINE 08 COL 16 VALUE 'Current'.
               05  LINE 08 COL 60 VALUE 'Updated'.
           03  E-ID.
               05  LINE 10 COL 01 VALUE 'ID'.
               05  LINE 10 COL 14 PIC X(23) FROM CAP1-ORIG-ID.           
               05  LINE 10 COL 42 VALUE 'ID'.
               05  LINE 10 COL 60 PIC X(8)  TO   CAP1-EDIT-ID.
           03  E-FNAME.
               05  LINE 11 COL 01 VALUE 'First Name'.
               05  LINE 11 COL 14 PIC X(23) FROM CAP1-ORIG-F-NAME.
               05  LINE 11 COL 42 VALUE 'First Name'.
               05  LINE 11 COL 60 PIC X(20) TO   CAP1-EDIT-F-NAME.
           03  E-LNAME.
               05  LINE 12 COL 01 VALUE 'Last Name'.
               05  LINE 12 COL 14 PIC X(20) FROM CAP1-ORIG-L-NAME.
               05  LINE 12 COL 42 VALUE 'Last Name'.
               05  LINE 12 COL 60 PIC X(20) TO   CAP1-EDIT-L-NAME. 
           03  E-PHONE.
               05  LINE 13 COL 01 VALUE 'Phone Number'.
               05  LINE 13 COL 14 PIC X(11) FROM CAP1-ORIG-PHONE.
               05  LINE 13 COL 42 VALUE 'Phone Number'.
               05  LINE 13 COL 60 PIC X(11) TO   CAP1-EDIT-PHONE.
           03  E-ADDRESS.
               05  LINE 14 COL 01 VALUE 'Address'.
               05  LINE 14 COL 14 PIC X(20) FROM CAP1-ORIG-ADDRESS.       
               05  LINE 14 COL 42 VALUE 'Address'.
               05  LINE 14 COL 60 PIC X(20) TO   CAP1-EDIT-ADDRESS.
           03  E-ZIP.
               05  LINE 15 COL 01 VALUE 'Zip'.
               05  LINE 15 COL 14 PIC X(5) FROM CAP1-ORIG-ZIP.
               05  LINE 15 COL 42 VALUE 'Zip'.
               05  LINE 15 COL 60 PIC X(5)  TO   CAP1-EDIT-ZIP.
           03  E-EMAIL.
               05  LINE 16 COL 01 VALUE 'Email'.
               05  LINE 16 COL 14 PIC X(35) FROM CAP1-ORIG-EMAIL.
               05  LINE 16 COL 42 VALUE 'Email'.
               05  LINE 16 COL 48 PIC X(32) TO   CAP1-EDIT-EMAIL.
           03  E-LIMIT.
               05  LINE 17 COL 01 VALUE 'Limit'.
               05  LINE 17 COL 14 PIC 9(4) FROM CAP1-ORIG-LIMIT.
               05  LINE 17 COL 42 VALUE 'Limit'.
               05  LINE 17 COL 60 PIC 9(4) TO  CAP1-EDIT-LIMIT.

           03  E-SEL.
               05  LINE 21 COL 23 PIC X     TO CAP1-CHECK AUTO.
               05  LINE 21 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 21 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 22 COL 29 VALUE '(all other keys start over)'.
           03  E-CONFIRM.