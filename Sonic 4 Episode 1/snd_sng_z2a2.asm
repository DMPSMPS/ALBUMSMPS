snd_sng_z2a2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z2a2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $44

	smpsHeaderDAC       snd_sng_z2a2_DAC
	smpsHeaderFM        snd_sng_z2a2_FM1,	$00, $0C
	smpsHeaderFM        snd_sng_z2a2_FM2,	$00, $0E
	smpsHeaderFM        snd_sng_z2a2_FM3,	$00, $0C
	smpsHeaderFM        snd_sng_z2a2_FM4,	$00, $1E
	smpsHeaderFM        snd_sng_z2a2_FM5,	$00, $1E
	smpsHeaderPSG       snd_sng_z2a2_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       snd_sng_z2a2_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       snd_sng_z2a2_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z2a2_DAC:
	dc.b	dKickS3, $12, dKickS3, $12, dQuickLooseSnare, $12, dKickS3, $12, dQuickLooseSnare, $08, dQuickLooseSnare, $04
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dKickS3, $0C, dQuickLooseSnare, $08, dQuickLooseSnare, $04, dQuickLooseSnare, $06
	dc.b	dKickS3, $12, dKickS3, $14, dKickS3, $04, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C
	dc.b	dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C
	dc.b	dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C
	dc.b	dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C
	dc.b	dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C
	dc.b	dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $12, dKickS3, $0C, dQuickLooseSnare, $08
	dc.b	dQuickLooseSnare, $04, dQuickLooseSnare, $06, dKickS3, $12, dKickS3, $14, dKickS3, $04, dQuickLooseSnare, $0C
	dc.b	dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C
	dc.b	dKickS3, $06, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C
	dc.b	dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C
	dc.b	dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C
	dc.b	dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C
	dc.b	dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C
	dc.b	dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $06, dKickS3, $12
	dc.b	dKickS3, $0C, dQuickLooseSnare, $08, dQuickLooseSnare, $04, dQuickLooseSnare, $06, dKickS3, $12, dKickS3, $0C
	dc.b	dQuickLooseSnare, $08, dQuickLooseSnare, $04, dQuickLooseSnare, $04, dQuickLooseSnare, $04, dQuickLooseSnare, $04, dKickS3, $0C
	dc.b	dQuickLooseSnare, $0C, dKickS3, $08, dKickS3, $04, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $08
	dc.b	dKickS3, $04, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $08, dKickS3, $04, dQuickLooseSnare, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $0C
	dc.b	dQuickLooseSnare, $0C, dKickS3, $08, dKickS3, $04, dQuickLooseSnare, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dQuickLooseSnare, $0C, dKickS3, $0C, dQuickLooseSnare, $0C, dKickS3, $08, dKickS3, $04, dQuickLooseSnare, $0C
	dc.b	dKickS3, $08, dKickS3, $04, dQuickLooseSnare, $0C, dKickS3, $06, dQuickLooseSnare, $0C, dQuickLooseSnare, $06
	dc.b	dQuickLooseSnare, $0C, dQuickLooseSnare, $06, dQuickLooseSnare, $06
	smpsJump	snd_sng_z2a2_DAC	

; FM4 Data
snd_sng_z2a2_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	smpsAlterNote	    $FD
	smpsJump	snd_sng_z2a2_FM1

; FM5 Data
snd_sng_z2a2_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	smpsAlterNote	    $FD
	smpsJump	snd_sng_z2a2_FM3

