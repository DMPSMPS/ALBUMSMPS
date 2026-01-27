snd_sng_title_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_title_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $1F

	smpsHeaderDAC       snd_sng_title_DAC
	smpsHeaderFM        snd_sng_title_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_title_FM2,	$F4, $13
	smpsHeaderFM        snd_sng_title_FM3,	$00, $13
	smpsHeaderFM        snd_sng_title_FM4,	$F4, $1E
	smpsHeaderFM        snd_sng_title_FM5,	$24, $18
	smpsHeaderPSG       snd_sng_title_PSG1,	$E8, $03, $00, sTone_0A
	smpsHeaderPSG       snd_sng_title_PSG2,	$E8, $03, $00, sTone_17
	smpsHeaderPSG       snd_sng_title_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_title_DAC:
	dc.b	dSnareS3, $0C, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06
	dc.b	dKickS3, $12, dSnareS3, $06, dSnareS3, $06, dKickS3, $3C
	smpsStop

; FM1 Data
snd_sng_title_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nRst, $30, nD3, $0F, nRst, $03, nD3, $06, nA2, $0C, nD3, $0F
	dc.b	nRst, $09, nD3, $0C, nA2, $06, nA3, $06, nD3, $06, nD4, $06
	dc.b	nG4, $06, nC3, $06, nC4, $06, nG3, $06, nG2, $06, nRst, $06
	dc.b	nG3, $06, nG2, $06, nC3, $06, nRst, $06, nC3, $06, nC4, $06
	dc.b	nG2, $06, nG3, $06, nC3, $06, nC4, $06, nB2, $0F, nRst, $03
	dc.b	nB2, $06, nFs2, $0C, nB2, $0F, nRst, $09, nB2, $0C, nFs2, $06
	dc.b	nFs3, $06, nB2, $06, nB3, $06, nE4, $06, nA4, $06, nA3, $06
	dc.b	nE3, $06, nA3, $06, nRst, $06, nE3, $06, nE2, $06, nA2, $06
	dc.b	nRst, $06, nA2, $06, nA3, $06, nCs3, $06, nD3, $06, nEb3, $06
	dc.b	nE3, $06, nD3, $0F, nRst, $03, nD3, $06, nA2, $0C, nD3, $0F
	dc.b	nRst, $09, nD3, $0C, nA2, $06, nA3, $06, nD3, $06, nD4, $06
	dc.b	nG4, $06, nC3, $06, nC4, $06, nG3, $06, nG2, $06, nRst, $06
	dc.b	nG3, $06, nG2, $06, nC3, $06, nRst, $06, nC3, $06, nC4, $06
	dc.b	nG2, $06, nG3, $06, nC3, $06, nC4, $06, nB2, $0F, nRst, $03
	dc.b	nB2, $06, nFs2, $0C, nB2, $0F, nRst, $09, nB2, $0C, nFs2, $06
	dc.b	nFs3, $06, nB2, $06, nB3, $06, nE4, $06, nA4, $06, nA3, $06
	dc.b	nE3, $06, nA3, $06, nRst, $06, nE3, $06, nE2, $06, nA2, $06
	dc.b	nE3, $06, nG3, $06, nA3, $06, nE4, $06, nA4, $06, nD3, $18
	smpsStop

; FM2 Data
snd_sng_title_FM2:
	smpsModSet          $07, $01, $03, $05
	;smpsPan             panLeft, $00
	smpsSetvoice        $01
snd_sng_title_FM2INIT:
	dc.b	nRst, $30, nD5, $0C, nRst, $06, nD5, $06, nE5, $06, nRst, $06
	dc.b	nG5, $0C, nRst, $0C, nFs5, $0C, nRst, $0C, nE5, $0C, nRst, $0C
	dc.b	nE5, $0C, nFs5, $0C, nD5, $36, nRst, $06, nD5, $0C, nRst, $06
	dc.b	nD5, $06, nE5, $06, nRst, $06, nG5, $0C, nRst, $0C, nFs5, $0C
	dc.b	nRst, $0C, nE5, $54, nRst, $18, nD5, $0C, nRst, $06, nD5, $06
	dc.b	nE5, $06, nRst, $06, nG5, $0C, nRst, $0C, nFs5, $0C, nRst, $0C
	dc.b	nE5, $0C, nRst, $0C, nE5, $0C, nFs5, $0C, nD5, $36, nRst, $06
	dc.b	nD5, $0C, nRst, $06, nD5, $06, nE5, $06, nRst, $06, nG5, $0C
	dc.b	nRst, $0C, nFs5, $0C, nRst, $0C, nE5, $1E, nRst, $06, nE5, $15
	dc.b	nRst, $03, nE5, $06, nRst, $06, nG5, $09, nRst, $0F, nFs5, $18
	smpsStop

