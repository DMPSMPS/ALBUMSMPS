snd_sng_z3a2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z3a2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       snd_sng_z3a2_DAC
	smpsHeaderFM        snd_sng_z3a2_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_z3a2_FM2,	$00, $13
	smpsHeaderFM        snd_sng_z3a2_FM3,	$00, $13
	smpsHeaderFM        snd_sng_z3a2_FM4,	$00, $0C
	smpsHeaderFM        snd_sng_z3a2_FM5,	$00, $0C
	smpsHeaderPSG       snd_sng_z3a2_PSG1,	$0C, $00, $00, sTone_0A
	smpsHeaderPSG       snd_sng_z3a2_PSG2,	$0C, $04, $00, sTone_17
	smpsHeaderPSG       snd_sng_z3a2_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z3a2_DAC:
	dc.b	dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18
	dc.b	dKickS3, $0C, dSnareS3, $0C, dMuffledSnare, $0C, dSnareS3, $06, dSnareS3, $06
snd_sng_z3a2_DACLoop:
	dc.b	dKickS3, $18
	dc.b	dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18
	dc.b	dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18
	dc.b	dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18
	dc.b	dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18
	dc.b	dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18
	dc.b	dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18
	dc.b	dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18
	dc.b	dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18
	dc.b	dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18
	dc.b	dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18
	dc.b	dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18
	dc.b	dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $0C, dSnareS3, $0C, dMuffledSnare, $0C
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18
	dc.b	dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18
	dc.b	dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18
	dc.b	dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18
	dc.b	dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18
	dc.b	dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18
	dc.b	dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18
	dc.b	dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18
	dc.b	dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18
	dc.b	dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18
	dc.b	dKickS3, $18, dMuffledSnare, $18, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18
	dc.b	dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $12, dMuffledSnare, $0C, dSnareS3, $0C, dMuffledSnare, $0C, dSnareS3, $06
	dc.b	dSnareS3, $06, dKickS3, $18, dKickS3, $18, dKickS3, $18, dMuffledSnare, $18, dKickS3, $18
	dc.b	dKickS3, $18, dKickS3, $0C, dSnareS3, $0C, dMuffledSnare, $0C, dSnareS3, $06, dSnareS3, $06
	smpsJump	snd_sng_z3a2_DACLoop

; FM1 Data
snd_sng_z3a2_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06, nRst, $06, nAb2, $12
	dc.b	nRst, $06, nAb2, $06, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06
	dc.b	nAb2, $06, nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06, nRst, $06
	dc.b	nAb2, $12, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06, nRst, $06
	dc.b	nAb2, $06, nAb2, $06
