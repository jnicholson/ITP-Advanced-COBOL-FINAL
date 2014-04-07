      ******************************************************************
      *PROGRAM:  Vuflix Edit Account Page
      *AUTHOR:   Jarrod Lee
      *DATE:     4/7/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VUFL-2-EA.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VUFLIX-MEMBER.
      ******************************************************************
       DATA DIVISION.
       COPY FD-VUFLIX-MEMBER.
       
       WORKING-STORAGE SECTION.
       COPY WS-VUFL-EDIT.
       
       SCREEN SECTION.
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       
       
