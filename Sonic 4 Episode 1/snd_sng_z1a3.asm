snd_sng_z1a3_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z1a3_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $0C

	smpsHeaderDAC       snd_sng_z1a3_DAC
	smpsHeaderFM        snd_sng_z1a3_FM1,	$00, $0F
	smpsHeaderFM        snd_sng_z1a3_FM2,	$00, $12
	smpsHeaderFM        snd_sng_z1a3_FM3,	$00, $12
	smpsHeaderFM        snd_sng_z1a3_FM4,	$00, $20
	smpsHeaderFM        snd_sng_z1a3_FM5,	$00, $22
	smpsHeaderPSG       snd_sng_z1a3_PSG1,	$0C, $03, $00, sTone_03
	smpsHeaderPSG       snd_sng_z1a3_PSG2,	$0C, $03, $00, sTone_03
	smpsHeaderPSG       snd_sng_z1a3_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z1a3_DAC:
	dc.b	dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dKickS3, $18, dSnareS3, $12, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $12
	dc.b	dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $12
	dc.b	dSnareS3, $06, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $18
	dc.b	dKickS3, $0C, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $12
	dc.b	dSnareS3, $06, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $0C
	smpsJump	snd_sng_z1a3_DAC	

; FM1 Data
snd_sng_z1a3_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nRst, $18, nC3, $12, nC3, $06, nC4, $06, nRst, $06, nC4, $06
	dc.b	nC3, $06, nE2, $12, nE2, $06, nE3, $06, nRst, $06, nE3, $06
	dc.b	nE2, $06, nF2, $12, nF2, $06, nF3, $06, nRst, $06, nF3, $06
	dc.b	nF2, $06, nG2, $06, nRst, $06, nG2, $06, nG3, $06, nE3, $06
	dc.b	nC3, $06, nB2, $06, nG2, $06, nA2, $12, nA2, $06, nA3, $06
	dc.b	nRst, $06, nA3, $06, nA2, $06, nE2, $12, nE2, $06, nE3, $06
	dc.b	nRst, $06, nE3, $06, nE2, $06, nF3, $0C, nF3, $06, nG3, $06
	dc.b	nG2, $06, nG3, $06, nC3, $12, nC4, $06, nE3, $06, nF3, $06
	dc.b	nFs3, $06, nG3, $06, nG2, $0C, nC3, $12, nRst, $06, nC3, $0C
	dc.b	nC3, $06, nG2, $06, nC3, $06, nRst, $06, nC3, $0C, nRst, $06
	dc.b	nC3, $06, nD3, $0C, nE3, $12, nD3, $06, nB2, $12, nG2, $06
	dc.b	nE2, $0C, nE3, $0C, nRst, $06, nE3, $06, nG2, $0C, nA2, $12
	dc.b	nRst, $06, nA2, $0C, nA2, $06, nE2, $06, nA2, $06, nRst, $06
	dc.b	nA2, $0C, nRst, $06, nA2, $06, nC3, $0C, nBb2, $12, nBb2, $06
	dc.b	nBb2, $12, nC3, $06, nBb2, $06, nRst, $06, nBb2, $0C, nA2, $06
	dc.b	nRst, $06, nG2, $0C, nF2, $12, nF2, $06, nF2, $12, nG2, $06
	dc.b	nF2, $06, nRst, $06, nD3, $06, nC3, $06, nB2, $06, nRst, $06
	dc.b	nG2, $12, nG2, $06, nG3, $06, nG2, $06, nA2, $06, nG2, $12
	dc.b	nB2, $06, nG2, $06, nD3, $0C, nC3, $06, nB2, $06, nA2, $06
	dc.b	nG2, $06, nD3, $12, nC3, $06, nD3, $12, nE3, $06, nD3, $0C
	dc.b	nC3, $06, nB2, $06, nA2, $06, nRst, $06, nG2, $18, nG3, $06
	dc.b	nG2, $06, nRst, $06, nG2, $06, nD3, $06, nG2, $06, nC3, $06
	dc.b	nB2, $06, nC3, $06, nD3, $06, nG3, $06, nB2, $06, nA2, $06
	dc.b	nG2, $06, nC3, $12, nRst, $06, nC3, $0C, nC3, $06, nG2, $06
	dc.b	nC3, $06, nRst, $06, nC3, $0C, nRst, $06, nC3, $06, nD3, $0C
	dc.b	nE3, $12, nD3, $06, nB2, $12, nG2, $06, nE2, $0C, nE3, $0C
	dc.b	nRst, $06, nE3, $06, nG2, $0C, nA2, $12, nRst, $06, nA2, $0C
	dc.b	nA2, $06, nE2, $06, nA2, $06, nRst, $06, nA2, $0C, nRst, $06
	dc.b	nA2, $06, nC3, $0C, nBb2, $12, nBb2, $06, nBb2, $12, nC3, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $0C, nA2, $06, nRst, $06, nG2, $0C
	dc.b	nF2, $12, nF2, $06, nF2, $12, nG2, $06, nF2, $06, nRst, $06
	dc.b	nD3, $06, nC3, $06, nB2, $06, nRst, $06, nG2, $12, nG2, $06
	dc.b	nG3, $06, nG2, $06, nA2, $06, nG2, $12, nB2, $06, nG2, $06
	dc.b	nD3, $0C, nC3, $06, nB2, $06, nA2, $06, nG2, $06, nD3, $12
	dc.b	nC3, $06, nD3, $12, nE3, $06, nD3, $0C, nC3, $06, nB2, $06
	dc.b	nA2, $06, nRst, $06, nG2, $18, nG3, $06, nG2, $06, nRst, $06
	dc.b	nG2, $06, nD3, $06, nG2, $06, nC3, $06, nB2, $06, nC3, $06
	dc.b	nD3, $06
	smpsJump	snd_sng_z1a3_FM1

