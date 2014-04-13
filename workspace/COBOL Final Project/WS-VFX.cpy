      *Skeleton COBOL Copybook - JARROD LEE - 4/7/2014
       01  WS-STAT                     PIC XX.
       
       01  WS-TSTAMP.
           03  WS-YEAR                     PIC XXXX.
           03  WS-MONTH                    PIC XX.
           03  WS-DAY                      PIC XX.
           03  WS-HOUR                     PIC XX.
           03  WS-MINUTE                   PIC XX.
       
       01  VFX-M-VARS.
           03  VFX-M-SEL               PIC X.
           03  VFX-M-PROG              PIC X(15) VALUE SPACES.
           03  VFX-M-EXIT              PIC X     VALUE SPACES.
       
       01  VFX-2-VARS.
           03  VFX-2-RESP              PIC X.
           03  VFX-2-CHECK             PIC X.
           03  VFX-2-MSG               PIC X(10).
           03  VFX-2-SEARCH-ID         PIC 9(8).
           03  VFX-2-SEARCH-EMAIL      PIC X(30).
           03  VFX-2-EDITOR.
               05  VFX-2-ORIG.
                   07  VFX-2-ORIG-ID              PIC 9(8).
                   07  VFX-2-ORIG-FNAME           PIC X(15).
                   07  VFX-2-ORIG-LNAME           PIC X(15).
                   07  VFX-2-ORIG-ADDRESS         PIC X(20).
                   07  VFX-2-ORIG-PHONE           PIC 9(11).
                   07  VFX-2-ORIG-EMAIL           PIC X(30).
                   07  VFX-2-ORIG-ZIP             PIC 9(5).
                   07  VFX-2-ORIG-CC              PIC 9(16).
               05 VFX-2-EDIT.
                   07  VFX-2-EDIT-ID              PIC 9(8).
                   07  VFX-2-EDIT-FNAME           PIC X(15).
                   07  VFX-2-EDIT-LNAME           PIC X(15).
                   07  VFX-2-EDIT-ADDRESS         PIC X(20).
                   07  VFX-2-EDIT-PHONE           PIC 9(11).
                   07  VFX-2-EDIT-EMAIL           PIC X(30).
                   07  VFX-2-EDIT-ZIP             PIC 9(5).
                   07  VFX-2-EDIT-CC              PIC 9(16).
           
       01  VFX-3-VARS.
           03  VFX-3-RESP              PIC X       VALUE SPACES.
           03  VFX-3-SEL               PIC X       VALUE SPACES.
           03  VFX-3-MORE-SEL          PIC X       VALUE 'Y'.
           03  VFX-3-PUR-SEL           PIC X(8)    VALUE SPACES.
           03  VFX-3-CTR               PIC 99      VALUE ZERO.
           03  VFX-3-EOF-FLAG          PIC X       VALUE 'N'.
               88  VFX-3-EOF                       VALUE 'Y'.
           03  VFX-3-VML-LINE.
               05  VFX-3-ID            PIC X(8).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-3-TITLE         PIC X(35).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-3-GENRE         PIC X(10).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-3-PRICE         PIC $Z9.99.
       
       01  VFX-4-VARS.
           03  VFX-4-RESP              PIC X.
           03  VFX-4-SEL               PIC X.
           03  VFX-4-CHECK             PIC X.
           03  VFX-4-CTR               PIC 99.
           03  VFX-4-PUR-ID            PIC X(8).
           03  VFX-4-PUR-NAME          PIC X(35).
           03  VFX-4-PUR-GENRE         PIC X(10).
           03  VFX-4-PUR-PRICE         PIC 99.99.
           03  VFX-4-VML-LINE.
               05  VFX-4-ID            PIC X(8).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-4-TITLE         PIC X(35).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-4-GENRE         PIC X(10).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-4-PRICE         PIC $Z9.99.
           
       


