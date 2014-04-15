      *Skeleton COBOL Copybook - JARROD LEE - 3/20/14*
       SELECT CTY-FILE-TXT 
               ASSIGN TO 'CC-TYPE.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
       
       SELECT CTY-FILE 
               ASSIGN TO 'CC-TYPE.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS CC-TYPE-ID-KEY
               FILE STATUS IS WS-STAT.

