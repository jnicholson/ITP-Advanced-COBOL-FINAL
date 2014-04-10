      *******************************************************************                                                                                            
      *PROGRAM:  Capital One Account Payment                            *                                                                                            
      *AUTHOR:   Devin Leaman                                           *                                                                                            
      *DATE:     4/9/2014                                               *                                                                                            
      *ABSTRACT: Account Payment                                        *                                                                                            
      *******************************************************************                                                                                            
       01  WS-PAY-INFO.
           03  WS-ACCOUNT-NUM  PIC 9(8).
           03  WS-ROUTING-NUM  PIC 9(9).
           03  WS-PAYMENT      PIC 9(6).
           03  WS-PAY-DATE.
               05  WS-MONTH    PIC 99.
               05  WS-DAY      PIC 99.
               05  WS-YEAR     PIC 9999.
               
       SCREEN SECTION.
       01  MAIN-SCREEN.
           03  BLANK SCREEN.
           03  LINE 1 COL 1 VALUE "ACCOUNT NUMBER:".
           03  LINE 1 COL 17 PIC 9(8).
           03  LINE 2 COL 1 VALUE "ROUTING NUMBER:".
           03  LINE 2 COL 17 PIC 9(9).
           03  LINE 3 COL 1 VALUE "PAYMENT DATE:".
           03  LINE 3 COL 14 PIC 99 TO WS-MONTH.
           03  LINE 3 COL 16 VALUE "/".
           03  LINE 3 COL 17 PIC 99 TO WS-DAY.
           03  LINE 3 COL 19 VALUE "/".
           03  LINE 3 COL 20 PIC 9999 TO WS-YEAR.