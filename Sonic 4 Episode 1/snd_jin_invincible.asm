snd_jin_invincible_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_jin_invincible_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $07

	smpsHeaderDAC       snd_jin_invincible_DAC
	smpsHeaderFM        snd_jin_invincible_FM1,	$00, $0E
	smpsHeaderFM        snd_jin_invincible_FM2,	$F4, $13
	smpsHeaderFM        snd_jin_invincible_FM4,	$F4, $13
	smpsHeaderFM        snd_jin_invincible_FM3,	$F4, $1E
	smpsHeaderFM        snd_jin_invincible_FM5,	$24, $1D
	smpsHeaderPSG       snd_jin_invincible_PSG1,	$0C, $03, $00, sTone_0A
	smpsHeaderPSG       snd_jin_invincible_PSG2,	$00, $03, $00, sTone_17
	smpsHeaderPSG       snd_jin_invincible_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_jin_invincible_DAC:
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06
	dc.b	dKickS3, $12, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $12, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dKickS3, $12
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $0C, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $6C
	smpsStop

; FM1 Data
snd_jin_invincible_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nG2, $0C, nD3, $06, nG2, $0F, nRst, $03, nG2, $0C, nA2, $0C
	dc.b	nE3, $06, nA2, $0F, nRst, $03, nA2, $0C, nBb2, $0C, nF3, $06
	dc.b	nBb2, $0F, nRst, $03, nBb2, $0C, nC3, $0C, nG3, $06, nC3, $0F
	dc.b	nRst, $03, nC3, $0C, nD3, $0F, nRst, $03, nD3, $06, nA2, $0C
	dc.b	nD3, $0F, nRst, $09, nD3, $0C, nA2, $06, nA3, $06, nD3, $06
	dc.b	nD4, $06, nG4, $06, nC3, $06, nC4, $06, nG3, $06, nG2, $06
	dc.b	nRst, $06, nG3, $06, nG2, $06, nC3, $06, nRst, $06, nC3, $06
	dc.b	nC4, $06, nG2, $06, nG3, $06, nC3, $06, nC4, $06, nB2, $0F
	dc.b	nRst, $03, nB2, $06, nFs2, $0C, nB2, $0F, nRst, $09, nB2, $0C
	dc.b	nFs2, $06, nFs3, $06, nB2, $06, nB3, $06, nE4, $06, nA4, $06
	dc.b	nA3, $06, nE3, $06, nA3, $06, nRst, $06, nE3, $06, nE2, $06
	dc.b	nA2, $06, nRst, $06, nA2, $06, nA3, $06, nCs3, $06, nD3, $06
	dc.b	nEb3, $06, nE3, $06, nD3, $0F, nRst, $03, nD3, $06, nA2, $0C
	dc.b	nD3, $0F, nRst, $09, nD3, $0C, nA2, $06, nA3, $06, nD3, $06
	dc.b	nD4, $06, nG4, $06, nC3, $06, nC4, $06, nG3, $06, nG2, $06
	dc.b	nRst, $06, nG3, $06, nG2, $06, nC3, $06, nRst, $06, nC3, $06
	dc.b	nC4, $06, nG2, $06, nG3, $06, nC3, $06, nC4, $06, nB2, $0F
	dc.b	nRst, $03, nB2, $06, nFs2, $0C, nB2, $0F, nRst, $09, nB2, $0C
	dc.b	nFs2, $06, nFs3, $06, nB2, $06, nB3, $06, nE4, $06, nA4, $06
	dc.b	nA3, $06, nE3, $06, nA3, $06, nRst, $06, nE3, $06, nE2, $06
	dc.b	nA2, $06, nRst, $06, nA2, $06, nA3, $06, nCs3, $06, nD3, $06
	dc.b	nEb3, $06, nE3, $06, nG2, $0C, nD3, $06, nG2, $12, nG3, $09
	dc.b	nRst, $03, nA2, $0C, nE3, $06, nA2, $12, nA3, $09, nRst, $03
	dc.b	nBb2, $0C, nF3, $06, nBb2, $12, nBb3, $09, nRst, $03, nC3, $0C
	dc.b	nG3, $06, nC3, $12, nC4, $09, nRst, $03, nD3, $0F, nRst, $03
	dc.b	nD3, $06, nA2, $0C, nD3, $0F, nRst, $09, nD3, $0C, nA2, $06
	dc.b	nA3, $06, nD3, $06, nD4, $06, nG4, $06, nC3, $06, nC4, $06
	dc.b	nG3, $06, nG2, $06, nRst, $06, nG3, $06, nG2, $06, nC3, $06
	dc.b	nRst, $06, nC3, $06, nC4, $06, nG2, $06, nG3, $06, nC3, $06
	dc.b	nC4, $06, nRst, $60
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsStop

