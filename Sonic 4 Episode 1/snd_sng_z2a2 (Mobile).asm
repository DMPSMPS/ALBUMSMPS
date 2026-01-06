snd_sng_z2a2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z2a2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $44

	smpsHeaderDAC       snd_sng_z2a2_DAC
	smpsHeaderFM        snd_sng_z2a2_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_z2a2_FM2,	$00, $13
	smpsHeaderFM        snd_sng_z2a2_FM3,	$00, $13
	smpsHeaderFM        snd_sng_z2a2_FM4,	$00, $13
	smpsHeaderFM        snd_sng_z2a2_FM5,	$00, $13
	smpsHeaderPSG       snd_sng_z2a2_PSG1,	$E8, $07, $00, sTone_11
	smpsHeaderPSG       snd_sng_z2a2_PSG2,	$E8, $07, $00, sTone_11
	smpsHeaderPSG       snd_sng_z2a2_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z2a2_DAC:
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dTightSnare, $06, dTightSnare, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dTightSnare, $06, dLooserSnare, $06, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dTightSnare, $06, dTightSnare, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dTightSnare, $06, dLooserSnare, $06, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $06, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $3C
	smpsStop

; FM1 Data
snd_sng_z2a2_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nF2, $0C, nRst, $06, nF2, $06, nA2, $0C, nRst, $06, nA2, $06
	dc.b	nBb2, $0C, nRst, $06, nBb2, $06, nB2, $06, nRst, $06, nB2, $0C
	dc.b	nC3, $06, nC3, $06, nRst, $06, nC3, $06, nRst, $06, nC3, $06
	dc.b	nRst, $06, nF2, $0C, nA2, $06, nRst, $06, nBb2, $06, nRst, $06
	dc.b	nB2, $06, nC3, $0C, nF2, $0C, nRst, $06, nF2, $06, nA2, $18
	dc.b	nBb2, $06, nRst, $06, nBb2, $0C, nA2, $06, nRst, $06, nA2, $0C
	dc.b	nG2, $0C, nRst, $06, nG2, $06, nB2, $18, nC3, $06, nRst, $06
	dc.b	nC3, $0C, nBb2, $06, nRst, $06, nBb2, $0C, nA2, $0C, nRst, $06
	dc.b	nA2, $06, nC3, $06, nCs3, $12, nD3, $0C, nRst, $06, nD3, $06
	dc.b	nC3, $0C, nRst, $06, nC3, $06, nBb2, $0C, nRst, $06, nBb2, $06
	dc.b	nB2, $18, nC3, $06, nRst, $06, nC3, $12, nA2, $06, nBb2, $06
	dc.b	nC3, $06, nF2, $0C, nRst, $06, nF2, $06, nA2, $18, nBb2, $06
	dc.b	nRst, $06, nBb2, $0C, nA2, $06, nRst, $06, nA2, $0C, nG2, $0C
	dc.b	nRst, $06, nG2, $06, nB2, $18, nC3, $06, nRst, $06, nC3, $0C
	dc.b	nBb2, $06, nRst, $06, nBb2, $0C, nA2, $0C, nRst, $06, nA2, $06
	dc.b	nC3, $06, nCs3, $12, nD3, $0C, nRst, $06, nD3, $06, nC3, $0C
	dc.b	nRst, $06, nC3, $06, nBb2, $06, nRst, $06, nBb2, $0C, nC3, $06
	dc.b	nRst, $06, nC3, $0C, nF2, $06, nRst, $06, nF2, $12, nG2, $06
	dc.b	nA2, $06, nC3, $06, nF2, $0C, nRst, $06, nF2, $06, nA2, $0C
	dc.b	nRst, $06, nA2, $06, nBb2, $0C, nRst, $06, nBb2, $06, nB2, $06
	dc.b	nRst, $06, nB2, $0C, nC3, $06, nC3, $06, nRst, $06, nC3, $06
	dc.b	nRst, $06, nC3, $06, nRst, $06, nF2, $0C, nA2, $06, nRst, $06
	dc.b	nBb2, $06, nRst, $06, nB2, $06, nC3, $0C, nRst, $30
	smpsStop

