      *Skeleton COBOL Copybook - Jesse Nicholson*
       FD  CC-TRAN-FILE-TXT.
       01  CC-TRAN-REC-TXT.
           03  CC-TRAN-KEY-TXT.
               05  CC-ID-TXT                   PIC 9(8).
               05  CC-TRAN-TSTAMP-TXT.
                   07  CC-TRAN-YEAR-TXT        PIC X(4).
                   07  CC-TRAN-MONTH-TXT       PIC X(2).
                   07  CC-TRAN-DAY-TXT         PIC X(2).
                   07  CC-TRAN-HOUR-TXT        PIC X(2).
                   07  CC-TRAN-MIN-TXT         PIC X(2).
          03 TRAN-TYPE-TXT                     PIC X(1).
          03 CC-TRAN-TXT                       PIC 99V99.
          03 CC-TRAN-ITEM-TXT                  PIC X(25).
       
       FD  CC-TRAN-FILE.
       01  CC-TRAN-REC.
           03 CC-TRAN-KEY.
               05 CC-ID                        PIC 9(8).
               05 CC-TRAN-TSTAMP.
                   07 CC-TRAN-YEAR             PIC X(4).
                   07 CC-TRAN-MONTH            PIC X(2).
                   07 CC-TRAN-DAY              PIC X(2).
                   07 CC-TRAN-HOUR             PIC X(2).
                   07 CC-TRAN-MIN              PIC X(2).
          03 TRAN-TYPE                         PIC X(1).
          03 CC-TRAN-PRICE                     PIC 99V99.
          03 CC-TRAN-ITEM                      PIC X(25).
