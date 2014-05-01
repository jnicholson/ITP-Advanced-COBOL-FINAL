      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-EDIT                              *
      * AUTHOR        : DEVIN LEAMAN                                    *
      * CREATION DATE : 4/30/14                                         *
      * PURPOSE       : CAP1 TRANSACTION SCREEN                         *
      *******************************************************************
       01  MAIN-SCREEN.
           03  BLANK SCREEN.
           03  LINE 01 COL 01 PIC X(20) FROM CAP1-M-PROG.
           03  LINE 01 COL 38 VALUE 'TEAM 3'.
           03  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
           03  LINE 01 COL 73 VALUE '/'.
           03  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
           03  LINE 01 COL 76 VALUE '/'.
           03  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
           03  LINE 06 COL 35 VALUE 'Capital One       '.
           03  LINE 08 COL 32 VALUE 'Transaction report'.
           03  LINE 10 COL 30 VALUE 'Enter Card Number:'.
           03  LINE 10 COL 49 PIC X(8) TO WS-ACCNT-NUM.
           
           

