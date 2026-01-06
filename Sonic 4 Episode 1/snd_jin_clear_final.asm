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
	smpsHeaderPSG       snd_jin_clear_final_PSG1,	$0C, $05, $00, sTone_11
	smpsHeaderPSG       snd_jin_clear_final_PSG2,	$0C, $06, $00, sTone_11
	smpsHeaderPSG       snd_jin_clear_final_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_jin_clear_final_DAC:
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
	smpsSetvoice        $00
	dc.b	nRst, $30, nG2, $06, nG3, $06, nG2, $06, nG3, $06, nG2, $06
	dc.b	nG3, $06, nG2, $06, nG3, $06, nF2, $06, nF3, $06, nF2, $06
	dc.b	nF3, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06, nE2, $06
	dc.b	nE3, $06, nE2, $06, nE3, $06, nE2, $06, nE3, $06, nE2, $06
	dc.b	nE3, $06, nEb2, $06, nEb3, $06, nEb2, $06, nEb3, $06, nEb2, $06
	dc.b	nEb3, $06, nF2, $06, nF3, $06, nG2, $06, nG3, $06, nG2, $06
	dc.b	nG3, $06, nG2, $06, nG3, $06, nG2, $06, nG3, $06, nF2, $06
	dc.b	nF3, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06, nF2, $06
	dc.b	nF3, $06, nE2, $06, nE3, $06, nE2, $06, nE3, $06, nE2, $06
	dc.b	nE3, $06, nE2, $06, nE3, $06, nEb2, $06, nEb3, $06, nEb2, $06
	dc.b	nEb3, $06, nEb2, $06, nEb3, $06, nF2, $06, nF3, $06, nC2, $06
	dc.b	nC3, $06, nC2, $06, nD2, $0C, nD3, $06, nD2, $06, nEb2, $0C
	dc.b	nEb3, $06, nEb2, $06, nEb3, $06, nF2, $06, nRst, $06, nF3, $06
	dc.b	nG2, $36, nRst, $30
	smpsStop

; FM2 Data
snd_jin_clear_final_FM2:
	smpsSetvoice        $01
	dc.b	nRst, $30, nG4, $06, nRst, $03, nG4, $03, nA4, $03, nRst, $03
	dc.b	nC5, $06, nRst, $06, nB4, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nA4, $06, nB4, $06, nG4, $1B, nRst, $03, nG4, $06, nRst, $03
	dc.b	nG4, $03, nA4, $03, nRst, $03, nG4, $06, nRst, $06, nB4, $06
	dc.b	nRst, $06
	;smpsAlterVol        $05
	dc.b	nG4, $09, nRst, $03, nG4, $03, nRst, $03, nA4, $15, nRst, $03
	dc.b	nG4, $06, nRst, $06
	;smpsAlterVol        $FB
	dc.b	nG4, $06, nRst, $03, nG4, $03, nA4, $03, nRst, $03, nC5, $06
	dc.b	nRst, $06, nB4, $06, nRst, $06, nA4, $06, nRst, $06, nA4, $06
	dc.b	nB4, $06, nG4, $1B, nRst, $03, nG4, $06, nRst, $03, nG4, $03
	dc.b	nA4, $03, nRst, $03, nG4, $06, nRst, $06, nB4, $06, nRst, $06
	;smpsAlterVol        $05
	dc.b	nG4, $09, nRst, $03, nG4, $03, nRst, $03, nA4, $15, nRst, $03
	dc.b	nG4, $0C, nE4, $06, nFs4, $06, nG4, $06, nC5, $0C, nB4, $0C
	dc.b	nA4, $09, nRst, $03, nA4, $06, nG4, $0C, nBb4, $06, nA4, $06
	dc.b	nRst, $06, nG4, $36, nRst, $30
	smpsStop

; FM3 Data
snd_jin_clear_final_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
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
	smpsStop

; FM4 Data
snd_jin_clear_final_FM4:
	smpsSetvoice        $02
	dc.b	nRst, $30, nD4, $0F, nRst, $03, nD4, $06, nRst, $06, nD4, $06
	dc.b	nRst, $06, nF4, $06, nRst, $06, nF4, $06, nRst, $06, nF4, $0C
	dc.b	nE4, $06, nD4, $06, nC4, $06, nE4, $0F, nRst, $03, nG4, $06
	dc.b	nRst, $06, nG4, $06, nRst, $06
	;smpsAlterVol        $05
	dc.b	nE4, $09, nRst, $03, nG4, $03, nRst, $03, nEb4, $18, nC4, $0C
	;smpsAlterVol        $FB
	dc.b	nD4, $0F, nRst, $03, nD4, $06, nRst, $06, nD4, $06, nRst, $06
	dc.b	nF4, $06, nRst, $06, nF4, $06, nRst, $06, nF4, $0C, nE4, $06
	dc.b	nD4, $06, nC4, $06, nE4, $0F, nRst, $03, nG4, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06
	;smpsAlterVol        $05
	dc.b	nE4, $09, nRst, $03, nG4, $03, nRst, $03, nEb4, $18, nC4, $0C
	dc.b	nE4, $12, nFs4, $18, nEb4, $09, nRst, $03, nEb4, $06, nEb4, $0C
	dc.b	nF4, $06, nF4, $06, nRst, $06, nD4, $36, nRst, $30
	smpsStop

