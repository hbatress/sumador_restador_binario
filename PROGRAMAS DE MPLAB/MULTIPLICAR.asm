;Este programa contiene el puerto B como salida 
;y permite que se active un led econectado en el bit 0

	LIST P = 16F84A 
	INCLUDE <P16F84A.INC>
	
	ORG 0

;En esta seccion configuramos los puertos
Inicio
	bsf  STATUS, RP0
	clrf TRISB
	movlw b'00011111'
	movwf TRISA
	bcf  STATUS, RP0
	
;A partir de aca programamos las acciones que queremos
; que el PIC lleve a cabo

Principal
;bsf PORTB, 0
;movf PORTA,W
	rrf PORTA,W
	movwf PORTB
	rrf PORTB,W
	movwf PORTB	
	goto Principal
	
END