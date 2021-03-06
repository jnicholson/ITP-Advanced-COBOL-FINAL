      ******************************************************************
      * AUTHOR       : KATIE TRAN       
      * CREATION DATE: 4/05/14                                         
      * LAST EDIT    : 4/05/14                                         
      * PURPOSE      : SCREENS FOR VUFLIX MAIN      
      ******************************************************************
       01  MENUSCREEN.
           03  BLANK SCREEN. 
           03  MENU.
               05  LINE 01 COL 01 PIC X(15) FROM VFX-M-PROG.
               05  LINE 01 COL 37 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 08 COL 31 VALUE "      VUFLIX MAIN      ".
               05  LINE 10 COL 31 VALUE "   1) Account Signup   ".
               05  LINE 11 COL 31 VALUE "   2) Edit Account     ".
               05  LINE 12 COL 31 VALUE "   3) Purchase Movie   ".
               05  LINE 13 COL 31 VALUE "   4) Movies Purchased ".
               05  LINE 14 COL 31 VALUE "   5) Movie Wishlist   ".
               05  LINE 15 COL 31 VALUE "   6) Add/Remove Movie ".
               05  LINE 16 COL 31 VALUE "   7) Member Inquiry   ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO VFX-M-SEL AUTO.
       01  EXITSCREEN.
               05  LINE 24 COL 33 VALUE "Confirm exit 'Y'".
               05  LINE 24 COL 50 PIC X TO VFX-M-EXIT AUTO.
               
       