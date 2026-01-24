snd_sng_menu_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_menu_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $09

	smpsHeaderDAC       snd_sng_menu_DAC
	smpsHeaderFM        snd_sng_menu_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_menu_FM2,	$00, $13
	smpsHeaderFM        snd_sng_menu_FM3,	$00, $13
	smpsHeaderFM        snd_sng_menu_FM4,	$00, $18
	smpsHeaderFM        snd_sng_menu_FM5,	$00, $1E
	smpsHeaderPSG       snd_sng_menu_PSG1,	$0C, $02, $00, sTone_06
	smpsHeaderPSG       snd_sng_menu_PSG2,	$0C, $05, $00, sTone_04
	smpsHeaderPSG       snd_sng_menu_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_menu_DAC:
	dc.b	dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $18, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $12, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $18
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $12
	dc.b	dSnareS3, $06, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dKickS3, $18, dSnareS3, $12, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $12, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $18, dKickS3, $18, dSnareS3, $18, dSnareS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $0C, dSnareS3, $18
	smpsJump	snd_sng_menu_DAC

; FM1 Data
snd_sng_menu_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nC3, $0C, nRst, $0C, nC3, $18, nB2, $0C, nRst, $0C, nB2, $18
	dc.b	nA2, $0C, nRst, $0C, nA2, $18, nG2, $0C, nRst, $0C, nG2, $18
	dc.b	nF3, $0C, nRst, $0C, nF3, $18, nC3, $0C, nRst, $0C, nC3, $18
	dc.b	nD3, $0C, nRst, $0C, nD3, $18, nG2, $06, nRst, $06, nG2, $0C
	dc.b	nA2, $0C, nB2, $0C, nC3, $0C, nRst, $0C, nC3, $18, nB2, $0C
	dc.b	nRst, $0C, nB2, $18, nA2, $0C, nRst, $0C, nA2, $18, nG2, $0C
	dc.b	nRst, $0C, nG2, $18, nF3, $0C, nRst, $0C, nF3, $18, nC3, $0C
	dc.b	nRst, $0C, nC3, $18, nD3, $0C, nRst, $0C, nD3, $18, nG2, $06
	dc.b	nRst, $06, nG2, $0C, nA2, $0C, nB2, $0C, nF2, $06, nRst, $06
	dc.b	nF2, $18, nC3, $0C, nRst, $0C, nC3, $12, nRst, $06, nC3, $0C
	dc.b	nG2, $06, nRst, $06, nG2, $18, nA2, $0C, nRst, $0C, nA2, $0C
	dc.b	nB2, $0C, nC3, $0C, nF2, $06, nRst, $06, nF2, $18, nC3, $0C
	dc.b	nRst, $0C, nE3, $0C, nD3, $0C, nC3, $0C, nG2, $06, nRst, $06
	dc.b	nG2, $18, nA2, $0C, nRst, $0C, nF3, $0C, nE3, $0C, nC3, $0C
	dc.b	nF2, $06, nRst, $06, nF2, $18, nC3, $0C, nRst, $0C, nC3, $12
	dc.b	nRst, $06, nC3, $0C, nG2, $06, nRst, $06, nG2, $18, nA2, $0C
	dc.b	nRst, $0C, nA2, $0C, nB2, $0C, nC3, $0C, nF2, $06, nRst, $06
	dc.b	nF2, $18, nC3, $0C, nRst, $0C, nE3, $0C, nB2, $0C, nC3, $0C
	dc.b	nB2, $06, nRst, $06, nG2, $18, nC3, $0C, nRst, $0C, nF3, $0C
	dc.b	nE3, $0C, nC3, $0C
	smpsJump	snd_sng_menu_FM1

