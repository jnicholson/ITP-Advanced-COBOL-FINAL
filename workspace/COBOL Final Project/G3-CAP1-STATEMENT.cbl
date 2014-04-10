      *******************************************************************                                                                                            
      *PROGRAM:  Capital One Account statement                          *                                                                                            
      *AUTHOR:   Devin Leaman                                           *                                                                                            
      *DATE:     4/9/2014                                               *                                                                                            
      *ABSTRACT: Account statement                                      *                                                                                            
      *******************************************************************                                                                                            
       IDENTIFICATION DIVISION.                                                                                                                                      
       PROGRAM-ID. G3-CAP1-STATEMENT AS "G3-CAP1-STATEMENT".                                                                                                         
      ******************************************************************                                                                                             
       ENVIRONMENT DIVISION.                                                                                                                                         
      ******************************************************************                                                                                             
       DATA DIVISION.                                                                                                                                                
       WORKING-STORAGE SECTION.                                                                                                                                      
       COPY SCREEN-CAP1-STATEMENT.                                                                                                       
      ******************************************************************                                                                                             
       PROCEDURE DIVISION.                                                                                                                                           
       000-MAIN.                                                                                                                                                     
       DISPLAY MAIN-SCREEN.                                                                                                                               