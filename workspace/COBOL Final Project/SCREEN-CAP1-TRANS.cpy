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
           
       01  TRANS-DISP.
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
           03  LINE 10 COL 20 VALUE 'Date and Time     '.
           03  LINE 10 COL 35 VALUE 'Type              '.
           03  LINE 10 COL 41 VALUE 'Total             '.
           03  LINE 10 COL 50 VALUE 'Description       '.
           03  TRANS-REC.
               05  LINE WS-CTR COL 18 PIC XX FROM CC-TRAN-MONTH.
               05  LINE WS-CTR COL 20 VALUE '/'.
               05  LINE WS-CTR COL 21 PIC XX FROM CC-TRAN-DAY.
               05  LINE WS-CTR COL 23 VALUE '/'.
               05  LINE WS-CTR COL 24 PIC X(4) FROM CC-TRAN-YEAR.
               05  LINE WS-CTR COL 29 PIC XX FROM CC-TRAN-HOUR.
               05  LINE WS-CTR COL 31 VALUE ':'.
               05  LINE WS-CTR COL 32 PIC XX FROM CC-TRAN-MIN.
               05  LINE WS-CTR COL 37 PIC X FROM TRAN-TYPE.
               05  LINE WS-CTR COL 41 VALUE '$'.
               05  LINE WS-CTR COL 42 PIC 99.99 FROM CC-TRAN-PRICE.
               05  LINE WS-CTR COL 49 PIC X(25) FROM CC-TRAN-ITEM.
       01  NEXT-PAGE.
           03  LINE 23 COL 33 VALUE 'Next page? (Y/N)'.
           03  LINE 23 COL 50 PIC X TO WS-EOR-FLAG.
       
       01  CONFIRMATION.
           03  LINE 23 COL 33 VALUE 'Search another? (Y/N)'.
           03  LINE 23 COL 55 PIC X TO WS-FLAG.