; FM2 Data
snd_sng_z1a3_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nC4, $06, nE4, $06, nG4, $06, nC5, $06, nB4, $0C, nG4, $0C
	dc.b	nRst, $0C, nE4, $0C, nA4, $0C, nG4, $0C, nRst, $0C, nE4, $0C
	dc.b	nF4, $0C, nE4, $0C, nF4, $0C, nG4, $24, nC4, $06, nE4, $06
	dc.b	nG4, $06, nC5, $06, nB4, $0C, nG4, $0C, nRst, $0C, nE4, $0C
	dc.b	nA4, $0C, nG4, $0C, nRst, $0C, nE4, $0C, nF4, $0C, nE4, $0C
	dc.b	nD4, $0C, nC4, $18
	smpsSetvoice        $03
	smpsAlterVol        $06
	smpsAlterVol        -$0A
	smpsPan             panRight, $00
	dc.b	nE5, $0C, nF5, $06, nRst, $06, nG5, $18, nE5, $0C, nF5, $06
	dc.b	nRst, $06, nG5, $18, nE5, $0C, nF5, $06, nRst, $06, nG5, $0C
	dc.b	nA5, $0C, nG5, $0C, nE5, $0C, nC5, $0C, nRst, $0C, nE5, $0C
	dc.b	nF5, $06, nRst, $06, nG5, $18, nE5, $0C, nF5, $06, nRst, $06
	dc.b	nG5, $18, nE5, $0C, nF5, $06, nRst, $06, nG5, $0C, nA5, $06
	dc.b	nRst, $06, nA5, $0C, nG5, $0C, nE5, $0C, nC5, $0C, nRst, $0C
	dc.b	nE5, $18, nF5, $18, nE5, $0C, nC5, $0C, nRst, $0C, nE5, $0C
	dc.b	nRst, $0C, nD5, $30, nRst, $18, nC5, $0C, nD5, $06, nRst, $06
	dc.b	nE5, $06, nRst, $06, nF5, $18, nE5, $0C, nC5, $0C, nRst, $0C
	dc.b	nA5, $0C, nRst, $0C, nG5, $3C, nRst, $0C, nE5, $0C, nF5, $06
	dc.b	nRst, $06, nG5, $18, nE5, $0C, nF5, $06, nRst, $06, nG5, $18
	dc.b	nE5, $0C, nF5, $06, nRst, $06, nG5, $0C, nA5, $0C, nG5, $0C
	dc.b	nE5, $0C, nC5, $0C, nRst, $0C, nE5, $0C, nF5, $06, nRst, $06
	dc.b	nG5, $18, nE5, $0C, nF5, $06, nRst, $06, nG5, $18, nE5, $0C
	dc.b	nF5, $06, nRst, $06, nG5, $0C, nA5, $06, nRst, $06, nA5, $0C
	dc.b	nG5, $0C, nE5, $0C, nC5, $0C, nRst, $0C, nE5, $18, nF5, $18
	dc.b	nE5, $0C, nC5, $0C, nRst, $0C, nE5, $0C, nRst, $0C, nD5, $30
	dc.b	nRst, $18, nC5, $0C, nD5, $06, nRst, $06, nE5, $06, nRst, $06
	dc.b	nF5, $18, nE5, $0C, nC5, $0C, nRst, $0C, nA5, $0C, nRst, $0C
	dc.b	nG5, $3C, nRst, $18
	smpsAlterVol        -$06
	smpsAlterVol         $0A
	smpsJump	snd_sng_z1a3_FM2


