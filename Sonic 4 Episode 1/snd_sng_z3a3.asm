snd_sng_z3a3_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z3a3_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $09

	smpsHeaderDAC       snd_sng_z3a3_DAC
	smpsHeaderFM        snd_sng_z3a3_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_z3a3_FM2,	$00, $0C
	smpsHeaderFM        snd_sng_z3a3_FM3,	$00, $13
	smpsHeaderFM        snd_sng_z3a3_FM4,	$00, $19
	smpsHeaderFM        snd_sng_z3a3_FM5,	$00, $19
	smpsHeaderPSG       snd_sng_z3a3_PSG1,	$0C, $03, $00, sTone_11
	smpsHeaderPSG       snd_sng_z3a3_PSG2,	$0C, $07, $00, sTone_11
	smpsHeaderPSG       snd_sng_z3a3_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z3a3_DAC:
	dc.b	dKickS3, $0C, dKickS3, $0C, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dSnareS3, $18
	dc.b	dKickS3, $0C, dKickS3, $0C, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dSnareS3, $0C
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $18
	dc.b	dKickS3, $0C, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $24, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, $06, dKickS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $18, dKickS3, $0C, dSnareS3, $18, dMuffledSnare, $18, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dSnareS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dKickS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $18, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dMuffledSnare, $0C
	smpsJump	snd_sng_z3a3_DAC

; FM1 Data
snd_sng_z3a3_FM1:
	smpsSetvoice        $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nD3, $0C, nA2, $0C, nF2, $0C, nD2, $0C, nRst, $0C, nA2, $0C
	dc.b	nD3, $18, nG2, $18, nE2, $0C, nC2, $18, nG2, $0C, nC3, $0C
	dc.b	nB2, $0C, nBb2, $06, nRst, $06, nBb2, $0C, nA2, $0C, nF2, $0C
	dc.b	nG2, $06, nRst, $06, nG2, $0C, nF2, $0C, nD2, $0C, nE2, $0C
	dc.b	nF2, $0C, nG2, $06, nRst, $06, nG2, $18, nA2, $0C, nBb2, $18
	dc.b	nD3, $0C, nA2, $0C, nF2, $0C, nD2, $0C, nRst, $0C, nA2, $0C
	dc.b	nD3, $18, nG2, $18, nE2, $0C, nC2, $18, nG2, $0C, nC3, $0C
	dc.b	nB2, $0C, nBb2, $06, nRst, $06, nBb2, $0C, nA2, $0C, nF2, $0C
	dc.b	nG2, $06, nRst, $06, nG2, $0C, nF2, $0C, nD2, $0C, nE2, $0C
	dc.b	nF2, $0C, nG2, $06, nRst, $06, nG2, $18, nA2, $0C, nF2, $18
	dc.b	nD3, $0C, nF2, $0C, nG2, $0C, nD2, $0C, nRst, $0C, nE2, $0C
	dc.b	nA2, $0C, nF2, $0C, nG2, $0C, nC3, $0C, nF3, $0C, nE3, $0C
	dc.b	nRst, $0C, nC3, $0C, nF3, $0C, nE3, $0C, nBb2, $0C, nF2, $0C
	dc.b	nC3, $0C, nBb2, $18, nF2, $0C, nF3, $0C, nBb2, $18, nD2, $0C
	dc.b	nE2, $0C, nF2, $0C, nG2, $0C, nF2, $0C, nA2, $0C, nC3, $0C
	dc.b	nD3, $0C, nF2, $0C, nG2, $0C, nD2, $0C, nRst, $0C, nF2, $0C
	dc.b	nA2, $0C, nF2, $0C, nG2, $0C, nC3, $0C, nF3, $18, nE3, $0C
	dc.b	nC3, $0C, nEb3, $0C, nBb2, $18, nF2, $0C, nC3, $0C, nBb2, $18
	dc.b	nF2, $0C, nF3, $0C, nBb2, $18, nD2, $0C, nE2, $0C, nF2, $0C
	dc.b	nG2, $0C, nF2, $0C, nA2, $0C, nC3, $0C, nD3, $0C, nRst, $0C
	dc.b	nF2, $0C, nD2, $0C, nRst, $0C, nG2, $0C, nD2, $0C, nA2, $0C
	dc.b	nRst, $0C, nD2, $0C, nC3, $0C, nD2, $0C, nD3, $0C, nD2, $0C
	dc.b	nF3, $0C, nD3, $0C, nF2, $0C, nRst, $0C, nD3, $0C, nF2, $0C
	dc.b	nRst, $0C, nF2, $0C, nC3, $0C, nD3, $0C, nRst, $0C, nF2, $0C
	dc.b	nC3, $0C, nD3, $0C, nF3, $0C, nF2, $0C, nA2, $0C, nD2, $0C
	dc.b	nBb2, $0C, nRst, $0C, nD2, $0C, nF2, $0C, nRst, $0C, nD2, $0C
	dc.b	nG2, $0C, nF2, $0C, nRst, $0C, nBb2, $0C, nA2, $0C, nF2, $0C
	dc.b	nC3, $0C, nBb2, $0C, nA2, $0C, nF2, $0C, nBb1, $24, nF2, $0C
	dc.b	nBb2, $0C, nE2, $24, nEb2, $18, nBb2, $0C, nEb3, $18, nD3, $0C
	dc.b	nCs3, $18
	smpsJump	snd_sng_z3a3_FM1

