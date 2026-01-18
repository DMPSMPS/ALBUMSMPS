snd_sng_worldmap_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_worldmap_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $73

	smpsHeaderDAC       snd_sng_worldmap_DAC
	smpsHeaderFM        snd_sng_worldmap_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_worldmap_FM2,	$0C, $13
	smpsHeaderFM        snd_sng_worldmap_FM3,	$0C, $1B
	smpsHeaderFM        snd_sng_worldmap_FM4,	$00, $13
	smpsHeaderFM        snd_sng_worldmap_FM5,	$00, $16
	smpsHeaderPSG       snd_sng_worldmap_PSG1,	$18, $01, $00, sTone_06
	smpsHeaderPSG       snd_sng_worldmap_PSG2,	$18, $04, $00, sTone_04
	smpsHeaderPSG       snd_sng_worldmap_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_worldmap_DAC:
	dc.b	$86, $0C, dSnareS3, $0C, $86, $06, $86, $06, dSnareS3, $0C, $86, $0C
	dc.b	dSnareS3, $0C, $86, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, $86, $06
	dc.b	$86, $06, dSnareS3, $06, $86, $0C, $86, $06, dSnareS3, $06, $86, $06
	dc.b	dSnareS3, $06, $86, $06, $86, $06, dSnareS3, $06, $86, $06, dSnareS3, $06
	dc.b	$90, $06, $93, $06, $86, $0C, dSnareS3, $0C, $86, $06, $86, $06
	dc.b	dSnareS3, $06, $86, $0C, $86, $06, dSnareS3, $0C, $86, $06, dSnareS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, $86, $06, $86, $06, dSnareS3, $06, $86, $0C
	dc.b	$86, $06, dSnareS3, $06, $86, $06, dSnareS3, $06, $86, $06, $86, $06
	dc.b	dSnareS3, $06, $86, $06, dSnareS3, $06, $90, $06, $93, $06, $86, $06
	dc.b	$86, $06, dSnareS3, $06, $86, $0C, $86, $06, $90, $06, $93, $06
	dc.b	$86, $06, $86, $06, dSnareS3, $06, $86, $0C, $86, $06, $90, $06
	dc.b	$93, $06, dSnareS3, $06, $86, $06, $86, $06, dSnareS3, $06, $86, $06
	dc.b	$86, $06, dSnareS3, $06, $86, $06, dSnareS3, $06, dSnareS3, $06, $86, $06
	dc.b	dSnareS3, $06, $86, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	smpsJump	snd_sng_worldmap_DAC

; FM1 Data
snd_sng_worldmap_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $03
	dc.b	nD3, $0C, nA2, $06, nD3, $06, nRst, $06, nD3, $06, nA2, $06
	dc.b	nD3, $06, nRst, $06, nD3, $06, nA2, $06, nD3, $06, nA3, $03
	dc.b	nD3, $03, nE3, $06, nFs3, $06, nD3, $06, nC3, $0C, nG3, $06
	dc.b	nC3, $06, nRst, $06, nC3, $06, nG2, $06, nC3, $09, nRst, $03
	dc.b	nC3, $06, nD3, $03, nRst, $03, nD3, $06, nE3, $03, nRst, $03
	dc.b	nE3, $06, nFs3, $06, nG3, $06, nD3, $0C, nA2, $06, nD3, $06
	dc.b	nRst, $06, nD3, $06, nA2, $06, nD3, $06, nRst, $06, nD3, $06
	dc.b	nA2, $06, nD3, $06, nA3, $03, nD3, $03, nE3, $06, nFs3, $06
	dc.b	nD3, $06, nC3, $0C, nG3, $06, nC3, $06, nRst, $06, nC3, $06
	dc.b	nG2, $06, nC3, $06, nB2, $06, nD3, $06, nG3, $06, nD3, $06
	dc.b	nCs3, $03, nG3, $03, nC3, $06, nBb2, $06, nA2, $06, nG2, $03
	dc.b	nRst, $03, nG3, $06, nD3, $06, nG2, $08, nRst, $04, nG2, $06
	dc.b	nA2, $06, nB2, $06, nA2, $03, nRst, $03, nA2, $06, nE3, $06
	dc.b	nA2, $08, nRst, $04, nE3, $03, nA3, $03, nD3, $06, nCs3, $06
	dc.b	nC3, $03, nRst, $03, nG2, $0B, nRst, $01, nG3, $06, nF3, $03
	dc.b	nG3, $03, nE3, $06, nD3, $06, nC3, $06, nD3, $06, nA3, $05
	dc.b	nRst, $07, nA2, $06, nB2, $06, nRst, $06, nCs3, $06, nE3, $06
	smpsJump	snd_sng_worldmap_FM1

