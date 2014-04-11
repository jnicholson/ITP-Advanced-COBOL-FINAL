      *Skeleton COBOL Copybook - PIC X(131) - Jarrod Lee - 3/20/14*
       FD  MER-FILE-TXT.		   
       01  MER-REC-TXT.			   
           03  MER-ID-TXT		       PIC 9(8).
           03  MER-NAME-TXT	           PIC X(25).
           03  MER-ADDRESS-TXT	       PIC X(25).
           03  MER-ZIP-TXT		       PIC 9(5).
           03  MER-PHONE-TXT	       PIC 9(11). 
           03  MER-ACCOUNT-TXT	       PIC 9(10).
           03  MER-ROUTE-TXT	       PIC 9(9).
           
       FD  MER-FILE.		   
       01  MER-REC.	
           03  MER-ID-KEY.
               05  MER-ID	PIC 9(8).
           03  MER-NAME-KEY.
               05  MER-NAME	   PIC X(25).
           03  MER-ADDRESS	   PIC X(25).
           03  MER-ZIP		   PIC 9(5).
           03  MER-PHONE	   PIC 9(11). 
           03  MER-ACCOUNT	   PIC 9(10).
           03  MER-ROUTE	   PIC 9(9).


