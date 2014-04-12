      *Skeleton COBOL Copybook Jesse Nicholson 4/12/2014
       01  MENUSCREEN.
           03  BLANK SCREEN.
           03  MENU.
               05  LINE 01 COL 01 PIC X(20) FROM WS-PROG.
               05  LINE 01 COL 37 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ":".
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 08 COL 31 VALUE "      VISA MAIN      ".
               05  LINE 10 COL 31 VALUE "   1) Merchants   ".
               05  LINE 11 COL 31 VALUE "   2) Merchant Locations".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO WS-SEL AUTO.
      ******************************************************************
       01 MER-MENUSCREEN.
           03 BLANK SCREEN.
           03 MENU.
               05  LINE 01 COL 01 PIC X(15) FROM WS-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 08 COL 31 VALUE "      MERCHANT MAIN      ".
               05  LINE 10 COL 31 VALUE "   1) Add Merchant   ".
               05  LINE 11 COL 31 VALUE "   2) Edit Merchant ".
               05  LINE 12 COL 31 VALUE "   3) Delete Merchant ".
               05  LINE 13 COL 31 VALUE "   4) Search Merchant by ID ".
               05  LINE 14 COL 31 VALUE "   5) Search Merchant by Name" 
               .
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO WS-SEL AUTO.
      ****************************************************************** 
       01 MERLOC-MENUSCREEN.
           03 BLANK SCREEN.
           03 MENU.
               05  LINE 01 COL 01 PIC X(15) FROM WS-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 08 COL 31 VALUE "      MERCHANT MAIN      ".
               05  LINE 10 COL 31 VALUE "   1) Add Merchant Location".
               05  LINE 11 COL 31 VALUE "   2) Edit Merchant Location ".
               05  LINE 12 COL 31 VALUE "   3) Delete Merchant Location"
               .
               05  LINE 13 COL 31 VALUE "   4) Search Merchant Location 
      -        "by ID".
               05  LINE 14 COL 31 VALUE 
               "   5) Search Merchant Location by Name".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO WS-SEL AUTO.