; FM3 Data
snd_sng_title_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $04
	dc.b	nRst, $30, nRst, $18, nRst, $18, nRst, $0C, nRst, $18, nRst, $15
	dc.b	nRst, $03, nRst, $0C, nRst, $15, nRst, $03
	smpsPan             panLeft, $00
	smpsAlterVol        $F6
	dc.b	nC6, $03, nRst, $03
	smpsPan             panRight, $00
	dc.b	nC6, $03, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nB5, $03, nRst, $03
	smpsPan             panRight, $00
	dc.b	nB5, $03, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nA5, $03, nRst, $03
	smpsPan             panRight, $00
	dc.b	nA5, $03, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nG5, $03, nRst, $03
	smpsPan             panRight, $00
	dc.b	nG5, $03, nRst, $03
	smpsPan             panCenter, $00
	smpsAlterVol        $0A
	dc.b	nRst, $18, nRst, $0C
	smpsSetvoice        $01
	smpsChangeTransposition		$F4	
	dc.b	nD5, $0C, nRst, $0C
	dc.b	nD5, $0C, nRst, $0C, nCs5, $54, nRst, $18
	smpsSetvoice        $04
	smpsChangeTransposition		$0C
	dc.b	nRst, $18, nRst, $18, nRst, $0C, nRst, $18, nRst, $15, nRst, $03
	dc.b	nRst, $0C, nRst, $15, nRst, $03
	smpsPan             panLeft, $00
	smpsAlterVol        $F6
	dc.b	nC6, $03, nRst, $03
	smpsPan             panRight, $00
	dc.b	nC6, $03, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nB5, $03, nRst, $03
	smpsPan             panRight, $00
	dc.b	nB5, $03, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nA5, $03, nRst, $03
	smpsPan             panRight, $00
	dc.b	nA5, $03, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nG5, $03, nRst, $03
	smpsPan             panRight, $00
	dc.b	nG5, $03, nRst, $03
	smpsPan             panCenter, $00
	smpsAlterVol        $0A
	dc.b	nRst, $18, nRst, $0C
	smpsSetvoice        $01
	smpsChangeTransposition		$F4	
	dc.b	nD5, $0C, nRst, $0C
	dc.b	nD5, $0C, nRst, $0C, nCs5, $24, nRst, $24, nE5, $09, nRst, $0F
	dc.b	nD5, $18
	smpsStop

; FM4 Data
snd_sng_title_FM4:
	smpsSetvoice        $03
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $FD
	;smpsPan             panRight, $00
	dc.b	nRst, $0C
	smpsJump	snd_sng_title_FM2INIT
	
; FM5 Data
snd_sng_title_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	;smpsPan             panRight, $00
	dc.b	nRst, $30, nA1, $1E, nRst, $06, nA1, $0C, nRst, $0C, nA1, $0C
	dc.b	nRst, $0C, nC2, $0C, nRst, $0C, nC2, $0C, nRst, $0C, nC2, $18
	dc.b	nB1, $0C, nA1, $0C, nG1, $0C, nB1, $1E, nRst, $06, nB1, $0C
	dc.b	nRst, $0C, nB1, $0C, nRst, $0C, nA1, $54, nRst, $18, nA1, $1E
	dc.b	nRst, $06, nA1, $0C, nRst, $0C, nA1, $0C, nRst, $0C, nC2, $0C
	dc.b	nRst, $0C, nC2, $0C, nRst, $0C, nC2, $18, nB1, $0C, nA1, $0C
	dc.b	nG1, $0C, nB1, $1E, nRst, $06, nB1, $0C, nRst, $0C, nB1, $0C
	dc.b	nRst, $0C, nA1, $21, nRst, $03, nB1, $18, nCs2, $06, nRst, $06
	dc.b	nCs2, $09, nRst, $0F, nA1, $18
	smpsStop

