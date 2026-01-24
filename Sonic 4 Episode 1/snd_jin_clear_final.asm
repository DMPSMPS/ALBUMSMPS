snd_jin_clear_final_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_jin_clear_final_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $7F

	smpsHeaderDAC       snd_jin_clear_final_DAC
	smpsHeaderFM        snd_jin_clear_final_FM1,	$00, $0E
	smpsHeaderFM        snd_jin_clear_final_FM2,	$00, $13
	smpsHeaderFM        snd_jin_clear_final_FM3,	$00, $13
	smpsHeaderFM        snd_jin_clear_final_FM4,	$00, $13
	smpsHeaderFM        snd_jin_clear_final_FM5,	$00, $13
	smpsHeaderPSG       snd_jin_clear_final_PSG1,	$E8, $05, $00, sTone_11
	smpsHeaderPSG       snd_jin_clear_final_PSG2,	$E8, $06, $00, sTone_11
	smpsHeaderPSG       snd_jin_clear_final_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_jin_clear_final_DAC:
	;smpsPan             panCenter, $00
	dc.b	dSnareS3, $06, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $06, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $0C, dSnareS3, $06, dKickS3, $66
	smpsStop

; FM1 Data
snd_jin_clear_final_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nRst, $30, nG3, $06, nG4, $06, nG3, $06, nG4, $06, nG3, $06
	dc.b	nG4, $06, nG3, $06, nG4, $06, nF3, $06, nF4, $06, nF3, $06
	dc.b	nF4, $06, nF3, $06, nF4, $06, nF3, $06, nF4, $06, nE3, $06
	dc.b	nE4, $06, nE3, $06, nE4, $06, nE3, $06, nE4, $06, nE3, $06
	dc.b	nE4, $06, nEb3, $06, nEb4, $06, nEb3, $06, nEb4, $06, nEb3, $06
	dc.b	nEb4, $06, nF3, $06, nF4, $06, nG3, $06, nG4, $06, nG3, $06
	dc.b	nG4, $06, nG3, $06, nG4, $06, nG3, $06, nG4, $06, nF3, $06
	dc.b	nF4, $06, nF3, $06, nF4, $06, nF3, $06, nF4, $06, nF3, $06
	dc.b	nF4, $06, nE3, $06, nE4, $06, nE3, $06, nE4, $06, nE3, $06
	dc.b	nE4, $06, nE3, $06, nE4, $06, nEb3, $06, nEb4, $06, nEb3, $06
	dc.b	nEb4, $06, nEb3, $06, nEb4, $06, nF3, $06, nF4, $06, nC3, $06
	dc.b	nC4, $06, nC3, $06, nD3, $0C, nD4, $06, nD3, $06, nEb3, $0C
	dc.b	nEb4, $06, nEb3, $06, nEb4, $06, nF3, $06, nRst, $06, nF4, $06
	dc.b	nG3, $36, nRst, $30
	smpsSetvoice        $00
	;smpsPan             panCenter, $00
	smpsStop

; FM2 Data
snd_jin_clear_final_FM2:
	;smpsPan             panLeft, $00
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
snd_jin_clear_final_FM2INIT:
	dc.b	nRst, $30, nG4, $06, nRst, $03, nG4, $03, nA4, $03, nRst, $03
	dc.b	nC5, $06, nRst, $06, nB4, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nA4, $06, nB4, $06, nG4, $1B, nRst, $03, nG4, $06, nRst, $03
	dc.b	nG4, $03, nA4, $03, nRst, $03, nC5, $06, nRst, $06, nB4, $06
	dc.b	nRst, $06
	;smpsAlterVol        $05
	dc.b	nG4, $09, nRst, $03, nG4, $03, nRst, $03, nA4, $15, nRst, $03
	dc.b	nG4, $06, nRst, $06
	;smpsAlterVol        $FB
	dc.b	nG4, $06, nRst, $03, nG4, $03, nA4, $03, nRst, $03, nC5, $06
	dc.b	nRst, $06, nB4, $06, nRst, $06, nA4, $06, nRst, $06, nA4, $06
	dc.b	nB4, $06, nG4, $1B, nRst, $03, nG4, $06, nRst, $03, nG4, $03
	dc.b	nA4, $03, nRst, $03, nC5, $06, nRst, $06, nB4, $06, nRst, $06
	;smpsAlterVol        $05
	dc.b	nG4, $09, nRst, $03, nG4, $03, nRst, $03, nA4, $15, nRst, $03
	dc.b	nG4, $0C, nE4, $06, nFs4, $06, nG4, $06, nC5, $0C, nB4, $0C
	dc.b	nA4, $09, nRst, $03, nA4, $06, nG4, $0C, nBb4, $06, nA4, $06
	dc.b	nRst, $06, nG4, $36, nRst, $30
	;smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM3 Data