; FM3 Data
snd_sng_z1a3_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	smpsPan             panRight, $00
	dc.b	nRst, $18, nG4, $0C, nE4, $0C, nRst, $0C, nC4, $0C, nF4, $0C
	dc.b	nE4, $0C, nRst, $0C, nC4, $0C, nA3, $0C, nC4, $0C, nA3, $0C
	dc.b	nD4, $24, nRst, $18, nG4, $0C, nE4, $0C, nRst, $0C, nA3, $0C
	dc.b	nF4, $0C, nE4, $0C, nRst, $0C, nC4, $0C, nA3, $0C, nC4, $0C
	dc.b	nB3, $0C, nG3, $18
	smpsSetvoice        $04
	smpsAlterVol        $07
	smpsPan             panLeft, $00
	dc.b	nG4, $0C, nB4, $06, nRst, $06, nC5, $12, nRst, $06, nC5, $0C
	dc.b	nD5, $06, nRst, $06, nE5, $18, nC5, $0C, nD5, $06, nRst, $06
	dc.b	nE5, $0C, nD5, $0C, nB4, $06, nRst, $06, nB4, $0C, nG4, $0C
	dc.b	nRst, $0C, nG4, $0C, nD5, $06, nRst, $06, nC5, $18, nA4, $0C
	dc.b	nD5, $06, nRst, $06, nC5, $12, nRst, $06, nA4, $0C, nB4, $06
	dc.b	nRst, $06, nC5, $0C, nD5, $06, nRst, $06, nC5, $0C, nE5, $0C
	dc.b	nC5, $0C, nG4, $0C, nRst, $0C, nBb4, $18, nA4, $12, nRst, $06
	dc.b	nA4, $06, nRst, $06, nA4, $0C, nRst, $0C, nC5, $0C, nRst, $0C
	dc.b	nB4, $18, nA4, $18, nG4, $0C, nRst, $0C, nA4, $0C, nB4, $06
	dc.b	nRst, $06, nG4, $06, nRst, $06, nA4, $18, nG4, $0C, nF4, $0C
	dc.b	nRst, $0C, nC5, $0C, nRst, $0C, nB4, $18, nA4, $06, nRst, $06
	dc.b	nG4, $1E, nRst, $06, nB4, $0C, nG4, $06, nRst, $06, nC5, $12
	dc.b	nRst, $06, nG4, $0C, nD5, $06, nRst, $06, nC5, $18, nG4, $0C
	dc.b	nD5, $06, nRst, $06, nC5, $0C, nD5, $0C, nB4, $06, nRst, $06
	dc.b	nB4, $0C, nG4, $0C, nRst, $0C, nG4, $0C, nD5, $06, nRst, $06
	dc.b	nC5, $18, nA4, $0C, nD5, $06, nRst, $06, nC5, $12, nRst, $06
	dc.b	nA4, $0C, nB4, $06, nRst, $06, nC5, $0C, nBb4, $06, nRst, $06
	dc.b	nD5, $0C, nC5, $06, nRst, $06, nC5, $0C, nBb4, $0C, nRst, $0C
	dc.b	nBb4, $18, nC5, $12, nRst, $06, nA4, $06, nRst, $06, nA4, $0C
	dc.b	nRst, $0C, nC5, $0C, nRst, $0C, nB4, $18, nC5, $06, nRst, $06
	dc.b	nB4, $18, nA4, $06, nRst, $06, nG4, $0C, nB4, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06, nA4, $12, nRst, $06, nC5, $06, nRst, $06
	dc.b	nA4, $0C, nRst, $0C, nF5, $0C, nRst, $0C, nB4, $18, nC5, $06
	dc.b	nRst, $06, nD5, $1E, nRst, $12
	smpsAlterVol        -$07
	smpsJump	snd_sng_z1a3_FM3

