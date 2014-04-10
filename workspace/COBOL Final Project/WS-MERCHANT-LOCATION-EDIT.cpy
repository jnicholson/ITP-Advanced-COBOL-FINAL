      *Skeleton COBOL Copybook - Jesse Nicholson - 4/7/2014
       01  WS-TSTAMP.
           03  WS-YEAR                     PIC XXXX.
           03  WS-MONTH                    PIC XX.
           03  WS-DAY                      PIC XX.
           03  WS-HOUR                     PIC XX.
           03  WS-MINUTE                   PIC XX.
       
       01  WS-VARS.
           03  WS-RESP                     PIC X       VALUE SPACES.
           03  WS-STAT                     PIC XX      VALUE SPACES.
           03  WS-CHECK                    PIC X       VALUE SPACES.
       
       01  WS-SCREEN-VARS.
           03  WS-ACTION-SEL               PIC X       VALUE SPACES.
           03  WS-SEARCH-SEL               PIC X       VALUE SPACES.
           03  WS-SEARCH.
               05  WS-SEARCH-ID            PIC 9(8).
               05  WS-SEARCH-FNAME         PIC X(24).
               05  WS-SEARCH-ADDRESS       PIC X(20).
               05  WS-SEARCH-PHONE         PIC 9(11).
               05  WS-SEARCH-EMAIL         PIC X(30).
               05  WS-SEARCH-ZIP           PIC 9(5).
               05  WS-SEARCH-CC            PIC 9(16).
               
       01  WS-EDITOR.
           03  WS-ORIG.
               05  WS-ORIG-ID              PIC 9(8).
               05  WS-ORIG-NAME            PIC X(24).
               05  WS-ORIG-ADDRESS         PIC X(20).
               05  WS-ORIG-PHONE           PIC 9(11).
               05  WS-ORIG-EMAIL           PIC X(30).
               05  WS-ORIG-ZIP             PIC 9(5).
               05  WS-ORIG-CC              PIC 9(16).
               05  WS-ORIG-ACCOUNT         PIC 9(10).
               05  WS-ORIG-ROUTE           PIC 9(9).
           03 WS-EDIT.
               05  WS-EDIT-ID              PIC 9(8).
               05  WS-EDIT-NAME            PIC X(24).
               05  WS-EDIT-ADDRESS         PIC X(20).
               05  WS-EDIT-PHONE           PIC 9(11).
               05  WS-EDIT-EMAIL           PIC X(30).
               05  WS-EDIT-ZIP             PIC 9(5).
               05  WS-EDIT-CC              PIC 9(16).


