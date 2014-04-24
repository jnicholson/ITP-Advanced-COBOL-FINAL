      *Skeleton COBOL Copybook - Jesse Nicholson 4/24/2014
       SELECT CC-TRANS-FILE-TXT
               ASSIGN TO 'CC-TRANSACTION.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
       
       SELECT CTY-FILE 
               ASSIGN TO 'CC-TRANSACTION.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS CC-TRAN-KEY
               FILE STATUS IS WS-STAT.