snd_jin_clear_final_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $04
	smpsAlterNote       $FD
	smpsJump			snd_jin_clear_final_FM2INIT	

; FM4 Data
snd_jin_clear_final_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	;smpsPan             panLeft, $00
	dc.b	nRst, $30, nD4, $0F, nRst, $03, nD4, $06, nRst, $06, nD4, $06
	dc.b	nRst, $06, nF4, $06, nRst, $06, nF4, $06, nRst, $06, nF4, $0C
	dc.b	nE4, $06, nD4, $06, nC4, $06, nE4, $0F, nRst, $03, nE4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06
	;smpsAlterVol        $05
	dc.b	nE4, $09, nRst, $09, nEb4, $18, nC4, $0C
	smpsAlterVol        $FB
	dc.b	nD4, $0F, nRst, $03, nD4, $06, nRst, $06, nD4, $06, nRst, $06
	dc.b	nF4, $06, nRst, $06, nF4, $06, nRst, $06, nF4, $0C, nE4, $06
	dc.b	nD4, $06, nC4, $06, nE4, $0F, nRst, $03, nE4, $06, nRst, $06
	dc.b	nE4, $06, nRst, $06
	;smpsAlterVol        $05
	dc.b	nE4, $09, nRst, $09, nEb4, $18, nC4, $0C, nE4, $12, nFs4, $18
	dc.b	nEb4, $09, nRst, $03, nEb4, $06, nEb4, $0C, nF4, $06, nF4, $06
	dc.b	nRst, $06, nD4, $36, nRst, $30
	smpsStop

; FM5 Data
snd_jin_clear_final_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $03
	dc.b	nRst, $30, nD4, $0F, nRst, $03, nD4, $06, nRst, $06, nD4, $06
	dc.b	nRst, $06, nF4, $06, nRst, $06, nF4, $06, nRst, $06, nF4, $0C
	dc.b	nE4, $06, nD4, $06, nC4, $06, nE4, $0F, nRst, $03, nE4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06
	;smpsAlterVol        $05
	dc.b	nE4, $09, nRst, $09, nEb4, $18, nC4, $0C
	;smpsAlterVol        $FB
	dc.b	nD4, $0F, nRst, $03, nD4, $06, nRst, $06, nD4, $06, nRst, $06
	dc.b	nF4, $06, nRst, $06, nF4, $06, nRst, $06, nF4, $0C, nE4, $06
	dc.b	nD4, $06, nC4, $06, nE4, $0F, nRst, $03, nE4, $06, nRst, $06
	dc.b	nE4, $06, nRst, $06
	;smpsAlterVol        $05
	dc.b	nE4, $09, nRst, $09, nEb4, $18, nC4, $0C, nE4, $12, nFs4, $18
	dc.b	nEb4, $09, nRst, $03, nEb4, $03, nRst, $03, nEb4, $0C, nF4, $03
	dc.b	nRst, $03, nF4, $06, nRst, $06, nD4, $36, nRst, $30
	smpsSetvoice        $00
	;smpsPan             panCenter, $00
	smpsStop

; PSG1 Data
snd_jin_clear_final_PSG1:
	dc.b	nRst, $06
	smpsJump	snd_jin_clear_final_FM2INIT

; PSG2 Data
snd_jin_clear_final_PSG2:
	dc.b	nRst, $0C
	smpsJump	snd_jin_clear_final_FM2INIT
	

; PSG3 Data
snd_jin_clear_final_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $36, (nMaxPSG2-$23)&$FF, $06, $0C, $0C, $06, $0C
	dc.b	$0C, $0C, $06, $06, $0C, $06
	dc.b	$0C, $0C, $06, $0C, $0C, $0C
	dc.b	$06, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $0C, $0C, $06, $06
	dc.b	$0C, $06, $0C, $0C, $06, $0C
	dc.b	$0C, $0C, $06, $0C, $0C, $06
	dc.b	$0C, $0C, $0C, $0C, $0C, $06
	dc.b	$06, $66
	smpsStop

snd_jin_clear_final_Voices:
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
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $02, $02
	smpsVcReleaseRate   $0B, $0F, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $02
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

;	Voice $03
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
