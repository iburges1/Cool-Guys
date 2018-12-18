	.global _Z12eratosthenes

_Z12eratosthenes:

	push {r2, r3, r4, r5, r6, r7, r8}
	mov	r2, #2
	mov	r3, #3
	mov	r4, r0
	mov	r5, r1
	mov	r6, #9
	mov	r8, #0xffffffff
	add	r5, #63
	lsr	r5, #6
.L1:
	str	r8, [r0, r4]
	add	r4, #4
	add	r7, #1
	cmp	r5, r7
	bgt	.L1
.L2:
	mov	r5, #1
	add	r8, r6, #1
	lsr	r4, r8, #5
	lsl	r4, #2
	cmp	r6, r3
	beq	.L5
.L3:
	ldr	r8, [r0, r4]
	bic	r8, r5
	str	r8, [r0,r4]
	add	r6, r3
	add	r6, r3
	cmp	r6, r1
	bmi	.L2
.L4:
	add	r3, #2
	cmp	r3, r1
	bge	.L6
	mov	r6, r3
	bal	.L2
.L5:
	ldr	r8, [r0, r4]
	ands	r5, r8
	beq	.L4
	mul	r6, r3, r3
	add 	r2, #1
	bal	.L2
.L6:
	mov	r0, r2
	pop	{r2, r3, r4, r5, r6, r7, r8}
	bx	lr