snd_sng_z3a2_FM1Loop:
	dc.b	nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $12, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $06, nAb2, $06, nBb2, $0C, nRst, $06, nBb2, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $12, nRst, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $06, nBb2, $06, nB2, $0C, nRst, $06
	dc.b	nB2, $06, nB2, $06, nRst, $06, nB2, $12, nRst, $06, nB2, $06
	dc.b	nRst, $06, nB2, $06, nRst, $06, nB2, $06, nB2, $06, nBb2, $0C
	dc.b	nRst, $06, nBb2, $06, nBb2, $06, nRst, $06, nA2, $12, nRst, $06
	dc.b	nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06, nA2, $06
	dc.b	nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06, nRst, $06, nAb2, $12
	dc.b	nRst, $06, nAb2, $06, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06
	dc.b	nAb2, $06, nBb2, $0C, nRst, $06, nBb2, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $12, nRst, $06, nBb2, $06, nRst, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nBb2, $06, nB2, $0C, nRst, $06, nB2, $06, nB2, $06
	dc.b	nRst, $06, nB2, $12, nRst, $06, nB2, $06, nRst, $06, nB2, $06
	dc.b	nRst, $06, nB2, $06, nB2, $06, nBb2, $0C, nRst, $06, nBb2, $06
	dc.b	nBb2, $06, nRst, $06, nA2, $12, nRst, $06, nA2, $06, nRst, $06
	dc.b	nA2, $06, nRst, $06, nA2, $06, nA2, $06, nAb2, $0C, nRst, $06
	dc.b	nAb2, $06, nAb2, $06, nRst, $06, nAb2, $12, nRst, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $06, nRst, $06, nAb2, $06, nAb2, $06, nBb2, $0C
	dc.b	nRst, $06, nBb2, $06, nBb2, $06, nRst, $06, nBb2, $12, nRst, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $06, nRst, $06, nBb2, $06, nBb2, $06
	dc.b	nB2, $0C, nRst, $06, nB2, $06, nB2, $06, nRst, $06, nB2, $12
	dc.b	nRst, $06, nB2, $06, nRst, $06, nB2, $06, nRst, $06, nB2, $06
	dc.b	nB2, $06, nBb2, $0C, nRst, $06, nBb2, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $0C, nRst, $0C, nA2, $12, nRst, $06, nA2, $06, nA2, $06
	dc.b	nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06, nRst, $06, nAb2, $12
	dc.b	nRst, $06, nAb2, $06, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06
	dc.b	nAb2, $06, nBb2, $0C, nRst, $06, nBb2, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $12, nRst, $06, nBb2, $06, nRst, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nBb2, $06, nB2, $0C, nRst, $06, nB2, $06, nB2, $06
	dc.b	nRst, $06, nB2, $12, nRst, $06, nB2, $06, nRst, $06, nB2, $06
	dc.b	nRst, $06, nB2, $06, nB2, $06, nBb2, $0C, nRst, $06, nBb2, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $0C, nRst, $0C, nA2, $12, nRst, $06
	dc.b	nA2, $06, nA2, $06, nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $12, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $06, nAb2, $06, nAb2, $0C, nRst, $06, nAb2, $06
	dc.b	nAb2, $06, nRst, $06, nAb2, $12, nRst, $06, nAb2, $06, nRst, $06
	dc.b	nAb2, $06, nRst, $06, nAb2, $06, nAb2, $06, nAb2, $0C, nRst, $06
	dc.b	nAb2, $06, nAb2, $06, nRst, $06, nAb2, $12, nRst, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $06, nRst, $06, nAb2, $06, nAb2, $06, nBb2, $0C
	dc.b	nRst, $06, nBb2, $06, nBb2, $06, nRst, $06, nBb2, $12, nRst, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $06, nRst, $06, nBb2, $06, nBb2, $06
	dc.b	nB2, $0C, nRst, $06, nB2, $06, nB2, $06, nRst, $06, nB2, $12
	dc.b	nRst, $06, nB2, $06, nRst, $06, nB2, $06, nRst, $06, nB2, $06
	dc.b	nB2, $06, nBb2, $0C, nRst, $06, nBb2, $06, nBb2, $06, nRst, $06
	dc.b	nA2, $12, nRst, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06
	dc.b	nA2, $06, nA2, $06, nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $12, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $06, nAb2, $06, nBb2, $0C, nRst, $06, nBb2, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $12, nRst, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $06, nBb2, $06, nB2, $0C, nRst, $06
	dc.b	nB2, $06, nB2, $06, nRst, $06, nB2, $12, nRst, $06, nB2, $06
	dc.b	nRst, $06, nB2, $06, nRst, $06, nB2, $06, nB2, $06, nBb2, $0C
	dc.b	nRst, $06, nBb2, $06, nBb2, $06, nRst, $06, nA2, $12, nRst, $06
	dc.b	nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06, nA2, $06
	dc.b	nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06, nRst, $06, nAb2, $12
	dc.b	nRst, $06, nAb2, $06, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06
	dc.b	nAb2, $06, nBb2, $0C, nRst, $06, nBb2, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $12, nRst, $06, nBb2, $06, nRst, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nBb2, $06, nB2, $0C, nRst, $06, nB2, $06, nB2, $06
	dc.b	nRst, $06, nB2, $12, nRst, $06, nB2, $06, nRst, $06, nB2, $06
	dc.b	nRst, $06, nB2, $06, nB2, $06, nBb2, $0C, nRst, $06, nBb2, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $0C, nRst, $0C, nA2, $12, nRst, $06
	dc.b	nA2, $06, nA2, $06, nAb2, $0C, nRst, $06, nAb2, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $12, nRst, $06, nAb2, $06, nRst, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $06, nAb2, $06, nBb2, $0C, nRst, $06, nBb2, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $12, nRst, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $06, nBb2, $06, nB2, $0C, nRst, $06
	dc.b	nB2, $06, nB2, $06, nRst, $06, nB2, $12, nRst, $06, nB2, $06
	dc.b	nRst, $06, nB2, $06, nRst, $06, nB2, $06, nB2, $06, nBb2, $0C
	dc.b	nRst, $06, nBb2, $06, nBb2, $06, nRst, $06, nBb2, $0C, nRst, $0C
	dc.b	nA2, $12, nRst, $06, nA2, $06, nA2, $06, nAb2, $0C, nRst, $06
	dc.b	nAb2, $06, nAb2, $06, nRst, $06, nAb2, $12, nRst, $06, nAb2, $06
	dc.b	nRst, $06, nAb2, $06, nRst, $06, nAb2, $06, nAb2, $06, nAb2, $0C
	dc.b	nRst, $06, nAb2, $06, nB2, $06, nRst, $06, nB2, $12, nRst, $06
	dc.b	nCs3, $06, nRst, $06, nD3, $06, nRst, $06, nEb3, $06, nEb3, $06
	dc.b	nAb2, $0C, nRst, $06, nAb2, $06, nEb3, $06, nRst, $06, nAb2, $12
	dc.b	nRst, $06, nAb2, $06, nRst, $06, nB2, $06, nRst, $06, nAb2, $06
	dc.b	nFs2, $06, nAb2, $0C, nRst, $06, nAb2, $06, nEb3, $06, nRst, $06
	dc.b	nAb2, $12, nRst, $06, nAb2, $06, nRst, $06, nFs3, $06, nRst, $06
	dc.b	nFs3, $06, nAb3, $06
	smpsJump	snd_sng_z3a2_FM1Loop

