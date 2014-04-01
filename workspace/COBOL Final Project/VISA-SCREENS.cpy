      *******************************************************************
      * AUTHOR       : JESSE NICHOLSON                                  *
      * CREATION DATE: 3/26/14                                          *
      * LAST EDIT    : 3/26/14                                          *
      * PURPOSE      : SCREENS FOR VISA PAGES INCLUDED WITHIN           *
      *******************************************************************
       01  WS-TIME-LOG.
           03  WS-DATE.
               05  WS-YEAR             PIC X(4).
               05  WS-MONTH            PIC X(2).
               05  WS-DAY              PIC X(2).
           03  WS-TIME.
               05  WS-HOUR             PIC X(2).
               05  WS-MIN              PIC X(2).
               
       01  WS-SCREEN-NAVIGATION-VARIABLES.
           03  WS-ACTION-SELECTION         PIC X.
               
       SCREEN SECTION.
       01  SCREEN-TITLE.
           03 SCREEN-TITLE-LINE-ONE.
               05  LINE 01 COL 01  "VISA MENU".
               05  LINE 01 COL 37 "TEAM 3".
               05  SCREEN-TITLE-DATE.
                   07  LINE 01 COL 71 PIC X(2) FROM WS-MONTH.
                   07  LINE 01 COL 73 VALUE "/".
                   07  LINE 01 COL 74 PIC X(2) FROM WS-DAY.
                   07  LINE 01 COL 76 VALUE "/".
                   07  LINE 01 COL 77 PIC X(4) FROM WS-YEAR.
           03  SCREEN-TITLE-LINE-TWO.
               05  SCREEN-TITLE-TIME.
                   07  LINE 02 COL 76 PIC X(2) FROM WS-HOUR.
                   07  LINE 02 COL 78 VALUE ":".
                   07  LINE 02 COL 79 PIC X(2) FROM WS-MIN.
      *-----------------------------------------------------------------         
       01  SCREEN-VISA-MENU.
           03  SCREEN-MENU-OPTIONS.
               05  LINE 13 COL 30  VALUE "1.  ISSUERS".
               05  LINE 15 COL 30  VALUE "2.  MERCHANTS".
               05  LINE 17 COL 30  VALUE "B.  GO BACK".
           03  SCREEN-MENU-NAVIGATION.
               05  LINE 21 COL 30 VALUE "SELECT ACTION:".
               05  LINE 21 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-MENU-CLEAR.
               05  LINE 3  COL 30  VALUE "                            ".
               05  LINE 5  COL 30  VALUE "                            ".
               05  LINE 7  COL 30  VALUE "                            ".
               05  LINE 9  COL 30  VALUE "                            ".
               05  LINE 11 COL 30  VALUE "                            ".
               05  LINE 13 COL 30  VALUE "                            ".
               05  LINE 15 COL 30  VALUE "                            ".
               05  LINE 17 COL 30  VALUE "                            ".
               05  LINE 19 COL 30  VALUE "                            ".
               05  LINE 21 COL 30  VALUE "                            ".
      *-----------------------------------------------------------------
       01  SCREEN-ISSUER-MENU.
           03  SCREEN-MENU-OPTIONS.
               05  LINE 13 COL 30  VALUE "1.  SEARCH ISSUERS".
               05  LINE 15 COL 30  VALUE "2.  ADD ISSUER".
               05  LINE 17 COL 30  VALUE "3.  EDIT/DELETE ISSUER".
               05  LINE 19 COL 30  VALUE "B.  GO BACK".
           03  SCREEN-MENU-NAVIGATION.
               05  LINE 21 COL 30 VALUE "SELECT ACTION:".
               05  LINE 21 COL 45 PIC X TO WS-ACTION-SELECTION AUTO.
           03  SCREEN-MENU-CLEAR.
               05  LINE 3  COL 30  VALUE "                            ".
               05  LINE 5  COL 30  VALUE "                            ".
               05  LINE 7  COL 30  VALUE "                            ".
               05  LINE 9  COL 30  VALUE "                            ".
               05  LINE 11 COL 30  VALUE "                            ".
               05  LINE 13 COL 30  VALUE "                            ".
               05  LINE 15 COL 30  VALUE "                            ".
               05  LINE 17 COL 30  VALUE "                            ".
               05  LINE 19 COL 30  VALUE "                            ".
               05  LINE 21 COL 30  VALUE "                            ".
      *LINE 24 = LAST AVALIABLE LINE BEFORE SCROLL BAR USED.