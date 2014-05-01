      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-EDIT                              *
      * AUTHOR        : DEVIN LEAMAN                                    * 
      * CREATION DATE : 4/30/14                                         *
      * PURPOSE       : CAP1 TRANSACTION LIST                           *
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
      ******************************************************************* 
       SCREEN SECTION.
       COPY SCREEN-CAP1-TRANS.
      ******************************************************************* 
       PROCEDURE DIVISION.
       000-MAIN.
       OPEN I-O CH-FILE
                CC-TRAN-FILE.
       MOVE FUNCTION CURRENT-DATE TO WS-TSTAMP.
       MOVE 'G3-CAP1-TRANS' TO CAP1-M-PROG.
       DISPLAY MAIN-SCREEN.
       ACCEPT MAIN-SCREEN.
      ******************************************************************* 
       100-SEARCH.
       MOVE WS-ACCNT-NUM TO CH-ID-KEY.
           