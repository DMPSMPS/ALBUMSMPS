snd_sng_z3a1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z3a1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $11

	smpsHeaderDAC       snd_sng_z3a1_DAC
	smpsHeaderFM        snd_sng_z3a1_FM1,	$00, $09
	smpsHeaderFM        snd_sng_z3a1_FM2,	$00, $0C
	smpsHeaderFM        snd_sng_z3a1_FM3,	$00, $0C
	smpsHeaderFM        snd_sng_z3a1_FM4,	$E8, $1B
	smpsHeaderFM        snd_sng_z3a1_FM5,	$00, $1B
	smpsHeaderPSG       snd_sng_z3a1_PSG1,	$F4, $03, $00, sTone_23
	smpsHeaderPSG       snd_sng_z3a1_PSG2,	$0C, $05, $00, sTone_11
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
	;smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nRst, $18, nD5, $0C, nA4, $0C, nC5, $0C, nG4, $24, nA4, $24
	dc.b	nF4, $24, nG4, $18, nD4, $24, nF4, $24, nG4, $24, nC4, $4E
	dc.b	nRst, $1E, nD5, $0C, nA4, $0C, nC5, $0C, nG4, $24, nA4, $24
	dc.b	nF4, $24, nG4, $18, nD4, $24, nF4, $24, nG4, $24, nC5, $54
	smpsSetvoice        $04
	smpsFMAlterVol	    -$03
	;smpsPan             panRight, $00
	dc.b	nA4, $0C, nA4, $0C, nAb4, $0C, nA4, $0C, nRst, $0C, nD4, $0C
	dc.b	nF4, $0C, nG4, $0C, nA4, $0C, nA4, $0C, nAb4, $0C, nA4, $0C
	dc.b	nRst, $0C, nD4, $0C, nC5, $0C, nG4, $0C, nA4, $0C, nA4, $0C
	dc.b	nAb4, $0C, nA4, $0C, nRst, $0C, nD4, $0C, nF4, $0C, nG4, $0C
	dc.b	nA4, $18, nG4, $18, nC5, $18, nF4, $18, nRst, $18
	smpsSetvoice        $01
	smpsFMAlterVol	    $03
	;smpsPan             panCenter, $00
	dc.b	nD5, $18, nA4, $0C, nC5, $18, nG4, $0C, nA4, $18, nF4, $0C
	dc.b	nG4, $18, nA4, $0C, nG4, $0C, nF4, $0C, nD4, $0C, nRst, $0C
	dc.b	nD4, $0C, nF4, $0C, nRst, $0C, nF4, $0C, nG4, $0C, nRst, $0C
	dc.b	nG4, $0C, nC4, $4E, nRst, $1E, nD5, $18, nA4, $0C, nC5, $18
	dc.b	nG4, $0C, nA4, $18, nF4, $0C, nG4, $18, nA4, $0C, nG4, $0C
	dc.b	nF4, $0C, nD4, $0C, nRst, $0C, nD4, $0C, nF4, $0C, nRst, $0C
	dc.b	nF4, $0C, nG4, $0C, nRst, $0C, nG4, $0C, nC5, $54
	smpsSetvoice        $04
	smpsFMAlterVol	    -$03
	;smpsPan             panRight, $00
	dc.b	nA4, $18, nAb4, $0C, nA4, $18, nD4, $0C, nF4, $0C, nG4, $0C
	dc.b	nA4, $18, nC5, $18, nA4, $0C, nG4, $0C, nF4, $18, nG4, $0C
	dc.b	nA4, $18, nC5, $18, nA4, $18, nD5, $18, nC5, $0C, nA4, $0C
	dc.b	nF5, $0C, nE5, $0C, nD5, $0C, nC5, $0C, nA4, $0C, nD5, $7F
	dc.b	smpsNoAttack, $41, nRst, $7F, nRst, $41
	smpsFMAlterVol	    $03
	smpsJump	snd_sng_z3a1_FM2

