snd_sng_z3a1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z3a1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $11

	smpsHeaderDAC       snd_sng_z3a1_DAC
	smpsHeaderFM        snd_sng_z3a1_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_z3a1_FM2,	$00, $0C
	smpsHeaderFM        snd_sng_z3a1_FM3,	$00, $0C
	smpsHeaderFM        snd_sng_z3a1_FM4,	$00, $1B
	smpsHeaderFM        snd_sng_z3a1_FM5,	$00, $0B
	smpsHeaderPSG       snd_sng_z3a1_PSG1,	$0C, $03, $00, sTone_23
	smpsHeaderPSG       snd_sng_z3a1_PSG2,	$0C, $03, $00, sTone_23
	smpsHeaderPSG       snd_sng_z3a1_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z3a1_DAC:
	dc.b	dKickS3, $18, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $24, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $24
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C
	dc.b	dSnareS3, $24, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $0C
	dc.b	dKickS3, $18, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18, dSnareS3, $0C
	dc.b	dKickS3, $18, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18, dSnareS3, $0C
	dc.b	dKickS3, $18, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18, dSnareS3, $0C
	dc.b	dKickS3, $18, dSnareS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18, dSnareS3, $0C
	dc.b	dKickS3, $18, dKickS3, $0C, dSnareS3, $24, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $18, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $24, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $24
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C
	dc.b	dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C
	dc.b	dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C
	dc.b	dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18, dSnareS3, $0C, dKickS3, $18, dSnareS3, $0C
	dc.b	dSnareS3, $0C, dSnareS3, $0C, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $0C, dSnareS3, $24, dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $18, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dKickS3, $18, dSnareS3, $24, dKickS3, $24
	smpsJump	snd_sng_z3a1_DAC

