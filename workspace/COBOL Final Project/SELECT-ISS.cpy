      *Skeleton COBOL Copybook
       SELECT ISS-FILE-TXT
               ASSIGN TO 'ISS.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT ISS-FILE
               ASSIGN TO 'ISS.DAT'
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS ISS-ID-KEY.




