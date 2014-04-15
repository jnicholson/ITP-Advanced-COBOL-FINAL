      *Skeleton COBOL Copybook - JARROD LEE - 3/20/14*
       SELECT MER-FILE-TXT
               ASSIGN TO 'MER.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT MER-FILE
               ASSIGN TO 'MER.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS MER-ID-KEY
               FILE STATUS IS WS-STAT.