; FM1 Data
snd_sng_z3a1_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nA2, $0C, nD2, $0C, nA2, $0C, nD2, $12, nRst, $06, nA2, $0C
	dc.b	nD2, $0C, nA2, $0C, nD2, $12, nRst, $06, nA2, $0C, nD2, $0C
	dc.b	nG2, $0C, nC2, $24, nBb2, $0C, nBb1, $0C, nBb2, $0C, nBb1, $12
	dc.b	nRst, $06, nBb2, $0C, nBb1, $0C, nG2, $0C, nBb1, $12, nRst, $06
	dc.b	nA2, $0C, nBb1, $0C, nG2, $0C, nG1, $24, nA2, $0C, nD2, $0C
	dc.b	nA2, $0C, nD2, $12, nRst, $06, nA2, $0C, nD2, $0C, nA2, $0C
	dc.b	nD2, $12, nRst, $06, nA2, $0C, nD2, $0C, nG2, $0C, nC2, $24
	dc.b	nBb2, $0C, nBb1, $0C, nBb2, $0C, nBb1, $12, nRst, $06, nBb2, $0C
	dc.b	nBb1, $0C, nG2, $0C, nBb1, $12, nRst, $06, nA2, $0C, nBb1, $0C
	dc.b	nG2, $0C, nG1, $24, nBb1, $0C, nF2, $0C, nBb1, $0C, nBb2, $0C
	dc.b	nF3, $0C, nBb3, $0C, nF2, $0C, nBb2, $0C, nBb1, $0C, nF2, $0C
	dc.b	nBb1, $0C, nBb2, $0C, nBb3, $0C, nF3, $0C, nBb2, $0C, nF2, $0C
	dc.b	nG1, $0C, nD2, $0C, nG1, $0C, nG2, $0C, nD3, $0C, nG3, $0C
	dc.b	nD2, $0C, nG2, $0C, nG1, $0C, nD2, $0C, nG2, $0C, nD3, $0C
	dc.b	nC4, $0C, nG3, $0C, nE3, $0C, nC3, $0C, nA2, $0C, nD2, $0C
	dc.b	nA2, $0C, nD2, $12, nRst, $06, nA2, $0C, nD2, $0C, nA2, $0C
	dc.b	nD2, $12, nRst, $06, nA2, $0C, nD2, $0C, nG2, $0C, nC2, $24
	dc.b	nBb2, $0C, nBb1, $0C, nBb2, $0C, nBb1, $12, nRst, $06, nBb2, $0C
	dc.b	nBb1, $0C, nG2, $0C, nBb1, $12, nRst, $06, nA2, $0C, nBb1, $0C
	dc.b	nG2, $0C, nG1, $24, nA2, $0C, nD2, $0C, nA2, $0C, nD2, $12
	dc.b	nRst, $06, nA2, $0C, nD2, $0C, nA2, $0C, nD2, $12, nRst, $06
	dc.b	nA2, $0C, nD2, $0C, nG2, $0C, nC2, $24, nBb2, $0C, nBb1, $0C
	dc.b	nBb2, $0C, nBb1, $12, nRst, $06, nBb2, $0C, nBb1, $0C, nG2, $0C
	dc.b	nBb1, $12, nRst, $06, nA2, $0C, nBb1, $0C, nG2, $0C, nG1, $24
	dc.b	nBb1, $0C, nF2, $0C, nBb1, $0C, nBb2, $0C, nF3, $0C, nBb3, $0C
	dc.b	nF2, $0C, nBb2, $0C, nBb1, $0C, nF2, $0C, nBb1, $0C, nBb2, $0C
	dc.b	nBb3, $0C, nF3, $0C, nBb2, $0C, nF2, $0C, nG1, $0C, nD2, $0C
	dc.b	nG1, $0C, nG2, $0C, nD3, $0C, nG3, $0C, nD2, $0C, nG2, $0C
	dc.b	nG1, $0C, nD2, $0C, nG2, $0C, nD3, $0C, nC4, $0C, nG3, $0C
	dc.b	nE3, $0C, nC3, $0C, nA2, $0C, nD2, $0C, nA2, $0C, nD2, $12
	dc.b	nRst, $06, nA2, $0C, nD2, $0C, nA2, $0C, nD2, $12, nRst, $06
	dc.b	nA2, $0C, nD2, $0C, nG2, $0C, nC2, $18, nE2, $0C, nA2, $0C
	dc.b	nD2, $0C, nA2, $0C, nD2, $18, nA1, $0C, nC2, $0C, nE2, $0C
	dc.b	nD2, $0C, nD1, $0C, nF1, $0C, nG1, $0C, nAb1, $0C, nA1, $0C
	dc.b	nC2, $0C, nE2, $0C
	smpsJump	snd_sng_z3a1_FM1


