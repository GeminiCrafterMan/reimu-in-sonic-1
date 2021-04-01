Reimu_Shoot:
		btst	#bitA,(v_jpadhold1).w ; is button A pressed?
        beq.s   @end              ; if not, branch
		tst.b	(v_projdelay).w
		bne.s	@end
		move.b	#$9,(v_projdelay).w
        jsr	    FindFreeObj
        move.b    #id_ProjCard,0(a1)            ; load missile object
		move.w	#sfx_B8,d0
		jsr	(PlaySound_Special).l
        move.w    obX(a0),obX(a1)
        move.w    obY(a0),obY(a1)
        move.w    #$D00,obVelX(a1)        ; move the projectile to the right
        btst    #0,obStatus(a0)           ; is Sonic actually facing the left?
        beq.s    @end            ; if not, branch
        neg.w    obVelX(a1)            ; negate the projectile's velocity, moving it to the left
		bset	#0,obStatus(a1)

@end:
    rts