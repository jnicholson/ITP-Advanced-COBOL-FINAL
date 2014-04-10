      *Skeleton COBOL Copybook - KATIE TRAN - 4/7/2014
       01  PTSCREEN.
           03  BLANK SCREEN.
           03  PURCHASETITLE.
               05  LINE 01 COL 01 VALUE "PURCHASE TITLE".
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
               05  LINE 02 COL 78 VALUE ":".
               05  LINE 02 COL 79 PIC X(2) FROM WS-MINUTE.
               05  LINE 03 COL 01 VALUE SPACES.
               05  LINE 04 COL 01 VALUE SPACES.
               05  LINE 05 COL 01 VALUE "MOVIE ID".
               05  LINE 05 COL 10 VALUE "TITLE".
               05  LINE 05 COL 46 VALUE "GENRE".
               05  LINE 05 COL 57 VALUE "PRICE".
               
       01  CONT-FILE.
           05  LINE 25 COL 01 VALUE "PRESS ENTER TO CONTINUE".
           
       01  END-FILE.
           05  LINE 25 COL 01 VALUE "PRESS ENTER TO EXIT".
      
              
  