; FM2 Data
snd_sng_z3a1_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nRst, $18, nD5, $0C, nA4, $0C, nC5, $0C, nG4, $24, nA4, $24
	dc.b	nF4, $24, nG4, $18, nD4, $24, nF4, $24, nG4, $24, nC4, $4E
	dc.b	nRst, $1E, nD5, $0C, nA4, $0C, nC5, $0C, nG4, $24, nA4, $24
	dc.b	nF4, $24, nG4, $18, nD4, $24, nF4, $24, nG4, $24, nC5, $54
	smpsSetvoice        $04
	dc.b	nA4, $0C, nA4, $0C, nAb4, $0C, nA4, $0C, nRst, $0C, nD4, $0C
	dc.b	nF4, $0C, nG4, $0C, nA4, $0C, nA4, $0C, nAb4, $0C, nA4, $0C
	dc.b	nRst, $0C, nD4, $0C, nC5, $0C, nG4, $0C, nA4, $0C, nA4, $0C
	dc.b	nAb4, $0C, nA4, $0C, nRst, $0C, nD4, $0C, nF4, $0C, nG4, $0C
	dc.b	nA4, $18, nG4, $18, nC5, $18, nF4, $18, nRst, $18
	smpsSetvoice        $01
	dc.b	nD5, $18, nA4, $0C, nC5, $18, nG4, $0C, nA4, $18, nF4, $0C
	dc.b	nG4, $18, nA4, $0C, nG4, $0C, nF4, $0C, nD4, $0C, nRst, $0C
	dc.b	nD4, $0C, nF4, $0C, nRst, $0C, nF4, $0C, nG4, $0C, nRst, $0C
	dc.b	nG4, $0C, nC4, $4E, nRst, $1E, nD5, $18, nA4, $0C, nC5, $18
	dc.b	nG4, $0C, nA4, $18, nF4, $0C, nG4, $18, nA4, $0C, nG4, $0C
	dc.b	nF4, $0C, nD4, $0C, nRst, $0C, nD4, $0C, nF4, $0C, nRst, $0C
	dc.b	nF4, $0C, nG4, $0C, nRst, $0C, nG4, $0C, nC5, $54
	smpsSetvoice        $04
	dc.b	nA4, $18, nAb4, $0C, nA4, $18, nD4, $0C, nF4, $0C, nG4, $0C
	dc.b	nA4, $18, nC5, $18, nA4, $0C, nG4, $0C, nF4, $18, nG4, $0C
	dc.b	nA4, $18, nC5, $18, nA4, $18, nD5, $18, nC5, $0C, nA4, $0C
	dc.b	nF5, $0C, nE5, $0C, nD5, $0C, nC5, $0C, nA4, $0C, nD5, $7F
	dc.b	smpsNoAttack, $41, nRst, $7F, nRst, $41
	smpsJump	snd_sng_z3a1_FM2

; FM3 Data
snd_sng_z3a1_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nRst, $18, nD4, $0C, nA3, $0C, nC4, $0C, nG3, $24, nA3, $24
	dc.b	nF3, $24, nG3, $18, nD3, $24, nF3, $24, nG3, $24, nC3, $4E
	dc.b	nRst, $1E, nD4, $0C, nA3, $0C, nC4, $0C, nG3, $24, nA3, $24
	dc.b	nF3, $24, nG3, $18, nD3, $24, nF3, $24, nG3, $24, nC4, $54, nRst, $0C
	smpsSetvoice        $04
	smpsAlterVol        $0B
	dc.b	nA4, $0C, nA4, $0C, nAb4, $0C, nA4, $0C, nRst, $0C, nD4, $0C
	dc.b	nF4, $0C, nG4, $0C, nA4, $0C, nA4, $0C, nAb4, $0C, nA4, $0C
	dc.b	nRst, $0C, nD4, $0C, nC5, $0C, nG4, $0C, nA4, $0C, nA4, $0C
	dc.b	nAb4, $0C, nA4, $0C, nRst, $0C, nD4, $0C, nF4, $0C, nG4, $0C
	dc.b	nA4, $18, nG4, $18, nC5, $18, nF4, $18, nRst, $0C
	smpsSetvoice        $01
	smpsAlterVol        $F5
	dc.b	nD4, $18, nA3, $0C, nC4, $18, nG3, $0C, nA3, $18, nF3, $0C
	dc.b	nG3, $18, nA3, $0C, nG3, $0C, nF3, $0C, nD3, $0C, nRst, $0C
	dc.b	nD3, $0C, nF3, $0C, nRst, $0C, nF3, $0C, nG3, $0C, nRst, $0C
	dc.b	nG3, $0C, nC3, $4E, nRst, $1E, nD4, $18, nA3, $0C, nC4, $18
	dc.b	nG3, $0C, nA3, $18, nF3, $0C, nG3, $18, nA3, $0C, nG3, $0C
	dc.b	nF3, $0C, nD3, $0C, nRst, $0C, nD3, $0C, nF3, $0C, nRst, $0C
	dc.b	nF3, $0C, nG3, $0C, nRst, $0C, nG3, $0C, nC4, $54, nRst, $0C
	smpsSetvoice        $04
	smpsAlterVol        $0B
	dc.b	nA4, $18, nAb4, $0C, nA4, $18, nD4, $0C, nF4, $0C, nG4, $0C
	dc.b	nA4, $18, nC5, $18, nA4, $0C, nG4, $0C, nF4, $18, nG4, $0C
	dc.b	nA4, $18, nC5, $18, nA4, $18, nD5, $18, nC5, $0C, nA4, $0C
	dc.b	nF5, $0C, nE5, $0C, nD5, $0C, nC5, $0C, nA4, $0C, nD5, $7F
	dc.b	smpsNoAttack, $41, nRst, $7F, nRst, $35
	smpsAlterVol        $F5
	smpsJump	snd_sng_z3a1_FM3

