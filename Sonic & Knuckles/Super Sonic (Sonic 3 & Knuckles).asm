Snd_Supersonic_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Supersonic_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_Supersonic_DAC
	smpsHeaderFM        Snd_Supersonic_FM1, $00, $0B
	smpsHeaderFM        Snd_Supersonic_FM2, $00, $17
	smpsHeaderFM        Snd_Supersonic_FM3, $00, $14
	smpsHeaderFM        Snd_Supersonic_FM4, $00, $17
	smpsHeaderFM        Snd_Supersonic_FM5, $00, $17
	smpsHeaderPSG       Snd_Supersonic_PSG1, $E8, $02, $00, sTone_11
	smpsHeaderPSG       Snd_Supersonic_PSG2, $E8, $04, $00, sTone_11
	smpsHeaderPSG       Snd_Supersonic_PSG3, $23, $00, $00, sTone_0F

; DAC Data
Snd_Supersonic_DAC:
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, $06, $06, dSnareS3, $0C, dKickS3, dSnareS3, dKickS3, $06
	dc.b	$06, dSnareS3, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, $06, $06, dSnareS3, $0C, dKickS3
	dc.b	dSnareS3, $06, dKickS3, $0C, dSnareS3, $06, $06, $06
	smpsCall            Snd_Supersonic_Call00
	smpsCall            Snd_Supersonic_Call00
	smpsJump            Snd_Supersonic_DAC

Snd_Supersonic_Call00:
	dc.b	dKickS3, $0C, dSnareS3
	smpsLoop            $00, $07, Snd_Supersonic_Call00
	dc.b	dKickS3, dSnareS3, $06, $06
	smpsLoop            $01, $04, Snd_Supersonic_Call00
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $06, $06, dKickS3, $0C, dSnareS3, dKickS3, $06
	dc.b	dSnareS3, dSnareS3, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $06, $06, dKickS3, dSnareS3
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, dKickS3, $0C, $0C, $06
	dc.b	$18, $0C, dSnareS3, $06, $06, $0C, dKickS3, $06, $0C, $0C, dSnareS3, $06
	dc.b	$18, dKickS3, $0C, dSnareS3, $06, $06, $06, $06
	smpsReturn

; FM1 Data
Snd_Supersonic_FM1:
	smpsAlterNote       $FC
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nE2, $0F, nRst, $03, nE2, $0C, nB1, $06, nE2, $0C, nD2, $0F
	dc.b	nRst, $03, nFs2, $0C, nA2, $06, nB2, $0C, nCs3, $0F, nRst, $03
	dc.b	nCs3, $0C, nA2, $06, nCs3, $0C, nB2, $06, nRst, nB2, nRst, nB2
	dc.b	nCs3, nB2, $0C
	smpsCall            Snd_Supersonic_Call01
	smpsCall            Snd_Supersonic_Call01
	smpsJump            Snd_Supersonic_FM1

Snd_Supersonic_Call01:
	dc.b	nA2, $06, nRst
	smpsCall            Snd_Supersonic_Call02
	dc.b	nE2, $06, nFs2, nAb2, nA2, nFs2, nAb2, nA2, nB2, nAb2, nA2, nB2, nCs3, nBb2, nC3, nCs3, nEb3, nA2
	dc.b	nRst
	smpsCall            Snd_Supersonic_Call02
	dc.b	nB2, $06, nA2, nAb2, nFs2, nCs3, nB2, nA2, nAb2, nE2, nFs2, nAb2, nFs2, nAb2, nA2, nBb2, nB2
	smpsLoop            $00, $02, Snd_Supersonic_Call01
	dc.b	nD2, nRst, nD2, nD2, nRst, nA2, nD2, $0C, nE2, $06, nRst, nE2
	dc.b	nE2, nRst, nB2, nE2, $0C, nFs2, $06, nRst, nFs2, nFs2, nRst, nA2
	dc.b	nFs2, $0C, nAb2, $06, nRst, nAb2, nAb2, nRst, nA2, nAb2, $0C
	smpsModSet          $01, $01, $06, $00
	dc.b	nG2, $60, smpsNoAttack, nG2
	smpsModSet          $07, $01, $03, $05
	smpsReturn

