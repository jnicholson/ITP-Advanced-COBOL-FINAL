      *COBOL COPYBOOK - Jesse Nicholson 4/22/14
        01  LISTSCREEN.
           03  BLANK SCREEN. 
           03  HEAD.
               05  LINE 01 COL 01 PIC X(20) FROM VISA-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 34 VALUE "LIST MERCHANTS".
               
       01  MER-LIST-LABEL.
           03  LISTHEADINGS.
               05  LINE 04 COL 01 VALUE "MERCHANT ID".
               05  LINE 04 COL 10 VALUE "NAME".
               05  LINE 04 COL 36 VALUE "EMAIL".
               05  LINE 04 COL 67 VALUE "PHONE         ".
               05  LINE 05 COL 79 VALUE "  ".
               
       01  CONT-FILE.
           03  LINE 21 COL 01 VALUE "PRESS 'N' FOR NEXT PAGE, ".
           03  LINE 21 COL 26 VALUE "OR 'X' TO EXIT.".
           03  LINE 21 COL 77 PIC X TO VISA-MER-RESP AUTO.
       
       01  END-FILE.
           03  LINE 21 COL 01 VALUE "PRESS 'X' TO EXIT.".
           03  LINE 21 COL 77 PIC X TO VISA-MER-RESP AUTO.
           
       01 BLANK-SCREEN.
           03 BLANK SCREEN.