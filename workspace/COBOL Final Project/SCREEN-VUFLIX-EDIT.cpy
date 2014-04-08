      *Skeleton COBOL Copybook - JARROD LEE - 4/7/2014
       01  EDITSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 PIC X(15) FROM WS-PROG.
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
               05  LINE 10 COL 29 PIC X(8) FROM WS-ORIG-ID.
           03  E-ID.
               05  LINE 10 COL 45 VALUE "ID".
               05  LINE 10 COL 73 PIC X(8) FROM WS-ORIG-ID.
               05  LINE 11 COL 01 VALUE "First Name".
               05  LINE 11 COL 22 PIC X(15) FROM WS-ORIG-FNAME.
           03  E-FNAME.
               05  LINE 11 COL 45 VALUE "First Name".
               05  LINE 11 COL 66 PIC X(15) TO   WS-EDIT-FNAME.
               05  LINE 12 COL 01 VALUE "Last Name".
               05  LINE 12 COL 22 PIC X(15) FROM WS-ORIG-LNAME.
           03  E-LNAME.
               05  LINE 12 COL 45 VALUE "Last Name".
               05  LINE 12 COL 66 PIC X(15) TO   WS-EDIT-LNAME.
               05  LINE 13 COL 01 VALUE "Address".
               05  LINE 13 COL 17 PIC X(20) FROM WS-ORIG-ADDRESS.
           03  E-ADDRESS.
               05  LINE 13 COL 45 VALUE "Address".
               05  LINE 13 COL 61 PIC X(20) TO   WS-EDIT-ADDRESS.
               05  LINE 14 COL 01 VALUE "Zip".
               05  LINE 14 COL 32 PIC X(5) FROM WS-ORIG-ZIP.
           03  E-ZIP.
               05  LINE 14 COL 45 VALUE "Zip".
               05  LINE 14 COL 76 PIC X(5) TO   WS-EDIT-ZIP.
               05  LINE 15 COL 01 VALUE "Phone".
               05  LINE 15 COL 26 PIC X(11) FROM WS-ORIG-PHONE.
           03  E-PHONE.
               05  LINE 15 COL 45 VALUE "Phone".
               05  LINE 15 COL 70 PIC X(11) TO   WS-EDIT-PHONE.
               05  LINE 16 COL 01 VALUE "Email".
               05  LINE 16 COL 07 PIC X(30) FROM WS-ORIG-EMAIL.
           03  E-EMAIL.
               05  LINE 16 COL 45 VALUE "Email".
               05  LINE 16 COL 51 PIC X(30) TO   WS-EDIT-EMAIL.
               05  LINE 17 COL 01 VALUE "CC Number".
               05  LINE 17 COL 21 PIC X(16) FROM WS-ORIG-CC.
           03  E-CC.
               05  LINE 17 COL 45 VALUE "CC Number".
               05  LINE 17 COL 65 PIC X(16) TO   WS-EDIT-CC.
           03  E-SEL.
               05  LINE 20 COL 23 PIC X TO WS-CHECK AUTO.
               05  LINE 20 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 20 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 21 COL 29 VALUE "(all other keys start over)".
      


