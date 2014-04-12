      *Skeleton COBOL Copybook - JESSE NICHOLSON - 4/7/2014
       01  EDITSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 PIC X(20) FROM VISA-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE "EDIT ACCOUNT".
               05  LINE 08 COL 16 VALUE "Current".
               05  LINE 08 COL 60 VALUE "Updated".
               05  LINE 10 COL 01 VALUE "ID".
               05  LINE 10 COL 29 PIC X(8) FROM VISA-MERLOC-ORIG-ID.
           03  E-ID.
               05  LINE 10 COL 45 VALUE "ID".
               05  LINE 10 COL 73 PIC X(8) FROM VISA-MERLOC-EDIT-ID.
               05  LINE 11 COL 01 VALUE "Name".
               05  LINE 11 COL 12 PIC X(25) FROM VISA-MERLOC-ORIG-NAME.
           03  E-NAME.
               05  LINE 11 COL 45 VALUE "Name".
               05  LINE 11 COL 55 PIC X(25) TO   VISA-MERLOC-EDIT-NAME.
               05  LINE 12 COL 01 VALUE "Address".
               05  LINE 12 COL 12 PIC X(25) FROM 
               VISA-MERLOC-ORIG-ADDRESS.
           03  E-ADDRESS.
               05  LINE 12 COL 45 VALUE "Address".
               05  LINE 12 COL 56 PIC X(25) TO   
               VISA-MERLOC-EDIT-ADDRESS.
               05  LINE 13 COL 01 VALUE "Zip".
               05  LINE 13 COL 32 PIC X(5) FROM VISA-MERLOC-ORIG-ZIP.
           03  E-ZIP.
               05  LINE 13 COL 45 VALUE "Zip".
               05  LINE 13 COL 76 PIC X(5) TO   VISA-MERLOC-EDIT-ZIP.
               05  LINE 14 COL 01 VALUE "Phone".
               05  LINE 14 COL 26 PIC X(11) FROM VISA-MERLOC-ORIG-PHONE.
           03  E-PHONE.
               05  LINE 14 COL 45 VALUE "Phone".
               05  LINE 14 COL 70 PIC X(11) TO   VISA-MERLOC-EDIT-PHONE.
               05  LINE 15 COL 01 VALUE "Account".
               05  LINE 15 COL 27 PIC X(10) FROM VISA-MERLOC-ORIG-ACCT.
           03  E-ACCOUNT.
               05  LINE 15 COL 45 VALUE "Account".
               05  LINE 15 COL 71 PIC X(10) TO   VISA-MERLOC-EDIT-ACCT.
               05  LINE 16 COL 01 VALUE "Routing Number".
               05  LINE 16 COL 28 PIC X(9) FROM VISA-MERLOC-ORIG-ROUTE.
           03  E-ROUTE.
               05  LINE 16 COL 45 VALUE "Routing Number".
               05  LINE 16 COL 72 PIC X(9) TO   VISA-MERLOC-EDIT-ROUTE.
           03  E-SEL.
               05  LINE 20 COL 23 PIC X TO VISA-MERLOC-CHECK AUTO.
               05  LINE 20 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 20 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 21 COL 29 VALUE "(all other keys start over)".
      


