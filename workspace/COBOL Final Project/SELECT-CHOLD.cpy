      *******************************************************************
      * PROGRAM       : SCREEN-CAP1-U-INQ                               *
      * AUTHOR        : RYAN TIMMERMAN                                  * 
      * EDITED BY     : DEVIN LEAMAN                                    *
      * CREATION DATE : 4/15/14                                         *
      * PURPOSE       : USER INQUIRY SCREEN                             *
      *******************************************************************
         
       SELECT CH-FILE-TXT
               ASSIGN TO "CHOLD.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT CH-FILE
               ASSIGN TO "CHOLD.DAT"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS CH-ID-KEY
               ALTERNATE KEY IS CH-LNAME-KEY WITH DUPLICATES
               ALTERNATE KEY IS CH-PHONE-KEY WITH DUPLICATES
               ALTERNATE KEY IS CH-EMAIL-KEY
               FILE STATUS IS WS-STAT.


