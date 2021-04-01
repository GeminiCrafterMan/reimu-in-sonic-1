ProjCard:	; Obj02
        moveq	#0,d0
        move.b	obRoutine(a0),d0
        move.w	ProjCard_Index(pc,d0.w),d1
        jmp		ProjCard_Index(pc,d1.w)
; ===========================================================================
ProjCard_Index:
        dc.w ProjCard_Init-ProjCard_Index
		dc.w ProjCard_Main-ProjCard_Index
; ===========================================================================
ProjCard_Init:
        addq.b    #2,obRoutine(a0)        ; go to the next routine
        move.l    #Map_ProjCard,obMap(a0)    ; set mappings
        move.w    #$17AA,obGfx(a0)        ; set VRAM tile
        move.b    #4,obRender(a0)        ; set render flags
        move.b    #3,obPriority(a0)        ; set priority
        move.b    #8,obHeight(a0)        ; set horizontal radius
        move.b    #8,obWidth(a0)        ; set horizontal radius
        move.b    #8,obActWid(a0)        ; set horizontal radius

; ===========================================================================
ProjCard_Main:
        jsr     (ChkObjectVisible).l ; is the projectile off-screen?
        bne.s   @delete            ; if so, branch
        jsr     ObjFloorDist
        tst.w   d1
        ble.s   @delete    
        jsr     (ReactToItem).l
        jsr     (SpeedToPos).l
        jmp     (DisplaySprite).l
 
@delete:
        jmp     (DeleteObject).l
; ===========================================================================
; ---------------------------------------------------------------------------
; Art - Chaos Spear
; ---------------------------------------------------------------------------
Nem_ProjCard:	incbin	artnem\reimu_card.bin ; Reimu's card
		even
; ---------------------------------------------------------------------------
; Mappings - Chaos Spear
; ---------------------------------------------------------------------------
Map_ProjCard:
	include	"_maps\Reimu Card.asm"