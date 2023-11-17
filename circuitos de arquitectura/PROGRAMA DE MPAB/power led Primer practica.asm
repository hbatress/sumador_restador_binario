;Este programa contiene el puerto B como salida 
;y permite que se active un led econectado en el bit 0

	LIST P = 16F84A 
	INCLUDE <P16F84A.INC>
	
	ORG 0

;En esta seccion configuramos los puertos

	bsf  STATUS, RP0
	clrf TRISB
	bcf  STATUS, RP0
	
;A partir de aca programamos las acciones que queremos
; que el PIC lleve a cabo

Inicio
	bsf PORTB, 0
	goto Inicio
	
	END