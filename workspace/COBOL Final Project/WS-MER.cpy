      *Skeleton COBOL Copybook - Jesse Nicholson - 4/7/2014
        01  WS-STAT                     PIC XX.
       
       01  WS-TSTAMP.
           03  WS-YEAR                     PIC XXXX.
           03  WS-MONTH                    PIC XX.
           03  WS-DAY                      PIC XX.
           03  WS-HOUR                     PIC XX.
           03  WS-MINUTE                   PIC XX.
       
       01  VFX-M-VARS.
           03  VISA-M-SEL               PIC X.
           03  VISA-M-PROG              PIC X(20) VALUE SPACES.
           03  VISA-M-EXIT              PIC X     VALUE SPACES.
       
       01  VFX-2-VARS.
           03  VISA-MER-RESP              PIC X.
           03  VISA-MER-CHECK             PIC X.
           03  VISA-MER-MSG               PIC X(10).
           03  VISA-MER-SEARCH-ID         PIC 9(8).
           03  VISA-MER-SEARCH-EMAIL      PIC X(30).
           03  VISA-MER-EDITOR.
               05  VISA-MER-ORIG.
                   07  VISA-MER-ORIG-ID              PIC 9(8).
                   07  VISA-MER-ORIG-NAME            PIC X(25).
                   07  VISA-MER-ORIG-ADDRESS         PIC X(25).
                   07  VISA-MER-ORIG-PHONE           PIC 9(11).
                   07  VISA-MER-ORIG-ZIP             PIC 9(5).
                   07  VISA-MER-ORIG-ACCT            PIC 9(10).
                   07  VISA-MER-ORIG-ROUTE           PIC 9(9).
               05 VFX-2-EDIT.
                   07  VISA-MER-EDIT-ID              PIC 9(8).
                   07  VISA-MER-EDIT-NAME            PIC X(25).
                   07  VISA-MER-EDIT-ADDRESS         PIC X(25).
                   07  VISA-MER-EDIT-PHONE           PIC 9(11).
                   07  VISA-MER-EDIT-ZIP             PIC 9(5).
                   07  VISA-MER-EDIT-ACCT            PIC 9(10).
                   07  VISA-MER-EDIT-ROUTE           PIC 9(9).