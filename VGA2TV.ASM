;******************************************
;*** PROGRAM VGA2TV - CEZARY SIWON      ***
;******************************************

.286C

ASSUME cs:CODE, ds: CODE, es: CODE, ss: CODE

CODE SEGMENT
        org  100h
Start:
        jmp  Install

VTABLE db 40, 24, 8, 232, 3, 9, 3, 0
       db 2, 39, 52, 39, 40, 149, 47, 179
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 5, 199, 20, 31, 218
       db 230, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 40, 24, 8, 232, 3, 9, 3, 0
       db 2, 39, 52, 39, 40, 149, 47, 179
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 5, 199, 20, 31, 218
       db 230, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 80, 24, 8, 208, 7, 9, 3, 0
       db 2, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 19, 199, 40, 31, 248
       db 5, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 80, 24, 8, 208, 7, 9, 3, 0
       db 2, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 19, 199, 40, 31, 248
       db 5, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 40, 24, 8, 0, 64, 9, 3, 0
       db 2, 39, 52, 39, 40, 149, 47, 147
       db 54, 17, 0, 65, 0, 0, 0, 0
       db 0, 0, 251, 5, 199, 20, 0, 218
       db 230, 162, 255, 0, 19, 21, 23, 2
       db 4, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 1, 0, 3, 0, 0
       db 0, 0, 0, 0, 48, 15, 0, 255

       db 40, 24, 8, 0, 64, 9, 3, 0
       db 2, 39, 52, 39, 40, 149, 47, 147
       db 54, 17, 0, 65, 0, 0, 0, 0
       db 0, 0, 251, 5, 199, 20, 0, 218
       db 230, 162, 255, 0, 19, 21, 23, 2
       db 4, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 1, 0, 3, 0, 0
       db 0, 0, 0, 0, 48, 15, 0, 255

       db 80, 24, 8, 0, 64, 9, 1, 0
       db 6, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 65, 0, 0, 0, 0
       db 0, 0, 251, 19, 199, 40, 0, 248
       db 5, 194, 255, 0, 23, 23, 23, 23
       db 23, 23, 23, 23, 23, 23, 23, 23
       db 23, 23, 23, 1, 0, 1, 0, 0
       db 0, 0, 0, 0, 0, 13, 0, 255

       db 80, 24, 14, 0, 16, 0, 3, 0
       db 3, 166, 95, 79, 80, 130, 85, 129
       db 191, 31, 0, 77, 11, 12, 0, 0
       db 0, 0, 131, 133, 93, 40, 13, 99
       db 186, 163, 255, 0, 8, 8, 8, 8
       db 8, 8, 8, 16, 24, 24, 24, 24
       db 24, 24, 24, 14, 0, 15, 8, 0
       db 0, 0, 0, 0, 16, 10, 0, 255

       db 80, 24, 16, 0, 125, 33, 15, 0
       db 6, 99, 95, 79, 80, 130, 85, 129
       db 191, 31, 0, 64, 0, 0, 0, 0
       db 0, 0, 156, 142, 143, 40, 31, 150
       db 185, 227, 255, 0, 1, 2, 3, 4
       db 5, 20, 7, 56, 57, 58, 59, 60
       db 61, 62, 63, 1, 0, 15, 0, 0
       db 0, 0, 0, 0, 0, 5, 15, 255

       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0

       db 40, 24, 8, 0, 64, 0, 0, 0
       db 3, 35, 55, 39, 45, 55, 49, 21
       db 4, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 225, 36, 199, 20, 8, 224
       db 240, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 80, 0, 0, 0, 0, 41, 15, 0
       db 6, 98, 95, 79, 80, 130, 85, 129
       db 191, 31, 0, 64, 0, 0, 0, 0
       db 0, 0, 156, 142, 143, 40, 31, 150
       db 185, 227, 255, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 63, 1, 0, 15, 0, 0
       db 0, 15, 0, 0, 8, 5, 15, 255

       db 80, 0, 0, 0, 0, 41, 15, 0
       db 6, 99, 95, 79, 80, 130, 85, 129
       db 191, 31, 0, 64, 0, 0, 0, 0
       db 0, 0, 156, 142, 143, 40, 31, 150
       db 185, 227, 255, 0, 0, 0, 0, 0
       db 0, 0, 0, 0, 0, 0, 0, 0
       db 0, 0, 63, 1, 0, 15, 0, 0
       db 0, 15, 0, 0, 8, 5, 15, 255

       db 40, 24, 8, 0, 32, 9, 15, 0
       db 6, 39, 52, 39, 40, 149, 47, 147
       db 54, 17, 0, 64, 0, 0, 0, 0
       db 0, 0, 251, 5, 199, 20, 0, 218
       db 230, 227, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 1, 0, 15, 0, 0
       db 0, 0, 0, 0, 0, 5, 15, 255

       db 80, 24, 8, 0, 64, 9, 15, 0
       db 6, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 64, 0, 0, 0, 0
       db 0, 0, 251, 19, 199, 40, 0, 248
       db 5, 227, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 1, 0, 15, 0, 0
       db 0, 0, 0, 0, 0, 5, 15, 255

       db 80, 24, 14, 0, 128, 9, 15, 0
       db 6, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 64, 0, 0, 0, 0
       db 0, 0, 241, 25, 174, 80, 15, 235
       db 251, 227, 255, 0, 8, 0, 0, 24
       db 24, 0, 0, 0, 8, 0, 0, 0
       db 24, 0, 0, 11, 0, 5, 0, 0
       db 0, 0, 0, 0, 0, 5, 5, 255

       db 80, 24, 14, 0, 128, 9, 15, 0
       db 6, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 64, 0, 0, 0, 0
       db 0, 0, 241, 25, 174, 80, 15, 235
       db 251, 227, 255, 0, 1, 2, 3, 4
       db 5, 20, 7, 56, 57, 58, 59, 60
       db 61, 62, 63, 1, 0, 15, 0, 0
       db 0, 0, 0, 0, 0, 5, 15, 255

       db 80, 24, 14, 0, 128, 9, 15, 0
       db 6, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 64, 0, 0, 0, 0
       db 0, 0, 241, 25, 174, 80, 15, 235
       db 251, 227, 255, 0, 8, 0, 0, 24
       db 24, 0, 0, 0, 8, 0, 0, 0
       db 24, 0, 0, 11, 0, 5, 0, 0
       db 0, 0, 0, 0, 0, 5, 5, 255

       db 80, 24, 14, 0, 128, 9, 15, 0
       db 6, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 64, 0, 0, 0, 0
       db 0, 0, 241, 25, 174, 80, 15, 235
       db 251, 227, 255, 0, 1, 2, 3, 4
       db 5, 20, 7, 56, 57, 58, 59, 60
       db 61, 62, 63, 1, 0, 15, 0, 0
       db 0, 0, 0, 0, 0, 5, 15, 255

       db 40, 24, 8, 232, 3, 9, 3, 0
       db 2, 39, 52, 39, 40, 149, 47, 179
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 5, 199, 20, 31, 218
       db 230, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 40, 24, 8, 232, 3, 9, 3, 0
       db 2, 39, 52, 39, 40, 149, 47, 179
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 5, 199, 20, 31, 218
       db 230, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 80, 24, 8, 208, 7, 9, 3, 0
       db 2, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 19, 199, 40, 31, 248
       db 5, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 80, 24, 8, 208, 7, 9, 3, 0
       db 2, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 19, 199, 40, 31, 248
       db 5, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 40, 24, 8, 232, 3, 9, 3, 0
       db 2, 39, 52, 39, 40, 149, 47, 179
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 5, 199, 20, 31, 218
       db 230, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 80, 24, 8, 208, 7, 9, 3, 0
       db 2, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 71, 6, 7, 0, 0
       db 0, 0, 251, 19, 199, 40, 31, 248
       db 5, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 16, 17, 18, 19, 20
       db 21, 22, 23, 8, 0, 15, 0, 0
       db 0, 0, 0, 0, 16, 14, 0, 255

       db 80, 24, 16, 0, 16, 0, 3, 0
       db 2, 102, 95, 79, 80, 130, 85, 129
       db 191, 31, 0, 79, 13, 14, 0, 0
       db 0, 0, 156, 142, 143, 40, 15, 150
       db 185, 163, 255, 0, 8, 8, 8, 8
       db 8, 8, 8, 16, 24, 24, 24, 24
       db 24, 24, 24, 14, 0, 15, 8, 0
       db 0, 0, 0, 0, 16, 10, 0, 255

       db 80, 29, 16, 0, 160, 9, 15, 0
       db 6, 39, 108, 79, 80, 142, 91, 131
       db 54, 29, 0, 64, 0, 0, 0, 0
       db 0, 0, 15, 23, 239, 80, 0, 10
       db 25, 195, 255, 0, 63, 63, 63, 63
       db 63, 63, 63, 63, 63, 63, 63, 63
       db 63, 63, 63, 1, 0, 15, 0, 0
       db 0, 0, 0, 0, 0, 5, 1, 255

       db 80, 29, 16, 0, 160, 9, 15, 0
       db 6, 39, 108, 79, 80, 142, 91, 131
       db 54, 29, 0, 64, 0, 0, 0, 0
       db 0, 0, 15, 23, 239, 80, 0, 10
       db 25, 227, 255, 0, 1, 2, 3, 4
       db 5, 20, 7, 56, 57, 58, 59, 60
       db 61, 62, 63, 1, 0, 15, 0, 0
       db 0, 0, 0, 0, 0, 5, 15, 255

       db 40, 24, 8, 0, 160, 1, 15, 0
       db 14, 39, 108, 79, 80, 142, 91, 131
       db 54, 17, 0, 64, 0, 0, 0, 0
       db 0, 0, 251, 147, 199, 40, 64, 248
       db 5, 163, 255, 0, 1, 2, 3, 4
       db 5, 6, 7, 8, 9, 10, 11, 12
       db 13, 14, 15, 65, 0, 15, 0, 0
       db 0, 0, 0, 0, 64, 5, 15, 255

