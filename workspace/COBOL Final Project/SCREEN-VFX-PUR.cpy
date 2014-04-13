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
               05  LINE 08 COL 31 VALUE "      SORT BY".
               05  LINE 10 COL 31 VALUE "   1) ID".
               05  LINE 11 COL 31 VALUE "   2) NAME".
               05  LINE 12 COL 31 VALUE "   3) GENRE".
               05  LINE 13 COL 31 VALUE "   4) PRICE ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO VFX-3-SEL AUTO.
       
       01  PTSCREEN-LABEL.
           03  PURCHASETITLE.
               05  LINE 04 COL 01 VALUE "MOVIE ID".
               05  LINE 04 COL 10 VALUE "TITLE".
               05  LINE 04 COL 46 VALUE "GENRE".
               05  LINE 04 COL 57 VALUE "PRICE".
               
       01  CONT-FILE.
           05  LINE 23 COL 01 VALUE "PRESS ENTER TO CONTINUE OR X TO MAK
      -     "E A SELECTION ".
           
       01  END-FILE.                                                    
           05  LINE 23 COL 01 VALUE "PRESS ENTER TO EXIT OR X TO MAKE A
      -     "SELECTION ".
      
       01  PTSCREEN-PURCHASE.
               05  LINE 25 COL 01 VALUE "ENTER MOVIE ID:".
               05  LINE 25 COL 17 PIC X(8) TO VFX-3-PUR-SEL AUTO.
               
       
       01  PTSCREEN-PURCHASE-MORE.
               05 BLANK LINE.
               05  LINE 24 COL 01 VALUE "PURCHASED.".
               05  LINE 25 COL 01 VALUE "PRESS Y TO PURCHASE ANOTHER MOV
      -         "IE OR N TO EXIT MOVIE SELECTION.".
                      
               05  LINE 25 COL 64 PIC X TO VFX-3-SEL AUTO.
       01 PTSCREEN-ERROR.
           05 BLANK LINE.
           05  LINE 25 COL 01 VALUE "INVALID ENTRY". 
               
  


