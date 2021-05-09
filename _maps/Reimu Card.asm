ReimuCard:
ReimuCard_0: 	dc.w ReimuCard_A-ReimuCard
ReimuCard_2: 	dc.w ReimuCard_B-ReimuCard
ReimuCard_4: 	dc.w ReimuCard_11-ReimuCard
ReimuCard_6: 	dc.w ReimuCard_17-ReimuCard
ReimuCard_8: 	dc.w ReimuCard_1D-ReimuCard
ReimuCard_A: 	dc.b $0
ReimuCard_B: 	dc.b $1
	dc.b $F8, $5, $0, $0, $F8
ReimuCard_11: 	dc.b $1
	dc.b $F8, $5, $0, $4, $F8
ReimuCard_17: 	dc.b $1
	dc.b $F8, $5, $18, $0, $F8
ReimuCard_1D: 	dc.b $1
	dc.b $F8, $5, $18, $4, $F8
	even