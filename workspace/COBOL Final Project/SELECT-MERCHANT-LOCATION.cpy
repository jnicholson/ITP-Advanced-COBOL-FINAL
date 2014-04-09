      *Skeleton COBOL Copybook - JARROD LEE - 3/20/14*
       SELECT MERLOC-FILE-TXT
               ASSIGN TO 'MERCHANT-LOCATION.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT MERLOC-FILE
               ASSIGN TO 'MERCHANT-LOCATION.DAT'
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS MERLOC-ID-KEY
               FILE STATUS IS WS-STAT.


