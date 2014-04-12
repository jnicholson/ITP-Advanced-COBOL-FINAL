      *Skeleton COBOL Copybook - Jesse Nicholson - 4/7/2014
       01  WS-STAT                     PIC XX.
       
       01  WS-TSTAMP.
           03  WS-YEAR                     PIC XXXX.
           03  WS-MONTH                    PIC XX.
           03  WS-DAY                      PIC XX.
           03  WS-HOUR                     PIC XX.
           03  WS-MINUTE                   PIC XX.
       
       01  VISA-M-VARS.
           03  VISA-M-SEL               PIC X.
           03  VISA-M-PROG              PIC X(20) VALUE SPACES.
           03  VISA-M-EXIT              PIC X     VALUE SPACES.
       
       01  VISA-2-VARS.
           03  VISA-MERLOC-RESP              PIC X.
           03  VISA-MERLOC-CHECK             PIC X.
           03  VISA-MERLOC-MSG               PIC X(10).
           03  VISA-MERLOC-SEARCH-ID         PIC 9(8).
           03  VISA-MERLOC-SEARCH-EMAIL      PIC X(30).
           03  VISA-MERLOC-EDITOR.
               05  VISA-MERLOC-ORIG.
                   07  VISA-MERLOC-ORIG-ID              PIC 9(8).
                   07  VISA-MERLOC-ORIG-NAME            PIC X(25).
                   07  VISA-MERLOC-ORIG-ADDRESS         PIC X(25).
                   07  VISA-MERLOC-ORIG-PHONE           PIC 9(11).
                   07  VISA-MERLOC-ORIG-ZIP             PIC 9(5).
                   07  VISA-MERLOC-ORIG-ACCT            PIC 9(10).
                   07  VISA-MERLOC-ORIG-ROUTE           PIC 9(9).
               05 VISA-MERLOC-EDIT.
                   07  VISA-MERLOC-EDIT-ID              PIC 9(8).
                   07  VISA-MERLOC-EDIT-NAME            PIC X(25) VALUE 
                   SPACES.
                   07  VISA-MERLOC-EDIT-ADDRESS         PIC X(25) VALUE 
                   SPACES.
                   07  VISA-MERLOC-EDIT-PHONE           PIC 9(11).
                   07  VISA-MERLOC-EDIT-ZIP             PIC 9(5).
                   07  VISA-MERLOC-EDIT-ACCT            PIC 9(10).
                   07  VISA-MERLOC-EDIT-ROUTE           PIC 9(9).