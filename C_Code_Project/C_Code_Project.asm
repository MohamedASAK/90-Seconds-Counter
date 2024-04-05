
_program:

;C_Code_Project.c,2 :: 		void program(){
;C_Code_Project.c,3 :: 		TRISB = 0;
	CLRF       TRISB+0
;C_Code_Project.c,4 :: 		TRISC = 0;
	CLRF       TRISC+0
;C_Code_Project.c,5 :: 		PORTB = 0;
	CLRF       PORTB+0
;C_Code_Project.c,6 :: 		PORTC = 0;
	CLRF       PORTC+0
;C_Code_Project.c,7 :: 		for(L1 = 1; L1 <= 9 ; L1++){
	MOVLW      1
	MOVWF      _L1+0
	MOVLW      0
	MOVWF      _L1+1
L_program0:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _L1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__program13
	MOVF       _L1+0, 0
	SUBLW      9
L__program13:
	BTFSS      STATUS+0, 0
	GOTO       L_program1
;C_Code_Project.c,8 :: 		for(L2 = 0; L2 <= 9; L2++){
	CLRF       _L2+0
	CLRF       _L2+1
L_program3:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _L2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__program14
	MOVF       _L2+0, 0
	SUBLW      9
L__program14:
	BTFSS      STATUS+0, 0
	GOTO       L_program4
;C_Code_Project.c,9 :: 		TRISC = 0;
	CLRF       TRISC+0
;C_Code_Project.c,10 :: 		PORTC = L2;
	MOVF       _L2+0, 0
	MOVWF      PORTC+0
;C_Code_Project.c,11 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_program6:
	DECFSZ     R13+0, 1
	GOTO       L_program6
	DECFSZ     R12+0, 1
	GOTO       L_program6
	DECFSZ     R11+0, 1
	GOTO       L_program6
	NOP
	NOP
;C_Code_Project.c,12 :: 		if(PORTC == 9){
	MOVF       PORTC+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L_program7
;C_Code_Project.c,13 :: 		PORTC = 0;
	CLRF       PORTC+0
;C_Code_Project.c,14 :: 		}
L_program7:
;C_Code_Project.c,8 :: 		for(L2 = 0; L2 <= 9; L2++){
	INCF       _L2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _L2+1, 1
;C_Code_Project.c,15 :: 		}
	GOTO       L_program3
L_program4:
;C_Code_Project.c,16 :: 		TRISB = 0;
	CLRF       TRISB+0
;C_Code_Project.c,17 :: 		PORTB = L1;
	MOVF       _L1+0, 0
	MOVWF      PORTB+0
;C_Code_Project.c,18 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_program8:
	DECFSZ     R13+0, 1
	GOTO       L_program8
	DECFSZ     R12+0, 1
	GOTO       L_program8
	DECFSZ     R11+0, 1
	GOTO       L_program8
	NOP
	NOP
;C_Code_Project.c,19 :: 		if(PORTB == 9){
	MOVF       PORTB+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L_program9
;C_Code_Project.c,20 :: 		PORTB = 0;
	CLRF       PORTB+0
;C_Code_Project.c,21 :: 		}
L_program9:
;C_Code_Project.c,7 :: 		for(L1 = 1; L1 <= 9 ; L1++){
	INCF       _L1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _L1+1, 1
;C_Code_Project.c,22 :: 		}
	GOTO       L_program0
L_program1:
;C_Code_Project.c,23 :: 		}
L_end_program:
	RETURN
; end of _program

_main:

;C_Code_Project.c,24 :: 		void main() {
;C_Code_Project.c,25 :: 		while(1){
L_main10:
;C_Code_Project.c,26 :: 		program();
	CALL       _program+0
;C_Code_Project.c,27 :: 		}
	GOTO       L_main10
;C_Code_Project.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