; FM4 Data
snd_sng_z1a3_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $03
	smpsAlterVol        -$0A
	smpsPan             panLeft, $00
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03, nE5, $0C, nF5, $06, nRst, $06, nG5
	dc.b	$18, nE5, $0C, nF5, $06, nRst, $06, nG5, $18, nE5, $0C, nF5
	dc.b	$06, nRst, $06, nG5, $0C, nA5, $0C, nG5, $0C, nE5, $0C, nC5
	dc.b	$0C, nRst, $0C, nE5, $0C, nF5, $06, nRst, $06, nG5, $18, nE5
	dc.b	$0C, nF5, $06, nRst, $06, nG5, $18, nE5, $0C, nF5, $06
	dc.b	nRst, $06, nG5, $0C, nA5, $06, nRst, $06, nA5, $0C, nG5, $0C, nE5
	dc.b	$0C, nC5, $0C, nRst, $0C, nE5, $18, nF5, $18, nE5, $0C, nC5
	dc.b	$0C, nRst, $0C, nE5, $0C, nRst, $0C, nD5, $30, nRst, $18, nC5
	dc.b	$0C, nD5, $06, nRst, $06, nE5, $06, nRst, $06, nF5, $18, nE5
	dc.b	$0C, nC5, $0C, nRst, $0C, nA5, $0C, nRst, $0C, nG5, $3C
	dc.b	nRst, $0C, nE5, $0C, nF5, $06, nRst, $06, nG5, $18, nE5, $0C, nF5
	dc.b	$06, nRst, $06, nG5, $18, nE5, $0C, nF5, $06, nRst, $06, nG5
	dc.b	$0C, nA5, $0C, nG5, $0C, nE5, $0C, nC5, $0C, nRst, $0C, nE5
	dc.b	$0C, nF5, $06, nRst, $06, nG5, $18, nE5, $0C, nF5, $06
	dc.b	nRst, $06, nG5, $18, nE5, $0C, nF5, $06, nRst, $06, nG5, $0C, nA5
	dc.b	$06, nRst, $06, nA5, $0C, nG5, $0C, nE5, $0C, nC5, $0C
	dc.b	nRst, $0C, nE5, $18, nF5, $18, nE5, $0C, nC5, $0C, nRst, $0C, nE5
	dc.b	$0C, nRst, $0C, nD5, $30, nRst, $18, nC5, $0C, nD5, $06
	dc.b	nRst, $06, nE5, $06, nRst, $06, nF5, $18, nE5, $0C, nC5, $0C
	dc.b	nRst, $0C, nA5, $0C, nRst, $0C, nG5, $3C, nRst, $0C
	smpsAlterVol         $0A
	smpsJump	snd_sng_z1a3_FM4


; FM5 Data
snd_sng_z1a3_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $04
	smpsPan             panRight, $00
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03, nG4, $0C, nB4, $06, nRst, $06, nC5
	dc.b	$12, nRst, $06, nC5, $0C, nD5, $06, nRst, $06, nE5, $18, nC5
	dc.b	$0C, nD5, $06, nRst, $06, nE5, $0C, nD5, $0C, nB4, $06
	dc.b	nRst, $06, nB4, $0C, nG4, $0C, nRst, $0C, nG4, $0C, nD5, $06
	dc.b	nRst, $06, nC5, $18, nA4, $0C, nD5, $06, nRst, $06, nC5, $12
	dc.b	nRst, $06, nA4, $0C, nB4, $06, nRst, $06, nC5, $0C, nD5, $06
	dc.b	nRst, $06, nC5, $0C, nE5, $0C, nC5, $0C, nG4, $0C, nRst, $0C, nBb4
	dc.b	$18, nA4, $12, nRst, $06, nA4, $06, nRst, $06, nA4, $0C
	dc.b	nRst, $0C, nC5, $0C, nRst, $0C, nB4, $18, nA4, $18, nG4, $0C
	dc.b	nRst, $0C, nA4, $0C, nB4, $06, nRst, $06, nG4, $06, nRst, $06, nA4
	dc.b	$18, nG4, $0C, nF4, $0C, nRst, $0C, nC5, $0C, nRst, $0C, nB4
	dc.b	$18, nA4, $06, nRst, $06, nG4, $1E, nRst, $06, nB4, $0C, nG4
	dc.b	$06, nRst, $06, nC5, $12, nRst, $06, nG4, $0C, nD5, $06
	dc.b	nRst, $06, nC5, $18, nG4, $0C, nD5, $06, nRst, $06, nC5, $0C, nD5
	dc.b	$0C, nB4, $06, nRst, $06, nB4, $0C, nG4, $0C, nRst, $0C, nG4
	dc.b	$0C, nD5, $06, nRst, $06, nC5, $18, nA4, $0C, nD5, $06
	dc.b	nRst, $06, nC5, $12, nRst, $06, nA4, $0C, nB4, $06, nRst, $06, nC5
	dc.b	$0C, nBb4, $06, nRst, $06, nD5, $0C, nC5, $06, nRst, $06, nC5
	dc.b	$0C, nBb4, $0C, nRst, $0C, nBb4, $18, nC5, $12, nRst, $06, nA4
	dc.b	$06, nRst, $06, nA4, $0C, nRst, $0C, nC5, $0C, nRst, $0C, nB4
	dc.b	$18, nC5, $06, nRst, $06, nB4, $18, nA4, $06, nRst, $06, nG4
	dc.b	$0C, nB4, $06, nRst, $06, nG4, $06, nRst, $06, nA4, $12
	dc.b	nRst, $06, nC5, $06, nRst, $06, nA4, $0C, nRst, $0C, nF5, $0C
	dc.b	nRst, $0C, nB4, $18, nC5, $06, nRst, $06, nD5, $1E, nRst, $06
	smpsJump	snd_sng_z1a3_FM5


