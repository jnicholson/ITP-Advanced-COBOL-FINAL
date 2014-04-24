      *Skeleton COBOL Copybook - Jesse Nicholson*
       FD  CC-TRAN-FILE-TXT.
       01  CC-TRAN-TXT.
           03  CC-TRAN-KEY-TXT.
               05  CC-ID-TXT                   PIC 9(8).
               05  CC-TRAN-TSTAMP-TXT.
                   07  CC-TRAN-YEAR-TXT        PIC X(4).
                   07  CC-TRAN-MONTH-TXT       PIC X(2).
                   07  CC-TRAN-DAY-TXT         PIC X(2).
                   07  CC-TRAN-HOUR-TXT        PIC X(2).
                   07  CC-TRAN-MIN-TXT         PIC X(2).
          03 CC-TRAN-TXT                       PIC S99V99.
       
       FD  CC-TRAN-FILE.
       01  CC-TRAN.
           03 CC-TRAN-KEY.
               05  CC-ID                           PIC 9(8).
               05 CC-TRAN-TSTAMP.
                   07 CC-TRAN-YEAR                 PIC X(4).
                   07 CC-TRAN-MONTH                PIC X(2).
                   07 CC-TRAN-DAY                  PIC X(2).
                   07 CC-TRAN-HOUR                 PIC X(2).
                   07 CC-TRAN-MIN                  PIC X(2).
          03 CC-TRANSACTION-PRICE                  PIC S99V99
