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
       COPY SELECT-CHOLD.
      ******************************************************************
       DATA DIVISION.
       COPY FD-CHOLD.
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
       
       LINKAGE SECTION.
       01  LK-CC-ID                PIC 9(8).
       01  LK-COMPLETED            PIC X.
       
       PROCEDURE DIVISION USING LK-CC-ID, LK-COMPLETED.
       100-MAIN.
           OPEN INPUT CH-FILE
           MOVE LK-CC-ID TO CH-ID
           READ CH-FILE
               INVALID KEY
                   MOVE 'N' TO LK-COMPLETED
               NOT INVALID KEY
                   MOVE 'Y' TO LK-COMPLETED
           END-READ
       CLOSE CH-FILE.
       EXIT PROGRAM.