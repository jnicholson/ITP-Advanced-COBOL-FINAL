      *Skeleton COBOL Copybook - RYAN TIMMERMAN - 4/10/2014 
       FD  ZIP-MST-IN.
       01  ZIP-RECI.
           03  ZIP-CODEI              PIC X(5).
           03  ZIP-CITYI              PIC X(30).
           03  ZIP-STATEI             PIC XX.
           03  ZIP-COUNTYI            PIC X(30).
      
       SD  SORT-WORK.
       01  SORT-REC.
           03  SORT-CODE              PIC X(5).
           03  SORT-CITY              PIC X(30).
           03  SORT-STATE             PIC XX.
           03  SORT-COUNTY            PIC X(30).
      
       FD  ZIP-MST-OUT.
       01  ZIP-RECO.
           03  ZIP-KEY.
               05  ZIP-CODEO          PIC X(5).
           03  ZIP-CITYO              PIC X(30).
           03  ZIP-STATEO             PIC XX.
           03  ZIP-COUNTYO            PIC X(30).