; FM2 Data
snd_sng_z2a2_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
snd_sng_z2a2_FM2INIT:
	dc.b	nA5, $18, nF5, $18, nD5, $18, nA5, $18, nG5, $06, nF5, $06
	dc.b	nRst, $06, nE5, $06, nRst, $06, nC5, $06, nRst, $06, nF5, $36
	dc.b	nRst, $0C, nF5, $06, nRst, $06, nF5, $06, nC5, $12, nD5, $06
	dc.b	nRst, $06, nG5, $06, nF5, $1E, nRst, $0C, nF5, $06, nRst, $06
	dc.b	nF5, $06, nD5, $12, nE5, $06, nRst, $06, nA5, $06, nG5, $1E
	dc.b	nRst, $0C, nG5, $06, nRst, $06, nG5, $06, nE5, $12, nF5, $06
	dc.b	nRst, $06, nG5, $06, nRst, $06, nA5, $06, nRst, $06, nC6, $06
	dc.b	nRst, $0C, nBb5, $06, nRst, $06, nA5, $06, nG5, $0C, nF5, $0C
	dc.b	nA5, $12, nG5, $1E, nRst, $0C, nF5, $06, nRst, $06, nF5, $06
	dc.b	nC5, $12, nD5, $06, nRst, $06, nG5, $06, nF5, $1E, nRst, $0C
	dc.b	nF5, $06, nRst, $06, nF5, $06, nD5, $12, nE5, $06, nRst, $06
	dc.b	nA5, $06, nG5, $1E, nRst, $0C, nG5, $06, nRst, $06, nG5, $06
	dc.b	nE5, $12, nF5, $06, nRst, $06, nG5, $06, nRst, $06, nA5, $06
	dc.b	nRst, $06, nC6, $06, nRst, $06, nBb5, $0C, nA5, $06, nRst, $06
	dc.b	nG5, $06, nRst, $06, nE5, $06, nRst, $06, nF5, $1E, nG5, $06
	dc.b	nA5, $06, nC6, $06, nRst, $0C, nA5, $06, nRst, $06, nF5, $18
	dc.b	nD5, $18, nA5, $18, nG5, $06, nF5, $06, nRst, $06, nE5, $06
	dc.b	nRst, $06, nC5, $06, nRst, $06, nF5, $36, nRst, $30
	smpsStop

; FM3 Data
snd_sng_z2a2_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
snd_sng_z2a2_FM3INIT:
	dc.b	nC5, $18, nA4, $18, nBb4, $18, nB4, $18, nC5, $06, nC5, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $06, nBb4, $06, nRst, $06, nA4, $0C
	dc.b	nA4, $06, nRst, $06, nBb4, $0C, nAb4, $06, nG4, $0C, nRst, $0C
	dc.b	nA4, $06, nRst, $06, nA4, $18, nBb4, $06, nRst, $06, nBb4, $06
	dc.b	nA4, $1E, nRst, $0C, nB4, $06, nRst, $06, nB4, $18, nC5, $06
	dc.b	nRst, $06, nC5, $06, nBb4, $1E, nRst, $0C, nC5, $06, nRst, $06
	dc.b	nB4, $06, nBb4, $12, nA4, $06, nRst, $06, nC5, $06, nRst, $06
	dc.b	nF5, $06, nRst, $06, nA5, $06, nRst, $0C, nD5, $06, nRst, $06
	dc.b	nF5, $06, nD5, $0C, nB4, $0C, nC5, $12, nBb4, $1E, nRst, $0C
	dc.b	nA4, $06, nRst, $06, nA4, $18, nBb4, $06, nRst, $06, nBb4, $06
	dc.b	nA4, $1E, nRst, $0C, nB4, $06, nRst, $06, nB4, $18, nC5, $06
	dc.b	nRst, $06, nC5, $06, nBb4, $1E, nRst, $0C, nC5, $06, nRst, $06
	dc.b	nB4, $06, nBb4, $12, nA4, $06, nRst, $06, nC5, $06, nRst, $06
	dc.b	nF5, $06, nRst, $06, nA5, $06, nRst, $06, nD5, $0C, nF5, $06
	dc.b	nRst, $06, nC5, $06, nRst, $06, nBb4, $06, nRst, $06, nA4, $1E
	dc.b	nE5, $06, nF5, $06, nA5, $06, nRst, $0C, nC5, $06, nRst, $06
	dc.b	nA4, $18, nBb4, $18, nB4, $18, nC5, $06, nC5, $06, nRst, $06
	dc.b	nBb4, $06, nRst, $06, nBb4, $06, nRst, $06, nA4, $0C, nA4, $06
	dc.b	nRst, $06, nBb4, $0C, nAb4, $06, nG4, $0C, nRst, $30
	smpsStop

