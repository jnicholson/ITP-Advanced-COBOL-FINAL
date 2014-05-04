      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-TRANS                               *
      * AUTHOR        : DEVIN LEAMAN                                    * 
      * CREATION DATE : 4/30/14                                         *
      * ABSTRACT      : CAP1 TRANSACTION LIST                           *
      ******************************************************************* 
       PROGRAM-ID. G3_CAP1_TRANS IS INITIAL.
      *******************************************************************
       ENVIRONMENT DIVISION.
       COPY SELECT-CC-TRAN.
       COPY SELECT-CHOLD.
      ******************************************************************* 
       DATA DIVISION.
       COPY FD-CC-TRAN.
       COPY FD-CHOLD.
       
       WORKING-STORAGE SECTION.
       COPY WS-CAP1.

       SCREEN SECTION.
       COPY SCREEN-CAP1-TRANS.
      ******************************************************************* 
       PROCEDURE DIVISION.
       000-MAIN.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-CAP1-TRANS' TO CAP1-M-PROG.
       PERFORM 100-SEARCH UNTIL WS-FLAG EQUALS 'N' OR 'n'.
       EXIT PROGRAM.
      ******************************************************************* 
       100-SEARCH.
       OPEN I-O CC-TRAN-FILE.
       MOVE ZEROS TO CC-ID.
       DISPLAY MAIN-SCREEN.
       ACCEPT MAIN-SCREEN.
       PERFORM 200-MOVES.
       DISPLAY TRANS-DISP.
       PERFORM UNTIL WS-FLAG EQUALS 'N'
           READ CC-TRAN-FILE NEXT RECORD
               AT END
                   MOVE 'N' TO WS-FLAG
               NOT AT END
                   IF WS-CTR EQUALS 23 THEN
                       DISPLAY NEXT-PAGE
                       ACCEPT NEXT-PAGE
                       IF WS-EOR-FLAG EQUALS 'N' OR 'n' THEN
                           MOVE 'N' TO WS-FLAG
                       ELSE
                           MOVE 12 TO WS-CTR
                           DISPLAY TRANS-DISP
                       END-IF
                   END-IF
                   
                   IF WS-FLAG NOT EQUAL TO 'N'
                       IF CC-ID EQUALS WS-ACCNT-NUM THEN 
                           DISPLAY TRANS-REC
                           ADD 1 TO WS-CTR
                       END-IF
                   END-IF
           END-READ
       END-PERFORM.
       DISPLAY CONFIRMATION.
       ACCEPT CONFIRMATION.
       CLOSE CC-TRAN-FILE.
      *******************************************************************
       200-MOVES.
       MOVE ZEROS TO CC-TRAN-REC.
       MOVE 'Y' TO WS-FLAG.
       MOVE '12' TO WS-CTR.
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   