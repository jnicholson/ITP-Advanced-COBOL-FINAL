      *Skeleton COBOL Copybook - JESSE NICHOLSON - 4/7/2014
       01  CHECKSCREEN.
           03  BLANK SCREEN. 
           03  CHECK.
               05  LINE 01 COL 01 PIC X(20) FROM VISA-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 34 VALUE "CHECK ACCOUNT".
               05  LINE 08 COL 26 VALUE "ID".
               05  LINE 08 COL 45 PIC X(8) FROM VISA-MER-ORIG-ID.
               05  LINE 09 COL 26 VALUE "Name".
               05  LINE 09 COL 45 PIC X(25) FROM VISA-MER-ORIG-NAME.
               05  LINE 10 COL 26 VALUE "Address".
               05  LINE 10 COL 45 PIC X(25) FROM VISA-MER-ORIG-ADDRESS.
               05  LINE 11 COL 26 VALUE "Zip".
               05  LINE 11 COL 45 PIC X(5) FROM VISA-MER-ORIG-ZIP.
               05  LINE 12 COL 26 VALUE "Phone".
               05  LINE 12 COL 45 PIC X(11) FROM VISA-MER-ORIG-PHONE.
               05  LINE 13 COL 26 VALUE "Email".
               05  LINE 13 COL 45 PIC X(10) FROM VISA-MER-ORIG-ACCT.
               05  LINE 14 COL 26 VALUE "CC Number".
               05  LINE 14 COL 45 PIC X(9) FROM VISA-MER-ORIG-ROUTE.
               05  LINE 18 COL 28 VALUE "Is this your information?".
               05  LINE 20 COL 30 PIC X TO VISA-MER-CHECK AUTO.
               05  LINE 20 COL 32 VALUE "Press 'Y' to confirm".
               
      