; FM2 Data
snd_sng_z3a2_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nRst, $7F, nRst, $41
snd_sng_z3a2_FM2Loop:
	dc.b	nEb4, $48, nAb4, $18, nFs4, $48, nCs4, $18, nEb4
	dc.b	$30, nFs4, $30, nRst, $60, nEb4, $48, nAb4, $18, nBb4, $30, nFs4
	dc.b	$30, nEb4, $30, nFs4, $30, nRst, $60, nEb4, $30, nAb4, $30, nEb4
	dc.b	$30, nFs4, $30, nEb4, $24, nFs4, $3C, nAb4, $30, nFs4, $18, nE4
	dc.b	$18, nEb4, $30, nAb4, $30, nEb4, $30, nFs4, $30, nEb4, $24, nFs4
	dc.b	$3C, nBb4, $30, nFs4, $18, nA4, $18, nAb4, $60, nAb3, $0C
	dc.b	nRst, $0C, nAb3, $0C, nRst, $0C, nAb3, $0C, nRst, $24, nEb4, $48, nAb4
	dc.b	$18, nFs4, $18, nCs4, $24, nFs4, $24, nEb4, $30, nFs4, $30
	dc.b	nRst, $60, nEb4, $48, nAb4, $18, nBb4, $18, nFs4, $24, nCs4, $24, nEb4
	dc.b	$30, nFs4, $30, nRst, $60, nEb4, $30, nAb4, $30, nEb4, $30, nFs4
	dc.b	$30, nEb4, $24, nFs4, $3C, nAb4, $30, nFs4, $18, nE4, $18, nEb4
	dc.b	$30, nAb4, $30, nEb4, $30, nFs4, $30, nEb4, $24, nFs4, $3C, nBb4
	dc.b	$30, nFs4, $18, nA4, $18, nAb4, $60, nAb3, $0C, nRst, $0C, nAb3
	dc.b	$0C, nRst, $0C, nAb3, $0C, nRst, $7F, nRst, $65
	smpsJump	snd_sng_z3a2_FM2Loop

