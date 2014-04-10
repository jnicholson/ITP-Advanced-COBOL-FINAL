      *Skeleton COBOL Copybook - JARROD LEE - 3/20/14*
       SELECT MER-FILE-TXT
               ASSIGN TO 'MERCHANT.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT MER-FILE
               ASSIGN TO 'MERCHANT.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               RECORD KEY IS MER-ID-KEY
               FILE STATUS IS WS-STAT.


