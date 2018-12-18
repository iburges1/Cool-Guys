	.global _Z5counti
_Z5counti:
			     /* r0 = int n */
	push    {r3}

        mov     r3, #1       /* r3 = 1 */

.L1:
        add     r3, r3, #1   /* r3 = r3 + 1 */
        cmp     r3, r0       /* compare r3 to r0 */
        blt     .L1          /* branch to .L1 if r3 < r0 */

	mov	r0, r3
        pop     {r3}
        bx      lr 




	.global _Z9countDowni
_Z9countDowni:
      			     /* r0 = int n */
        push    {r3}

        mov     r3, r0       /* r3 = r0 */

.L2:
        sub     r3, r3, #1   /* r3 = r3 - 1 */
        cmp     r3, #0       /* compare r3 to r0 */
        bgt     .L2          /* branch to .L2 if r3 > 0 */

	mov	r0, r3
        pop     {r3}
        bx      lr


	.global _Z3sumii
_Z3sumii:
                             /* r0 = int a */
                             /* r1 = int b */
	push    {r3,r4}

        mov     r3, r0       /* counter variable r3 = r0 */
        mov     r4, #0       /* sum variable r4 = 0 */
.L3:
        add     r4, r4, r3   /* r4 = r4 + r3 */
        add     r3, r3, #1   /* r3 = r3 + 1 */
        cmp     r3, r1       /* compare b and i */
        ble     .L3          /* branch to .L3 if r3 <= r1 */

	mov     r0, r4
        pop     {r3,r4}
        bx      lr



	.global _Z4facti
_Z4facti:

                             /* r0 = int n */

        push    {r1}
	mov     r1, r0       /* r1 = r0 */

.L4:
        cmp     r0, #1       /* compare r0 to 1 */
        bgt     .L5          /* if r0 > 1 branch to .L5 */
        mov     r0, #1       /*if int n = 1 or 0, set r0 = 1 */
        pop     {r1}
        bx      lr

.L5:
	sub	r1, r1, #1   /* r1 = r1 -r1 */
	cmp	r1, #1       /* compare r1 to 1 */
	bge	.L6          /* if r1 >= 1 branch to .L6 */
	pop     {r1}
        bx      lr           /* if false, return r0 */


.L6:
	mul	r0, r0, r1   /* r0 = r0 - r1 */ 
	b	.L5          /* branch to .L5 */