; FM3 Data
snd_sng_z3a2_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nRst, $7F, nRst, $41
snd_sng_z3a2_FM3Loop:
	dc.b	nAb3, $48, nB3, $18, nBb3, $42, nRst, $06, nBb3
	dc.b	$18, nB3, $30, nRst, $7F, nRst, $11, nAb3, $48, nB3, $18, nCs4, $2A
	dc.b	nRst, $06, nCs4, $30, nB3, $30, nRst, $7F, nRst, $11, nAb3, $3C
	dc.b	nRst, $0C, nAb3, $18, nBb3, $3C, nRst, $0C, nBb3, $18, nB3, $3C
	dc.b	nRst, $0C, nB3, $18, nBb3, $3C, nRst, $0C, nA3, $18, nAb3, $3C
	dc.b	nRst, $0C, nAb3, $18, nBb3, $3C, nRst, $0C, nBb3, $18, nB3, $3C
	dc.b	nRst, $0C, nB3, $18, nBb3, $3C, nRst, $0C, nCs4, $18, nEb4, $24, nB3
	dc.b	$24, nCs4, $18, nRst, $60, nAb3, $48, nB3, $18, nBb3, $0C
	dc.b	nRst, $0C, nBb3, $18, nRst, $0C, nBb3, $24, nB3, $30, nRst, $7F, nRst, $11
	dc.b	nAb3, $48, nB3, $18, nCs4, $18, nBb3, $18, nRst, $0C, nBb3, $24
	dc.b	nB3, $30, nRst, $7F, nRst, $11, nAb3, $3C, nRst, $0C, nAb3, $18, nBb3
	dc.b	$3C, nRst, $0C, nBb3, $18, nB3, $3C, nRst, $0C, nB3, $18, nBb3
	dc.b	$3C, nRst, $0C, nA3, $18, nAb3, $3C, nRst, $0C, nAb3, $18, nBb3
	dc.b	$3C, nRst, $0C, nBb3, $18, nB3, $3C, nRst, $0C, nB3, $18, nBb3
	dc.b	$3C, nRst, $0C, nCs4, $18, nEb4, $24, nB3, $24, nCs4, $18
	dc.b	nRst, $7F, nRst, $7F, nRst, $22
	smpsJump	snd_sng_z3a2_FM3Loop

; FM4 Data
snd_sng_z3a2_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	dc.b	nRst, $7F, nRst, $41
snd_sng_z3a2_FM4Loop:
	dc.b	nRst, $37, nRst, $7B, nRst, $7B, nRst, $7B, nRst, $7B, nRst, $7B, nRst, $7B, nAb5, $0C, nEb5
	dc.b	$0C, nFs5, $0C, nCs5, $24, nEb5, $24, nB4, $0C, nRst, $0C, nCs5
	dc.b	$24, nAb4, $24, nB4, $0C, nRst, $0C, nCs5, $24, nRst, $0C, nEb5
	dc.b	$24, nB4, $0C, nRst, $0C, nCs5, $18, nRst, $18, nAb5, $0C, nEb5
	dc.b	$0C, nFs5, $0C, nCs5, $24, nEb5, $24, nB4, $0C, nRst, $0C, nCs5
	dc.b	$24, nAb4, $24, nB4, $0C, nRst, $0C, nCs5, $24, nRst, $0C, nEb5
	dc.b	$24, nFs5, $0C, nRst, $0C, nG5, $18, nAb5, $60, nRst, $6F, nRst, $6F
	dc.b	nRst, $6F, nRst, $6F, nRst, $6F, nRst, $6F, nRst, $6F, nRst, $6F, nAb5, $18, nEb5, $0C, nFs5, $18
	dc.b	nCs5, $0C, nEb5, $18, nFs5, $0C, nB4, $0C, nRst, $0C, nCs5, $24
	dc.b	nRst, $0C, nAb4, $0C, nEb5, $0C, nB4, $0C, nRst, $0C, nCs5, $0C
	dc.b	nRst, $0C, nEb5, $0C, nRst, $0C, nEb5, $0C, nRst, $0C, nEb5, $0C
	dc.b	nB4, $0C, nRst, $0C, nCs5, $18, nRst, $18, nAb5, $18, nEb5, $0C
	dc.b	nFs5, $18, nCs5, $0C, nEb5, $18, nFs5, $0C, nB4, $0C, nRst, $0C
	dc.b	nCs5, $24, nRst, $0C, nAb4, $0C, nEb5, $0C, nB4, $0C, nRst, $0C
	dc.b	nCs5, $0C, nRst, $0C, nEb5, $0C, nRst, $0C, nEb5, $0C, nRst, $0C
	dc.b	nEb5, $0C, nFs5, $0C, nRst, $0C, nA5, $18, nAb5, $60, nRst, $7F
	dc.b	nRst, $7F, nRst, $21
	smpsJump	snd_sng_z3a2_FM4Loop