; FM2 Data
snd_sng_menu_FM2:
	;smpsPan             panLeft, $00
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
snd_sng_menu_FM2INIT:
	dc.b	nRst, $0C, nG4, $06, nA4, $06, nC5, $06, nRst, $06, nC5, $06
	dc.b	nRst, $06, nD5, $12, nC5, $06, nRst, $24, nG4, $06, nA4, $06
	dc.b	nC5, $06, nRst, $06, nC5, $06, nRst, $06, nD5, $12, nE5, $06
	dc.b	nRst, $0C, nC5, $0C, nF5, $12, nE5, $06, nRst, $0C, nC5, $0C
	dc.b	nG5, $12, nF5, $06, nRst, $0C, nE5, $0C, nD5, $3C, nB4, $0C
	dc.b	nG4, $18, nRst, $0C, nG4, $06, nA4, $06, nC5, $06, nRst, $06
	dc.b	nC5, $06, nRst, $06, nD5, $12, nC5, $06, nRst, $24, nG4, $06
	dc.b	nA4, $06, nC5, $06, nRst, $06, nC5, $06, nRst, $06, nD5, $12
	dc.b	nE5, $06, nRst, $0C, nC5, $0C, nF5, $12, nE5, $06, nRst, $0C
	dc.b	nC5, $0C, nG5, $12, nF5, $06, nRst, $0C, nE5, $0C, nD5, $3C
	dc.b	nB4, $0C, nG4, $18, nA5, $0C, nG5, $0C, nF5, $0C, nE5, $18
	dc.b	nC5, $0C, nD5, $0C, nE5, $0C, nD5, $24, nE5, $30, nRst, $0C
	dc.b	nA5, $0C, nG5, $0C, nF5, $0C, nE5, $18, nC5, $0C, nD5, $0C
	dc.b	nE5, $0C, nD5, $24, nC5, $30, nRst, $0C, nA5, $0C, nG5, $0C
	dc.b	nF5, $0C, nE5, $18, nC5, $0C, nD5, $0C, nE5, $0C, nD5, $24
	dc.b	nE5, $30, nRst, $0C, nA5, $0C, nG5, $0C, nF5, $0C, nE5, $18
	dc.b	nC5, $0C, nD5, $0C, nE5, $0C, nD5, $24, nC5, $24, nRst, $18
	smpsJump	snd_sng_menu_FM2INIT


; FM3 Data
snd_sng_menu_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nRst, $0C, nC4, $06, nE4, $06, nG4, $06, nRst, $06, nG4, $06
	dc.b	nRst, $06, nB4, $12, nG4, $06, nRst, $24, nC4, $06, nE4, $06
	dc.b	nG4, $06, nRst, $06, nG4, $06, nRst, $06, nB4, $12, nC5, $06
	dc.b	nRst, $0C, nG4, $0C, nA4, $12, nC5, $06, nRst, $0C, nA4, $0C
	dc.b	nG4, $12, nC5, $06, nRst, $0C, nG4, $0C, nA4, $24, nB4, $06
	dc.b	nRst, $12, nB4, $0C, nG4, $18, nRst, $0C, nC4, $06, nE4, $06
	dc.b	nG4, $06, nRst, $06, nG4, $06, nRst, $06, nB4, $12, nG4, $06
	dc.b	nRst, $24, nC4, $06, nE4, $06, nG4, $06, nRst, $06, nG4, $06
	dc.b	nRst, $06, nB4, $12, nC5, $06, nRst, $0C, nG4, $0C, nA4, $12
	dc.b	nC5, $06, nRst, $0C, nA4, $0C, nG4, $12, nC5, $06, nRst, $0C
	dc.b	nG4, $0C, nA4, $24, nB4, $06, nRst, $36, nF5, $0C, nE5, $0C
	dc.b	nD5, $0C, nC5, $18, nG4, $0C, nB4, $0C, nC5, $0C, nB4, $24
	dc.b	nA4, $30, nRst, $0C, nC5, $0C, nB4, $0C, nA4, $0C, nG4, $18
	dc.b	nE4, $0C, nG4, $0C, nA4, $0C, nG4, $24, nA4, $30, nRst, $0C
	dc.b	nF5, $0C, nE5, $0C, nD5, $0C, nC5, $18, nG4, $0C, nB4, $0C
	dc.b	nC5, $0C, nB4, $24, nA4, $30, nRst, $0C, nC5, $0C, nB4, $0C
	dc.b	nA4, $0C, nG4, $18, nE4, $0C, nG4, $0C, nA4, $0C, nB4, $24
	dc.b	nG4, $24, nRst, $18
	smpsJump	snd_sng_menu_FM3