; FM2 Data
snd_sng_z3a3_FM2:
	smpsSetvoice        $02
	smpsModSet          $07, $01, $03, $05
	dc.b	nA4, $30, nRst, $0C, nC5, $18, nD5, $0C, nG4, $24, nF4, $18
	dc.b	nRst, $0C, nE4, $18, nD4, $24, nRst, $0C, nA4, $24, nG4, $54
	dc.b	nRst, $18, nA4, $30, nRst, $0C, nC5, $18, nD5, $0C, nG4, $24
	dc.b	nF4, $18, nRst, $0C, nE4, $18, nD4, $18, nRst, $0C, nA4, $6C
	dc.b	nRst, $30, nA4, $18, nF4, $0C, nD4, $0C, nRst, $0C, nA4, $0C
	dc.b	nF4, $0C, nG4, $24, nE4, $0C, nC4, $0C, nRst, $0C, nE4, $0C
	dc.b	nG4, $18, nF4, $18, nRst, $0C, nD4, $3C, nRst, $60, nA4, $18
	dc.b	nF4, $0C, nD4, $0C, nRst, $0C, nA4, $0C, nRst, $0C, nG4, $18
	dc.b	nE4, $0C, nC4, $18, nC5, $18, nB4, $0C, nBb4, $6C, nRst, $3C
	dc.b	nA4, $0C, nC5, $0C, nD5, $0C, nF4, $0C, nRst, $30, nF4, $0C
	dc.b	nE4, $0C, nD4, $0C, nRst, $3C, nA4, $0C, nC5, $0C, nD5, $0C
	dc.b	nF4, $0C, nRst, $30, nF4, $0C, nE4, $0C, nD4, $0C, nRst, $3C
	dc.b	nA4, $0C, nC5, $0C, nD5, $0C, nF4, $0C, nRst, $30, nF4, $0C
	dc.b	nE4, $0C, nD4, $0C, nRst, $3C, nD4, $0C, nE4, $0C, nF4, $0C
	dc.b	nA4, $24, nG4, $0C, nRst, $0C, nG4, $24, nC5, $24, nBb4, $0C
	dc.b	nRst, $0C, nBb4, $24
	smpsJump	snd_sng_z3a3_FM2


; FM3 Data
snd_sng_z3a3_FM3:
	smpsSetvoice        $03
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $7F, nRst, $41, nBb3, $24, nRst, $0C, nD4, $24, nE4, $54
	dc.b	nRst, $7F, nRst, $59, nBb3, $18, nRst, $0C, nF4, $3C, nE4, $30, nD4, $0C
	dc.b	nRst, $0C, nC4, $0C, nRst, $7F, nRst, $4D, nD4, $18, nRst, $0C, nBb3
	dc.b	$3C, nRst, $7F, nRst, $71, nE4, $18, nEb4, $0C, nD4, $6C, nRst, $3C
	dc.b	nF3, $0C, nA3, $0C, nE4, $0C, nD4, $0C, nRst, $30, nD4, $0C
	dc.b	nC4, $0C, nA3, $0C, nRst, $3C, nA3, $0C, nC4, $0C, nF4, $0C
	dc.b	nD4, $0C, nRst, $30, nD4, $0C, nC4, $0C, nA3, $0C, nRst, $3C
	dc.b	nD4, $0C, nF4, $0C, nD4, $0C, nBb3, $0C, nRst, $30, nD4, $0C
	dc.b	nC4, $0C, nBb3, $0C, nRst, $3C, nF3, $0C, nBb3, $0C, nA3, $0C
	dc.b	nF4, $24, nE4, $0C, nRst, $0C, nE4, $24, nG4, $24, nEb4, $0C
	dc.b	nRst, $0C, nG4, $0C, nF4, $18
	smpsJump	snd_sng_z3a3_FM3