; FM3 Data
snd_sng_z3a1_FM3:
	smpsAlterNote		$FD
	;smpsPan             panCenter, $00
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nRst, $18, nD4, $0C, nA3, $0C, nC4, $0C, nG3, $24, nA3, $24
	dc.b	nF3, $24, nG3, $18, nD3, $24, nF3, $24, nG3, $24, nC3, $4E
	dc.b	nRst, $1E, nD4, $0C, nA3, $0C, nC4, $0C, nG3, $24, nA3, $24
	dc.b	nF3, $24, nG3, $18, nD3, $24, nF3, $24, nG3, $24, nC4, $54, nRst, $0C
	smpsSetvoice        $04
	smpsAlterVol        $0B
	smpsFMAlterVol	    -$03
	;smpsPan             panLeft, $00
	dc.b	nA4, $0C, nA4, $0C, nAb4, $0C, nA4, $0C, nRst, $0C, nD4, $0C
	dc.b	nF4, $0C, nG4, $0C, nA4, $0C, nA4, $0C, nAb4, $0C, nA4, $0C
	dc.b	nRst, $0C, nD4, $0C, nC5, $0C, nG4, $0C, nA4, $0C, nA4, $0C
	dc.b	nAb4, $0C, nA4, $0C, nRst, $0C, nD4, $0C, nF4, $0C, nG4, $0C
	dc.b	nA4, $18, nG4, $18, nC5, $18, nF4, $18, nRst, $0C
	smpsSetvoice        $01
	smpsFMAlterVol	    $03
	smpsAlterVol        $F5
	;smpsPan             panCenter, $00
	dc.b	nD4, $18, nA3, $0C, nC4, $18, nG3, $0C, nA3, $18, nF3, $0C
	dc.b	nG3, $18, nA3, $0C, nG3, $0C, nF3, $0C, nD3, $0C, nRst, $0C
	dc.b	nD3, $0C, nF3, $0C, nRst, $0C, nF3, $0C, nG3, $0C, nRst, $0C
	dc.b	nG3, $0C, nC3, $4E, nRst, $1E, nD4, $18, nA3, $0C, nC4, $18
	dc.b	nG3, $0C, nA3, $18, nF3, $0C, nG3, $18, nA3, $0C, nG3, $0C
	dc.b	nF3, $0C, nD3, $0C, nRst, $0C, nD3, $0C, nF3, $0C, nRst, $0C
	dc.b	nF3, $0C, nG3, $0C, nRst, $0C, nG3, $0C, nC4, $54, nRst, $0C
	smpsSetvoice        $04
	smpsFMAlterVol	    -$03
	smpsAlterVol        $0B
	;smpsPan             panLeft, $00
	dc.b	nA4, $18, nAb4, $0C, nA4, $18, nD4, $0C, nF4, $0C, nG4, $0C
	dc.b	nA4, $18, nC5, $18, nA4, $0C, nG4, $0C, nF4, $18, nG4, $0C
	dc.b	nA4, $18, nC5, $18, nA4, $18, nD5, $18, nC5, $0C, nA4, $0C
	dc.b	nF5, $0C, nE5, $0C, nD5, $0C, nC5, $0C, nA4, $0C, nD5, $7F
	dc.b	smpsNoAttack, $41, nRst, $7F, nRst, $35
	smpsFMAlterVol	    $03
	smpsAlterVol        $F5
	smpsJump	snd_sng_z3a1_FM3

; FM4 Data
snd_sng_z3a1_FM4:
	smpsAlterVol        $FE
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
	smpsAlterVol        $02
	smpsJump	snd_sng_z3a1_FM4	

