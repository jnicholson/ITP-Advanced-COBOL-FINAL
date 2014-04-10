      *Skeleton COBOL Copybook - KATIE TRAN - 4/7/2014
       01  WS-TSTAMP.
           03  WS-YEAR                     PIC XXXX.
           03  WS-MONTH                    PIC XX.
           03  WS-DAY                      PIC XX.
           03  WS-HOUR                     PIC XX.
           03  WS-MINUTE                   PIC XX.
       
       01  WS-VARS.
           03  WS-RESP                     PIC X       VALUE SPACES.
           03  WS-STAT                     PIC XX      VALUE SPACES.
           03  WS-CTR                      PIC 99      VALUE ZERO.
           03  WS-EOF-FLAG                 PIC X       VALUE 'N'.
               88  WS-EOF                              VALUE 'Y'.
       
       01  WS-VML-LINE.
           03  WS-ID                   PIC X(8).
           03  FILLER                  PIC X       VALUE SPACES.
           03  WS-TITLE                PIC X(35).
           03  FILLER                  PIC X       VALUE SPACES.
           03  WS-GENRE                PIC X(10).
           03  FILLER                  PIC X       VALUE SPACES.
           03  WS-PRICE                PIC $Z9.99.
           
       
     


