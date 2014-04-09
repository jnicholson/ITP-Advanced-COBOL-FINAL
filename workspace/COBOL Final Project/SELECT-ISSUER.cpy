      *Skeleton COBOL Copybook - JARROD LEE - 3/20/14*
       SELECT ISS-FILE-TXT
               ASSIGN TO 'ISSUER.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT ISS-FILE
               ASSIGN TO 'ISSUER.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               RECORD KEY IS ISS-ID-KEY.