; FM4 Data
snd_sng_z3a1_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	dc.b	nD5, $0C, nRst, $0C, nD5, $0C, nRst, $18, nE5, $24, nF5, $0C
	dc.b	nD5, $0C, nA4, $0C, nE5, $18, nD5, $24, nD5, $0C, nRst, $0C
	dc.b	nD5, $0C, nRst, $18, nD5, $0C, nRst, $0C, nF5, $18, nF5, $0C
	dc.b	nG5, $0C, nF5, $0C, nE5, $0C, nD5, $0C, nC5, $0C, nA4, $0C
	dc.b	nD5, $0C, nRst, $0C, nD5, $0C, nRst, $18, nE5, $24, nF5, $0C
	dc.b	nD5, $0C, nA4, $0C, nE5, $18, nD5, $24, nD5, $0C, nRst, $0C
	dc.b	nD5, $0C, nRst, $18, nD5, $0C, nRst, $0C, nF5, $18, nF5, $0C
	dc.b	nG5, $0C, nF5, $0C, nE5, $0C, nF5, $0C, nG5, $0C, nA5, $0C
	dc.b	nRst, $18, nF5, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C
	dc.b	nA4, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C, nE5, $0C
	dc.b	nF5, $0C, nE5, $0C, nD5, $0C, nRst, $18, nF5, $0C, nF5, $0C
	dc.b	nRst, $0C, nF5, $0C, nRst, $0C, nA4, $0C, nF5, $0C, nRst, $0C
	dc.b	nF5, $0C, nRst, $0C, nE5, $0C, nF5, $0C, nE5, $0C, nD5, $0C
	dc.b	nD5, $0C, nRst, $0C, nD5, $0C, nRst, $18, nE5, $24, nF5, $0C
	dc.b	nD5, $0C, nA4, $0C, nE5, $18, nD5, $24, nD5, $0C, nRst, $0C
	dc.b	nD5, $0C, nRst, $18, nD5, $0C, nRst, $0C, nF5, $18, nF5, $0C
	dc.b	nG5, $0C, nF5, $0C, nE5, $0C, nD5, $0C, nC5, $0C, nA4, $0C
	dc.b	nD5, $0C, nRst, $0C, nD5, $0C, nRst, $18, nE5, $24, nF5, $0C
	dc.b	nD5, $0C, nA4, $0C, nE5, $18, nD5, $24, nD5, $0C, nRst, $0C
	dc.b	nD5, $0C, nRst, $18, nD5, $0C, nRst, $0C, nF5, $18, nF5, $0C
	dc.b	nG5, $0C, nF5, $0C, nE5, $0C, nF5, $0C, nG5, $0C, nA5, $0C
	dc.b	nRst, $18, nF5, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C
	dc.b	nA4, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C, nE5, $0C
	dc.b	nF5, $0C, nE5, $0C, nD5, $0C, nRst, $18, nF5, $0C, nF5, $0C
	dc.b	nRst, $0C, nF5, $0C, nRst, $0C, nA4, $0C, nF5, $0C, nRst, $0C
	dc.b	nF5, $0C, nRst, $0C, nE5, $0C, nF5, $0C, nE5, $0C, nD5, $0C
	dc.b	nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nE5, $0C, nF5, $0C
	dc.b	nE5, $0C, nRst, $0C, nF5, $0C, nRst, $0C, nF5, $0C, nRst, $0C
	dc.b	nG5, $0C, nF5, $0C, nE5, $0C, nC5, $0C, nF5, $0C, nD5, $0C
	dc.b	nA4, $0C, nE5, $18, nC5, $0C, nG4, $0C, nF4, $0C, nD5, $18
	dc.b	nRst, $48
	smpsJump	snd_sng_z3a1_FM4	