; FM5 Data
snd_sng_z3a2_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	dc.b	nRst, $7F, nRst, $41
snd_sng_z3a2_FM5Loop:
	dc.b	nRst, $37, nRst, $7B, nRst, $7B, nRst, $7B, nRst, $7B, nRst, $7B, nRst, $7B, nB4, $0C, nAb4
	dc.b	$0C, nBb4, $0C, nFs4, $24, nAb4, $24, nEb4, $0C, nRst, $0C, nFs4
	dc.b	$24, nEb4, $24, nFs4, $0C, nRst, $0C, nAb4, $24, nRst, $0C, nAb4
	dc.b	$24, nFs4, $0C, nRst, $0C, nE4, $18, nRst, $18, nB4, $0C, nAb4
	dc.b	$0C, nBb4, $0C, nFs4, $24, nAb4, $24, nEb4, $0C, nRst, $0C, nFs4
	dc.b	$24, nEb4, $24, nFs4, $0C, nRst, $0C, nAb4, $24, nRst, $0C, nBb4
	dc.b	$24, nCs5, $0C, nRst, $0C, nEb5, $18, nB4, $60, nRst, $6F, nRst, $6F
	dc.b	nRst, $6F, nRst, $6F, nRst, $6F, nRst, $6F, nRst, $6F, nRst, $6F, nB4, $18, nAb4, $0C, nBb4, $18
	dc.b	nFs4, $0C, nAb4, $18, nBb4, $0C, nEb4, $0C, nRst, $0C, nFs4, $24
	dc.b	nRst, $0C, nEb4, $0C, nEb4, $0C, nFs4, $0C, nRst, $0C, nAb4, $0C
	dc.b	nRst, $0C, nB4, $0C, nRst, $0C, nB4, $0C, nRst, $0C, nAb4, $0C
	dc.b	nFs4, $0C, nRst, $0C, nE4, $18, nRst, $18, nB4, $18, nAb4, $0C
	dc.b	nBb4, $18, nFs4, $0C, nAb4, $18, nBb4, $0C, nEb4, $0C, nRst, $0C
	dc.b	nFs4, $24, nRst, $0C, nEb4, $0C, nEb4, $0C, nFs4, $0C, nRst, $0C
	dc.b	nAb4, $0C, nRst, $0C, nB4, $0C, nRst, $0C, nBb4, $0C, nRst, $0C
	dc.b	nBb4, $0C, nCs5, $0C, nRst, $0C, nCs5, $18, nB4, $60, nRst, $7F
	dc.b	nRst, $7F, nRst, $21
	smpsJump	snd_sng_z3a2_FM5Loop

; PSG1 Data
snd_sng_z3a2_PSG1:
	dc.b	nRst, $7F, nRst, $41
snd_sng_z3a2_PSG1Loop:
	dc.b	nRst, $3E, nRst, $7F, nRst, $63, nB1, $06, nFs2, $06, nB2, $06, nBb1
	dc.b	$06, nRst, $0C
	smpsPSGAlterVol		$05
	dc.b	nB1, $06, nFs2, $06, nB2, $06, nBb1, $06
	smpsPSGAlterVol		$02
	dc.b	nRst, $0C, nB1, $06, nFs2, $06, nB2, $06, nBb1, $06, nRst, $7F, nRst, $7F
	smpsPSGAlterVol		-$07
	dc.b	nRst, $22, nB1, $06, nFs2, $06, nB2, $06, nBb1, $06, nRst, $0C, 
	smpsPSGAlterVol		$05
	dc.b	nB1
	dc.b	$06, nFs2, $06, nB2, $06, nBb1, $06, nRst, $0C
	smpsPSGAlterVol		$02
	dc.b	nB1, $06, nFs2
	dc.b	$06, nB2, $06, nBb1, $06, nRst, $68, nRst, $68, nRst, $68, nRst, $68, nRst, $68, nRst, $68
	smpsPSGAlterVol		-$07
	dc.b	nRst, $68, nRst, $68, nRst, $68, nRst, $68, nRst, $68, nRst, $68, nB1, $06, nFs2, $06, nB2, $06
	dc.b	nBb1, $06
	smpsPSGAlterVol		$05
	dc.b	nRst, $0C, nB1, $06, nFs2, $06, nB2, $06, nBb1, $06
	smpsPSGAlterVol		$02
	dc.b	nRst, $0C, nB1, $06, nFs2, $06, nB2, $06, nBb1, $06, nRst, $7F
	smpsPSGAlterVol		-$07
	dc.b	nRst, $7F, nRst, $22, nB1, $06, nFs2, $06, nB2, $06, nBb1, $06, nRst, $0C
	smpsPSGAlterVol		$05
	dc.b	nB1, $06, nFs2, $06, nB2, $06, nBb1, $06, nRst, $0C
	smpsPSGAlterVol		$02
	dc.b	nB1, $06
	dc.b	nFs2, $06, nB2, $06, nBb1, $06, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60
	smpsPSGAlterVol		-$07
	smpsJump	snd_sng_z3a2_PSG1Loop