; FM2 Data
snd_jin_invincible_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	smpsPan             panLeft, $00
snd_jin_invincible_FM2INIT:
	dc.b	nC5, $0F, nRst, $03, nB4, $0C, nA4, $06, nG4, $06, nRst, $06
	dc.b	nD5, $0F, nRst, $03, nCs5, $0C, nB4, $06, nA4, $06, nRst, $06
	dc.b	nEb5, $0F, nRst, $03, nD5, $0C, nC5, $06, nBb4, $06, nRst, $06
	dc.b	nF5, $0F, nRst, $03, nE5, $0C, nD5, $06, nC5, $06, nRst, $06
	dc.b	nD5, $0C, nRst, $06, nD5, $06, nE5, $06, nRst, $06, nG5, $0C
	dc.b	nRst, $0C, nFs5, $0C, nRst, $0C, nE5, $0C, nRst, $0C, nE5, $0C
	dc.b	nFs5, $0C, nD5, $36, nRst, $06, nD5, $0C, nRst, $06, nD5, $06
	dc.b	nE5, $06, nRst, $06, nG5, $0C, nRst, $0C, nFs5, $0C, nRst, $0C
	dc.b	nE5, $54, nRst, $18, nD5, $0C, nRst, $06, nD5, $06, nE5, $06
	dc.b	nRst, $06, nG5, $0C, nRst, $0C, nFs5, $0C, nRst, $0C, nE5, $0C
	dc.b	nRst, $0C, nE5, $0C, nFs5, $0C, nD5, $36, nRst, $06, nD5, $0C
	dc.b	nRst, $06, nD5, $06, nE5, $06, nRst, $06, nG5, $0C, nRst, $0C
	dc.b	nFs5, $0C, nRst, $0C, nE5, $54, nRst, $18, nB4, $06, nCs5, $06
	dc.b	nD5, $06, nB4, $0C, nCs5, $06, nD5, $09, nRst, $03, nCs5, $06
	dc.b	nD5, $06, nE5, $06, nCs5, $0C, nD5, $06, nE5, $09, nRst, $03
	dc.b	nD5, $06, nE5, $06, nF5, $06, nD5, $0C, nE5, $06, nF5, $09
	dc.b	nRst, $03, nE5, $06, nF5, $06, nG5, $06, nE5, $0C, nF5, $06
	dc.b	nG5, $06, nE5, $06, nD5, $0C, nRst, $06, nD5, $06, nE5, $06
	dc.b	nRst, $06, nG5, $0C, nRst, $0C, nFs5, $0C, nRst, $0C, nE5, $0C
	dc.b	nRst, $0C, nE5, $0C, nFs5, $0C, nD5, $36, nRst, $66
	smpsStop

; FM3 Data
snd_jin_invincible_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	smpsPan             panRight, $00
	dc.b	nRst, $06
	smpsJump		snd_jin_invincible_FM2INIT