; FM5 Data
snd_sng_z3a1_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $03
	smpsFMAlterVol	    -$08
	dc.b	nRst, $7F, nRst, $7F, nRst, $3A, nD5, $0C, nF5, $0C, nG5, $0C, nC5, $24
	dc.b	nRst, $7F, nRst, $7F, nRst, $3A, nD5, $0C, nF5, $0C, nG5, $0C, nD5, $0C
	dc.b	nF5, $0C, nG5, $0C
	smpsSetvoice        $05
	smpsFMAlterVol	     $08
	dc.b	nBb1, $7F, smpsNoAttack, $41, nG1, $7F, smpsNoAttack, $11, nC2, $30
	smpsSetvoice        $03
	smpsFMAlterVol	    -$08
	dc.b	nRst, $7F, nRst, $7F, nRst, $3A, nD5, $0C, nF5, $0C, nG5, $0C, nC5, $24
	dc.b	nRst, $7F, nRst, $7F, nRst, $3A, nD5, $0C, nF5, $0C, nG5, $0C, nD5, $0C
	dc.b	nF5, $0C, nG5, $0C
	smpsSetvoice        $05
	smpsFMAlterVol	     $08
	dc.b	nBb1, $7F, smpsNoAttack, $41, nG1, $7F, smpsNoAttack, $11, nC2, $30, nRst, $7F
	dc.b	nRst, $7F, nRst, $7F, nRst, $03
	smpsJump	snd_sng_z3a1_FM5

; PSG1 Data
snd_sng_z3a1_PSG1:
	dc.b	nA1, $0C, nRst, $0C, nA1, $0C, nRst, $18, nA1, $24, nD1, $0C
	dc.b	nF1, $0C, nD1, $0C, nC2, $18, nA1, $24, nBb1, $0C, nRst, $0C
	dc.b	nBb1, $0C, nRst, $18, nBb1, $0C, nRst, $0C, nBb1, $18, nA1, $0C
	dc.b	nE1, $0C, nF1, $0C, nG1, $0C, nF1, $0C, nE1, $0C, nF1, $0C
	dc.b	nA1, $0C, nRst, $0C, nA1, $0C, nRst, $18, nA1, $24, nD1, $0C
	dc.b	nF1, $0C, nD1, $0C, nC2, $18, nA1, $24, nBb1, $0C, nRst, $0C
	dc.b	nBb1, $0C, nRst, $18, nBb1, $0C, nRst, $0C, nBb1, $18, nA1, $0C
	dc.b	nE1, $0C, nF1, $0C, nG1, $0C, nA1, $0C, nC2, $0C, nD2, $0C
	dc.b	nRst, $18, nD2, $0C, nD2, $0C, nRst, $0C, nD2, $0C, nRst, $18
	dc.b	nD2, $0C, nRst, $0C, nD2, $0C, nRst, $0C, nC2, $0C, nD2, $0C
	dc.b	nC2, $0C, nBb1, $0C, nRst, $18, nD2, $0C, nD2, $0C, nRst, $0C
	dc.b	nD2, $0C, nRst, $0C, nA1, $0C, nD2, $0C, nRst, $0C, nD2, $0C
	dc.b	nRst, $0C, nC2, $0C, nD2, $0C, nC2, $0C, nA1, $0C, nA1, $0C
	dc.b	nRst, $0C, nA1, $0C, nRst, $18, nA1, $24, nD1, $0C, nF1, $0C
	dc.b	nD1, $0C, nC2, $18, nA1, $24, nBb1, $0C, nRst, $0C, nBb1, $0C
	dc.b	nRst, $18, nBb1, $0C, nRst, $0C, nBb1, $18, nA1, $0C, nE1, $0C
	dc.b	nF1, $0C, nG1, $0C, nF1, $0C, nE1, $0C, nA1, $0C, nA1, $0C
	dc.b	nRst, $0C, nA1, $0C, nRst, $18, nA1, $24, nD1, $0C, nF1, $0C
	dc.b	nD1, $0C, nC2, $18, nA1, $24, nBb1, $0C, nRst, $0C, nBb1, $0C
	dc.b	nRst, $18, nBb1, $0C, nRst, $0C, nBb1, $18, nA1, $0C, nE1, $0C
	dc.b	nF1, $0C, nG1, $0C, nA1, $0C, nC2, $0C, nD2, $0C, nRst, $18
	dc.b	nD2, $0C, nD2, $0C, nRst, $0C, nD2, $0C, nRst, $18, nD2, $0C
	dc.b	nRst, $0C, nD2, $0C, nRst, $0C, nC2, $0C, nD2, $0C, nC2, $0C
	dc.b	nBb1, $0C, nRst, $18, nD2, $0C, nD2, $0C, nRst, $0C, nD2, $0C
	dc.b	nRst, $18, nD2, $0C, nRst, $0C, nD2, $0C, nRst, $0C, nC2, $0C
	dc.b	nD2, $0C, nC2, $0C, nA1, $0C, nRst, $0C, nD2, $0C, nRst, $0C
	dc.b	nD2, $0C, nC2, $0C, nD2, $0C, nC2, $0C, nRst, $0C, nD2, $0C
	dc.b	nRst, $0C, nD2, $0C, nRst, $0C, nD2, $0C, nC2, $0C, nG1, $0C
	dc.b	nA1, $0C, nRst, $7F, nRst, $41
	smpsJump	snd_sng_z3a1_PSG1