; PSG1 Data
snd_sng_z1a3_PSG1:
	smpsPSGvoice        sTone_23
	smpsModSet          $02, $01, $01, $03
	dc.b	nRst, $30, nG2, $06, nRst, $2A, nE2, $06, nRst, $1E, nF2, $06
	dc.b	nRst, $12, nG2, $2A, nRst, $2A, nG2, $06, nRst, $2A, nE2, $06
	dc.b	nRst, $1E, nF2, $06, nRst, $12, nE2, $2A, nRst, $1E, nC2, $06
	dc.b	nRst, $06, nC2, $12, nRst, $06, nC2, $09, nRst, $09, nC2, $09
	dc.b	nRst, $09, nC2, $09, nRst, $0F, nB1, $06, nRst, $06, nB1, $12
	dc.b	nRst, $06, nB1, $09, nRst, $09, nB1, $09, nRst, $09, nB1, $09
	dc.b	nRst, $0F, nC2, $06, nRst, $06, nC2, $12, nRst, $06, nC2, $09
	dc.b	nRst, $09, nC2, $09, nRst, $09, nC2, $09, nRst, $0F, nC2, $06
	dc.b	nRst, $06, nBb1, $12, nRst, $06, nBb1, $09, nRst, $09, nBb1, $09
	dc.b	nRst, $09, nBb1, $09, nRst, $0F, nC2, $06, nRst, $06, nC2, $18
	dc.b	nRst, $0C, nC2, $06, nRst, $12, nB1, $18, nA1, $06, nRst, $06
	dc.b	nB1, $12, nRst, $06, nB1, $09, nRst, $09, nB1, $09, nRst, $09
	dc.b	nB1, $09, nRst, $0F, nC2, $06, nRst, $06, nC2, $18, nRst, $0C
	dc.b	nC2, $06, nRst, $12, nB1, $18, nA1, $06, nRst, $06, nB1, $12
	dc.b	nRst, $1E, nD2, $06, nE2, $06, nF2, $06, nG2, $06, nRst, $0C
	dc.b	nC2, $06, nRst, $06, nC2, $12, nRst, $06, nC2, $09, nRst, $09
	dc.b	nC2, $09, nRst, $09, nC2, $09, nRst, $0F, nB1, $06, nRst, $06
	dc.b	nB1, $12, nRst, $06, nB1, $09, nRst, $09, nB1, $09, nRst, $09
	dc.b	nB1, $09, nRst, $0F, nC2, $06, nRst, $06, nC2, $12, nRst, $06
	dc.b	nC2, $09, nRst, $09, nC2, $09, nRst, $09, nC2, $09, nRst, $0F
	dc.b	nC2, $06, nRst, $06, nBb1, $12, nRst, $06, nBb1, $09, nRst, $09
	dc.b	nBb1, $09, nRst, $09, nBb1, $09, nRst, $0F, nC2, $06, nRst, $06
	dc.b	nC2, $18, nRst, $0C, nC2, $06, nRst, $12, nB1, $18, nA1, $06
	dc.b	nRst, $06, nB1, $12, nRst, $06, nB1, $09, nRst, $09, nB1, $09
	dc.b	nRst, $09, nB1, $09, nRst, $0F, nC2, $06, nRst, $06, nC2, $18
	dc.b	nRst, $0C, nC2, $06, nRst, $12, nB1, $18, nA1, $06, nRst, $06
	dc.b	nB1, $12, nRst, $06, nD2, $06, nE2, $06, nF2, $06, nG2, $06
	smpsJump	snd_sng_z1a3_PSG1