; FM5 Data
snd_jin_invincible_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, $10, nD1, $1B, nRst, $03, nE1, $0F, nRst, $03, nE1
	dc.b	$1B, nRst, $03, nF1, $0F, nRst, $03, nF1, $1B, nRst, $03, nG1
	dc.b	$0F, nRst, $03, nG1, $1B, nRst, $03, nA1, $1E, nRst, $06, nA1
	dc.b	$0C, nRst, $0C, nA1, $0C, nRst, $0C, nC2, $0C, nRst, $0C, nC2
	dc.b	$0C, nRst, $0C, nC2, $18, nB1, $0C, nA1, $0C, nG1, $0C, nB1
	dc.b	$1E, nRst, $06, nB1, $0C, nRst, $0C, nB1, $0C, nRst, $0C, nA1
	dc.b	$54, nRst, $18, nA1, $1E, nRst, $06, nA1, $0C, nRst, $0C, nA1
	dc.b	$0C, nRst, $0C, nC2, $0C, nRst, $0C, nC2, $0C, nRst, $0C, nC2
	dc.b	$18, nB1, $0C, nA1, $0C, nG1, $0C, nB1, $1E, nRst, $06, nB1
	dc.b	$0C, nRst, $0C, nB1, $0C, nRst, $0C, nA1, $54, nRst, $18, nG1
	dc.b	$06, nRst, $0C, nG1, $12, nRst, $0C, nA1, $06, nRst, $0C, nA1
	dc.b	$12, nRst, $0C, nBb1, $06, nRst, $0C, nBb1, $12, nRst, $0C, nC2
	dc.b	$06, nRst, $0C, nC2, $12, nRst, $0C, nA1, $1E, nRst, $06, nA1
	dc.b	$0C, nRst, $0C, nA1, $0C, nRst, $0C, nC2, $0C, nRst, $0C, nC2
	dc.b	$0C, nRst, $0C, nC2, $18, nB1, $0C, nA1, $0C, nG1, $0C
	smpsStop

; FM4 Data
snd_jin_invincible_FM4:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $03, $05
	dc.b	nG4, $0F, nRst, $21, nA4, $0F, nRst, $21, nBb4, $0F, nRst, $21
	dc.b	nC5, $0F, nRst, $7F, nRst, $7F, nRst, $07, nD5, $0C, nRst, $0C, nD5, $0C
	dc.b	nRst, $0C, nCs5, $54, nRst, $7F, nRst, $7D, nD5, $0C, nRst, $0C, nD5
	dc.b	$0C, nRst, $0C, nCs5, $54, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $1B
	smpsStop

; PSG1 Data
snd_jin_invincible_PSG1:
	smpsStop

; PSG2 Data
snd_jin_invincible_PSG2:
	smpsStop

; PSG3 Data
snd_jin_invincible_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06
	dc.b	$0C, $06, $0C, $0C, $06, $0C
	dc.b	$06, $06, $06, $0C, $06, $0C
	dc.b	$06, $0C, $06, $06, $0C, $0C
	dc.b	$0C, $0C, $06, $0C, $06, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $06, $06
	dc.b	$0C, $0C, $0C, $0C, $06, $0C
	dc.b	$06, $0C, $06, $0C, $06, $0C
	dc.b	$0C, $0C, $06, $0C, $06, $0C
	dc.b	$06, $06, $0C, $0C, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $06, $0C
	dc.b	$06, $0C, $0C, $0C, $06, $0C
	dc.b	$06, $0C, $06, $06, $0C, $0C
	dc.b	$0C, $0C, $06, $0C, $06, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06
	dc.b	$0C, $06, $0C, $0C, $06, $0C
	dc.b	$06, $0C, $0C, $0C, $0C, $06
	dc.b	$06, $0C, $06, $0C, $06, $0C
	dc.b	$06, $06, $0C, $0C, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $06, $0C
	dc.b	$06, $0C, $6C
	smpsStop

snd_jin_invincible_Voices:
;	Voice $00
;	$28
;	$71, $00, $30, $01, 	$1F, $1F, $1D, $1F, 	$13, $13, $06, $05
;	$03, $03, $02, $05, 	$4F, $4F, $2F, $3F, 	$0E, $14, $1E, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $13, $13
	smpsVcDecayRate2    $05, $02, $03, $03
	smpsVcDecayLevel    $03, $02, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $14, $0E

;	Voice $01
;	$3D
;	$12, $21, $54, $12, 	$12, $14, $14, $0F, 	$0A, $05, $02, $05
;	$00, $00, $00, $00, 	$2B, $2B, $1F, $1B, 	$19, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $02, $01
	smpsVcCoarseFreq    $02, $03, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $02, $02
	smpsVcReleaseRate   $0B, $0F, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $02
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

;	Voice $03
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15