; FM4 Data
snd_sng_z3a3_FM4:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $18, nA5, $0C, nRst, $0C, nD5, $0C, nF5, $0C, nA5, $0C
	dc.b	nD6, $0C, nRst, $18, nG5, $0C, nRst, $0C, nC6, $0C, nG5, $0C
	dc.b	nE5, $0C, nC5, $0C, nRst, $0C, nBb5, $0C, nBb5, $0C, nRst, $0C
	dc.b	nBb5, $0C, nRst, $0C, nBb5, $0C, nRst, $0C, nC6, $0C, nRst, $0C
	dc.b	nD5, $0C, nC5, $0C, nF5, $0C, nE5, $0C, nG5, $0C, nF5, $0C
	dc.b	nRst, $18, nA5, $0C, nRst, $0C, nD5, $0C, nF5, $0C, nA5, $0C
	dc.b	nD6, $0C, nRst, $18, nG5, $0C, nRst, $0C, nC6, $0C, nG5, $0C
	dc.b	nE5, $0C, nC5, $0C, nRst, $0C, nBb5, $0C, nBb5, $0C, nRst, $0C
	dc.b	nBb5, $0C, nRst, $0C, nBb5, $0C, nRst, $0C, nA5, $0C, nRst, $0C
	dc.b	nC6, $0C, nRst, $0C, nC5, $0C, nE5, $0C, nF5, $0C, nG5, $0C
	dc.b	nRst, $0C, nD6, $0C, nA5, $0C, nRst, $0C, nF5, $0C, nD5, $0C
	dc.b	nRst, $0C, nC6, $0C, nRst, $0C, nC6, $0C, nRst, $0C, nC6, $0C
	dc.b	nRst, $0C, nD6, $0C, nC6, $0C, nRst, $24, nD6, $0C, nBb5, $0C
	dc.b	nF5, $0C, nD5, $0C, nRst, $0C, nBb5, $0C, nRst, $0C, nA5, $0C
	dc.b	nRst, $0C, nBb5, $0C, nRst, $0C, nBb5, $0C, nRst, $0C, nC6, $0C
	dc.b	nRst, $0C, nD6, $0C, nA5, $0C, nRst, $0C, nF5, $0C, nD5, $0C
	dc.b	nRst, $0C, nC6, $0C, nRst, $0C, nC6, $0C, nRst, $0C, nF6, $0C
	dc.b	nE6, $0C, nD6, $0C, nC6, $0C, nBb5, $0C, nRst, $0C, nBb5, $0C
	dc.b	nRst, $0C, nC6, $0C, nC6, $0C, nBb5, $0C, nRst, $0C, nC6, $0C
	dc.b	nRst, $0C, nBb5, $0C, nRst, $0C, nC6, $0C, nRst, $0C, nC6, $0C
	dc.b	nD6, $0C, nA5, $0C, nA5, $0C, nRst, $0C, nA5, $0C, nRst, $30
	dc.b	nA5, $0C, nRst, $0C, nA5, $0C, nA5, $0C, nRst, $0C, nG5, $0C
	dc.b	nRst, $0C, nF5, $0C, nRst, $0C, nA5, $0C, nRst, $0C, nC6, $0C
	dc.b	nRst, $30, nD6, $0C, nRst, $0C, nA5, $0C, nRst, $0C, nA5, $0C
	dc.b	nC6, $0C, nRst, $0C, nD6, $0C, nRst, $0C, nBb5, $0C, nRst, $0C
	dc.b	nBb5, $0C, nRst, $30, nC6, $0C, nRst, $0C, nBb5, $0C, nRst, $0C
	dc.b	nBb5, $0C, nC6, $0C, nRst, $0C, nBb5, $0C, nRst, $0C, nBb5, $0C
	dc.b	nF5, $0C, nRst, $0C, nC6, $0C, nRst, $0C, nE5, $0C, nRst, $18
	dc.b	nEb6, $0C, nBb5, $0C, nRst, $0C, nG5, $0C, nRst, $0C, nA5, $0C
	dc.b	nBb5, $0C, nRst, $0C
	smpsJump	snd_sng_z3a3_FM4

