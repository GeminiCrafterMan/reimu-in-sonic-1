; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
Ani_Sonic:

ptr_Walk:	dc.w SonAni_Walk-Ani_Sonic
ptr_Run:	dc.w SonAni_Run-Ani_Sonic
ptr_Roll:	dc.w SonAni_Roll-Ani_Sonic
ptr_Roll2:	dc.w SonAni_Roll2-Ani_Sonic
ptr_Push:	dc.w SonAni_Push-Ani_Sonic
ptr_Wait:	dc.w SonAni_Wait-Ani_Sonic
ptr_Balance:	dc.w SonAni_Balance-Ani_Sonic
ptr_Balance2:   dc.w SonAni_Balance2-Ani_Sonic
ptr_LookUp:	dc.w SonAni_LookUp-Ani_Sonic
ptr_Duck:	dc.w SonAni_Duck-Ani_Sonic
ptr_Stop:	dc.w SonAni_Stop-Ani_Sonic
ptr_Float1:	dc.w SonAni_Float1-Ani_Sonic
ptr_Float2:	dc.w SonAni_Float2-Ani_Sonic
ptr_Float3:	dc.w SonAni_Float3-Ani_Sonic
ptr_Float4:	dc.w SonAni_Float4-Ani_Sonic
ptr_Spring:	dc.w SonAni_Spring-Ani_Sonic
ptr_Hang:	dc.w SonAni_Hang-Ani_Sonic
ptr_GetAir:	dc.w SonAni_GetAir-Ani_Sonic
ptr_Drown:	dc.w SonAni_Drown-Ani_Sonic
ptr_Death:	dc.w SonAni_Death-Ani_Sonic
ptr_Hurt:	dc.w SonAni_Hurt-Ani_Sonic
ptr_Null:	dc.w SonAni_Null-Ani_Sonic
ptr_Victory:dc.w SonAni_Victory-Ani_Sonic

SonAni_Walk:	dc.b $FF, fr_walk15, fr_walk16,	fr_walk17, fr_walk18, fr_walk11,	fr_walk12,	fr_walk13,	fr_walk14, afEnd
		even
SonAni_Run:		dc.b $FF,  fr_run11,  fr_run12,  fr_run13,  fr_run14,     afEnd,		afEnd,		afEnd,		afEnd, afEnd
		even
SonAni_Roll:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll3,  fr_Roll4,  fr_Roll5,     afEnd, afEnd
		even
SonAni_Roll2:	dc.b $FE,  fr_Roll1,  fr_Roll2,  fr_Roll5,  fr_Roll3,  fr_Roll4,  fr_Roll5, afEnd
		even
SonAni_Push:	dc.b $FD,  fr_push1,  fr_push2,  fr_push3,  fr_push4,     afEnd,     afEnd, afEnd, afEnd, afEnd
		even
SonAni_Wait:	dc.b $B, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand
				dc.b 	  fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand
				dc.b	  fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_stand, fr_wait1, fr_wait2
				dc.b	  fr_wait3, fr_wait3, fr_wait3, fr_wait3, fr_wait4, fr_wait3, fr_wait4, fr_wait3, fr_wait4
				dc.b	  fr_wait3, fr_wait4, fr_wait3, fr_wait4, fr_wait3, fr_wait4, fr_wait3, fr_wait4, fr_wait3
				dc.b	  fr_wait4, fr_wait3, fr_wait4, fr_wait3, fr_wait4, fr_wait3, fr_wait4, fr_wait3, fr_wait3
				dc.b	  fr_wait5, fr_wait6, fr_wait6, fr_wait6, fr_wait6, fr_wait6, fr_wait6, fr_wait6, fr_wait6
				dc.b	  fr_wait7, fr_wait8, fr_wait8, fr_wait8, fr_wait8, fr_wait8, fr_wait8, fr_wait8, fr_wait8
				dc.b	  fr_wait7, fr_wait6, fr_wait5, fr_wait3, fr_wait3, fr_wait3, fr_wait2, fr_wait1, afEnd
		even
