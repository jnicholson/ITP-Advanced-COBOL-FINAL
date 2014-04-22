      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-INQ                               *
      * AUTHOR        : RYAN TIMMERMAN                                  * 
      * EDITED BY     : DEVIN LEAMAN                                    *
      * CREATION DATE : 4/15/14                                         *
      * PURPOSE       : USER INQUIRY SCREEN                             *
      *******************************************************************
       
      *-----------------------------------------------------------------*
       01  FIRST-SCREEN.
           03  ACCNT-NUM-INQ.
               05  BLANK SCREEN.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Capital One'.
               05  LINE 08 COL 35 VALUE 'Account Inquiry'.
               05  LINE 10 COL 28 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 49 PIC X(8) TO WS-SEARCH-NUM 
                                           FULL REQUIRED AUTO.
               05  LINE 11 COL 28 VALUE '(Exit = 00000000)'.
               05  LINE 11 COL 47 PIC X(10) FROM CAP1-MSG.
           03  CONFIRMATION.
               05  LINE 13 COL 28 VALUE 'Search this ID? (Y/N)'.
               05  LINE 13 COL 50 PIC X TO WS-FLAG.

       01  SECOND-SCREEN.
           03  BLANK SCREEN.
           03  HEADER.
               05  LINE 01 COL 01 VALUE 'G3-CAP1-U-INQ'.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)  FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)  FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)  FROM WS-YEAR.
           03  ACCNT-DISP.
               05  LINE 06 COL 38 VALUE 'Capital One'.
               05  LINE 08 COL 35 VALUE 'Account Inquiry'.
               03  LINE 10 COL 28 VALUE 'Account Number:'.
               03  LINE 10 COL 44 PIC 9(8)  FROM WS-ACCNT-NUM.
               03  LINE 11 COL 28 VALUE 'First Name:'.
               03  LINE 11 COL 40 PIC X(15) FROM WS-FNAME.
               03  LINE 12 COL 28 VALUE 'Last Name:'.
               03  LINE 12 COL 39 PIC X(15) FROM WS-LNAME.
               03  LINE 13 COL 28 VALUE 'Address:'.
               03  LINE 13 COL 37 PIC X(25) FROM WS-ADDRESS
                                            JUSTIFIED RIGHT.           
               03  LINE 14 COL 28 VALUE 'Zip Code:'.
               03  LINE 14 COL 38 PIC 9(5) FROM WS-ZIP.
               03  LINE 16 COL 28 VALUE 'Search another account? (Y/N)'.
               03  LINE 16 COL 58 TO WS-FLAG.