COLORS          db      768  dup (?)
VPT             dw      10   dup (?)
OLD             db      ?
CHIP            db      ?
MODE            dw      0
SEGBIOS         equ     40h
OFSBIOS         equ     0A8h
HOOK10          equ     10h
OLDVPTo         dw      ?               ;stary wskazin do SPT BIOS VGA
OLDVPTs         dw      ?
old10o  dw 0
old10s  dw 0
                dw 'TV'     ;'TV' - do sprawdzenia, czy program jest
                            ;juz zainstalowany

NEWBIOS_Trident:
     pushf
     call dword ptr cs:[old10o]
     pushf
     push ax
     push bx
     push cx
     push dx
     push ds
     push es
     push di
     push si
     push ss
     push bp
     mov bx, 40h
     mov es, bx
     mov bx, 49h
     mov ax, es:[bx]
     cmp al,0h
     je  SETDOUBLE
     cmp al,1h
     je  SETDOUBLE
     cmp al,4h
     je  SETDOUBLE
     cmp al,5h
     je  SETDOUBLE
     cmp al, 0Dh
     je  SETDOUBLE
     cmp al, 13h
     je  SETDOUBLE
     cmp al, 12h
     je SETINTERLACED
     cmp al, 11h
     je SETINTERLACED
     cmp al, 10h
     je SETINTERLACED
     cmp al, 0Fh
     je SETINTERLACED
     mov dx, 3C4h
     mov al, 0Dh
     out dx, al
     inc dx
     in  al, dx
     and al, 0F9h
     push ax
     mov al, 0Dh
     dec dx
     out dx, al
     pop ax
     inc dx
     out dx, al
     jmp FINITO
