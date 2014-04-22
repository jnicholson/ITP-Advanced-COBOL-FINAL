      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-INQ                               *
      * AUTHOR        : DEVIN LEAMAN                                    *
      * CREATION DATE : 4/21/14                                         *
      * PURPOSE       : CAPITAL ONE WORKING STORAGE SECTION             *
      *******************************************************************
       
       01  WS-STAT             PIC 99.
       01  WS-FLAG             PIC X     VALUE 'Y'.
       01  WS-ERROR            PIC X(20) VALUE SPACES.
       01  WS-SEARCH-NUM       PIC 9.
       01  WS-BLANKS           PIC X(25) VALUE SPACES.
       01  WS-CTR              PIC 99.
       01  WS-SCTR             PIC 99.
       01  CAP1-MSG            PIC X(10).
       01  CAP1-RESP           PIC X.
       
       01  WS-TSTAMP.
           03  WS-YEAR         PIC XXXX.
           03  WS-MONTH        PIC XX.
           03  WS-DAY          PIC XX.
           03  WS-HOUR         PIC XX.
           03  WS-MINUTE       PIC XX.
       
       01  WS-MEMBER.
           03  WS-FNAME        PIC X(15).
           03  WS-LNAME        PIC X(15).
           03  WS-ADDRESS      PIC X(25).
           03  WS-ZIP          PIC 9(5).
           03  WS-ACCNT-NUM    PIC 9(8).
           03  WS-EMAIL        PIC X(35).
           03  WS-PHONE        PIC 9(10).
       
       01  CAP1-M-VARS.
           03  CAP1-M-SEL      PIC X.
           03  CAP1-M-PROG     PIC X(20) VALUE SPACES.
           03  CAP1-M-EXIT     PIC X     VALUE SPACES.

       
       01  CAP1-EDIT-VARS.
           03  CAP1-CHECK      PIC X.
           03  CAP1-DELETE     PIC X.
           03  CAP1-SEARCH     PIC X(35).
           03  CAP1-EDIT.
               05  CAP1-ORIG-REC.
                   07  CAP1-ORIG-ID        PIC 9(8).
                   07  CAP1-ORIG-F-NAME    PIC X(20).
                   07  CAP1-ORIG-L-NAME    PIC X(20).
                   07  CAP1-ORIG-PHONE     PIC 9(10).
                   07  CAP1-ORIG-ADDRESS   PIC X(20).
                   07  CAP1-ORIG-ZIP       PIC 9(5).
                   07  CAP1-ORIG-EMAIL     PIC X(30).
               05  CAP1-EDIT-REC.
                   07  CAP1-EDIT-ID        PIC 9(8).
                   07  CAP1-EDIT-F-NAME    PIC X(20).
                   07  CAP1-EDIT-L-NAME    PIC X(20).
                   07  CAP1-EDIT-PHONE     PIC 9(10).
                   07  CAP1-EDIT-ADDRESS   PIC X(20).
                   07  CAP1-EDIT-ZIP       PIC 9(5).
                   07  CAP1-EDIT-EMAIL     PIC X(30).