; FM2 Data
snd_sng_worldmap_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nA3, $05, nRst, $01, nA3, $06, nG3, $06, nD3, $06, nRst, $06
	dc.b	nE3, $06, nRst, $06, nFs3, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nA3, $0C, nG3, $06, nFs3, $06, nD3, $06, nG3, $51, nRst, $0F
	dc.b	nA3, $05, nRst, $01, nA3, $06, nG3, $06, nD3, $06, nRst, $06
	dc.b	nE3, $06, nRst, $06, nFs3, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nA3, $0C, nG3, $06, nFs3, $06, nD3, $06, nC4, $21, nRst, $03
	dc.b	nC4, $0C, nB3, $18, nA3, $12, nRst, $06, nB3, $12, nG3, $0C
	dc.b	nRst, $06, nD4, $0C, nCs4, $12, nA3, $18, nRst, $06, nC4, $12
	dc.b	nG3, $0C, nRst, $06, nE4, $0C, nD4, $06, nRst, $06, nA3, $06
	dc.b	nRst, $06, nFs4, $05, nRst, $01, nFs4, $05, nRst, $01, nFs4, $05
	dc.b	nRst, $07
	smpsJump	snd_sng_worldmap_FM2


; FM3 Data
snd_sng_worldmap_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	smpsAlterNote	    $FD
	dc.b	nRst, $06
	smpsJump	snd_sng_worldmap_FM2


; FM4 Data
snd_sng_worldmap_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	smpsChangeTransposition		$F4
	dc.b	nFs5, $05, nRst, $01, nFs5, $06, nE5, $06, nA4, $06, nRst, $06
	dc.b	nCs5, $06, nRst, $06, nD5, $06, nRst, $06, nE5, $06, nRst, $06
	dc.b	nFs5, $0C, nE5, $06, nD5, $06, nA4, $06
	smpsChangeTransposition		$0C
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	dc.b	nC4, $18, nD4, $18, nE4, $12, nFs4, $12, nG4, $0C
	smpsChangeTransposition		$F4
	smpsSetvoice        $01
	smpsFMAlterVol      -$03
	dc.b	nFs5, $05, nRst, $01, nFs5, $06, nE5, $06, nA4, $06, nRst, $06
	dc.b	nCs5, $06, nRst, $06, nD5, $06, nRst, $06, nE5, $06, nRst, $06
	dc.b	nFs5, $0C, nE5, $06, nD5, $06, nA4, $06
	smpsChangeTransposition		$0C
	smpsSetvoice        $02
	smpsFMAlterVol      $03
	dc.b	nG4, $12, nA4, $12, nFs4, $0C, nG4, $18, nA4, $0C, nRst, $0C
	dc.b	nG4, $12, nD4, $0C, nRst, $06, nB4, $0C, nA4, $12, nE4, $18
	dc.b	nRst, $06, nG4, $12, nE4, $0C, nRst, $06, nC5, $0C, nA4, $06
	dc.b	nRst, $06, nFs4, $06, nRst, $06, nA4, $05, nRst, $01, nA4, $05
	dc.b	nRst, $01, nA4, $05, nRst, $07
	smpsFMAlterVol      -$03
	smpsJump	snd_sng_worldmap_FM4

