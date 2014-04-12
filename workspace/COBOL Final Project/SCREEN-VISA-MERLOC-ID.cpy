      *Skeleton COBOL Copybook - JESSE NICHOLSON - 4/7/2014
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
       01  IDSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEID.
               05  LINE 01 COL 01 PIC X(20) FROM VISA-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Visa Merchant'.
               05  LINE 08 COL 35 VALUE 'Edit Account'.
               05  LINE 10 COL 19 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 40 PIC X(8) TO VISA-MERLOC-SEARCH-ID 
                                           FULL REQUIRED AUTO.
               05  LINE 10 COL 49 VALUE '(99999999 = Exit)'.
               05  LINE 11 COL 35 PIC X(10) FROM VISA-MERLOC-MSG.


