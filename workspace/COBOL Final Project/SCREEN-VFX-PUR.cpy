      *Skeleton COBOL Copybook - KATIE TRAN - 4/7/2014
       01  PTSCREEN-HEADER.
           03  BLANK SCREEN.
           03  PURCHASETITLE.
               05  LINE 01 COL 01 VALUE "PURCHASE TITLE".
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 02 COL 01 VALUE SPACES.
               05  LINE 03 COL 01 VALUE SPACES.
               
       01 PTSCREEN-SORT-MENU.
           03 PURCHASETITLE.
               05  LINE 08 COL 31 VALUE "      SORT BY      ".
               05  LINE 10 COL 31 VALUE "   1) ID   ".
               05  LINE 11 COL 31 VALUE "   2) NAME     ".
               05  LINE 12 COL 31 VALUE "   3) GENRE  ".
               05  LINE 13 COL 31 VALUE "   4) PRICE ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO WS-SEL AUTO.
       
       01  PTSCREEN-LABEL.
           03  PURCHASETITLE.
               05  LINE 04 COL 01 VALUE "MOVIE ID".
               05  LINE 04 COL 10 VALUE "TITLE".
               05  LINE 04 COL 46 VALUE "GENRE".
               05  LINE 04 COL 57 VALUE "PRICE".
               
       01  CONT-FILE.
           05  LINE 25 COL 01 VALUE "PRESS ENTER TO CONTINUE".
           
       01  END-FILE.
           05  LINE 25 COL 01 VALUE "PRESS ENTER TO EXIT".
      
              
  

