      *Skeleton COBOL Copybook - Devin Leaman - 4/21/2014
       01  WS-STAT             PIC 99.
       01  WS-FLAG             PIC X.
       01  WS-ERROR            PIC X(20) VALUE SPACES.
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
           03  WS-SEARCH-NUM   PIC 9(8).
       
       01  CAP1-M-VARS.
           03  CAP1-M-SEL      PIC X.
           03  CAP1-M-PROG     PIC X(20) VALUE SPACES.
           03  CAP1-M-EXIT     PIC X     VALUE SPACES.


