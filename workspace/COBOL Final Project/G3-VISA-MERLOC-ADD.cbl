 ******************************************************************
      *PROGRAM:  Merchant Signup Account Page
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VISA-MERLOC-ADD.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-MERCHANT-LOCATION.
      ******************************************************************
       DATA DIVISION.
       COPY FD-MERCHANT-LOCATION.
       
       WORKING-STORAGE SECTION.
       COPY WS-MERCHANT-LOCATION-EDIT.
       
       01 WS-FILE      PIC X(20) VALUE "G3-VISA-MERLOC-ADD".
       
       SCREEN SECTION.
       COPY SCREEN-VISA-MERLOC-ADD.
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
           