; PSG2 Data
snd_sng_z3a1_PSG2:
	smpsPSGvoice        sTone_23
	dc.b	nD1, $0C, nRst, $0C, nD1, $0C, nRst, $18, nD1, $24, nRst, $24
	dc.b	nG1, $18, nF1, $24, nD1, $0C, nRst, $0C, nD1, $0C, nRst, $18
	dc.b	nD1, $0C, nRst, $0C, nD1, $18, nD1, $0C, nRst, $0C
	smpsPSGAlterVol     $02
	smpsPSGvoice        sTone_11
	dc.b	nD3, $0C, nF3, $0C, nG3, $0C, nC3, $18
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_23
	dc.b	nD1, $0C, nRst, $0C, nD1, $0C, nRst, $18, nD1, $24, nRst, $24
	dc.b	nG1, $18, nF1, $24, nD1, $0C, nRst, $0C, nD1, $0C, nRst, $18
	dc.b	nD1, $0C, nRst, $0C, nD1, $18, nD1, $0C, nRst, $0C
	smpsPSGAlterVol     $02
	smpsPSGvoice        sTone_11
	dc.b	nD3, $0C, nF3, $0C, nG3, $0C, nD3, $0C, nF3, $0C, nG3, $0C
	dc.b	nRst, $7F, nRst, $7F, nRst, $76
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_23
	dc.b	nD1, $0C, nRst, $0C, nD1, $0C, nRst, $18, nD1, $24, nRst, $24
	dc.b	nG1, $18, nF1, $24, nD1, $0C, nRst, $0C, nD1, $0C, nRst, $18
	dc.b	nD1, $0C, nRst, $0C, nD1, $18, nRst, $18
	smpsPSGAlterVol     $02
	smpsPSGvoice        sTone_11
	dc.b	nD3, $0C, nF3, $0C, nG3, $0C, nC3, $18
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_23
	dc.b	nD1, $0C, nRst, $0C, nD1, $0C, nRst, $18, nD1, $24, nRst, $24
	dc.b	nG1, $18, nF1, $24, nD1, $0C, nRst, $0C, nD1, $0C, nRst, $18
	dc.b	nD1, $0C, nRst, $0C, nD1, $18, nD1, $0C, nRst, $0C
	smpsPSGAlterVol     $02
	smpsPSGvoice        sTone_11
	dc.b	nD3, $0C, nF3, $0C, nG3, $0C, nD3, $0C, nF3, $0C, nG3, $0C
	dc.b	nRst, $7E, nRst, $7E, nRst, $7E, nRst, $7E, nRst, $7E, nRst, $7E
	smpsPSGAlterVol     $FE
	smpsJump	snd_sng_z3a1_PSG2	