; PSG1 Data
snd_sng_title_PSG1:
	smpsAlterNote		$FF
	dc.b	nRst, $30, nD5, $18, nG5, $18, nD5, $0C, nA5, $18, nD5, $15
	dc.b	nRst, $03, nD5, $0C, nC6, $15, nRst, $03, nRst, $06
	smpsAlterVol        $FC
	dc.b	nC6, $03, nRst, $09, nB5, $03, nRst, $09, nA5, $03, nRst, $09
	dc.b	nG5, $03, nRst, $03
	smpsAlterVol        $04
	dc.b	nD5, $18, nG5, $18, nA5, $18, nRst, $06
	smpsAlterVol        $FC
	dc.b	nA5, $06, nRst, $06, nCs5, $06, nRst, $06, nE4, $06, nRst, $06
	dc.b	nE5, $06, nRst, $06, nA4, $06, nRst, $06, nA5, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nA5, $06, nBb5, $06, nB5, $06, nC6, $06
	dc.b	nCs6, $06
	smpsAlterVol        $04
	dc.b	nD5, $18, nG5, $18, nD5, $0C, nA5, $18, nD5, $15, nRst, $03
	dc.b	nD5, $0C, nC6, $15, nRst, $03, nRst, $06
	smpsAlterVol        $FC
	dc.b	nC6, $03, nRst, $09, nB5, $03, nRst, $09, nA5, $03, nRst, $09
	dc.b	nG5, $03, nRst, $03
	smpsAlterVol        $04
	dc.b	nD5, $18, nG5, $18, nA5, $18, nRst, $06
	smpsAlterVol        $FC
	dc.b	nA5, $06, nRst, $06, nCs5, $06, nRst, $06, nE4, $06, nRst, $06
	dc.b	nE5, $06, nRst, $06, nCs5, $06, nRst, $06, nE4, $06, nE5, $06
	dc.b	nA5, $06, nBb5, $06, nB5, $06, nC6, $06, nCs6, $06, nD6, $0C
	smpsStop

; PSG2 Data
snd_sng_title_PSG2:
	dc.b	nRst, $01
	dc.b	nRst, $02, nRst, $2D, nD5, $18, nG5, $18, nD5, $0C, nA5, $18, nD5, $15
	dc.b	nRst, $03, nD5, $0C, nC6, $15, nRst, $03
	;smpsAlterVol        $FC
	dc.b	nC6, $03, nRst, $09, nB5, $03, nRst, $09, nA5, $03, nRst, $09
	dc.b	nG5, $03, nRst, $09
	;smpsAlterVol        $04
	dc.b	nD5, $18, nG5, $18, nA5, $18
	;smpsAlterVol        $FC
	dc.b	nD6, $06, nRst, $06, nE5, $06, nRst, $06, nA3, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nCs4, $06, nRst, $06, nCs5, $06, nRst, $06
	dc.b	nE4, $06, nRst, $06, nE5, $06, nRst, $06, nFs5, $06, nG5, $06
	dc.b	nAb5, $06, nA5, $06
	;smpsAlterVol        $04
	dc.b	nD5, $18, nG5, $18, nD5, $0C, nA5, $18, nD5, $15, nRst, $03
	dc.b	nD5, $0C, nC6, $15, nRst, $03
	;smpsAlterVol        $FC
	dc.b	nC6, $03, nRst, $09, nB5, $03, nRst, $09, nA5, $03, nRst, $09
	dc.b	nG5, $03, nRst, $09
	;smpsAlterVol        $04
	dc.b	nD5, $18, nG5, $18, nA5, $18
	;smpsAlterVol        $FC
	dc.b	nD6, $06, nRst, $06, nE5, $06, nRst, $06, nA3, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nCs4, $06, nRst, $06, nA5, $06, nRst, $06
	dc.b	nE5, $06, nA5, $06, nFs5, $06, nG5, $06, nAb5, $06, nA5, $06
	dc.b	nFs5, $0C
	smpsStop

; PSG3 Data
snd_sng_title_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $06, $06, $06, $0C
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
	dc.b	$06, $0C, $06, $0C, $06, $06
	dc.b	$0C, $0C, $0C, $0C, $06, $0C
	dc.b	$06, $0C
	smpsStop

snd_sng_title_Voices:
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
;	$3E
;	$12, $15, $21, $12, 	$0F, $14, $14, $12, 	$05, $05, $05, $0A
;	$00, $00, $00, $00, 	$11, $22, $22, $22, 	$00, $00, $F9, $19
	smpsVcAlgorithm     $06
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
	smpsVcTotalLevel    $00, $00, $F9, $19

;	Voice $02
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

;	Voice $03
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

;	Voice $04
;	$3A
;	$11, $11, $11, $11, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $11, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $01
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $11, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $17