SonAni_Balance:	dc.b 5, fr_balbnce1, fr_balbnce2, fr_balbnce3, afEnd
		even
SonAni_Balance2:dc.b 7, fr_balance1, fr_balance2, fr_balance3, afEnd
        even
SonAni_LookUp:	dc.b 5, fr_lookt, fr_lookup, afBack, 1
		even
SonAni_Duck:	dc.b 5, fr_duckt, fr_duck, afBack, 1
		even
SonAni_Stop:	dc.b 3,	fr_stop1, fr_stop2, fr_stop3, fr_stop4, afChange, id_Walk
		even
SonAni_Float1:	dc.b 7,	fr_float1, fr_float1, afEnd
		even
SonAni_Float2:	dc.b 7,	fr_float1, fr_float2, fr_float3, fr_float4, fr_float5, fr_float6, fr_float7, fr_float8, afEnd
		even
SonAni_Float3:	dc.b 3,	fr_float1, fr_float2, fr_float3, fr_float4, fr_float5, fr_float6, fr_float7, fr_float8, afEnd
		even
SonAni_Float4:	dc.b 3,	fr_float1, afChange, id_Walk
		even
SonAni_Spring:	dc.b $2F, fr_spring, afChange, id_Walk
		even
SonAni_Hang:	dc.b 4,	fr_hang1, fr_hang2, afEnd
		even
SonAni_GetAir:	dc.b $B, fr_getair, fr_getair, fr_walk17, fr_walk18, afChange, id_Walk
		even
SonAni_Drown:	dc.b $2F, fr_drown, afEnd
		even
SonAni_Death:	dc.b 3,	fr_death, afEnd
		even
SonAni_Hurt:	dc.b 3,	fr_injury, afEnd
		even
SonAni_Null:	dc.b $77, fr_null, afChange, id_Walk
		even
SonAni_Victory:	dc.b 5, fr_victory1, fr_victory2, fr_victory2, fr_victory2, fr_victory3, fr_victory3, fr_victory4, fr_victory4, fr_victory3, fr_victory3, afBack, 7
		even

id_Walk:	equ (ptr_Walk-Ani_Sonic)/2	; 0
id_Run:		equ (ptr_Run-Ani_Sonic)/2	; 1
id_Roll:	equ (ptr_Roll-Ani_Sonic)/2	; 2
id_Roll2:	equ (ptr_Roll2-Ani_Sonic)/2	; 3
id_Push:	equ (ptr_Push-Ani_Sonic)/2	; 4
id_Wait:	equ (ptr_Wait-Ani_Sonic)/2	; 5
id_Balance:	equ (ptr_Balance-Ani_Sonic)/2	; 6
id_Balance2:equ (ptr_Balance2-Ani_Sonic)/2  ; 7
id_LookUp:	equ (ptr_LookUp-Ani_Sonic)/2	; 8
id_Duck:	equ (ptr_Duck-Ani_Sonic)/2	; 9
id_Stop:	equ (ptr_Stop-Ani_Sonic)/2	; $A
id_Float1:	equ (ptr_Float1-Ani_Sonic)/2	; $B
id_Float2:	equ (ptr_Float2-Ani_Sonic)/2	; $C
id_Float3:	equ (ptr_Float3-Ani_Sonic)/2	; $D
id_Float4:	equ (ptr_Float4-Ani_Sonic)/2	; $E
id_Spring:	equ (ptr_Spring-Ani_Sonic)/2	; $F
id_Hang:	equ (ptr_Hang-Ani_Sonic)/2	; $10
id_GetAir:	equ (ptr_GetAir-Ani_Sonic)/2	; $11
id_Drown:	equ (ptr_Drown-Ani_Sonic)/2	; $12
id_Death:	equ (ptr_Death-Ani_Sonic)/2	; $13
id_Hurt:	equ (ptr_Hurt-Ani_Sonic)/2	; $14
id_Null:	equ (ptr_Null-Ani_Sonic)/2	; $15
id_Victory:	equ (ptr_Victory-Ani_Sonic)/2