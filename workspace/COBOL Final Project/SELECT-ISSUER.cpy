      *Skeleton COBOL Copybook
       SELECT ISS-FILE-TXT
               ASSIGN TO 'ISSUER.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT ISS-FILE
               ASSIGN TO 'ISSUER.DAT'
               ORGANIZATION IS INDEXED
               ACCESS IS RANDOM
               RECORD KEY IS ISS-ID-KEY.




