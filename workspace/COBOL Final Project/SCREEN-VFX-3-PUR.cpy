      *Skeleton COBOL Copybook - KATIE TRAN - 4/7/2014
       01  PTSCREEN-HEADER.
           03  BLANK SCREEN.
           03  PURCHASETITLE.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 35 VALUE 'Purchase Movie'.
       
       01  IDSCREEN.
           03  BLANK SCREEN.
           03  CHOOSEID.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 35 VALUE 'Purchase Movie'.
               05  LINE 10 COL 28 VALUE 'Enter ID to continue'.
               05  LINE 10 COL 49 PIC X(8)     TO VFX-3-SEARCH-ID 
                                               FULL REQUIRED AUTO.
               05  LINE 11 COL 28 VALUE '(Exit = 99999999)'.
               05  LINE 11 COL 47 PIC X(10)    FROM VFX-2-MSG.
       
       01  CHECKSCREEN.
           03  BLANK SCREEN. 
           03  CHECK.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 34 VALUE "CHECK ACCOUNT".
               05  LINE 08 COL 26 VALUE "ID".
               05  LINE 08 COL 45 PIC X(8)     FROM VFX-3-ORIG-ID.
               05  LINE 09 COL 26 VALUE "First Name".
               05  LINE 09 COL 45 PIC X(15)    FROM VFX-3-ORIG-FNAME.
               05  LINE 10 COL 26 VALUE "Last Name".
               05  LINE 10 COL 45 PIC X(15)    FROM VFX-3-ORIG-LNAME.
               05  LINE 11 COL 26 VALUE "Address".
               05  LINE 11 COL 45 PIC X(20)    FROM VFX-3-ORIG-ADDRESS. 
               05  LINE 12 COL 26 VALUE "City".
               05  LINE 12 COL 45 PIC X(30)    FROM VFX-3-ORIG-CITY.
               05  LINE 13 COL 26 VALUE "State".
               05  LINE 13 COL 45 PIC X(2)     FROM VFX-3-ORIG-STATE.
               05  LINE 14 COL 26 VALUE "Zip".
               05  LINE 14 COL 45 PIC X(5)     FROM VFX-3-ORIG-ZIP.
               05  LINE 15 COL 26 VALUE "Phone".
               05  LINE 15 COL 45 PIC X(11)    FROM VFX-3-ORIG-PHONE.
               05  LINE 16 COL 26 VALUE "Email".
               05  LINE 16 COL 45 PIC X(30)    FROM VFX-3-ORIG-EMAIL.
               05  LINE 17 COL 26 VALUE "CC Number".
               05  LINE 17 COL 45 PIC X(8)    FROM VFX-3-ORIG-CC.
               05  LINE 19 COL 28 VALUE "Is this information correct?".
               05  LINE 21 COL 30 PIC X        TO VFX-3-CHECK AUTO.
               05  LINE 21 COL 32 VALUE "Press 'Y' to confirm".
       
       01 PTSCREEN-SORT-MENU.
           03 PURCHASETITLE.
               05  LINE 10 COL 31 VALUE "       SORT BY      ".
               05  LINE 11 COL 31 VALUE "      1) ID   ".
               05  LINE 12 COL 31 VALUE "      2) NAME     ".
               05  LINE 13 COL 31 VALUE "      3) GENRE  ".
               05  LINE 14 COL 31 VALUE "      4) PRICE ".
               05  LINE 22 COL 31 VALUE "Selection   (X=exit)".
               05  LINE 22 COL 41 PIC X        TO VFX-3-SEL AUTO.
       
       01  PTSCREEN-LABEL.
           03  BLANK SCREEN.
           03  PURCHASETITLE.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE "TEAM 3".
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE "/".
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE "/".
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 04 COL 01 VALUE "MOVIE ID".
               05  LINE 04 COL 10 VALUE "TITLE".
               05  LINE 04 COL 46 VALUE "GENRE".
               05  LINE 04 COL 57 VALUE "PRICE".
               
       01  CONT-FILE.
           03  LINE 21 COL 01 VALUE "PRESS 'P' FOR PURCHASE, ".
           03  LINE 21 COL 24 VALUE "'W' FOR WISHLIST, ".
           03  LINE 21 COL 42 VALUE "'N' FOR NEXT PAGE, ".
           03  LINE 21 COL 61 VALUE "OR 'X' TO EXIT.".
           03  LINE 21 COL 77 PIC X            TO VFX-3-RESP AUTO.
      
       01  PTSCREEN-PURCHASE.
           03  LINE 23 COL 01 VALUE "ENTER MOVIE ID: ".
           03  LINE 23 COL 18 PIC X(8)         TO VFX-3-VML-ID 
                                               FULL REQUIRED AUTO.
           03  LINE 24 COL 01 PIC X(80)        VALUE SPACES.            
       
       01  PTSCREEN-WISH.
           03  LINE 23 COL 01 VALUE "ENTER MOVIE ID: ".
           03  LINE 23 COL 18 PIC X(8)         TO VFX-3-VML-ID
                                               FULL REQUIRED AUTO.
           03  LINE 24 COL 01 PIC X(80)        VALUE SPACES.
       
       01  PURCHASED.
           03  LINE 24 COL 01 PIC X(80)        VALUE SPACES.
           03  LINE 24 COL 01 VALUE "PURCHASE COMPLETE!".
           
       01  ALPUR.
           03  LINE 24 COL 01 PIC X(80)        VALUE SPACES.
           03  LINE 24 COL 01 VALUE "ALREADY PURCHASED...".
           
       01  WISHLISTED.
           03  LINE 24 COL 01 PIC X(80)        VALUE SPACES.
           03  LINE 24 COL 01 VALUE "ADDED TO WISHLIST!".
           
       01  ALWSH.
           03  LINE 24 COL 01 PIC X(80)        VALUE SPACES.
           03  LINE 24 COL 01 VALUE "ALREADY ON WISHLIST...".
              
       01  NAMESCREEN.
           03  BLANK SCREEN.
           03  CHOOSENAME.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 35 VALUE 'Sort By Title'.
               05  LINE 11 COL 28 VALUE 'Enter Movie Title to Continue'.
               05  LINE 12 COL 25 PIC X(35)    TO VFX-3-SEARCH-TITLE 
                                               REQUIRED.
               05  LINE 13 COL 51 PIC X(10)    FROM VFX-2-MSG.

       01  GENRESCREEN.
           03  BLANK SCREEN.
           03  CHOOSEGENRE.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 35 VALUE 'Sort By Genre'.
               05  LINE 11 COL 28 VALUE 'Enter Movie Genre to Continue'.
               05  LINE 12 COL 35 PIC X(10)    TO VFX-3-SEARCH-GENRE 
                                               REQUIRED.
               05  LINE 12 COL 51 PIC X(10)    FROM VFX-2-MSG.

       01  PRICESCREEN.
           03  BLANK SCREEN.
           03  CHOOSEPRICE.
               05  LINE 01 COL 01 PIC X(20)    FROM VFX-M-PROG.
               05  LINE 01 COL 38 VALUE 'TEAM 3'.
               05  LINE 01 COL 71 PIC X(2)     FROM WS-MONTH.
               05  LINE 01 COL 73 VALUE '/'.
               05  LINE 01 COL 74 PIC X(2)     FROM WS-DAY.
               05  LINE 01 COL 76 VALUE '/'.
               05  LINE 01 COL 77 PIC X(4)     FROM WS-YEAR.
               05  LINE 06 COL 38 VALUE 'Vuflix'.
               05  LINE 08 COL 35 VALUE 'Sort By Price'.
               05  LINE 11 COL 28 VALUE 'Enter Movie Price to Continue'.
               05  LINE 12 COL 38 VALUE '$'.
               05  LINE 12 COL 39 PIC 9(2).99  TO VFX-3-SEARCH-PRICE 
                                               REQUIRED.
               05  LINE 12 COL 51 PIC X(10)    FROM VFX-2-MSG.
