      ******************************************************************
      *PROGRAM:  Group 3 CC Linkage Program
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/24/2014   
      *ABSTRACT: Program to link VFX and CAP1 to perform transactions. 
      ******************************************************************
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. G3-LINK-CC-TRANS IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-CC-TRAN.
      ******************************************************************
       DATA DIVISION.
       COPY FD-CC-TRAN.
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
       
       LINKAGE SECTION.
       01  LK-CC-ID                PIC 9(8).
       01  LK-PRICE                PIC 99V99.
       01  LK-COMPLETED            PIC X.
       
       PROCEDURE DIVISION USING LK-CC-ID, LK-PRICE.
       100-MAIN.
           OPEN I-O CC-TRAN-FILE
           MOVE LK-CC-ID TO CC-ID
           MOVE FUNCTION CURRENT-DATE TO CC-TRAN-TSTAMP.
           MOVE LK-PRICE TO CC-TRAN-PRICE.
           WRITE CC-TRAN.
           CLOSE CC-TRAN-FILE.
       EXIT PROGRAM.