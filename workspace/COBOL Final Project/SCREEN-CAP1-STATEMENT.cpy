      *******************************************************************
      *PROGRAM:  Capital One Account Signup                             *
      *AUTHOR:   Devin Leaman                                           *
      *DATE:     4/9/2014                                               *
      *ABSTRACT: Account Signup                                         *
      *******************************************************************
       01  CUST-INFO.
           03  WS-FNAME        PIC X(20).
           03  WS-LNAME        PIC X(20).
           03  WS-STREET       PIC X(20).
           03  WS-CITY         PIC X(20).
           03  WS-STATE        PIC XX.
           03  WS-ZIP          PIC 9(5).
           03  WS-ACCOUNT-NUM  PIC 9(8).
           03  WS-BANK-NAME    PIC X(20).
           03  WS-PREV-BAL     PIC 9(9).
           03  WS-PAYMENT      PIC 9(6).
           03  WS-NEW-BAL      PIC 9(9).
           
       SCREEN SECTION.
       01  MAIN-SCREEN.
           03  BLANK SCREEN.
           03  LINE 1 COL 1 VALUE "ACCOUNT STATEMENT".
           03  LINE 2 COL 1 PIC X(20) FROM WS-FNAME.
           03  LINE 2 COL 21 PIC X(20) FROM WS-LNAME.
           03  LINE 3 COL 1 PIC X(20) FROM WS-STREET.
           03  LINE 4 COL 1 PIC X(20) FROM WS-CITY JUSTIFIED RIGHT.
           03  LINE 4 COL 21 VALUE ",".
           03  LINE 4 COL 23 PIC XX FROM WS-STATE.
           03  LINE 4 COL 26 PIC 9(5) FROM WS-ZIP.
           03  LINE 6 COL 1 PIC X(20) FROM WS-BANK-NAME.
           03  LINE 7 COL 1 VALUE "ACCOUNT NUMBER:".
           03  LINE 7 COL 17 PIC 9(8) FROM WS-ACCOUNT-NUM. 
           03  LINE 9 COL 1 VALUE "PREVIOUS BALANCE:".
           03  LINE 9 COL 18 PIC 9,999,999V99 FROM WS-PREV-BAL.
           03  LINE 10 COL 1 VALUE "PAYMENT APPLIED:".
           03  LINE 10 COL 17 PIC 9,999V99 FROM WS-PAYMENT.
           03  LINE 11 COL 1 VALUE "NEW BALANCE:".
           03  LINE 11 COL 13 PIC 9,999,999V99 FROM WS-NEW-BAL.