Snd_Supersonic_Call02:
	dc.b	nA2, nA2, $0C, nE2, $06, $0C, nD2, $06, nRst, nD2, nD2, $0C, nFs2, $06, $0C
	smpsReturn

; FM2 Data
Snd_Supersonic_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nE4, $0F, nRst, $03, nE4, $0C, nFs4, $06, nE4, $0C, nFs4, $0F
	dc.b	nRst, $03, nFs4, $0C, nAb4, $06, nFs4, $0C, nA4, $0F, nRst, $03
	dc.b	nA4, $0C, nB4, $06, nA4, $0C
	smpsAlterVol        $FC
	smpsPan             panLeft, $00
	dc.b	nB3, $06, nCs4, nD4, nE4
	smpsPan             panRight, $00
	dc.b	nFs4, nAb4, nA4, nB4
	smpsPan             panCenter, $00
	smpsAlterVol        $0B
Snd_Supersonic_Loop00:
	smpsCall            Snd_Supersonic_Call03
	smpsCall            Snd_Supersonic_Call04
	smpsLoop            $00, $02, Snd_Supersonic_Loop00
	smpsAlterVol        $F9
	smpsJump            Snd_Supersonic_FM2

Snd_Supersonic_Call03:
Snd_Supersonic_Loop01:
	dc.b	nA4, $18, nFs4, $0C, nE4, nA4, nFs4, nD4, nE4, $2D, nRst, $03
	dc.b	nD5, $15
Snd_Supersonic_Loop02:
	dc.b	nRst, $03, nD5, $09, nRst, $03, nD5, $08, nRst, $04, nD5, $09
	dc.b	nRst, $03, nCs5, $18, nA4, $0C, nE4, nFs4, nA4, $18, nB4, $60
	dc.b	nRst, $0C
	smpsLoop            $02, $02, Snd_Supersonic_Loop01
	smpsCall            Snd_Supersonic_Call05
	dc.b	nCs5, $08, nRst, $04, nCs5, $08, nRst, $04, nCs5, $06, nD5, nE5, $0C
	dc.b	nD5, $08, nRst, $04, nD5, $08, nRst, $04, nD5, $06, nE5, nFs5, $0C
	dc.b	nE4, $48, nFs4, $06, nAb4, nA4, nCs5 
	smpsReturn

Snd_Supersonic_Call04:
	smpsAlterVol        $F5
	smpsPan             panRight, $00
	dc.b	nE5, $06, nD5, nCs5, nB4
	smpsPan             panLeft, $00
	dc.b	nD5, nCs5, nB4, nA4
	smpsPan             panRight, $00
	dc.b	nCs5, nB4, nA4, nAb4
	smpsPan             panLeft, $00
	dc.b	nA4, nAb4, nFs4, nE4
	smpsPan             panCenter, $00
	smpsAlterVol        $0B
	smpsReturn

Snd_Supersonic_Call05:
	dc.b	nA4, $08, nRst, $04, nA4, $08, nRst, $04, nA4, $06, nB4, nCs5, $0C
	dc.b	nB4, $08, nRst, $04, nB4, $08, nRst, $04, nB4, $06, nCs5, nD5, $0C
	smpsReturn

; FM3 Data
Snd_Supersonic_FM3:
	smpsAlterNote       $04
Snd_Supersonic_Loop03:
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst 
	smpsCall            Snd_Supersonic_Call06
	smpsCall            Snd_Supersonic_Call07
	dc.b	nRst, $7C, nRst, $41, nRst, nRst, nRst
	smpsCall            Snd_Supersonic_Call06
	smpsCall            Snd_Supersonic_Call07
	smpsJump            Snd_Supersonic_Loop03