; FM1 Data
snd_sng_z2a2_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nA4, $12, nG4, $12, nFs4, $12, nG4, $12, nFs4, $06, nRst, $06
	dc.b	nD4, $06, nRst, $06, nB3, $06, nRst, $06, nB3, $06, nRst, $06
	dc.b	nCs4, $08, nCs4, $04, nCs4, $06, nD4, $06, nRst, $0C, nA3, $08
	dc.b	nA3, $04, nCs4, $08, nD4, $04, nE4, $0C, nFs4, $08, nRst, $10
	dc.b	nG4, $12, nA4, $06, nRst, $0C, nD5, $06, nRst, $06, nCs5, $06
	dc.b	nRst, $06, nA4, $06, nRst, $06, nB4, $12, nA4, $12, nG4, $30
	dc.b	nRst, $0C, nD4, $12, nE4, $12, nFs4, $12, nG4, $12, nA4, $06
	dc.b	nRst, $06, nD5, $06, nRst, $06, nC5, $3C, nRst, $0C, nBb4, $12
	dc.b	nRst, $06, nB4, $12, nA4, $12, nG4, $12, nD4, $12, nB4, $06
	dc.b	nRst, $06, nG4, $06, nRst, $06, nA4, $30, nFs4, $0C, nRst, $0C
	dc.b	nA4, $12, nAb4, $12, nFs4, $06, nRst, $06, nE4, $12, nB4, $09
	dc.b	nRst, $03, nB4, $03, nRst, $03, nB4, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nAb4, $06, nA4, $30, nRst, $12, nA3, $08, nA3, $04
	dc.b	nCs4, $08, nD4, $04, nE4, $0C, nFs4, $18, nG4, $12, nA4, $06
	dc.b	nRst, $0C, nD5, $06, nRst, $06, nCs5, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nB4, $12, nA4, $12, nG4, $30, nRst, $0C, nD4, $12
	dc.b	nE4, $12, nFs4, $12, nG4, $12, nA4, $06, nRst, $06, nB4, $06
	dc.b	nRst, $06, nC5, $30, nRst, $06, nC5, $12, nB4, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nB4, $12, nA4, $12, nG4, $12, nD4, $0F
	dc.b	nRst, $03, nB4, $06, nRst, $06, nG4, $06, nRst, $06, nA4, $30
	dc.b	nFs4, $0C, nRst, $0C, nA4, $12, nAb4, $12, nFs4, $06, nRst, $06
	dc.b	nE4, $0F, nRst, $03, nB4, $09, nRst, $03, nB4, $06, nB4, $06
	dc.b	nRst, $06, nA4, $08, nRst, $04, nAb4, $06, nA4, $36, nRst, $18
	dc.b	nG4, $04, nA4, $04, nB4, $04, nCs5, $04, nD5, $04, nE5, $04
	dc.b	nD5, $06, nRst, $06, nA4, $06, nRst, $06, nE5, $0C, nD5, $06
	dc.b	nD5, $06, nRst, $06, nD5, $06, nA4, $06, nRst, $06, nE5, $0C
	dc.b	nD5, $06, nRst, $06, nG5, $06, nRst, $06, nFs5, $06, nRst, $06
	dc.b	nE5, $0C, nFs5, $06, nG5, $06, nRst, $06, nG5, $06, nFs5, $06
	dc.b	nRst, $06, nE5, $0C, nD5, $06, nRst, $06, nD5, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nE5, $0C, nD5, $06, nD5, $06, nRst, $06
	dc.b	nD5, $06, nA4, $06, nRst, $06, nE5, $0C, nD5, $06, nRst, $06
	dc.b	nG5, $06, nRst, $06, nFs5, $06, nRst, $06, nE5, $0C, nFs5, $06
	dc.b	nG5, $06, nRst, $06, nG5, $06, nFs5, $06, nRst, $06, nE5, $0C
	dc.b	nD5, $06, nRst, $06, nE4, $12, nRst, $06, nFs4, $12, nRst, $06
	dc.b	nG4, $12, nRst, $06, nAb4, $12, nRst, $06
	smpsJump	snd_sng_z2a2_FM1	

