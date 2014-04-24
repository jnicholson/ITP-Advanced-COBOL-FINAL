      *Skeleton COBOL Copybook - Jesse Nicholson 4/24/2014
       SELECT CC-TRAN-FILE-TXT
               ASSIGN TO 'CC-TRANSACTION.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
       
       SELECT CC-TRAN-FILE 
               ASSIGN TO 'CC-TRANSACTION.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS CC-TRAN-KEY
               FILE STATUS IS WS-STAT.