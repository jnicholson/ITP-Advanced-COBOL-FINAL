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
       COPY SELECT-CC-TRAN.
      ******************************************************************
       DATA DIVISION.
       COPY FD-CHOLD.
       COPY FD-CC-TRAN.
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.
       
       01 WS-EOF                   PIC X VALUE SPACES.
       01 WS-TOTAL                 PIC 9999V99 VALUE ZERO.
       
       LINKAGE SECTION.
       01  LK-CC-ID                PIC 9(8).
       01  LK-PRICE                PIC 99V99.
       01  LK-COMPLETED            PIC X.
       
       PROCEDURE DIVISION USING LK-CC-ID, LK-PRICE, LK-COMPLETED.
       100-MAIN.
           OPEN INPUT CH-FILE
                INPUT CC-TRAN-FILE
           MOVE LK-CC-ID TO CH-ID
           MOVE 'N' TO LK-COMPLETED
           READ CH-FILE
               INVALID KEY
                   MOVE 'N' TO LK-COMPLETED
               NOT INVALID KEY
                   PERFORM 200-CHECK-LIMIT
           END-READ
       CLOSE CH-FILE
             CC-TRAN-FILE
       EXIT PROGRAM.
      ******************************************************************
       200-CHECK-LIMIT.
           MOVE LK-CC-ID TO CC-ID
           START CC-TRAN-FILE KEY NOT LESS THAN CC-ID
           PERFORM UNTIL WS-EOF = 'Y'
               READ CC-TRAN-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF
                       COMPUTE WS-TOTAL = WS-TOTAL + CH-BAL
                   NOT AT END
                       IF CC-ID = LK-CC-ID THEN
                           COMPUTE WS-TOTAL = WS-TOTAL + CC-TRAN-PRICE
                       END-IF
               END-READ
           END-PERFORM
           IF WS-TOTAL IS LESS THAN CH-LIMIT THEN
              MOVE 'Y' TO LK-COMPLETED
           END-IF.
      ******************************************************************         