Snd_Supersonic_Call06:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsAlterVol        $F6
	dc.b	nCs5, $18, nB4, $0C, nA4, nCs5, nB4, nA4
	dc.b	nAb4, $2D, nRst, $03, nFs5, $15, nRst, $03, nFs5, $09, nRst, $03
	dc.b	nFs5, $08, nRst, $04, nFs5, $09, nRst, $03, nE5, $18, nCs5, $0C
	dc.b	nA4, $0C, nA4, nCs5, $18, nD5, $60, nRst, $0C, nFs4, $08 
	dc.b	nRst, $04, nFs4, $08, nRst, $04, nFs4, $06, nAb4, nA4, $0C 
	dc.b	nAb4, $08, nRst, $04, nAb4, $08, nRst, $04, nAb4, $06, nBb4 
	dc.b	nB4, $0C
	smpsCall            Snd_Supersonic_Call05
	smpsAlterVol        $0A
	smpsReturn

Snd_Supersonic_Call07:
	smpsAlterVol        $F6
	smpsSetvoice        $00
	smpsModSet          $01, $01, $06, $00
	smpsPan             panCenter, $00
	dc.b	nG1, $60, smpsNoAttack, nG1
	smpsModSet          $07, $01, $03, $05
	smpsAlterVol        $0A
	smpsReturn

; FM4 Data
Snd_Supersonic_FM4:
	smpsAlterNote       $03
	smpsModSet          $07, $01, $03, $05
	smpsPan             panLeft, $00
	smpsSetvoice        $03
Snd_Supersonic_Loop04:
	dc.b	nE4, $0C, nRst, $06, nE4, $18, nRst, $06
	smpsLoop            $00, $02, Snd_Supersonic_Loop04
	dc.b	nA4, $0C, nRst, $06, nFs4, $18, nRst, $06, nE4, $0C, nRst 
	dc.b	nE4, $18, nRst, $0C
	smpsCall            Snd_Supersonic_Call08
	dc.b	nRst, $0C
	smpsCall            Snd_Supersonic_Call08
	smpsJump            Snd_Supersonic_FM4

Snd_Supersonic_Call08:
Snd_Supersonic_Loop05:
	dc.b	nE4, $0C, nRst, nE4, nRst, nD4, nRst, nD4
Snd_Supersonic_Loop06:
	dc.b	nRst, nE4
	smpsLoop            $00, $06, Snd_Supersonic_Loop06
	dc.b	nRst, nD4, nRst, nD4, nRst, nAb4, nRst, nAb4, nRst, nFs4, nRst, nE4
	dc.b	nRst
	smpsLoop            $01, $02, Snd_Supersonic_Loop05
	dc.b	nD4, nRst, nD4, nRst, nE4, nRst, nE4, nRst, nFs4, nRst, nFs4, nRst
	dc.b	nAb4, nRst, nAb4, nRst, $60
	smpsModSet          $2A, $01, $29, $00
	dc.b	nE4, $3C, smpsNoAttack
	smpsModSet          $01, $00, $00, $00
	dc.b	$24
	smpsModSet          $07, $01, $03, $05
	smpsReturn

; FM5 Data
Snd_Supersonic_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsPan             panRight, $00
	smpsSetvoice        $03
	dc.b	nB4, $0C, nRst, $06, nAb4, $18, nRst, $06, nA4, $0C, nRst, $06, nB4
	dc.b	$18, nRst, $06, nCs5, $0C, nRst, $06, nA4, $18, nRst, $06, nB4, $0C
	dc.b	nRst, $0C, nAb4, $18, nRst, $0C
	smpsCall            Snd_Supersonic_Call09
	dc.b	nRst, $0C
	smpsCall            Snd_Supersonic_Call09
	smpsJump            Snd_Supersonic_FM5

Snd_Supersonic_Call09:
Snd_Supersonic_Loop07:
	dc.b	nA4, $0C, nRst, nA4, nRst, nFs4, nRst, nFs4, nRst, nAb4, nRst, nAb4
	dc.b	nRst, nB4, nRst, nB4
Snd_Supersonic_Loop08:
	dc.b	nRst, nA4
	smpsLoop            $00, $04, Snd_Supersonic_Loop08
