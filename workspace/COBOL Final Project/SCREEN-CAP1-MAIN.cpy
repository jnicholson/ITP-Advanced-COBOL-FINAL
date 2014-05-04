      *******************************************************************
      *PROGRAM       : CAPITAL ONE MAIN MENU SCREEN                     *
      *AUTHOR        : HENRY HURLOCKER                                  *
      *EDITED BY     : DEVIN LEAMAN                                     *
      *CREATION DATE : 5/3/2014                                         *
      ******************************************************************* 
       01  MENUSCREEN.
           03  BLANK SCREEN.
           03  MENU.
               05  LINE 01 COL 01 FROM CAP1-M-PROG.
               05  LINE 01 COL 37 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ':'.
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 08 COL 31 VALUE '   CAPITAL ONE MAIN      '.
               05  LINE 10 COL 31 VALUE '  1) Account Signup      '.
               05  LINE 11 COL 31 VALUE '  2) Account Inquiry     '.
               05  LINE 12 COL 31 VALUE '  3) Account Edit        '.
               05  LINE 13 COL 31 VALUE '  4) Account Transactions'.
               05  LINE 14 COL 31 VALUE '  5) Account Payment     '.
               05  LINE 15 COL 31 VALUE '  6) End of Month Recalc '.
               05  LINE 22 COL 31 VALUE 'Selection   (X=exit)     '.
               05  LINE 22 COL 41 PIC X TO WS-SEL AUTO.
       01  EXITSCREEN.
               05  LINE 24 COL 33 VALUE "Confirm exit 'Y'".
               05  LINE 24 COL 50 PIC X TO WS-EXIT AUTO.