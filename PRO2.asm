
.MODEL SMALL
.DATA
X DB 'ENTER ID','$'
MSG1 DB 'SECTION1','$'
MSG2 DB 'SECTION2','$'
.CODE
 MAIN PROC FAR
   .STARTUP
   ;LOAD ADDRESS
   LEA DX,X
;DISPLAY ENTER ID 
   MOV AH,09H
   INT 21H
;USER INPUT 
   MOV AH,01H
   INT 21H
   MOV AH,01H
   INT 21H
   MOV AH,0 
   CMP AX,'10'
   JLE A
   JG B 
 A:
  MOV DX , OFFSET MSG1
  MOV AH ,09H
  INT 21H 
  JMP STOP 
  B:
  MOV DX,OFFSET MSG2
  MOV AH,09H
  INT 21H
  STOP:
  .EXIT 
 MAIN ENDP
END MAIN