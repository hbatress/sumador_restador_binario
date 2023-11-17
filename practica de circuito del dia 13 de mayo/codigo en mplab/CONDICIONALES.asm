;Este programa contiene el puerto B como salida 
;y permite que se active un led econectado en el bit 0

	LIST P = 16F84A 
	INCLUDE <P16F84A.INC>
	
	ORG 0
;En esta seccion configuramos los puertos
Inicio
	bsf  STATUS, RP0
	clrf TRISB
	movlw b'00000001'
	movwf TRISA
	bcf  STATUS, RP0
	
;A partir de aca programamos las acciones que queremos
; que el PIC lleve a cabo
Principal
	btfss PORTA,0
	goto  encender
	goto apagar
encender
	movlw b'00001111'
	movwf PORTB
	goto Principal
apagar
	movlw b'11110000'
	movwf PORTB
	goto Principal
END