; FM5 Data
snd_sng_z3a1_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsChangeTransposition		$F4
	dc.b	nA4, $0C, nRst, $0C, nA4, $0C, nRst, $18, nA4, $24, nD4, $0C
	dc.b	nF4, $0C, nD4, $0C, nC5, $18, nA4, $24, nBb4, $0C, nRst, $0C
	dc.b	nBb4, $0C, nRst, $18, nBb4, $0C, nRst, $0C, nBb4, $18
	dc.b	nA4, $0C
	smpsAlterVol        $02
	smpsAlterVol        $F8
	smpsAlterVol        $F8
	smpsSetvoice        $03
	smpsChangeTransposition		$0C
	dc.b	nD5, $0C, nF5, $0C, nG5, $0C, nC5, $24
	smpsSetvoice        $02
	smpsAlterVol        $08
	smpsAlterVol        $08
	smpsAlterVol        $FE
	smpsChangeTransposition		$F4
	dc.b	nA4, $0C, nRst, $0C, nA4, $0C, nRst, $18, nA4, $24, nD4, $0C
	dc.b	nF4, $0C, nD4, $0C, nC5, $18, nA4, $24, nBb4, $0C, nRst, $0C
	dc.b	nBb4, $0C, nRst, $18, nBb4, $0C, nRst, $0C, nBb4, $18
	dc.b	nA4, $0C
	smpsAlterVol        $F8
	smpsAlterVol        $F8
	smpsSetvoice        $03
	smpsAlterVol        $02
	smpsChangeTransposition		$0C
	dc.b	nD5, $0C, nF5, $0C, nG5, $0C, nD5, $0C, nF5, $0C, nG5, $0C
	smpsSetvoice        $05
	dc.b	nBb1, $7F, smpsNoAttack, $41, nG1, $7F, smpsNoAttack, $11, nC2, $30
	smpsSetvoice        $02
	smpsAlterVol        $08
	smpsAlterVol        $08
	smpsAlterVol        $FE
	smpsChangeTransposition		$F4
	dc.b	nA4, $0C, nRst, $0C, nA4, $0C, nRst, $18, nA4, $24, nD4, $0C
	dc.b	nF4, $0C, nD4, $0C, nC5, $18, nA4, $24, nBb4, $0C, nRst, $0C
	dc.b	nBb4, $0C, nRst, $18, nBb4, $0C, nRst, $0C, nBb4, $18
	dc.b	nA4, $0C
	smpsAlterVol        $F8
	smpsAlterVol        $F8
	smpsSetvoice        $03
	smpsAlterVol        $02
	smpsChangeTransposition		$0C
	dc.b	nD5, $0C, nF5, $0C, nG5, $0C, nC5, $24
	smpsSetvoice        $02
	smpsAlterVol        $08
	smpsAlterVol        $08
	smpsAlterVol        $FE
	smpsChangeTransposition		$F4
	dc.b	nA4, $0C, nRst, $0C, nA4, $0C, nRst, $18, nA4, $24, nD4, $0C
	dc.b	nF4, $0C, nD4, $0C, nC5, $18, nA4, $24, nBb4, $0C, nRst, $0C
	dc.b	nBb4, $0C, nRst, $18, nBb4, $0C, nRst, $0C, nBb4, $18, nA4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $F8
	smpsAlterVol        $F8
	smpsAlterVol        $02
	smpsChangeTransposition		$0C
	dc.b	nD5, $0C, nF5, $0C, nG5, $0C, nD5, $0C, nF5, $0C, nG5, $0C
	smpsSetvoice        $05
	dc.b	nBb1, $7F, smpsNoAttack, $41, nG1, $7F, smpsNoAttack, $11, nC2, $30
	dc.b	nRst, $0C
	smpsSetvoice        $02
	smpsAlterVol        $08
	smpsAlterVol        $08
	smpsAlterVol        $FE
	smpsChangeTransposition		$F4
	dc.b	nD5, $0C, nRst, $0C, nD5, $0C, nC5, $0C, nD5, $0C, nC5, $0C
	dc.b	nRst, $0C, nD5, $0C, nRst, $0C, nD5, $0C, nRst, $0C, nD5, $0C
	dc.b	nC5, $0C, nG4, $0C, nA4, $0C, nRst, $78, nRst, $48
	smpsAlterVol        $02
	smpsChangeTransposition		$0C
	smpsJump	snd_sng_z3a1_FM5

