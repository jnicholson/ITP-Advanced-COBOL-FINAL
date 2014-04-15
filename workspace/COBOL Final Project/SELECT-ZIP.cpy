      *Skeleton COBOL Copybook - RYAN TIMMERMAN - 4/10/2014 
       SELECT ZIP-MST-IN   ASSIGN TO "ZIP.TXT"
                               ORGANIZATION IS LINE SEQUENTIAL.
      
       SELECT SORT-WORK    ASSIGN TO "SORTWORK.TXT".
      
       SELECT ZIP-MST-OUT  ASSIGN TO "ZIP.DAT"
                               ORGANIZATION  IS INDEXED
                               ACCESS        IS DYNAMIC
                               RECORD KEY    IS ZIP-KEY
                               ALTERNATE KEY IS ZIP-CITYO
                                   WITH DUPLICATES
                               FILE STATUS   IS WS-ZIP-STAT.