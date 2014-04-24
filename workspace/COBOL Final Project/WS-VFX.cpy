      *Skeleton COBOL Copybook - JARROD LEE - 4/7/2014
       01  WS-STAT                     PIC XX      VALUE SPACES.
       01  WS-SEL                      PIC X       VALUE SPACES.
       01  WS-CTR                      PIC 99      VALUE ZEROS.
       01  WS-SCTR                     PIC 99      VALUE ZEROS.
       01  WS-BLANKS                   PIC X(25)   VALUE SPACES.
       
       01  WS-TSTAMP.
           03  WS-YEAR                 PIC XXXX    VALUE SPACES.
           03  WS-MONTH                PIC XX      VALUE SPACES.
           03  WS-DAY                  PIC XX      VALUE SPACES.
           03  WS-HOUR                 PIC XX      VALUE SPACES.
           03  WS-MINUTE               PIC XX      VALUE SPACES.
       
       01  VFX-M-VARS.
           03  VFX-M-SEL               PIC X.
           03  VFX-M-PROG              PIC X(20)   VALUE SPACES.
           03  VFX-M-EXIT              PIC X       VALUE SPACES.
       
       01  VFX-1-VARS.
           03  VFX-1-RESP              PIC X       VALUE SPACES.
           03  VFX-1-CHECK             PIC X       VALUE SPACES.
           03  VFX-1-VM-ID             PIC 9(8).
           03  VFX-1-EDITOR.
               05  VFX-1-NEW.
                   07  VFX-1-NEW-ID                PIC 9(8).
                   07  VFX-1-NEW-FNAME             PIC X(15).
                   07  VFX-1-NEW-LNAME             PIC X(15).
                   07  VFX-1-NEW-ADDRESS           PIC X(20).
                   07  VFX-1-NEW-PHONE             PIC 9(11).
                   07  VFX-1-NEW-EMAIL             PIC X(30).
                   07  VFX-1-NEW-ZIP               PIC 9(5).
                   07  VFX-1-NEW-CC                PIC 9(16).
       
       01  VFX-2-VARS.
           03  VFX-2-RESP                          PIC X.
           03  VFX-2-CHECK                         PIC X.
           03  VFX-2-MSG                           PIC X(10).
           03  VFX-2-SEARCH-ID                     PIC 9(8).
           03  VFX-2-SEARCH-EMAIL                  PIC X(30).
           03  VFX-2-EDITOR.
               05  VFX-2-ORIG.
                   07  VFX-2-ORIG-ID               PIC 9(8).
                   07  VFX-2-ORIG-FNAME            PIC X(15).
                   07  VFX-2-ORIG-LNAME            PIC X(15).
                   07  VFX-2-ORIG-ADDRESS          PIC X(20).
                   07  VFX-2-ORIG-CITY             PIC X(30).
                   07  VFX-2-ORIG-STATE            PIC X(2).
                   07  VFX-2-ORIG-ZIP              PIC 9(5).
                   07  VFX-2-ORIG-PHONE            PIC 9(11).
                   07  VFX-2-ORIG-EMAIL            PIC X(30).
                   07  VFX-2-ORIG-CC               PIC 9(16).
               05 VFX-2-EDIT.
                   07  VFX-2-EDIT-ID               PIC 9(8).
                   07  VFX-2-EDIT-FNAME            PIC X(15).
                   07  VFX-2-EDIT-LNAME            PIC X(15).
                   07  VFX-2-EDIT-ADDRESS          PIC X(20).
                   07  VFX-2-EDIT-PHONE            PIC 9(11).
                   07  VFX-2-EDIT-EMAIL            PIC X(30).
                   07  VFX-2-EDIT-ZIP              PIC 9(5).
                   07  VFX-2-EDIT-CC               PIC 9(16).
            
       01  VFX-3-VARS.
           03  VFX-3-RESP              PIC X       VALUE SPACES.
           03  VFX-3-SEL               PIC X       VALUE SPACES.
           03  VFX-3-CHECK             PIC X       VALUE SPACES.
           03  VFX-3-ALPUR             PIC X       VALUE SPACES.
           03  VFX-3-ALWSH             PIC X       VALUE SPACES.
           03  VFX-3-SH                PIC X       VALUE SPACES.
           03  VFX-3-CTR               PIC 99      VALUE ZEROS.
           03  VFX-3-EOF-FLAG          PIC X       VALUE 'N'.
               88  VFX-3-EOF                       VALUE 'Y'.
           03  VFX-3-SEARCH-ID         PIC 9(8).
           03  VFX-3-SEARCH-TITLE      PIC X(35).
           03  VFX-3-SEARCH-GENRE      PIC X(10).
           03  VFX-3-SEARCH-PRICE      PIC 9(2)V99.
           03  VFX-3-VML-ID            PIC 9(8).
           03  VFX-3-VTP-ID            PIC 9(8).
           03  VFX-3-VW-ID             PIC 9(8).
           03  VFX-3-EDITOR.
               05  VFX-3-ORIG.
                   07  VFX-3-ORIG-ID               PIC 9(8).
                   07  VFX-3-ORIG-FNAME            PIC X(15).
                   07  VFX-3-ORIG-LNAME            PIC X(15).
                   07  VFX-3-ORIG-ADDRESS          PIC X(20).
                   07  VFX-3-ORIG-CITY             PIC X(30).
                   07  VFX-3-ORIG-STATE            PIC X(2).
                   07  VFX-3-ORIG-PHONE            PIC 9(11).
                   07  VFX-3-ORIG-EMAIL            PIC X(30).
                   07  VFX-3-ORIG-ZIP              PIC 9(5).
                   07  VFX-3-ORIG-CC               PIC 9(16).
           03  VFX-3-VML-LINE.
               05  VFX-3-ID            PIC X(8).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-3-TITLE         PIC X(35).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-3-GENRE         PIC X(10).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-3-PRICE         PIC $Z9.99.
       
       01  VFX-4-VARS.
           03  VFX-4-RESP              PIC X       VALUE SPACES.
           03  VFX-4-CHECK             PIC X       VALUE SPACES.
           03  VFX-4-LOOP              PIC X       VALUE SPACES.
           03  VFX-4-CTR               PIC 99      VALUE ZERO.
           03  VFX-4-SEARCH-ID         PIC 9(8).
           03  VFX-4-EDITOR.
               05  VFX-4-ORIG.
                   07  VFX-4-ORIG-ID               PIC 9(8).
                   07  VFX-4-ORIG-FNAME            PIC X(15).
                   07  VFX-4-ORIG-LNAME            PIC X(15).
                   07  VFX-4-ORIG-ADDRESS          PIC X(20).
                   07  VFX-4-ORIG-CITY             PIC X(30).
                   07  VFX-4-ORIG-STATE            PIC X(2).
                   07  VFX-4-ORIG-PHONE            PIC 9(11).
                   07  VFX-4-ORIG-EMAIL            PIC X(30).
                   07  VFX-4-ORIG-ZIP              PIC 9(5).
                   07  VFX-4-ORIG-CC               PIC 9(16).
           03  VFX-4-VML-LINE.
               05  VFX-4-ID            PIC X(8).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-4-TITLE         PIC X(35).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-4-GENRE         PIC X(10).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-4-PRICE         PIC $Z9.99.
           
       01  VFX-5-VARS.
           03  VFX-5-RESP              PIC X       VALUE SPACES.
           03  VFX-5-CHECK             PIC X       VALUE SPACES.
           03  VFX-5-LOOP              PIC X       VALUE SPACES.
           03  VFX-5-ALPUR             PIC X       VALUE SPACES.
           03  VFX-5-CTR               PIC 99.
           03  VFX-5-SEARCH-ID         PIC 9(8).
           03  VFX-5-VML-ID            PIC 9(8).
           03  VFX-5-VTP-ID            PIC 9(8).
           03  VFX-5-EDITOR.
               05  VFX-5-ORIG.
                   07  VFX-5-ORIG-ID               PIC 9(8).
                   07  VFX-5-ORIG-FNAME            PIC X(15).
                   07  VFX-5-ORIG-LNAME            PIC X(15).
                   07  VFX-5-ORIG-ADDRESS          PIC X(20).
                   07  VFX-5-ORIG-CITY             PIC X(30).
                   07  VFX-5-ORIG-STATE            PIC X(2).
                   07  VFX-5-ORIG-PHONE            PIC 9(11).
                   07  VFX-5-ORIG-EMAIL            PIC X(30).
                   07  VFX-5-ORIG-ZIP              PIC 9(5).
                   07  VFX-5-ORIG-CC               PIC 9(16).
           03  VFX-5-VML-LINE.
               05  VFX-5-ID            PIC X(8).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-5-TITLE         PIC X(35).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-5-GENRE         PIC X(10).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-5-PRICE         PIC $Z9.99.

       01  VFX-6-VARS.
           03  VFX-6-RESP              PIC X       VALUE SPACES.
           03  VFX-6-SEL               PIC X       VALUE SPACES.
           03  VFX-6-CHECK             PIC X       VALUE SPACES.
           03  VFX-6-CTR               PIC 99      VALUE ZEROS.
           03  VFX-6-VML-ID            PIC 9(8).
           03  VFX-6-EDITOR.
               05  VFX-6-NEW.
                   07  VFX-6-NEW-ID                PIC 9(8).
                   07  VFX-6-NEW-TITLE             PIC X(35).
                   07  VFX-6-NEW-GENRE             PIC X(10).
                   07  VFX-6-NEW-PRICE             PIC 9(2)V99.
                   07  VFX-6-NEW-SH                PIC X.
               05  VFX-6-ORIG.
                   07  VFX-6-ORIG-ID               PIC 9(8).
                   07  VFX-6-ORIG-TITLE            PIC X(35).
                   07  VFX-6-ORIG-GENRE            PIC X(10).
                   07  VFX-6-ORIG-PRICE            PIC 9(2)V99.
                   07  VFX-6-ORIG-SH               PIC X.
               05  VFX-6-EDIT.
                   07  VFX-6-EDIT-ID               PIC 9(8).
                   07  VFX-6-EDIT-TITLE            PIC X(35).
                   07  VFX-6-EDIT-GENRE            PIC X(10).
                   07  VFX-6-EDIT-PRICE            PIC 9(2)V99.
                   07  VFX-6-EDIT-SH               PIC X.
           03  VFX-6-VML-LINE.
               05  VFX-6-ID            PIC X(8).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-6-TITLE         PIC X(35).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-6-GENRE         PIC X(10).
               05  FILLER              PIC X       VALUE SPACES.
               05  VFX-6-PRICE         PIC $Z9.99.
       
       
       
       
       
       
       
       
       
       
