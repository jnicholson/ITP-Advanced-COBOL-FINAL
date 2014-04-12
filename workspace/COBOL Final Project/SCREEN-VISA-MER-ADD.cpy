      *Skeleton COBOL Copybook Jesse Nicholson 4/8/2014
       01  SIGNUPSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 PIC X(20) FROM VISA-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ":".
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 06 COL 35 VALUE "MERCHANT SIGNUP".
           03 E-ID.
               05  LINE 10 COL 17 VALUE "ID".
               05  LINE 10 COL 32 PIC 9(8) TO VISA-MER-EDIT-ID.
           03 E-NAME.
               05  LINE 11 COL 17 VALUE "Name".
               05  LINE 11 COL 32 PIC X(24) TO VISA-MER-EDIT-NAME.
           03 E-ADDRESS.
               05  LINE 12 COL 17 VALUE "Address".
               05  LINE 12 COL 32 PIC X(20) TO VISA-MER-EDIT-ADDRESS.
           03 E-ZIP.
               05  LINE 13 COL 17 VALUE "ZIP".
               05  LINE 13 COL 32 PIC 9(5) TO VISA-MER-EDIT-ZIP.
           03 E-PHONE.
               05  LINE 14 COL 17 VALUE "Phone".
               05  LINE 14 COL 32 PIC 9(11) TO VISA-MER-EDIT-PHONE.
           03 E-ACCOUNT.
               05  LINE 15 COL 17 VALUE "Account".
               05  LINE 15 COL 32 PIC 9(10) TO VISA-MER-EDIT-ACCT.
           03 E-ROUTE.
               05  LINE 16 COL 17 VALUE "Routing".
               05  LINE 16 COL 32 PIC 9(9) TO  VISA-MER-EDIT-ROUTE.
           03 E-SEL.
               05  LINE 20 COL 27 PIC X TO VISA-M-SEL AUTO.
               05  LINE 20 COL 29 VALUE "Press 'S' to save changes".
      ******************************************************************  
       01  BLANK-SCREEN.
           03  BLANK SCREEN.