; FM5 Data
snd_jin_clear_final_FM5:
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
	smpsStop

; PSG1 Data
snd_jin_clear_final_PSG1:
	dc.b	nRst, $36, nG1, $06, nRst, $03, nG1, $03, nA1, $03, nRst, $03
	dc.b	nC2, $06, nRst, $06, nB1, $06, nRst, $06, nA1, $06, nRst, $06
	dc.b	nA1, $06, nB1, $06, nG1, $1B, nRst, $03, nG1, $06, nRst, $03
	dc.b	nG1, $03, nA1, $03, nRst, $03, nC2, $06, nRst, $06, nB1, $06
	dc.b	nRst, $06
	;smpsPSGAlterVol     $01
	dc.b	nG1, $09, nRst, $03, nG1, $03, nRst, $03, nA1, $15, nRst, $03
	dc.b	nG1, $06, nRst, $06
	;smpsPSGAlterVol     $FF
	dc.b	nG1, $06, nRst, $03, nG1, $03, nA1, $03, nRst, $03, nC2, $06
	dc.b	nRst, $06, nB1, $06, nRst, $06, nA1, $06, nRst, $06, nA1, $06
	dc.b	nB1, $06, nG1, $1B, nRst, $03, nG1, $06, nRst, $03, nG1, $03
	dc.b	nA1, $03, nRst, $03, nC2, $06, nRst, $06, nB1, $06, nRst, $06
	;smpsPSGAlterVol     $01
	dc.b	nG1, $09, nRst, $03, nG1, $03, nRst, $03, nA1, $15, nRst, $03
	dc.b	nG1, $0C, nE1, $06, nFs1, $06, nG1, $06, nC2, $0C, nB1, $0C
	dc.b	nA1, $09, nRst, $03, nA1, $06, nG1, $0C, nBb1, $06, nA1, $06
	dc.b	nRst, $06, nG1, $36, nRst, $2A
	smpsStop

; PSG2 Data
snd_jin_clear_final_PSG2:
	dc.b	nRst, $3C, nG1, $06, nRst, $03, nG1, $03, nA1, $03, nRst, $03
	dc.b	nC2, $06, nRst, $06, nB1, $06, nRst, $06, nA1, $06, nRst, $06
	dc.b	nA1, $06, nB1, $06, nG1, $1B, nRst, $03, nG1, $06, nRst, $03
	dc.b	nG1, $03, nA1, $03, nRst, $03, nC2, $06, nRst, $06, nB1, $06
	dc.b	nRst, $06
	;smpsPSGAlterVol     $01
	dc.b	nG1, $09, nRst, $03, nG1, $03, nRst, $03, nA1, $15, nRst, $03
	dc.b	nG1, $06, nRst, $06
	;smpsPSGAlterVol     $FF
	dc.b	nG1, $06, nRst, $03, nG1, $03, nA1, $03, nRst, $03, nC2, $06
	dc.b	nRst, $06, nB1, $06, nRst, $06, nA1, $06, nRst, $06, nA1, $06
	dc.b	nB1, $06, nG1, $1B, nRst, $03, nG1, $06, nRst, $03, nG1, $03
	dc.b	nA1, $03, nRst, $03, nC2, $06, nRst, $06, nB1, $06, nRst, $06
	;smpsPSGAlterVol     $01
	dc.b	nG1, $09, nRst, $03, nG1, $03, nRst, $03, nA1, $15, nRst, $03
	dc.b	nG1, $0C, nE1, $06, nFs1, $06, nG1, $06, nC2, $0C, nB1, $0C
	dc.b	nA1, $09, nRst, $03, nA1, $06, nG1, $0C, nBb1, $06, nA1, $06
	dc.b	nRst, $06, nG1, $36, nRst, $24
	smpsStop

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
;	$15
;	$71, $72, $01, $31, 	$0F, $14, $14, $14, 	$00, $05, $02, $02
;	$00, $00, $00, $00, 	$0F, $1F, $1F, $1F, 	$2D, $14, $14, $14
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
	smpsVcTotalLevel    $14, $14, $14, $2D

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
