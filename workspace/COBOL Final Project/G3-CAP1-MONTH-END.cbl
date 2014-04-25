      ******************************************************************
      *PROGRAM:  Group 3 CC Transaction End calculate
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/24/2014   
      *ABSTRACT: Program to recalc month-end totals. 
      ******************************************************************
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. G3-CAP1-MONTH-END IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-CHOLD.
       COPY SELECT-CC-TRAN.
      ******************************************************************
       DATA DIVISION.
       COPY FD-CHOLD.
       COPY FD-CC-TRAN.
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
       
       PROCEDURE DIVISION.
       100-MAIN.
           OPEN I-O CH-FILE
                    CC-TRAN-FILE.
                    
       EXIT PROGRAM.