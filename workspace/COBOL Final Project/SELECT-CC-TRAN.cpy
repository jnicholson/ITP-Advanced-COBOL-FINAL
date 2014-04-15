      *Skeleton COBOL Copybook
       SELECT CCT-FILE-TXT
               ASSIGN TO "CC-TRAN.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT CCT-FILE
               ASSIGN TO "CC-TRAN.DAT"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS CC-TRAN-ID-KEY
               FILE STATUS IS WS-STAT.