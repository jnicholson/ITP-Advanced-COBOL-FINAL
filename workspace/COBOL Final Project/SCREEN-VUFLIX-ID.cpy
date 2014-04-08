      *Skeleton COBOL Copybook - JARROD LEE - 4/7/2014
       01  IDSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEID.
               05  LINE 01 COL 01 VALUE "CHOOSE ID".
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ":".
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 10 COL 26 PIC 9(8) TO WS-SEARCH-ID AUTO.
               05  LINE 10 COL 35 VALUE "Enter ID to continue".


