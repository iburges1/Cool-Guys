.global _Z3sumii

_Z3sumii:                       
	push 	{r3,r4}
	
        mov     r3, r0       /* int i = int a */
        mov     r4, #0       /* int s = 0 */
.L1:    add     r4, r4, r3   /* s = s+i */
        add     r3, r3, #1   /* i = i+1 */
        cmp     r3, r1       /* compare b and i */
        ble     .L1	     /* branch to .L1 if r3 <= b */
        mov     r0, r4
	pop	{r3,r4}
        bx      lr
	