; FM4 Data
snd_sng_z2a2_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nF2, $0C, nF3, $0C, nA2, $0C, nF3, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nF3, $0C, nB2, $0C, nG3, $0C, nE3, $06, nF3, $06
	dc.b	nC3, $06, nD3, $0C, nE3, $0C, nF3, $0C, nA2, $0C, nBb2, $0C
	dc.b	nB2, $06, nC3, $0C, nF2, $0C, nC3, $0C, nA2, $0C, nC3, $0C
	dc.b	nBb2, $0C, nD3, $06, nA2, $06, nRst, $06, nA2, $06, nC3, $0C
	dc.b	nG2, $0C, nD3, $0C, nB2, $0C, nD3, $0C, nC3, $0C, nE3, $06
	dc.b	nBb2, $06, nRst, $06, nBb2, $06, nE3, $0C, nA2, $0C, nE3, $06
	dc.b	nB2, $06, nC3, $06, nCs3, $06, nG3, $0C, nD3, $0C, nF3, $0C
	dc.b	nC3, $0C, nF3, $0C, nBb2, $0C, nF3, $0C, nB2, $0C, nG3, $0C
	dc.b	nC3, $0C, nG3, $0C, nC4, $06, nA3, $06, nG3, $06, nE3, $06
	dc.b	nF2, $0C, nC3, $0C, nA2, $0C, nC3, $0C, nBb2, $0C, nD3, $06
	dc.b	nA2, $06, nRst, $06, nA2, $06, nC3, $0C, nG2, $0C, nD3, $0C
	dc.b	nB2, $0C, nD3, $0C, nC3, $0C, nE3, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nE3, $0C, nA2, $0C, nE3, $06, nB2, $06, nC3, $06
	dc.b	nCs3, $06, nG3, $0C, nD3, $0C, nF3, $0C, nC3, $0C, nF3, $0C
	dc.b	nBb2, $0C, nF3, $0C, nC3, $0C, nG3, $0C, nC4, $06, nBb3, $06
	dc.b	nA3, $06, nF3, $06, nD3, $06, nC3, $06, nA2, $06, nF2, $06
	dc.b	nF2, $0C, nF3, $06, nRst, $06, nA2, $0C, nF3, $06, nRst, $0C
	dc.b	nBb2, $06, nF3, $0C, nB2, $0C, nG3, $0C, nE3, $06, nF3, $06
	dc.b	nC3, $06, nD3, $0C, nE3, $0C, nF3, $0C, nA2, $0C, nBb2, $0C
	dc.b	nB2, $06, nC3, $0C, nRst, $30
	smpsStop

