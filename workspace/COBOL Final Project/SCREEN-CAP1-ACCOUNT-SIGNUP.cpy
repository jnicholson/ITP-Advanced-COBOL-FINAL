      *******************************************************************
      * AUTHOR       : DEVIN LEAMAN                                     *
      * CREATION DATE: 4/9/14                                           *
      * LAST EDIT    : 4/9/14                                           *
      * PURPOSE      : SCREEN FOR ACCOUNT SIGN UP                       *
      *******************************************************************
       01  WS-NEW-MEMBER.
           03  WS-FNAME    PIC X(20).
           03  WS-LNAME    PIC X(20).
           03  WS-STREET   PIC X(20).
           03  WS-CITY     PIC X(20).
           03  WS-STATE    PIC XX.
           03  WS-ZIP      PIC 9(5).
           03  WS-EMAIL    PIC X(30).
           03  WS-ACNT-NUM PIC 9(8).
           
       SCREEN SECTION.
       01  ACNT-SIGNUP.
           03  BLANK SCREEN.
           03  LINE 1 COL 1 VALUE "CAPITAL ONE ACCOUNT SIGNUP".
           03  NAME-INPUT.
               05  LINE 3  COL 1   VALUE "FIRST NAME:".
               05  LINE 3  COL 20  PIC X(20) TO WS-FNAME.
               05  LINE 4  COL 1   VALUE "LAST NAME:".
               05  LINE 4  COL 20  PIC X(20) TO WS-LNAME.
               05  LINE 5  COL 1   VALUE "STREET:".
               05  LINE 5  COL 20  PIC X(20) TO WS-STREET.
               05  LINE 6  COL 1   VALUE "CITY:".
               05  LINE 6  COL 20  PIC X(20) TO WS-CITY.
               05  LINE 7  COL 1   VALUE "STATE:".
               05  LINE 7  COL 20  PIC XX TO WS-STATE.
               05  LINE 8  COL 1   VALUE "ZIP-CODE:".
               05  LINE 8  COL 20  PIC 9(5) TO WS-ZIP.
               05  LINE 9  COL 1   VALUE "EMAIL:".
               05  LINE 9  COL 20  PIC X(30) TO WS-EMAIL.
               05  LINE 10 COL 1   VALUE "ACCOUNT NUMBER:".
               05  LINE 10 COL 20  PIC 9(8) TO WS-ACNT-NUM.
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
