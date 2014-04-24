      ******************************************************************
      *PROGRAM:  Group 3 CC Linkage Program
      *AUTHOR:   Jesse Nicholson
      *DATE:     4/24/2014   
      *ABSTRACT: Program to link VFX and CAP1 to check CC. 
      ******************************************************************
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. G3-LINK-CC-CHECK IS INITIAL.
      ******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-CC-TRAN.
      ******************************************************************
       DATA DIVISION.
       COPY FD-CC-TRAN.
       WORKING-STORAGE SECTION.