      *Skeleton COBOL Copybook - PIC X(147) - Jarrod Lee - 3/20/14*
       FD  ISS-FILE-TXT.		   
       01  ISS-REC-TXT.			   
           03  ISS-ID-TXT		       PIC 9(8).
           03  ISS-NAME-TXT            PIC X(40).
           03  ISS-ADDRESS-TXT         PIC X(40).
           03  ISS-ZIP-TXT		       PIC 9(5).
           03  ISS-PHONE-TXT	       PIC 9(11).
           03  ISS-ACCOUNT-TXT	       PIC 9(10).
           03  ISS-ROUTE-TXT	       PIC 9(9).
           
       FD  ISS-FILE.		   
       01  ISS-REC.	
           03  ISS-ID-KEY.
               05  ISS-ID      PIC 9(8).
           03  ISS-NAME-KEY.
               05  ISS-NAME    PIC X(40).
           03  ISS-ADDRESS     PIC X(40).
           03  ISS-ZIP		   PIC 9(5).
           03  ISS-PHONE	   PIC 9(11).
           03  ISS-ACCOUNT	   PIC 9(10).
           03  ISS-ROUTE	   PIC 9(9).


