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
       
       01  WS-CH-EOF                   PIC X VALUE SPACES.
       01  WS-CC-EOF                   PIC X VALUE SPACES.
       01  WS-TOTAL                    PIC 9999V99 VALUE ZERO.
       PROCEDURE DIVISION.
       100-MAIN.
           OPEN I-O CH-FILE
                    CC-TRAN-FILE.
           MOVE ZERO TO CH-ID.
           START CH-FILE KEY NOT LESS THAN CH-ID
           PERFORM UNTIL WS-CH-EOF = 'Y'
               READ CH-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-CH-EOF
                   NOT AT END
                       MOVE CH-BAL TO WS-TOTAL
                       PERFORM 200-CALC
                       MOVE WS-TOTAL TO CH-BAL
                       REWRITE CH-REC
               END-READ
           END-PERFORM.
           DELETE CC-TRAN-FILE.
       EXIT PROGRAM.
      ******************************************************************
       200-CALC.
           MOVE CH-ID TO CC-ID
           START CC-TRAN-FILE KEY NOT LESS THAN CC-ID
           PERFORM UNTIL WS-CC-EOF = 'Y'
               READ CC-TRAN-FILE NEXT RECORD
                   AT END
                       MOVE 'Y' TO WS-CC-EOF
                   NOT AT END
                       IF CC-ID = CH-ID THEN
                           COMPUTE WS-TOTAL = WS-TOTAL + CC-TRAN-PRICE
                       END-IF
               END-READ
           END-PERFORM.