; PSG3 Data
snd_sng_z3a1_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $18, $0C, $18, $0C, $24, $0C
	dc.b	$18, $0C, $0C, $18, $18, $0C
	dc.b	$18, $0C, $24, $0C, $18, $0C
	dc.b	$0C, $18, $18, $0C, $18, $0C
	dc.b	$24, $0C, $18, $0C, $0C, $18
	dc.b	$18, $0C, $18, $0C, $24, $0C
	dc.b	$18, $0C, $0C, $18, $18, $0C
	dc.b	$18, $0C, $24, $0C, $18, $0C
	dc.b	$0C, $18, $18, $0C, $18, $0C
	dc.b	$24, $0C, $18, $0C, $0C, $18
	dc.b	$18, $0C, $18, $0C, $24, $0C
	dc.b	$18, $0C, $0C, $18, $18, $0C
	dc.b	$18, $0C, $24, $0C, $18, $0C
	dc.b	$0C, $18, $18, $0C, $18, $0C
	dc.b	$24, $0C, $18, $0C, $0C, $18
	dc.b	$18, $0C, $18, $0C, $24, $0C
	dc.b	$18, $0C, $0C, $18, $18, $0C
	dc.b	$18, $0C, $24, $0C, $18, $0C
	dc.b	$0C, $18, $18, $0C, $18, $0C
	dc.b	$24, $0C, $18, $0C, $0C, $24
	dc.b	$0C, $18, $0C, $0C, $0C, $18
	dc.b	$0C, $18, $18, $24, $0C, $18
	dc.b	$18, $0C, $0C, $18, $18, $0C
	dc.b	$0C, $18
	smpsJump	snd_sng_z3a1_PSG3	

snd_sng_z3a1_Voices:
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
;	$3F
;	$71, $72, $3F, $34, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $14, $1D, $1B
	smpsVcAlgorithm     $07
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $0F, $04, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $1D, $00, $15

;	Voice $02
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

;	Voice $03
;	$35
;	$24, $02, $01, $12, 	$1C, $16, $15, $14, 	$02, $08, $07, $08
;	$02, $01, $01, $01, 	$10, $18, $18, $18, 	$18, $8B, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $02
	smpsVcCoarseFreq    $02, $01, $02, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $15, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $08, $02
	smpsVcDecayRate2    $01, $01, $01, $02
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $08, $08, $00
	smpsVcTotalLevel    $08, $08, $0B, $18

;	Voice $04
;	$3C
;	$36, $31, $76, $71, 	$94, $9F, $96, $9F, 	$12, $00, $14, $0F
;	$04, $0A, $04, $0D, 	$2F, $0F, $4F, $2F, 	$33, $80, $1A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $06, $01, $06
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $1F, $16, $1F, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $14, $00, $12
	smpsVcDecayRate2    $0D, $04, $0A, $04
	smpsVcDecayLevel    $02, $04, $00, $02
	smpsVcReleaseRate   $1F, $1F, $1F, $1F
	smpsVcTotalLevel    $00, $1A, $00, $33

;	Voice $05
;	$3C
;	$71, $71, $11, $11, 	$17, $1E, $19, $1E, 	$04, $01, $07, $01
;	$00, $00, $00, $00, 	$F7, $F8, $F7, $F8, 	$1E, $80, $09, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $07, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $19, $1E, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $07, $01, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $08, $07, $08, $07
	smpsVcTotalLevel    $00, $09, $00, $1E
