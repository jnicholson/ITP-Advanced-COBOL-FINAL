      *Skeleton COBOL Copybook - JARROD LEE - 4/7/2014
       01  EDITSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 VALUE "EDIT ACCOUNT".
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ":".
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 06 COL 35 VALUE "EDIT ACCOUNT".
               05  LINE 08 COL 16 VALUE "Current".
               05  LINE 08 COL 60 VALUE "Updated".
               05  LINE 10 COL 01 VALUE "ID".
               05  LINE 10 COL 29 FROM WS-ORIG-ID.
               05  LINE 10 COL 45 VALUE " ID".
               05  LINE 10 COL 73 TO   WS-EDIT-ID.
               05  LINE 11 COL 01 VALUE "First Name".
               05  LINE 11 COL 22 FROM WS-ORIG-FNAME.
               05  LINE 11 COL 45 VALUE "First Name".
               05  LINE 11 COL 66 TO   WS-EDIT-FNAME
               05  LINE 12 COL 01 VALUE "Last Name".
               05  LINE 12 COL 22 FROM WS-ORIG-LNAME.
               05  LINE 12 COL 45 VALUE "Last Name".
               05  LINE 12 COL 66 TO   WS-EDIT-LNAME.
               05  LINE 13 COL 01 VALUE "Address".
               05  LINE 13 COL 17 FROM WS-ORIG-ADDRESS.
               05  LINE 13 COL 45 VALUE "Address".
               05  LINE 13 COL 61 TO   WS-EDIT-ADDRESS.
               05  LINE 14 COL 01 VALUE "Zip".
               05  LINE 14 COL 32 FROM WS-ORIG-ZIP.
               05  LINE 14 COL 45 VALUE "Zip".
               05  LINE 14 COL 76 TO   WS-EDIT-ZIP.
               05  LINE 15 COL 01 VALUE "Phone".
               05  LINE 15 COL 26 FROM WS-ORIG-PHONE.
               05  LINE 15 COL 45 VALUE "Phone".
               05  LINE 15 COL 70 TO   WS-EDIT-PHONE.
               05  LINE 16 COL 01 VALUE "Email".
               05  LINE 16 COL 07 FROM WS-ORIG-EMAIL.
               05  LINE 16 COL 45 VALUE "Email".
               05  LINE 16 COL 51 TO   WS-EDIT-EMAIL.
               05  LINE 17 COL 01 VALUE "CC Number".
               05  LINE 17 COL 21 FROM WS-ORIG-CC.
               05  LINE 17 COL 45 VALUE "CC Number".
               05  LINE 17 COL 65 TO   WS-EDIT-CC.
               05  LINE 20 COL 27 PIC X TO WS-SEL AUTO.
               05  LINE 20 COL 29 VALUE "Press 'S' to save changes".
      


