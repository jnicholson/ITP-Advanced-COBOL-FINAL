      *******************************************************************
      * FILE         : SELECT-ISS                                       *
      * AUTHOR       : Dustyne Brown                                    *
      * DATE         : 4/8/14                                           *
      * LAST EDIT    : 4/12/14                                          *
      * PURPOSE      : PROVIDES FILE CONTROL FOR G3-VISA-ADD AND        *
      *                     G3-BLD-VISA-ISS                             *
      *******************************************************************     
       SELECT ISS-FILE-TXT
               ASSIGN TO 'ISS.TXT'
               ORGANIZATION IS LINE SEQUENTIAL.
               
       SELECT ISS-FILE
               ASSIGN TO 'ISS.DAT'
               ORGANIZATION IS LINE SEQUENTIAL.




