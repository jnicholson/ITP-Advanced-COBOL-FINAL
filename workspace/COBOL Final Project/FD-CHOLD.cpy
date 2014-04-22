      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-INQ                               *
      * AUTHOR        : RYAN TIMMERMAN                                  * 
      * EDITED BY     : DEVIN LEAMAN AND HENRY HURLOCKER                *
      * CREATION DATE : 4/15/14                                         *
      * PURPOSE       : USER INQUIRY SCREEN                             *
      *******************************************************************
        
       FD  CH-FILE-TXT.
       01  CH-REC-TXT.
           03  CH-ID-TXT       PIC 9(8).
           03  CH-FNAME-TXT    PIC X(20).
           03  CH-LNAME-TXT    PIC X(20).
           03  CH-PHONE-TXT    PIC 9(10).
           03  CH-ADDRESS-TXT  PIC X(20).
           03  CH-EMAIL-TXT    PIC X(35).
           03  CH-ZIP-TXT      PIC 9(5).
           03  CH-CC-TXT       PIC 9(16).

       FD  CH-FILE.
       01  CH-REC.
           03  CH-ID-KEY.
               05  CH-ID       PIC 9(8).
           03  CH-FNAME        PIC X(20).
           03  CH-LNAME-KEY.
               05  CH-LNAME    PIC X(20).
           03  CH-PHONE-KEY.
               05  CH-PHONE    PIC 9(10).
           03  CH-ADDRESS      PIC X(20).
           03  CH-ZIP          PIC 9(5).
           03  CH-EMAIL-KEY.
               05  CH-EMAIL    PIC X(35).  