; FM5 Data
snd_sng_z3a3_FM5:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $18, nD5, $0C, nRst, $54, nC5, $0C, nRst, $48, nF5, $0C
	dc.b	nF5, $0C, nRst, $0C, nE5, $0C, nRst, $0C, nF5, $0C, nRst, $0C
	dc.b	nE5, $0C, nRst, $6C, nD5, $0C, nRst, $54, nC5, $0C, nRst, $48
	dc.b	nF5, $0C, nF5, $0C, nRst, $0C, nE5, $0C, nRst, $0C, nF5, $0C
	dc.b	nRst, $0C, nE5, $0C, nRst, $0C, nE5, $0C, nRst, $7F, nRst, $11, nG5
	dc.b	$0C, nRst, $0C, nG5, $0C, nRst, $0C, nG5, $0C, nRst, $0C, nG5
	dc.b	$0C, nE5, $0C, nRst, $60, nF5, $0C, nRst, $0C, nF5, $0C
	dc.b	nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C, nG5, $0C
	dc.b	nRst, $54, nG5, $0C, nRst, $0C, nG5, $0C, nRst, $3C, nF5, $0C
	dc.b	nRst, $0C, nF5, $0C, nRst, $0C, nG5, $0C, nG5, $0C, nF5, $0C
	dc.b	nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C, nG5, $0C
	dc.b	nRst, $30, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $30, nF5, $0C
	dc.b	nRst, $0C, nD5, $0C, nD5, $0C, nRst, $0C, nD5, $0C, nRst, $0C, nD5
	dc.b	$0C, nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $30, nF5
	dc.b	$0C, nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nF5, $0C
	dc.b	nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C
	dc.b	nRst, $30, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nF5
	dc.b	$0C, nRst, $0C, nF5, $0C, nRst, $7F, nRst, $1F, nRst, $2E
	smpsJump	snd_sng_z3a3_FM5


; PSG1 Data
snd_sng_z3a3_PSG1:
	dc.b	nA2, $30, nRst, $0C, nC3, $18, nD3, $0C, nG2, $24, nF2, $18
	dc.b	nRst, $0C, nE2, $18, nD2, $24, nRst, $0C, nA2, $24, nG2, $54
	dc.b	nRst, $18, nA2, $30, nRst, $0C, nC3, $18, nD3, $0C, nG2, $24
	dc.b	nF2, $18, nRst, $0C, nE2, $18, nD2, $18, nRst, $0C, nA2, $6C
	dc.b	nRst, $30, nA2, $18, nF2, $0C, nD2, $0C, nRst, $0C, nA2, $0C
	dc.b	nF2, $0C, nG2, $24, nE2, $0C, nC2, $0C, nRst, $0C, nE2, $0C
	dc.b	nG2, $18, nF2, $18, nRst, $0C, nD2, $3C, nRst, $60, nA2, $18
	dc.b	nF2, $0C, nD2, $0C, nRst, $0C, nA2, $0C, nRst, $0C, nG2, $18
	dc.b	nE2, $0C, nC2, $18, nC3, $18, nB2, $0C, nBb2, $6C, nRst, $3C
	dc.b	nA2, $0C, nC3, $0C, nD3, $0C, nF2, $0C, nRst, $30, nF2, $0C
	dc.b	nE2, $0C, nD2, $0C, nRst, $3C, nA2, $0C, nC3, $0C, nD3, $0C
	dc.b	nF2, $0C, nRst, $30, nF2, $0C, nE2, $0C, nD2, $0C, nRst, $3C
	dc.b	nA2, $0C, nC3, $0C, nD3, $0C, nF2, $0C, nRst, $30, nF2, $0C
	dc.b	nE2, $0C, nD2, $0C, nRst, $3C, nD2, $0C, nE2, $0C, nF2, $0C
	dc.b	nA2, $24, nG2, $0C, nRst, $0C, nG2, $24, nC3, $24, nBb2, $0C
	dc.b	nRst, $0C, nBb2, $24
	smpsJump	snd_sng_z3a3_PSG1


; PSG2 Data
snd_sng_z3a3_PSG2:
	dc.b	nRst, $06
	smpsAlterNote	$FF
	smpsJump	snd_sng_z3a3_PSG1

; PSG3 Data
snd_sng_z3a3_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $18, $0C, $18, $18, $18, $0C
	dc.b	$24, $18, $18, $18, $18, $17
	dc.b	$19, $18, $18, $17, $0D, $18
	dc.b	$0C, $18, $18, $18, $0C, $24
	dc.b	$18, $18, $18, $18, $17, $19
	dc.b	$18, $18, $17, $0D, $18, $0C
	dc.b	$18, $18, $18, $0C, $24, $18
	dc.b	$18, $18, $18, $17, $19, $18
	dc.b	$18, $17, $0D, $18, $0C, $18
	dc.b	$18, $18, $0C, $24, $18, $18
	dc.b	$18, $18, $17, $19, $18, $18
	dc.b	$17, $0D, $18, $0C, $18, $18
	dc.b	$18, $0C, $24, $18, $18, $18
	dc.b	$18, $17, $19, $18, $18, $17
	dc.b	$0D, $18, $0C, $18, $18, $18
	dc.b	$0C, $24, $18, $18, $18, $18
	dc.b	$17, $19, $18, $18, $17, $0D
	smpsJump	snd_sng_z3a3_PSG3

snd_sng_z3a3_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $01
;	$39
;	$32, $31, $72, $71, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $32, $1B

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

;	Voice $03
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