; FM5 Data
snd_sng_worldmap_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	dc.b	nRst, $60, nG3, $18, nB3, $18, nC4, $12, nD4, $12, nE4, $0C
	dc.b	nRst, $60, nE4, $12, nD4, $12, nC4, $0C, nD4, $18, nRst, $0C
	dc.b	nD4, $0C, nRst, $7F, nRst, $41
	smpsJump	snd_sng_worldmap_FM5


; PSG1 Data
snd_sng_worldmap_PSG1:
	dc.b	nRst, $7F, nRst, $11, nG1, $03, nC2, $03, nE2, $03, nG2, $03, nC2
	dc.b	$03, nE2, $03, nG2, $03, nC3, $03, nE2, $03, nG2, $03, nC3
	dc.b	$03, nE3, $03, nG2, $03, nC3, $03, nE3, $03, nG3, $03
	dc.b	nRst, $7F, nRst, $11, nB1, $03, nD2, $03, nG2, $03, nB2, $03, nD2, $03
	dc.b	nG2, $03, nB2, $03, nD3, $03, nG2, $03, nB2, $03, nD3, $03
	dc.b	nG3, $03, nEb3, $03, nD3, $03, nCs3, $03, nC3, $03, nG2, $03
	dc.b	nD2, $03, nB1, $03, nG2, $03, nB2, $03, nD2, $03, nG2, $03
	dc.b	nB1, $03, nD2, $03, nG2, $03, nB2, $03, nB1, $03, nD2, $03
	dc.b	nB2, $03, nG2, $03, nD2, $03, nA2, $03, nE2, $03, nCs2, $03
	dc.b	nA2, $03, nCs3, $03, nE2, $03, nA2, $03, nCs2, $03, nE2, $03
	dc.b	nA2, $03, nCs3, $03, nCs2, $03, nE2, $03, nCs3, $03, nA2, $03
	dc.b	nE2, $03, nG2, $03, nE2, $03, nC2, $03, nG2, $03, nC3, $03
	dc.b	nE2, $03, nG2, $03, nC2, $03, nE2, $03, nG2, $03, nC3, $03
	dc.b	nC2, $03, nE2, $03, nC3, $03, nG2, $03, nE2, $03, nA2, $03
	dc.b	nFs2, $03, nD2, $03, nA2, $03, nD3, $03, nFs2, $03, nA2, $03
	dc.b	nD2, $03, nFs2, $03, nA2, $03, nD3, $03, nA2, $03, nFs2, $03
	dc.b	nA2, $03, nD3, $03, nFs3, $03
	smpsJump	snd_sng_worldmap_PSG1

; PSG2 Data
snd_sng_worldmap_PSG2:
	dc.b	nRst, $06
	smpsJump	snd_sng_worldmap_PSG1

; PSG3 Data
snd_sng_worldmap_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $06, $0C, $06, $06, $0C
	dc.b	$0C, $0C, $06, $06, $0C, $0C
	dc.b	$0C, $06, $06, $06, $0C, $06
	dc.b	$0C, $06, $06, $06, $0C, $06
	dc.b	$0C, $06, $06, $0C, $0C, $0C
	dc.b	$06, $06, $0C, $0C, $0C, $06
	dc.b	$06, $06, $0C, $06, $0C, $06
	dc.b	$06, $06, $06, $06, $06, $0C
	dc.b	$06, $0C, $06, $06, $06, $0C
	dc.b	$0C, $06, $06, $06, $06, $0C
	dc.b	$0C, $0C, $0C, $06, $06, $0C
	dc.b	$06
	smpsJump	snd_sng_worldmap_PSG3

snd_sng_worldmap_Voices:
;	Voice $00
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

;	Voice $03
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
