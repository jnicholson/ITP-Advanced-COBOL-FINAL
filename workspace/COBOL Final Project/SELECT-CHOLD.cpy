      *Skeleton COBOL Copybook
       SELECT CH-FILE-TXT
               ASSIGN TO "CHOLD.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT CH-FILE
               ASSIGN TO "CHOLD.DAT"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS CHOLD-ID-KEY
               FILE STATUS IS WS-STAT.


