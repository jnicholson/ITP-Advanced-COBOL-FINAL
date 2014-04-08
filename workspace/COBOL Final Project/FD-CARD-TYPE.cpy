      *Skeleton COBOL Copybook - PIC X(63) - Jarrod Lee - 3/20/14*
       FD  CTY-FILE-TXT.             
       01  CTY-REC-TXT.                 
           03  CTY-ID-TXT	       PIC 9(3).
           03  CTY-NAME-TXT        PIC X(60).
        
       FD  CTY-FILE.
       01  CTY-REC.
           03  CTY-ID-KEY.
               05  CTY-ID      PIC 9(3).
           03  CTY-NAME-KEY.    
               05  CTY-NAME    PIC X(60).