SETINTERLACED:
     mov dx, 3D4h
     mov al, 1Eh
     out dx, al
     inc dx
     in al, dx
     and al, 0FBh
     or al, 4h
     push ax
     dec dx
     mov al, 1Eh
     out dx, al
     inc dx
     pop ax
     out dx, al
     jmp FINITO
SETDOUBLE:
     mov al, 0Dh
     mov dx, 3C4h
     out dx, al
     inc dx
     in  al, dx
     and al, 0F9h
     or  al, 2
     push ax
     mov al, 0Dh
     dec dx
     out dx, al
     pop ax
     inc dx
     out dx, al
FINITO:
     pop bp
     pop ss
     pop si
     pop di
     pop es
     pop ds
     pop dx
     pop cx
     pop bx
     pop ax
     popf
     iret

;----------------------------------------------
Install:
        call Czy_juz_jest            ;sprawdz, czy program juz
                                     ;jest zainstalowany
        push cs
        pop  ds
        mov  dx, offset Hej
        mov  ah,09h
        int  21h                 ;wypisz komunikat

        mov ax, SEGBIOS
        mov es, ax
        mov bx, OFSBIOS
        mov ax, es:[bx+2]
        mov word ptr cs:OLDVPTs, ax
        mov ax, es:[bx]
        mov word ptr cs:OLDVPTo, ax
        mov si, ax                               ; do si offset zrodla
        push cs
        pop ds
        mov di, offset VPT
        mov ax, es:[bx+2]
        push cs
        pop es
        mov ds, ax                               ; do es segment przeznaczenia
        mov cx, 0Ah
        cld
        rep movsw
        push cs
        pop ds                                   ; przeslanie tablicy wskaznikow
        mov si, offset VTABLE
        mov word ptr cs:VPT+2, cs                ; ustawienie nowego adresu
        mov word ptr cs:VPT, si

        mov ax, 0F00h               ;zapamietujemy tryb VGA
        int 10h
        mov word ptr cs:MODE, ax
        push cs
        pop es
	mov ax, es
	mov ds, ax
        mov dx, offset Colors                 ;zapamietujemy palete kolorow
        mov cx, 0FFh
        mov ah, 10
        mov al, 17h
        xor bx, bx
        int 10h
        mov ax, SEGBIOS             ;
        mov es, ax
        mov bx, OFSBIOS
        push cs
        pop ds
        mov word ptr es:[bx+2], ds
        mov ax, offset VPT
        mov word ptr es:[bx], ax

        mov dx, 3DAh                    ; czekamy na powrot pionowy
     op:
        in al, dx
        test al, 1000b
        jz op

        push cs
        pop ds
        mov ax, ds
        mov es, ax
        mov dx, offset cs:Colors       ; odtwarzamy palete kolorow
        mov cx, 0FFh
        mov ah, 10h
        mov al, 12h
        xor bx, bx
        int 10h                          ;ustawienie nowej tablicy dla VGA BIOS

        mov ax, word ptr cs:MODE        ; ustawiamy ponownie tryb VGA
        mov ah, 0
        or al, 80h
        int 10h

        mov  ax, 3500h+HOOK10            ;odczytaj adres procedury
        int  21h                         ;obslugi przerwania 8h
        mov  cs:Old10s,es                ;i zapamietaj go
        mov  cs:Old10o,bx
        push cs
        pop ds
        mov  dx, offset NewBios_Trident       ;ustaw nowy adres procedury
        mov  ax, 2500h +HOOK10                     ;obslugi przerwania
        int  21h
       
        mov  dx, offset install      ;wyjdz i zostaw wszystko przed
        int  27h                     ;adresem INSTALL

