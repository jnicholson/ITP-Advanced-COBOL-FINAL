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
       
       SCREEN SECTION.
       01  BLANK-SCREEN.
           03  BLANK SCREEN.
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
           END-PERFORM
           PERFORM 300-DELETE
           PERFORM 400-DUMMY-REC
           CLOSE CH-FILE
           CLOSE CC-TRAN-FILE
           DISPLAY BLANK-SCREEN
               DISPLAY 'CALCULATING NEW MONTHLY BALANCE...'
               DISPLAY 'EXITING....'
               DISPLAY "PRESS 'ENTER' TO CONTINUE"
               ACCEPT CAP1-RESP
               EXIT PROGRAM
       EXIT PROGRAM.
      *  STOP RUN.
      ******************************************************************
       200-CALC.
       MOVE ZERO TO CC-ID
       START CC-TRAN-FILE KEY NOT LESS THAN CC-ID 
       PERFORM UNTIL WS-CC-EOF = 'Y'
           READ CC-TRAN-FILE NEXT RECORD
               AT END
                   MOVE 'Y' TO WS-CC-EOF
               NOT AT END
                   IF CC-ID EQUAL TO CH-ID THEN
                       IF TRAN-TYPE = 'W' THEN
                           COMPUTE WS-TOTAL = WS-TOTAL + CC-TRAN-PRICE
                       END-IF
                       IF TRAN-TYPE = 'D' THEN
                           COMPUTE WS-TOTAL = WS-TOTAL - CC-TRAN-PRICE
                       END-IF
                   END-IF
           END-READ
       END-PERFORM
       MOVE SPACES TO WS-CC-EOF.
      ******************************************************************
       300-DELETE.
       MOVE ZERO TO CC-ID
       START CC-TRAN-FILE KEY NOT LESS THAN CC-ID
       PERFORM UNTIL WS-CC-EOF = 'Y'
           READ CC-TRAN-FILE NEXT RECORD
               AT END
                   MOVE 'Y' TO WS-CC-EOF
               NOT AT END
                   DELETE CC-TRAN-FILE
           END-READ
       END-PERFORM.
      ******************************************************************
       400-DUMMY-REC.
       MOVE 4999999 TO CC-ID
       MOVE 9999 TO CC-TRAN-YEAR
       MOVE 99 TO CC-TRAN-DAY
       MOVE 99 TO CC-TRAN-MONTH
       MOVE 99 TO CC-TRAN-HOUR
       MOVE 99 TO CC-TRAN-MIN
       MOVE 0000 TO CC-TRAN-PRICE
       MOVE 'W' TO TRAN-TYPE
       WRITE CC-TRAN-REC.