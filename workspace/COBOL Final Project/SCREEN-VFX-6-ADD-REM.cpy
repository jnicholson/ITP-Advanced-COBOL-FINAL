      *Skeleton COBOL Copybook - JARROD LEE - 4/21/14
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
           
       01  PTSCREEN-HEADER.
           03  BLANK SCREEN.
           03  PURCHASETITLE.
               05  LINE 01 COL 01 PIC X(20) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
      
       01 PTSCREEN-ADD-REM.
           03 PURCHASETITLE.
               05  LINE 8 COL 31 VALUE "   Choose Wisely    ".
               05  LINE 10 COL 31 VALUE "   1) Add           ".
               05  LINE 11 COL 31 VALUE "   2) Edit          ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X TO VFX-6-SEL AUTO.
               
       01  PTSCREEN-LABEL.
           03  BLANK SCREEN.
           03  PURCHASETITLE.
               05  LINE 01 COL 01 PIC X(20) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 04 COL 01 VALUE "MOVIE ID".
               05  LINE 04 COL 10 VALUE "TITLE".
               05  LINE 04 COL 46 VALUE "GENRE".
               05  LINE 04 COL 57 VALUE "PRICE".
       
       01  PTSCREEN-EDIT.
           03  LINE 23 COL 01 VALUE "ENTER MOVIE ID: ".
           03  LINE 23 COL 18 PIC X(8) TO VFX-6-VML-ID 
                                       FULL REQUIRED AUTO.
           03  LINE 24 COL 01 PIC X(80) VALUE SPACES.
       
       01  CONT-FILE.
           03  LINE 21 COL 01 VALUE "PRESS 'E' TO EDIT, ".
           03  LINE 21 COL 20 VALUE "'N' FOR NEXT PAGE, ".
           03  LINE 21 COL 39 VALUE "OR 'X' TO EXIT.".
           03  LINE 21 COL 55 PIC X TO VFX-6-RESP AUTO.

       01  ADDSCREEN.
           03  BLANK SCREEN. 
           03  A-ADD.
               05  LINE 01 COL 01 PIC X(20) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE "Vuflix".
               05  LINE 08 COL 26 VALUE "ID".
               05  LINE 08 COL 45 PIC X(8) FROM VFX-6-NEW-ID.
               05  LINE 09 COL 26 VALUE "Title".
           03  A-TITLE.
               05  LINE 09 COL 45 PIC X(35) TO VFX-6-NEW-TITLE.
               05  LINE 10 COL 26 VALUE "Genre".
           03  A-GENRE.    
               05  LINE 10 COL 45 PIC X(10) TO VFX-6-NEW-GENRE.
               05  LINE 11 COL 26 VALUE "Price".
           03  A-PRICE.    
               05  LINE 11 COL 44 VALUE "$".
               05  LINE 11 COL 45 PIC 9(2).99 TO VFX-6-NEW-PRICE.
               05  LINE 12 COL 26 VALUE "Show/Hide".
           03  A-SH.
               05  LINE 12 COL 45 PIC X TO VFX-6-NEW-SH.
           03  A-SEL.
               05  LINE 20 COL 23 PIC X TO VFX-6-CHECK AUTO.
               05  LINE 20 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 20 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 21 COL 29 VALUE "(all other keys start over)".
               
       01  EDITSCREEN.
           03  BLANK SCREEN. 
           03  EDIT.
               05  LINE 01 COL 01 PIC X(20) FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
               05  LINE 06 COL 35 VALUE "EDIT MOVIE".
               05  LINE 08 COL 16 VALUE "Current".
               05  LINE 08 COL 60 VALUE "Updated".
               05  LINE 10 COL 01 VALUE "ID".
               05  LINE 10 COL 35 PIC X(8) FROM VFX-6-ORIG-ID.
           03  E-ID.
               05  LINE 10 COL 45 VALUE "ID".
               05  LINE 10 COL 73 PIC X(8) FROM VFX-6-ORIG-ID.
               05  LINE 11 COL 01 VALUE "Title".
               05  LINE 11 COL 06 PIC X(35) FROM VFX-6-ORIG-TITLE.
           03  E-TITLE.
               05  LINE 11 COL 45 VALUE "Title".
               05  LINE 11 COL 66 PIC X(35) TO   VFX-6-EDIT-TITLE.
               05  LINE 12 COL 01 VALUE "Genre".
               05  LINE 12 COL 22 PIC X(10) FROM VFX-6-ORIG-GENRE.
           03  E-GENRE.
               05  LINE 12 COL 45 VALUE "Genre".
               05  LINE 12 COL 66 PIC X(10) TO   VFX-6-EDIT-GENRE.
               05  LINE 13 COL 01 VALUE "Price".
               05  LINE 13 COL 44 VALUE "$".
               05  LINE 13 COL 45 PIC 9(2).99 FROM VFX-6-ORIG-PRICE.
           03  E-PRICE.
               05  LINE 13 COL 45 VALUE "Price".
               05  LINE 13 COL 60 VALUE "$".
               05  LINE 13 COL 61 PIC 9(2).99 TO   VFX-6-EDIT-PRICE.
               05  LINE 14 COL 01 VALUE "Show/Hide".
               05  LINE 14 COL 32 PIC X FROM VFX-6-ORIG-SH.
           03  E-SH.
               05  LINE 14 COL 45 VALUE "Show/Hide".
               05  LINE 14 COL 76 PIC X TO   VFX-6-EDIT-SH.
           03  E-SEL.
               05  LINE 20 COL 23 PIC X TO VFX-6-CHECK AUTO.
               05  LINE 20 COL 25 VALUE "Press 'S' to SAVE ".
               05  LINE 20 COL 43 VALUE "or 'R' to RETURN".
               05  LINE 21 COL 29 VALUE "(all other keys start over)".        
               