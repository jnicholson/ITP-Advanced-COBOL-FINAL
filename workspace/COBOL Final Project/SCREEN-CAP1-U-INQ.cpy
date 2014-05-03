      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-INQ                               *
      * AUTHOR        : RYAN TIMMERMAN                                  * 
      * EDITED BY     : DEVIN LEAMAN                                    *
      * CREATION DATE : 4/15/14                                         *
      * PURPOSE       : USER INQUIRY SCREEN                             *
      *******************************************************************
       
       01  MAIN-SCREEN.
           03  BLANK SCREEN.
           03  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
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
               05  LINE 16 COL 42 PIC X(20) FROM CAP1-MSG.

       01  ID-SCREEN.
           03  BLANK SCREEN.
           03  HEADER.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE 'Capital One     '.
               05  LINE 08 COL 32 VALUE 'Account ID Search  '.
           03  ID-INQ.
               05  LINE 10 COL 30 VALUE 'Enter ID number: '.
               05  LINE 10 COL 46 PIC X(8)  TO CAP1-SEARCH 
                                            FULL REQUIRED AUTO.
       01  LNAME-SCREEN.
           03  BLANK SCREEN.
           03  HEADER.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
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
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
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
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
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
               05  LINE 10 COL 51 PIC X(11)  TO CAP1-SEARCH AUTO.
                                                                                                                                                                                                                     
       01  ACCNT-DISP.
           03  BLANK SCREEN.
           03  HEADER.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE 'Capital One     '.
               05  LINE 08 COL 32 VALUE 'Account Information'.
           03  ACCNT-NUM.
               05  LINE 10 COL 28 VALUE 'Account Number:'.
               05  LINE 10 COL 44 PIC 9(8)      FROM WS-ACCNT-NUM.
           03  FNAME.
               05  LINE 11 COL 28 VALUE 'First Name:'.
               05  LINE 11 COL 44 PIC X(15) FROM WS-FNAME.
           03  LNAME.
               05  LINE 12 COL 28 VALUE 'Last Name:'.
               05  LINE 12 COL 44 PIC X(15) FROM WS-LNAME.
           03  PHONE-NUMBER.
               05  LINE 13 COL 28 VALUE 'Phone Number:'.
               05  LINE 13 COL 44 PIC 9(10) FROM WS-PHONE.
           03  ADDRESS-VAR.
               05  LINE 14 COL 28 VALUE 'Address:'.
               05  LINE 14 COL 44 PIC X(25) FROM WS-ADDRESS.
           03  ZIP-CODE.
               05  LINE 15 COL 28 VALUE 'Zip Code:'.
               05  LINE 15 COL 44 PIC 9(5)  FROM WS-ZIP.
           03  EMAIL.
               05  LINE 16 COL 28 VALUE 'Email Address:'.
               05  LINE 16 COL 44 PIC X(35) FROM WS-EMAIL.
           03  CC-LIMIT.
               05  LINE 17 COL 28 VALUE 'Limit:'.
               05  LINE 17 COL 44 PIC X(4)  FROM WS-LIMIT.
           03  ACC-BAL.
               05  LINE 18 COL 28 VALUE 'Balance:'.
               05  LINE 18 COL 41 PIC ZZ,ZZZ.99 FROM WS-BAL.
           03  CONFIRMATION.
               05  LINE 19 COL 28 VALUE 'Search another account? (Y/N)'.
               05  LINE 19 COL 58 PIC X TO WS-FLAG.