; PSG2 Data
snd_sng_z1a3_PSG2:
	smpsPSGvoice        sTone_23
	smpsModSet          $04, $01, $01, $04
	dc.b	nRst, $30, nC2, $06, nRst, $2A, nC2, $06, nRst, $1E, nC2, $06
	dc.b	nRst, $12, nB1, $2A, nRst, $2A, nC2, $06, nRst, $2A, nC2, $06
	dc.b	nRst, $1E, nC2, $06, nRst, $12, nC2, $2A, nRst, $1E, nG1, $06
	dc.b	nRst, $06, nG1, $12, nRst, $06, nG1, $09, nRst, $09, nG1, $09
	dc.b	nRst, $09, nG1, $09, nRst, $0F, nG1, $06, nRst, $06, nG1, $12
	dc.b	nRst, $06, nG1, $09, nRst, $09, nG1, $09, nRst, $09, nG1, $09
	dc.b	nRst, $0F, nG1, $06, nRst, $06, nG1, $12, nRst, $06, nG1, $09
	dc.b	nRst, $09, nG1, $09, nRst, $09, nG1, $09, nRst, $0F, nG1, $06
	dc.b	nRst, $06, nG1, $12, nRst, $06, nG1, $09, nRst, $09, nG1, $09
	dc.b	nRst, $09, nG1, $09, nRst, $0F, nF1, $06, nRst, $06, nF1, $18
	dc.b	nRst, $0C, nF1, $06, nRst, $12, nG1, $18, nG1, $06, nRst, $06
	dc.b	nG1, $12, nRst, $06, nG1, $09, nRst, $09, nG1, $09, nRst, $09
	dc.b	nG1, $09, nRst, $0F, nF1, $06, nRst, $06, nF1, $18, nRst, $0C
	dc.b	nF1, $06, nRst, $12, nG1, $18, nG1, $06, nRst, $06, nG1, $12
	dc.b	nRst, $06, nG1, $06, nA1, $06, nB1, $06, nC2, $06, nRst, $24
	dc.b	nG1, $06, nRst, $06, nG1, $12, nRst, $06, nG1, $09, nRst, $09
	dc.b	nG1, $09, nRst, $09, nG1, $09, nRst, $0F, nG1, $06, nRst, $06
	dc.b	nG1, $12, nRst, $06, nG1, $09, nRst, $09, nG1, $09, nRst, $09
	dc.b	nG1, $09, nRst, $0F, nG1, $06, nRst, $06, nG1, $12, nRst, $06
	dc.b	nG1, $09, nRst, $09, nG1, $09, nRst, $09, nG1, $09, nRst, $0F
	dc.b	nG1, $06, nRst, $06, nG1, $12, nRst, $06, nG1, $09, nRst, $09
	dc.b	nG1, $09, nRst, $09, nG1, $09, nRst, $0F, nF1, $06, nRst, $06
	dc.b	nF1, $18, nRst, $0C, nF1, $06, nRst, $12, nG1, $18, nG1, $06
	dc.b	nRst, $06, nG1, $12, nRst, $06, nG1, $09, nRst, $09, nG1, $09
	dc.b	nRst, $09, nG1, $09, nRst, $0F, nF1, $06, nRst, $06, nF1, $18
	dc.b	nRst, $0C, nF1, $06, nRst, $12, nG1, $18, nG1, $06, nRst, $06
	dc.b	nG1, $06, nA1, $06, nB1, $06, nC2, $06, nRst, $18
	smpsJump	snd_sng_z1a3_PSG2


; PSG3 Data
snd_sng_z1a3_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $24, (nMaxPSG2-$23)&$FF, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $12, $06
	dc.b	$18, $12, $06, $18, $0C
	smpsJump	snd_sng_z1a3_PSG3

snd_sng_z1a3_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

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
;	$3D
;	$01, $21, $51, $01, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $03
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $04
;	$15
;	$71, $72, $01, $31, 	$0F, $14, $14, $14, 	$00, $05, $02, $02
;	$00, $00, $00, $00, 	$0F, $1F, $1F, $1F, 	$2D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $14, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $02, $05, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $2D
