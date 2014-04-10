      *Skeleton COBOL Copybook Jesse Nicholson 4/8/2014
       01  SIGNUPSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 PIC X(20) FROM WS-FILE.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ":".
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 06 COL 35 VALUE "MERCHANT LOCATION ADD".
               05  LINE 10 COL 17 VALUE "ID".
               05  LINE 10 COL 32 PIC 9(8) FROM WS-ORIG-ID.
               05  LINE 11 COL 17 VALUE "Name".
               05  LINE 11 COL 32 PIC X(24) FROM WS-ORIG-NAME.
               05  LINE 12 COL 17 VALUE "Address".
               05  LINE 12 COL 32 PIC X(20) FROM WS-ORIG-ADDRESS.
               05  LINE 13 COL 17 VALUE "ZIP".
               05  LINE 13 COL 32 PIC 9(5) FROM WS-ORIG-ZIP.
               05  LINE 14 COL 17 VALUE "Phone".
               05  LINE 14 COL 32 PIC 9(11) FROM WS-ORIG-PHONE.
               05  LINE 15 COL 17 VALUE "Account".
               05  LINE 15 COL 32 PIC 9(10) FROM WS-ORIG-ACCOUNT.
               05  LINE 16 COL 17 VALUE "Route".
               05  LINE 16 COL 32 PIC 9(9)  FROM WS-ORIG-ROUTE.
               05  LINE 20 COL 27 PIC X TO WS-ACTION-SEL AUTO.
               05  LINE 20 COL 29 VALUE "Press 'S' to save changes".
      