; FM2 Data
snd_sng_z2a2_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nD3, $12, nE3, $12, nFs3, $12, nE3, $12, nFs3, $06, nRst, $06
	dc.b	nD3, $06, nRst, $06, nG3, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nA3, $06, nRst, $02, nA3, $04, nA3, $06, nD3, $06, nRst, $0C
	dc.b	nA2, $0C, nE3, $08, nA3, $04, nA2, $0C, nD3, $08, nRst, $10
	dc.b	nA2, $12, nD3, $06, nRst, $06, nD3, $06, nE3, $08, nRst, $04
	dc.b	nFs3, $06, nRst, $06, nD3, $06, nRst, $06, nE3, $12, nFs3, $12
	dc.b	nE3, $0C, nRst, $06, nG3, $12, nFs3, $06, nRst, $06, nE3, $06
	dc.b	nRst, $06, nD3, $12, nA2, $12, nD3, $12, nE3, $12, nD3, $06
	dc.b	nRst, $06, nA2, $06, nRst, $06, nC3, $06, nRst, $06, nC3, $0C
	dc.b	nE3, $06, nRst, $06, nE3, $0C, nG3, $06, nRst, $06, nG3, $0C
	dc.b	nBb3, $06, nRst, $06, nBb3, $0C, nG3, $06, nRst, $06, nG3, $06
	dc.b	nD3, $06, nRst, $06, nD3, $06, nA3, $12, nG3, $12, nA3, $06
	dc.b	nRst, $06, nE3, $06, nRst, $06, nFs3, $06, nRst, $06, nFs3, $0C
	dc.b	nA3, $06, nRst, $06, nA3, $0C, nB3, $06, nRst, $06, nB3, $0C
	dc.b	nD4, $06, nRst, $06, nD4, $06, nE4, $10, nRst, $02, nB3, $06
	dc.b	nRst, $06, nE3, $12, nAb3, $0A, nRst, $02, nA3, $06, nB3, $06
	dc.b	nRst, $06, nE3, $06, nRst, $06, nAb3, $06, nA3, $1A, nRst, $04
	dc.b	nG3, $08, nAb3, $04, nA3, $06, nE3, $06, nRst, $0C, nA2, $14
	dc.b	nA3, $04, nA2, $0C, nD3, $08, nRst, $10, nA2, $12, nD3, $06
	dc.b	nRst, $06, nD3, $06, nE3, $08, nRst, $04, nFs3, $06, nRst, $06
	dc.b	nD3, $06, nRst, $06, nE3, $12, nFs3, $12, nG3, $0C, nRst, $06
	dc.b	nG3, $12, nFs3, $06, nRst, $06, nE3, $06, nRst, $06, nD3, $12
	dc.b	nA2, $12, nD3, $12, nE3, $12, nCs3, $06, nRst, $06, nB2, $06
	dc.b	nRst, $06, nC3, $06, nRst, $06, nC3, $0C, nE3, $06, nRst, $06
	dc.b	nE3, $08, nG3, $06, nRst, $0A, nG3, $0C, nC4, $06, nRst, $06
	dc.b	nC4, $0C, nG3, $06, nRst, $06, nG3, $06, nD3, $06, nRst, $06
	dc.b	nD3, $06, nA3, $12, nG3, $12, nA3, $06, nRst, $06, nE3, $06
	dc.b	nRst, $06, nFs3, $06, nRst, $06, nFs3, $0C, nA3, $06, nRst, $06
	dc.b	nA3, $0C, nB3, $06, nRst, $06, nB3, $0C, nD4, $06, nRst, $06
	dc.b	nD4, $06, nE4, $10, nRst, $02, nB3, $06, nRst, $06, nE3, $12
	dc.b	nAb3, $0A, nRst, $02, nA3, $06, nB3, $06, nRst, $06, nE3, $06
	dc.b	nRst, $06, nAb3, $06, nA3, $1A, nRst, $04, nG3, $08, nAb3, $04
	dc.b	nA3, $06, nE3, $06, nRst, $0C, nA2, $14, nE3, $04, nA3, $0C
	dc.b	nD3, $08, nRst, $04, nD4, $08, nRst, $04, nA3, $0C, nD3, $06
	dc.b	nC3, $06, nRst, $06, nC3, $06, nC4, $08, nRst, $04, nA3, $0C
	dc.b	nC3, $0C, nB2, $08, nRst, $04, nB3, $08, nRst, $04, nG3, $0C
	dc.b	nB2, $06, nE3, $06, nRst, $06, nE3, $06, nB3, $0C, nG3, $08
	dc.b	nRst, $04, nFs3, $0C, nD3, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b	nA3, $0C, nD3, $06, nC3, $06, nRst, $06, nC3, $06, nC4, $08
	dc.b	nRst, $04, nA3, $0C, nC3, $0C, nB2, $08, nRst, $04, nB3, $08
	dc.b	nRst, $04, nG3, $0C, nB2, $06, nE3, $06, nRst, $06, nE3, $06
	dc.b	nB3, $0C, nG3, $08, nRst, $04, nFs3, $0C, nE3, $14, nRst, $04
	dc.b	nFs3, $14, nRst, $04, nE3, $06, nF3, $06, nFs3, $06, nG3, $06
	dc.b	nAb3, $06, nRst, $06, nAb3, $06, nA3, $06
	smpsJump	snd_sng_z2a2_FM2	

