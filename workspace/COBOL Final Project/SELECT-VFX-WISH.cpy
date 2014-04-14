      *Skeleton COBOL Copybook - JARROD LEE - 4/9/2014
       SELECT VW-FILE-TXT
               ASSIGN TO 'VFX-WISH.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
       
       SELECT VW-FILE
               ASSIGN TO 'VFX-WISH.DAT'
               ORGANIZATION IS INDEXED
               ACCESS IS SEQUENTIAL
               RECORD KEY IS VW-ID-KEY
               FILE STATUS IS WS-STAT.
      


