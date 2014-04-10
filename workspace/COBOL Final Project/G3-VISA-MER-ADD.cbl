      ******************************************************************
      *PROGRAM:  Merchant Signup Account Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MER-SIGNUP.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-MER.
      ******************************************************************
       DATA DIVISION.
       COPY FD-MER.
       
       WORKING-STORAGE SECTION.
       COPY WS-MER-EDIT.
       
       01 WS-FILE      PIC X(20) VALUE "G3-VISA-MER-SIGNUP".
       
       SCREEN SECTION.
       COPY SCREEN-MER-ADD.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
           MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
           DISPLAY SIGNUPSCREEN
           ACCEPT  WS-EDIT-ID
           ACCEPT  WS-EDIT-NAME
           ACCEPT  WS-EDIT-ADDRESS
           ACCEPT  WS-EDIT-ZIP
           ACCEPT SIGNUPSCREEN.
           