; FM3 Data
snd_sng_z2a2_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nFs4, $12, nE4, $12, nD4, $12, nE4, $12, nD4, $06, nRst, $06
	dc.b	nA3, $06, nRst, $06, nG3, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nA3, $08, nB3, $04, nA3, $06, nFs3, $06, nRst, $0C, nE3, $08
	dc.b	nFs3, $04, nA3, $08, nB3, $04, nCs4, $0C, nD4, $08, nRst, $10
	dc.b	nE4, $12, nFs4, $06, nRst, $0C, nA4, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nFs4, $06, nRst, $06, nD4, $12, nE4, $12, nD4, $30
	dc.b	nRst, $0C, nA3, $12, nCs4, $12, nD4, $12, nE4, $12, nFs4, $06
	dc.b	nRst, $06, nG4, $06, nRst, $06, nA4, $3C, nRst, $0C, nFs4, $12
	dc.b	nRst, $06, nG4, $12, nE4, $12, nD4, $0F, nRst, $03, nB3, $12
	dc.b	nG4, $06, nRst, $06, nE4, $06, nRst, $06, nFs4, $2D, nRst, $03
	dc.b	nD4, $0C, nRst, $0C, nFs4, $12, nE4, $12, nD4, $06, nRst, $06
	dc.b	nB3, $12, nAb4, $09, nRst, $03, nAb4, $03, nRst, $03, nAb4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nD4, $06, nCs4, $30, nRst, $12
	dc.b	nE3, $08, nFs3, $04, nA3, $08, nB3, $04, nA3, $0C, nA3, $18
	dc.b	nCs4, $12, nD4, $06, nRst, $0C, nFs4, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nFs4, $06, nRst, $06, nD4, $12, nC4, $12, nB3, $30
	dc.b	nRst, $0C, nA3, $12, nCs4, $12, nA3, $12, nB3, $12, nCs4, $06
	dc.b	nRst, $06, nD4, $06, nRst, $06, nE4, $30, nRst, $06, nFs4, $12
	dc.b	nG4, $06, nRst, $06, nFs4, $06, nRst, $06, nD4, $12, nC4, $12
	dc.b	nB3, $0F, nRst, $03, nB3, $12, nD4, $06, nRst, $06, nE4, $06
	dc.b	nRst, $06, nD4, $30, nA3, $0C, nRst, $0C, nD4, $12, nE4, $12
	dc.b	nD4, $06, nRst, $06, nB3, $12, nE4, $09, nRst, $03, nE4, $06
	dc.b	nAb4, $06, nRst, $06, nE4, $08, nRst, $04, nD4, $06, nCs4, $36
	dc.b	nRst, $18, nCs4, $04, nD4, $04, nE4, $04, nFs4, $04, nA4, $04
	dc.b	nCs5, $04, nA4, $06, nRst, $06, nFs4, $06, nRst, $06, nB4, $0C
	dc.b	nA4, $06, nFs4, $06, nRst, $06, nA4, $06, nFs4, $06, nRst, $06
	dc.b	nB4, $0C, nA4, $06, nRst, $06, nD5, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nB4, $0C, nCs5, $06, nB4, $06, nRst, $06, nB4, $06
	dc.b	nD5, $06, nRst, $06, nB4, $0C, nA4, $06, nRst, $06, nFs4, $06
	dc.b	nRst, $06, nFs4, $06, nRst, $06, nG4, $0C, nA4, $06, nFs4, $06
	dc.b	nRst, $06, nA4, $06, nFs4, $06, nRst, $06, nA4, $0C, nFs4, $06
	dc.b	nRst, $06, nB4, $06, nRst, $06, nA4, $06, nRst, $06, nG4, $0C
	dc.b	nA4, $06, nB4, $06, nRst, $06, nB4, $06, nD5, $06, nRst, $06
	dc.b	nG4, $0C, nFs4, $06, nRst, $06, nB3, $12, nRst, $06, nCs4, $12
	dc.b	nRst, $06, nE4, $12, nRst, $06, nD4, $12, nRst, $06
	smpsJump	snd_sng_z2a2_FM3	

; PSG3 Data
snd_sng_z2a2_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $06, $0C, $0C, $0C, $0C
	dc.b	$06, $08, $04, $0C, $0C, $0C
	dc.b	$08, $0A, $12, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $06
	dc.b	$1E, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $06, $1E, $0C, $0C
	dc.b	$0C, $0C, $0C, $08, $04, $0C
	dc.b	$0C, $08, $04, $0C, $0C, $0C
	dc.b	$0C, $08, $04, $0C, $0C, $08
	dc.b	$04, $0C, $0C, $0C, $0C, $08
	dc.b	$04, $0C, $0C, $08, $04, $0C
	dc.b	$0C, $0C, $0C, $08, $04, $0C
	dc.b	$0C, $08, $04, $0C, $0C, $08
	dc.b	$04, $0C, $08, $04, $0C, $0C
	dc.b	$06, $06, $0C
	smpsJump	snd_sng_z2a2_PSG3	

; PSG1 Data
snd_sng_z2a2_PSG1:
; PSG2 Data
snd_sng_z2a2_PSG2:
	smpsStop

snd_sng_z2a2_Voices:
;	Voice $00
;	$3C
;	$71, $72, $3F, $34, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $80, $1D, $87
	smpsVcAlgorithm     $04
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
	smpsVcReleaseRate   $07, $02, $08, $03
	smpsVcTotalLevel    $07, $1D, $00, $15

;	Voice $01
;	$3C
;	$01, $00, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $07, $00, $1A
