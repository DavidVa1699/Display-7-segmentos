PROCESSOR 16F887 
#include <xc.inc>   
 
;CONFIG1
CONFIG FOSC = INTRC_NOCLKOUT
CONFIG WDTE = OFF
CONFIG PWRTE= ON
CONFIG MCLRE= OFF
CONFIG CP   = OFF
CONFIG CPD  = OFF
CONFIG BOREN= OFF
CONFIG IESO = OFF
CONFIG FCMEN= ON
CONFIG LVP  = OFF
CONFIG DEBUG= ON

;CONFIG2
CONFIG BOR4V= BOR40V
CONFIG WRT  = OFF
     
PSECT udata
max:
    DS 1
min:
    DS 1
    
PSECT resetVEC,class=CODE, delta=2
resetvec:
    PAGESEL main
    goto main
    
    PSECT code
 numero_0:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b01111110
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_1:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b00110000
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_2:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b01101101 
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_3:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b01111001 
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_4:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b00110011 
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_5:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b01011011 
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_6:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b01011111 
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_7:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b01110000 
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_8:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b01111111 
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 numero_9:
    BANKSEL ANSEL
    clrf ANSEL
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA 
    clrf PORTA
    movlw 0b01111011 
    movwf PORTA
    PAGESEL main
    return
    
    PSECT code
 delay:
    bcf STATUS,6
    bcf STATUS,5
    movlw 0b00000001
    movwf 0x20
 incr:
    incfsz 0x20,f
    goto incr
    bcf STATUS,6
    bcf STATUS,5
    movlw 0b00000001
    movwf 0x21
 incr1:
    incfsz 0x21,f
    goto incr1
    bcf STATUS,6
    bcf STATUS,5
    movlw 0b00000001
    movwf 0x22
 incr2:
    incfsz 0x22,f
    btfss 0x22,3
    goto incr2
    return
    
    
    PSECT code
    main:
    BANKSEL PORTA 
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL OSCCON
    movlw   0x71    
    movwf   OSCCON
    
    movlw 0b00000000
    movwf PORTA
    nop
    loop:
    PAGESEL numero_0
    call numero_0
    call delay
    call numero_1
    call delay
    call numero_2
    call delay
    call numero_3
    call delay
    call numero_4
    call delay
    call numero_5
    call delay 
    call numero_6
    call delay
    call numero_7
    call delay
    call numero_8
    call delay
    call numero_9
    call delay
    goto loop
    END


