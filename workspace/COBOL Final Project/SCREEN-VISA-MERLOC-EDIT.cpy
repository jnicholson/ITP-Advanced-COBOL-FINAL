      *Skeleton COBOL Copybook - JESSE NICHOLSON - 4/7/2014
       01  EDITSCREEN.
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
               05  LINE 06 COL 35 VALUE "EDIT MERCHANT".
               05  LINE 08 COL 16 VALUE "Current".
               05  LINE 08 COL 60 VALUE "Updated".
               05  LINE 10 COL 01 VALUE "ID".
               05  LINE 10 COL 29 PIC 9(8) FROM WS-ORIG-ID.
               05  LINE 10 COL 45 VALUE " ID".
               05  LINE 10 COL 73 PIC 9(8) TO   WS-EDIT-ID.
               05  LINE 11 COL 01 VALUE "Name".
               05  LINE 11 COL 22 PIC X(24) FROM WS-ORIG-NAME.
               05  LINE 11 COL 45 VALUE "Name".
               05  LINE 11 COL 66 PIC X(24) TO   WS-EDIT-NAME.
               05  LINE 12 COL 01 VALUE "Address".
               05  LINE 12 COL 17 PIC X(20) FROM WS-ORIG-ADDRESS.
               05  LINE 12 COL 45 VALUE "Address".
               05  LINE 12 COL 61 PIC X(20) TO   WS-EDIT-ADDRESS.
               05  LINE 13 COL 01 VALUE "Zip".
               05  LINE 13 COL 32 PIC 9(5) FROM WS-ORIG-ZIP.
               05  LINE 13 COL 45 VALUE "Zip".
               05  LINE 13 COL 76 PIC 9(5) TO   WS-EDIT-ZIP.
               05  LINE 14 COL 01 VALUE "Phone".
               05  LINE 14 COL 26 PIC 9(11) FROM WS-ORIG-PHONE.
               05  LINE 14 COL 45 VALUE "Phone".
               05  LINE 14 COL 70 PIC 9(11) TO   WS-EDIT-PHONE.
               05  LINE 20 COL 27 PIC X TO WS-ACTION-SEL AUTO.
               05  LINE 20 COL 29 VALUE "Press 'S' to save changes".
      



      


