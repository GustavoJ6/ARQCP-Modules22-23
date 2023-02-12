.section .data
.section .text

 .global fill_s1        #void fill_s1(s1 *s, int vi, char vc, int vj, char vd) s in (%rdi), vi in %rsi, vc in %dl, vj in %ecx , vd in %r8b

fill_s1:
    movb    %dl, (%rdi)    #s->c = vc
    movl    %esi, 4(%rdi)    #s->i = vi
    movb    %r8b, 8(%rdi)   #s->d = vd
    movl    %ecx, 12(%rdi)   #s->j = vj
    ret
    