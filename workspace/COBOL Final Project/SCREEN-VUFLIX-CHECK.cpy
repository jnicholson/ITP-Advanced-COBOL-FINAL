      *Skeleton COBOL Copybook - JARROD LEE - 4/7/2014
       01  CHECKSCREEN.
           03  BLANK SCREEN. 
           03  CHECK.
               05  LINE 01 COL 01 PIC X(15) FROM WS-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 34 VALUE "CHECK ACCOUNT".
               05  LINE 08 COL 22 VALUE "ID".
               05  LINE 08 COL 50 PIC X(8) FROM WS-ORIG-ID.
               05  LINE 09 COL 22 VALUE "First Name".
               05  LINE 09 COL 43 PIC X(15) FROM WS-ORIG-FNAME.
               05  LINE 10 COL 22 VALUE "Last Name".
               05  LINE 10 COL 43 PIC X(15) FROM WS-ORIG-LNAME.
               05  LINE 11 COL 22 VALUE "Address".
               05  LINE 11 COL 38 PIC X(20) FROM WS-ORIG-ADDRESS.
               05  LINE 12 COL 22 VALUE "Zip".
               05  LINE 12 COL 53 PIC X(5) FROM WS-ORIG-ZIP.
               05  LINE 13 COL 22 VALUE "Phone".
               05  LINE 13 COL 47 PIC X(11) FROM WS-ORIG-PHONE.
               05  LINE 14 COL 22 VALUE "Email".
               05  LINE 14 COL 28 PIC X(30) FROM WS-ORIG-EMAIL.
               05  LINE 15 COL 22 VALUE "CC Number".
               05  LINE 15 COL 42 PIC X(16) FROM WS-ORIG-CC.
               05  LINE 18 COL 28 VALUE "Is this your information?".
               05  LINE 20 COL 30 PIC X TO WS-CHECK AUTO.
               05  LINE 20 COL 32 VALUE "Press 'Y' to confirm".
               
      