;--------------------------------
Czy_juz_jest:
        mov  ax,3500h+HOOK10
        int  21h
        cmp  es:[bx-2],'TV'   ;Sprawdz, czy przed procedura
                              ;obslugi przerwania znajduje sie
                              ;'TV'
        jne  Nie_ma           ;jesli nie, to instaluj
        jmp  Czy_parametry    ;jesli tak, to sprawdz paramerty
Nie_ma:
        ret
;--------------------------------
Czy_parametry:
        mov  bx,80h                  ;pobierz licznik
        mov  cl,[bx]                 ;parametrow
        cmp  cl,0
        je   Bez_prm
        jmp  Usun                   ;jesli jest, to usun program
                                    ;z pamieci
Bez_prm:
        push cs
        pop  ds
        mov  dx,offset JuzJest
        mov  ah,09h
        int  21h
        mov  ax,4c01h
        int  21h
;--------------------------------
Usun:
        mov ax, 0F00h
        int 10h
        push ax
        push cs
        pop es
	mov ax, es
	mov ds, ax
        mov dx, offset Colors          ;zapamietujemy palete kolorow
        mov cx, 0FFh
        mov ah, 10h
        mov al, 17h
        xor bx, bx
        int 10h
        mov ax, SEGBIOS
        mov ds, ax
        mov si, OFSBIOS
        mov ax, 3500h+HOOK10
        int 21h           ;pobierz adres procedury obslugi 8h
                           ;obslugi

        mov ax, es:[bx-8]          ;odtwarzamy adres pierwotnej tablicy VGA BIOS
        mov word ptr ds:[si+2], ax
        mov ax, es:[bx-10]
        mov word ptr ds:[si], ax

        mov dx, 3DAh
     op2:
        in al, dx
        test al, 1000b
        jz op2

        mov al, 0Dh             ; dzielnik czestotliwosci punktu = 1
        mov dx, 3C4h
        out dx, al
        inc dx
        in  al, dx
        and al, 0F9h
        or  al, 2
        push ax
        mov al, 0Dh
        dec dx
        out dx, al
        pop ax
 	inc dx
        out dx, al

        push cs
        pop ds
        mov ax, ds
        mov es, ax
        mov dx, offset Colors          ; odtwarzamy palete kolorow
        mov cx, 0FFh
        mov ah, 10h
        mov al, 12h
        xor bx, bx
        int 10h

        pop ax                  ; ustawiamy ponownie tryb VGA
        mov ah, 0
        or al, 80h
        int 10h

        mov  ax,3500h+HOOK10
        int  21h           ;pobierz adres procedury obslugi 8h
                           ;obslugi

        mov  ds,es:[bx-4]  ;ustaw adres poprzedniej procedury
                           ;obslugi
        mov  dx,es:[bx-6]
        mov  ax,2500h+HOOK10
        int  21h
        mov  ah,49h        ;zwolnij pamiec zajmowana przez
                              ;program
        int  21h
        push cs
        pop  ds
        mov  dx, offset Deinst
        mov  ah,09h
        int  21h
        mov  ax,4c01h
        int  21h
;--------------------------------
JuzJest db 'VGA2TV jest juz zainstalowany.',13,10,'$'
Hej     db 'VGA2TV zainstalowany. Autor: Cezary Siwon, Kielce 1994.',13,10
        db 'Deinstalacja - VGA2TV /u.','$'
Deinst  db 'VGA2TV zdeinstalowany.',13,10,'$'
CODE ENDS

END Start