; FM4 Data
snd_sng_menu_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	dc.b	nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43
	dc.b	nRst, $43, nC5, $24, nA4, $0C, nC5, $0C, nB4, $0C, nC5, $0C, nB4
	dc.b	$0C, nA4, $18, nRst, $3C, nC5, $24, nG4, $0C, nA4, $0C, nC5
	dc.b	$0C, nD5, $0C, nB4, $0C, nD5, $0C, nC5, $18, nRst, $3C, nC5
	dc.b	$24, nG4, $0C, nA4, $0C, nC5, $0C, nB4, $0C, nC5, $0C, nB4
	dc.b	$0C, nA4, $18, nRst, $3C, nC5, $24, nG4, $0C, nA4, $0C, nC5
	dc.b	$0C, nD5, $0C, nB4, $0C, nD5, $0C, nC5, $12, nRst, $2A
	smpsJump	snd_sng_menu_FM4	
	
; FM5 Data
snd_sng_menu_FM5:
	;smpsPan             panRight, $00
	smpsAlterNote       $FD
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nRst, $0C
	smpsJump	snd_sng_menu_FM2INIT	

; PSG1 Data
snd_sng_menu_PSG1:
	dc.b	nRst, $7F, nRst, $7F, nRst, $22, nA2, $06, nG2, $06, nF2, $06, nE2, $06
	dc.b	nA2, $06, nG2, $06, nF2, $06, nE2, $06, nB2, $06, nA2, $06
	dc.b	nG2, $06, nF2, $06, nG2, $06, nF2, $06, nE2, $06, nD2, $06
	dc.b	nRst, $7F, nRst, $7F, nRst, $22, nA2, $06, nG2, $06, nF2, $06, nE2, $06
	dc.b	nA2, $06, nG2, $06, nF2, $06, nE2, $06, nB2, $06, nA2, $06
	dc.b	nG2, $06, nF2, $06, nG2, $06, nA2, $06, nB2, $06, nD3, $06
	dc.b	nRst, $7F, nRst, $1D, nE3, $06, nD3, $06, nC3, $06, nRst, $06, nA2
	dc.b	$06, nRst, $7F, nRst, $23, nE3, $06, nD3, $06, nC3, $06, nRst, $06
	dc.b	nA2, $06, nRst, $7F, nRst, $23, nE3, $06, nD3, $06, nC3, $06
	dc.b	nRst, $06, nA2, $06, nRst, $7F, nRst, $23, nF3, $06, nD3, $06, nE3, $06
	dc.b	nRst, $06, nC3, $06, nRst, $06
	smpsJump	snd_sng_menu_PSG1

; PSG2 Data
snd_sng_menu_PSG2:
	dc.b	nRst, $0C
	smpsJump	snd_sng_menu_PSG1

; PSG3 Data
snd_sng_menu_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $0C, (nMaxPSG2-$23)&$FF, $18, $18, $18, $06, $12
	dc.b	$18, $18, $18, $06, $12, $18
	dc.b	$18, $18, $06, $12, $18, $18
	dc.b	$18, $06, $12, $18, $18, $18
	dc.b	$06, $12, $18, $18, $18, $06
	dc.b	$12, $18, $18, $18, $06, $12
	dc.b	$18, $18, $18, $06, $12, $18
	dc.b	$06, $12, $18, $18, $18, $06
	dc.b	$12, $18, $18, $18, $06, $12
	dc.b	$18, $18, $18, $06, $12, $18
	dc.b	$18, $18, $06, $12, $18, $18
	dc.b	$18, $06, $12, $18, $18, $18
	dc.b	$06, $12, $18, $18, $18, $06
	dc.b	$12, $18, $0C
	smpsJump	snd_sng_menu_PSG3

snd_sng_menu_Voices:
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