; PSG2 Data
snd_sng_z3a2_PSG2:
	dc.b	nRst, $06
	smpsJump	snd_sng_z3a2_PSG1

; PSG3 Data
snd_sng_z3a2_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $0C, (nMaxPSG2-$23)&$FF, $18, $12, $06, $18, $18
	dc.b	$18, $12, $0C, $12, $0C
snd_sng_z3a2_PSG3Loop:
	dc.b	nRst, $0C, $18
	dc.b	$18, $06, $0C, $06, $18, $18
	dc.b	$18, $06, $0C, $06, $18, $18
	dc.b	$18, $06, $0C, $06, $18, $18
	dc.b	$18, $06, $0C, $06, $18, $18
	dc.b	$18, $06, $0C, $06, $18, $18
	dc.b	$18, $06, $0C, $06, $18, $18
	dc.b	$18, $06, $0C, $06, $18, $18
	dc.b	$18, $06, $0C, $06, $18, $12
	dc.b	$06, $06, $12, $12, $06, $18
	dc.b	$12, $06, $06, $12, $12, $06
	dc.b	$18, $12, $06, $06, $12, $12
	dc.b	$06, $18, $12, $06, $06, $12
	dc.b	$12, $06, $18, $12, $06, $06
	dc.b	$12, $12, $06, $18, $12, $06
	dc.b	$06, $12, $12, $06, $18, $12
	dc.b	$06, $06, $12, $12, $06, $18
	dc.b	$12, $06, $06, $12, $12, $06
	dc.b	$18, $12, $06, $06, $12, $12
	dc.b	$06, $18, $12, $06, $06, $12
	dc.b	$12, $06, $18, $18, $18, $06
	dc.b	$0C, $06, $18, $18, $18, $06
	dc.b	$0C, $06, $18, $18, $18, $06
	dc.b	$0C, $06, $18, $18, $18, $06
	dc.b	$0C, $06, $18, $18, $18, $06
	dc.b	$0C, $06, $18, $18, $18, $06
	dc.b	$0C, $06, $18, $18, $18, $06
	dc.b	$0C, $06, $18, $18, $18, $06
	dc.b	$0C, $06, $18, $12, $06, $06
	dc.b	$12, $12, $06, $18, $12, $06
	dc.b	$06, $12, $12, $06, $18, $12
	dc.b	$06, $06, $12, $12, $06, $18
	dc.b	$12, $06, $06, $12, $12, $06
	dc.b	$18, $12, $06, $06, $12, $12
	dc.b	$06, $18, $12, $06, $06, $12
	dc.b	$12, $06, $18, $12, $06, $06
	dc.b	$12, $12, $06, $18, $12, $06
	dc.b	$06, $12, $12, $06, $18, $12
	dc.b	$06, $06, $12, $12, $06, $18
	dc.b	$12, $06, $06, $12, $12, $06
	dc.b	$18, $18, $18, $06, $0C, $06
	dc.b	$18, $18, $18, $06, $0C, $06
	dc.b	$0C
	smpsJump	snd_sng_z3a2_PSG3Loop

snd_sng_z3a2_Voices:
;	Voice $00
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$2C, $22, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $22, $2C

;	Voice $01
;	$3D
;	$12, $21, $51, $12, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $02, $01
	smpsVcCoarseFreq    $02, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $02
;	$3F
;	$74, $7F, $32, $31, 	$1F, $1F, $12, $0D, 	$0D, $00, $00, $09
;	$00, $00, $00, $00, 	$2F, $00, $00, $22, 	$07, $1D, $00, $15
	smpsVcAlgorithm     $07
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $0F, $0F, $08, $03
	smpsVcTotalLevel    $07, $1D, $00, $15