; FM5 Data
snd_sng_z2a2_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nF2, $0C, nF3, $0C, nA2, $0C, nF3, $06, nBb2, $06, nRst, $06
	dc.b	nBb2, $06, nF3, $0C, nB2, $0C, nG3, $0C, nE3, $06, nF3, $06
	dc.b	nC3, $06, nD3, $0C, nE3, $0C, nF3, $0C, nA2, $0C, nBb2, $0C
	dc.b	nB2, $06, nC3, $0C, nRst, $0C, nF3, $0C, nRst, $0C, nF3, $0C
	dc.b	nRst, $0C, nF3, $0C, nRst, $0C, nF3, $0C, nRst, $0C, nG3, $0C
	dc.b	nRst, $0C, nG3, $0C, nRst, $0C, nG3, $0C, nRst, $0C, nG3, $0C
	dc.b	nRst, $0C, nA3, $0C, nRst, $0C, nA3, $0C, nRst, $0C, nA3, $0C
	dc.b	nRst, $0C, nA3, $0C, nRst, $0C, nBb3, $0C, nRst, $0C, nB3, $0C
	dc.b	nRst, $0C, nC4, $0C, nF4, $06, nE4, $06, nD4, $06, nC4, $06
	dc.b	nRst, $0C, nF3, $0C, nRst, $0C, nF3, $0C, nRst, $0C, nF3, $0C
	dc.b	nRst, $0C, nF3, $0C, nRst, $0C, nG3, $0C, nRst, $0C, nG3, $0C
	dc.b	nRst, $0C, nG3, $0C, nRst, $0C, nG3, $0C, nRst, $0C, nA3, $0C
	dc.b	nRst, $0C, nA3, $0C, nRst, $0C, nA3, $0C, nRst, $0C, nA3, $0C
	dc.b	nRst, $0C, nBb3, $0C, nRst, $0C, nC4, $0C, nF4, $06, nE4, $06
	dc.b	nD4, $06, nC4, $06, nBb3, $06, nA3, $06, nG3, $06, nF3, $06
	dc.b	nF2, $0C, nF3, $06, nRst, $06, nA2, $0C, nF3, $06, nRst, $0C
	dc.b	nBb2, $06, nF3, $0C, nB2, $0C, nG3, $0C, nE3, $06, nF3, $06
	dc.b	nC3, $06, nD3, $0C, nE3, $0C, nF3, $0C, nA2, $0C, nBb2, $0C
	dc.b	nB2, $06, nC3, $0C, nRst, $30
	smpsSetvoice        $02
	smpsStop

; PSG1 Data
snd_sng_z2a2_PSG1:
	dc.b	nRst, $06
	smpsJump	snd_sng_z2a2_FM2INIT

; PSG2 Data
snd_sng_z2a2_PSG2:
	dc.b	nRst, $06
	smpsJump	snd_sng_z2a2_FM3INIT	

; PSG3 Data
snd_sng_z2a2_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $06, $06, $12, $0C, $0C, $0C
	dc.b	$06, $0C, $0C, $06, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $12
	dc.b	$12, $06, $12, $06, $0C, $0C
	dc.b	$18, $12, $06, $12, $06, $0C
	dc.b	$0C, $18, $12, $06, $12, $06
	dc.b	$0C, $0C, $18, $12, $06, $12
	dc.b	$06, $0C, $0C, $18, $12, $06
	dc.b	$12, $06, $0C, $0C, $18, $12
	dc.b	$06, $12, $06, $0C, $0C, $18
	dc.b	$12, $06, $12, $06, $0C, $0C
	dc.b	$18, $12, $06, $12, $06, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $06
	dc.b	$0C, $0C, $06, $0C, $0C, $06
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $36
	smpsStop

snd_sng_z2a2_Voices:
;	Voice $00
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

;	Voice $01
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

;	Voice $02
;	$2C
;	$61, $03, $01, $33, 	$5F, $94, $5F, $94, 	$05, $05, $05, $07
;	$02, $02, $02, $02, 	$1F, $6F, $1F, $AF, 	$1E, $80, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $03, $01, $03, $01
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $14, $1F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0A, $01, $06, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $00, $1E