; PSG1 Data
snd_sng_z3a1_PSG1:
	dc.b	nD2, $0C, nRst, $0C, nD2, $0C, nRst, $18, nD2, $24, nRst, $24
	dc.b	nG2, $18, nF2, $24, nD2, $0C, nRst, $0C, nD2, $0C, nRst, $18
	dc.b	nD2, $0C, nRst, $0C, nD2, $18, nD2, $0C, nE2, $0C, nF2, $0C
	dc.b	nG2, $0C, nF2, $0C, nE2, $0C, nF2, $0C, nD2, $0C, nRst, $0C
	dc.b	nD2, $0C, nRst, $18, nD2, $24, nRst, $24, nG2, $18, nF2, $24
	dc.b	nD2, $0C, nRst, $0C, nD2, $0C, nRst, $18, nD2, $0C, nRst, $0C
	dc.b	nD2, $18, nD2, $0C, nE2, $0C, nF2, $0C, nG2, $0C, nA2, $0C
	dc.b	nC3, $0C, nD3, $0C, nRst, $18, nD3, $0C, nD3, $0C, nRst, $0C
	dc.b	nD3, $0C, nRst, $18, nD3, $0C, nRst, $0C, nD3, $0C, nRst, $0C
	dc.b	nC3, $0C, nD3, $0C, nC3, $0C, nBb2, $0C, nRst, $18, nD3, $0C
	dc.b	nD3, $0C, nRst, $0C, nD3, $0C, nRst, $0C, nA2, $0C, nD3, $0C
	dc.b	nRst, $0C, nD3, $0C, nRst, $0C, nC3, $0C, nD3, $0C, nC3, $0C
	dc.b	nA2, $0C, nD2, $0C, nRst, $0C, nD2, $0C, nRst, $18, nD2, $24
	dc.b	nRst, $24, nG2, $18, nF2, $24, nD2, $0C, nRst, $0C, nD2, $0C
	dc.b	nRst, $18, nD2, $0C, nRst, $0C, nD2, $18, nRst, $0C, nE2, $0C
	dc.b	nF2, $0C, nG2, $0C, nF2, $0C, nE2, $0C, nA2, $0C, nD2, $0C
	dc.b	nRst, $0C, nD2, $0C, nRst, $18, nD2, $24, nRst, $24, nG2, $18
	dc.b	nF2, $24, nD2, $0C, nRst, $0C, nD2, $0C, nRst, $18, nD2, $0C
	dc.b	nRst, $0C, nD2, $18, nD2, $0C, nE2, $0C, nF2, $0C, nG2, $0C
	dc.b	nA2, $0C, nC3, $0C, nD3, $0C, nRst, $18, nD3, $0C, nD3, $0C
	dc.b	nRst, $0C, nD3, $0C, nRst, $18, nD3, $0C, nRst, $0C, nD3, $0C
	dc.b	nRst, $0C, nC3, $0C, nD3, $0C, nC3, $0C, nBb2, $0C, nRst, $18
	dc.b	nD3, $0C, nD3, $0C, nRst, $0C, nD3, $0C, nRst, $18, nD3, $0C
	dc.b	nRst, $0C, nD3, $0C, nRst, $0C, nC3, $0C, nD3, $0C, nC3, $0C
	dc.b	nA2, $0C, nRst, $7F, nRst, $41, nRst, $78, nRst, $48
	smpsJump	snd_sng_z3a1_PSG1

; PSG2 Data
snd_sng_z3a1_PSG2:
	dc.b	nRst, $7F, nRst, $7F, nRst, $46, nD3, $0C, nF3, $0C, nG3, $0C, nC3, $24
	dc.b	nRst, $7F, nRst, $7F, nRst, $3A, nD3, $0C, nF3, $0C, nG3, $0C, nD3, $0C
	dc.b	nF3, $0C, nG3, $0C, nRst, $74, nRst, $74, nRst, $74, nRst, $74
	dc.b	nRst, $74, nRst, $74, nD3
	dc.b	$0C, nF3, $0C, nG3, $0C, nC3, $24, nRst, $7F, nRst, $7F, nRst, $3A, nD3
	dc.b	$0C, nF3, $0C, nG3, $0C, nD3, $0C, nF3, $0C, nG3, $0C
	dc.b	nRst, $7E, nRst, $7E, nRst, $7E, nRst, $7E, nRst, $7E, nRst, $7E
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

;	Voice $02
;	$3C
;	$0F, $32, $72, $02, 	$5E, $5E, $5E, $9E, 	$0F, $08, $07, $07
;	$05, $05, $05, $05, 	$DF, $DF, $DF, $DF, 	$41, $80, $1B, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $00
	smpsVcCoarseFreq    $02, $02, $02, $0F
	smpsVcRateScale     $02, $01, $01, $01
	smpsVcAttackRate    $1E, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $07, $08, $0F
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $0D, $0D, $0D, $0D
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1B, $00, $41

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