Snd_Supersonic_Loop09:
	dc.b	nRst, nB4
	smpsLoop            $00, $04, Snd_Supersonic_Loop09
	dc.b	nRst
	smpsLoop            $01, $02, Snd_Supersonic_Loop07
	dc.b	nFs4, nRst, nFs4, nRst, nAb4, nRst, nAb4, nRst, nA4, nRst, nA4, nRst
	dc.b	nB4, nRst, nB4, nRst, $60
	smpsModSet          $2A, $01, $29, $00
	dc.b	nE5, $3C, smpsNoAttack
	smpsModSet          $01, $00, $00, $00
	dc.b	$24
	smpsModSet          $07, $01, $03, $05
	smpsReturn

; PSG1 Data
Snd_Supersonic_PSG1:
	dc.b	nRst, $7F, nRst, $41
	smpsCall            Snd_Supersonic_Call03
	smpsCall            Snd_Supersonic_Call0A
	smpsCall            Snd_Supersonic_Call03
	smpsCall            Snd_Supersonic_Call0A
	smpsJump            Snd_Supersonic_PSG1

Snd_Supersonic_Call0A:
	smpsPSGvoice        sTone_0A
	smpsPSGAlterVol     $03
	dc.b	nA3, $03, nB3, nCs4, nE4
	dc.b	nB3, nCs4, nD4, nFs4
	smpsPSGAlterVol     $FF
	dc.b	nCs4, nD4, nE4, nAb4
	dc.b	nD4, nE4, nFs4, nA4
	smpsPSGAlterVol     $FF
	dc.b	nE4, nFs4, nAb4, nB4
	dc.b	nFs4, nAb4, nA4, nCs5
	smpsPSGAlterVol     $FF
	dc.b	nAb4, nA4, nB4, nD5
	dc.b	nA4, nB4, nCs5, nE5
	smpsPSGvoice        sTone_11
	smpsReturn

; PSG2 Data
Snd_Supersonic_PSG2:
	dc.b	nRst, $05
Snd_Supersonic_Loop0A:
	smpsAlterNote       $FF
	dc.b	nRst, $7F, nRst, $41
	smpsCall            Snd_Supersonic_Call03
	dc.b	nRst, $60
	smpsCall            Snd_Supersonic_Call03
	dc.b	nRst, $60
	smpsJump            Snd_Supersonic_Loop0A

; PSG3 Data
Snd_Supersonic_PSG3:
	smpsPSGform         $E7
Snd_Supersonic_Loop0B:
	dc.b	(nMaxPSG2-$23)&$FF, $12, $1E
	smpsLoop            $00, $04, Snd_Supersonic_Loop0B
Snd_Supersonic_Loop0C:
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsLoop            $00, $28, Snd_Supersonic_Loop0C
	dc.b	$12, $12, $18, $24, $12, $12, $18, $24
	smpsLoop            $01, $02, Snd_Supersonic_Loop0C
	smpsJump            Snd_Supersonic_Loop0B

Snd_Supersonic_Voices:
;	Voice $00
;	$32
;	$70, $76, $31, $72, 	$1F, $95, $1F, $1F, 	$0E, $0F, $0E, $00
;	$00, $00, $00, $00, 	$2F, $4F, $4F, $2F, 	$2B, $1C, $16, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $07
	smpsVcCoarseFreq    $02, $01, $06, $00
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $15, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $0F, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $04, $04, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $1A, $1C, $2B

;	Voice $01
;	$3D
;	$01, $23, $14, $04, 	$1F, $14, $0F, $0F, 	$0E, $0F, $05, $0C
;	$07, $06, $06, $07, 	$00, $29, $29, $29, 	$1D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $02, $00
	smpsVcCoarseFreq    $04, $04, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0F, $0E
	smpsVcDecayRate2    $07, $06, $06, $07
	smpsVcDecayLevel    $02, $02, $02, $00
	smpsVcReleaseRate   $09, $09, $09, $00
	smpsVcTotalLevel    $00, $00, $00, $1D

;	Voice $02
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $01, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $01, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $17

;	Voice $03
;	$2F
;	$34, $73, $32, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$00, $00, $00, $00
	smpsVcAlgorithm     $07
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $02, $03, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $00
