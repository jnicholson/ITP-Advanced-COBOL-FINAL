      ******************************************************************
      *PROGRAM:  Vuflix TITLES PURCHASED PAGE
      *AUTHOR:   Jarrod Lee
      *DATE:     4/9/2014   
      *ABSTRACT: 
      ******************************************************************
       PROGRAM-ID. G3-VUFL-4-TP.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-VUFLIX-PURCHASED.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       COPY FD-VUFLIX-PURCHASED.
       
       WORKING-STORAGE SECTION.
       COPY WS-VUFLIX.