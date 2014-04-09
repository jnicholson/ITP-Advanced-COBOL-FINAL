      *Skeleton COBOL Copybook
       01  WS-TIME-LOG.
           03  WS-DATE.
               05  WS-YEAR             PIC X(4).
               05  WS-MONTH            PIC X(2).
               05  WS-DAY              PIC X(2).
           03  WS-TIME.
               05  WS-HOUR             PIC X(2).
               05  WS-MIN              PIC X(2).
               
       01  WS-SCREEN-NAVIGATION-VARIABLES.
           03  WS-ACTION-SELECTION         PIC X.
           03  WS-SEARCH-SELECTION         PIC X.
           03  WS-SEARCH-ENTRY.
               05  WS-SEARCH-ID            PIC X(6).
               05  WS-SEARCH-NAME         PIC X(40).
               05  WS-SEARCH-ADDRESS.
                   07  WS-SEARCH-ADDRESS-STREET    PIC X(20).
                   07  WS-SEARCH-ADDRESS-CITY      PIC X(20).
                   07  WS-SEARCH-ADDRESS-ZIP       PIC 9(5).
                   07  WS-SEARCH-ADDRESS-STATE     PIC X(2).
               05  WS-SEARCH-CREDITCARD    PIC 9(19).
               
       01  WS-EDITOR.
           03  WS-EDITOR.
               05  WS-ISS-ID          PIC X(6).
               05  WS-ISS-NAME        PIC X(40).
               05  WS-ISS-LNAME        PIC X(40).
               05  WS-ISS-ADDRESS     PIC X(40).
               05  WS-ISS-ZIP         PIC 9(5).
               05  WS-ISS-CC          PIC X(19).
               05  WS-ISS-EMAIL       PIC X(20).
               
       01  WS-WORK-VARIABLES.
           03  WS-EOF-FLAGGER          PIC X VALUE 'N'.
               88  WS-EOF                    VALUE 'Y'.


