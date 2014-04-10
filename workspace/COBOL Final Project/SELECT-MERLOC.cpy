      *Skeleton COBOL Copybook - JARROD LEE - 3/20/14*
       SELECT MERLOC-FILE-TXT
               ASSIGN TO 'MERLOC.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT MERLOC-FILE
               ASSIGN TO 'MERLOC.DAT'
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS MERLOC-ID-KEY
               FILE STATUS IS WS-STAT.


