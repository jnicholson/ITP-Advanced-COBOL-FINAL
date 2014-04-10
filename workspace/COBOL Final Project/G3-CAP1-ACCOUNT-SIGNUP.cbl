      *******************************************************************
      *PROGRAM:  Capital One Account Signup                             *
      *AUTHOR:   Devin Leaman                                           *
      *DATE:     4/9/2014                                               *
      *ABSTRACT: Account Signup                                         *
      *******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. G3-CAP1-ACCOUNT-SIGNUP AS "G3-CAP1-ACCOUNT-SIGNUP".
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY SCREEN-CAP1-ACCOUNT-SIGNUP.
      ******************************************************************
       PROCEDURE DIVISION.
       000-MAIN.
       DISPLAY ACNT-SIGNUP.
       ACCEPT  ACNT-SIGNUP.