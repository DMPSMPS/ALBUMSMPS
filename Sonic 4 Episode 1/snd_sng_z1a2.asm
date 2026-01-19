snd_sng_z1a2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z1a2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $77

	smpsHeaderDAC       snd_sng_z1a2_DAC
	smpsHeaderFM        snd_sng_z1a2_FM1,	$0C, $0F
	smpsHeaderFM        snd_sng_z1a2_FM2,	$00, $14
	smpsHeaderFM        snd_sng_z1a2_FM3,	$00, $1F
	smpsHeaderFM        snd_sng_z1a2_FM4,	$00, $0F
	smpsHeaderFM        snd_sng_z1a2_FM5,	$00, $16
	smpsHeaderPSG       snd_sng_z1a2_PSG1,	$0C, $04, $00, sTone_06
	smpsHeaderPSG       snd_sng_z1a2_PSG2,	$0C, $06, $00, sTone_04
	smpsHeaderPSG       snd_sng_z1a2_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z1a2_DAC:
	dc.b	dKickS3, $12, dKickS3, $06, dSnareS3, $12, dSnareS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $12, dKickS3, $06, dSnareS3, $12
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $12, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $12, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	smpsJump	snd_sng_z1a2_DAC

; FM1 Data
snd_sng_z1a2_FM1:
	smpsSetvoice        $00
	smpsModSet          $07, $01, $03, $05
	dc.b	nC3, $18, nB2, $0F, nRst, $03, nB2, $06, nA2, $0F, nRst, $03
	dc.b	nA2, $06, nG2, $0F, nRst, $03, nG2, $06, nF2, $06, nF3, $06
	dc.b	nF2, $06, nF3, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06
	dc.b	nG2, $06, nG3, $06, nG2, $06, nG3, $06, nG2, $06, nG3, $06
	dc.b	nG2, $06, nG3, $06, nC3, $18, nB2, $0F, nRst, $03, nB2, $06
	dc.b	nA2, $0F, nRst, $03, nA2, $06, nG2, $0F, nRst, $03, nG2, $06
	dc.b	nF2, $06, nF3, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06
	dc.b	nF2, $06, nF3, $06, nG2, $06, nG3, $06, nG2, $06, nG3, $06
	dc.b	nG2, $06, nG3, $06, nG2, $06, nFs2, $06, nF2, $06, nF2, $06
	dc.b	nC3, $06, nC3, $06, nA2, $06, nA2, $06, nF2, $06, nE2, $0C
	dc.b	nE2, $06, nB2, $06, nB2, $06, nG2, $06, nG2, $06, nE2, $06
	dc.b	nE2, $06, nD3, $06, nD3, $06, nA2, $0C, nB2, $06, nB2, $06
	dc.b	nG3, $06, nF3, $0C, nF3, $06, nE3, $06, nE3, $06, nD3, $06
	dc.b	nD3, $06, nC3, $06, nC3, $06, nF2, $06, nF2, $06, nC3, $06
	dc.b	nC3, $06, nA2, $06, nA2, $06, nF2, $06, nE2, $0C, nE2, $06
	dc.b	nB2, $06, nB2, $06, nG2, $06, nG2, $06, nE2, $06, nE2, $06
	dc.b	nD3, $06, nD3, $06, nC3, $06, nC3, $06, nB2, $06, nB2, $06
	dc.b	nA2, $06, nA2, $06, nA3, $06, nA3, $06, nG3, $06, nG3, $06
	dc.b	nFs3, $06, nE3, $06, nD3, $06, nG2, $0C, nG2, $06, nC3, $06
	dc.b	nC3, $06, nB2, $06, nC3, $06, nD3, $06, nG3, $0C, nG2, $06
	dc.b	nG2, $06, nG2, $06, nRst, $18, nC2, $06, nC3, $06, nC2, $06
	dc.b	nC3, $06, nC2, $06, nC3, $06, nC2, $06, nD2, $06, nE2, $06
	dc.b	nE3, $06, nE2, $06, nE3, $06, nE2, $06, nE3, $06, nE2, $06
	dc.b	nG2, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06, nF2, $06
	dc.b	nF3, $06, nF2, $06, nFs2, $06, nG2, $06, nE2, $06, nF2, $06
	dc.b	nG2, $06, nF2, $06, nE2, $06, nD2, $06, nC2, $06, nA1, $06
	dc.b	nA2, $06, nA1, $06, nA2, $06, nA1, $06, nB1, $06, nC2, $06
	dc.b	nD2, $06, nE2, $06, nE3, $06, nE2, $06, nE3, $06, nE2, $06
	dc.b	nE3, $06, nE2, $06, nG2, $06, nF2, $06, nF3, $06, nF2, $06
	dc.b	nF3, $06, nF2, $06, nF3, $06, nF2, $06, nFs2, $06, nG2, $06
	dc.b	nG2, $06, nF2, $06, nFs2, $06, nG2, $06, nF2, $06, nE2, $06
	dc.b	nD2, $06, nF2, $06, nC2, $06, nF2, $06, nG2, $06, nRst, $06
	dc.b	nD2, $06, nRst, $06, nC2, $0C, nC2, $06, nE2, $06, nRst, $06
	dc.b	nF2, $06, nRst, $06, nFs2, $06, nG2, $06
	smpsJump	snd_sng_z1a2_FM1

; FM2 Data
snd_sng_z1a2_FM2:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $03, $05
	dc.b	nG4, $18, nC5, $0C, nB4, $06, nG4, $06, nRst, $06, nG4, $06
	dc.b	nD5, $08, nRst, $04, nC5, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b	nB4, $0C, nC5, $03, nRst, $03, nA4, $1E, nRst, $30, nG4, $18
	dc.b	nC5, $0C, nB4, $06, nG4, $06, nRst, $06, nG4, $06, nD5, $08
	dc.b	nRst, $04, nC5, $08, nRst, $04, nG4, $08, nRst, $04, nB4, $0C
	dc.b	nC5, $03, nRst, $03, nA4, $1E, nRst, $30, nA5, $18, nC6, $0C
	dc.b	nB5, $06, nG5, $1E, nRst, $06, nE5, $06, nF5, $06, nG5, $06
	dc.b	nF5, $0C, nE5, $0C, nD5, $0C, nC5, $06, nD5, $0C, nE5, $06
	dc.b	nRst, $06, nE5, $0C, nC5, $06, nD5, $06, nE5, $06, nA5, $18
	dc.b	nC6, $0C, nB5, $06, nG5, $1E, nRst, $06, nE5, $06, nF5, $06
	dc.b	nG5, $06, nFs5, $42, nRst, $06, nA5, $06, nG5, $06, nFs5, $06
	dc.b	nG5, $42, nRst, $24, nG5, $0C, nC6, $0C, nB5, $0C, nG5, $06
	dc.b	nC6, $0C, nB5, $0C, nG5, $0C, nE5, $06, nF5, $06, nG5, $06
	dc.b	nG5, $0C, nA5, $06, nG5, $0C, nC5, $06, nE5, $06, nD5, $27
	dc.b	nRst, $0F, nG5, $0C, nC6, $0C, nB5, $0C, nG5, $06, nC6, $0C
	dc.b	nB5, $0C, nG5, $0C, nE5, $06, nF5, $06, nG5, $06, nG5, $0C
	dc.b	nA5, $06, nG5, $0C, nC5, $06, nE5, $06, nD5, $27, nRst, $0F
	dc.b	nA5, $06, nB5, $06, nC6, $06, nB5, $06, nRst, $06, nG5, $06
	dc.b	nRst, $06, nC6, $24, nRst, $12
	smpsJump	snd_sng_z1a2_FM2	

; FM3 Data
snd_sng_z1a2_FM3:
	smpsSetvoice        $01
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $FD
	dc.b	nRst, $0C
	smpsJump	snd_sng_z1a2_FM2	

; FM4 Data
snd_sng_z1a2_FM4:
	smpsSetvoice        $02
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $60, nG4, $0C, nA4, $03, nRst, $03, nF4, $1E, nRst, $7F
	dc.b	nRst, $11, nG4, $0C, nA4, $03, nRst, $03, nF4, $1E, nRst, $30, nF4
	dc.b	$18, nA4, $0C, nG4, $06, nE4, $1E, nRst, $78, nF4, $18, nA4
	dc.b	$0C, nG4, $06, nE4, $1E, nRst, $7F, nRst, $59, nE4, $0C, nE4, $0C
	dc.b	nD4, $0C, nC4, $06, nE4, $0C, nD4, $0C, nC4, $0C, nG3, $06
	dc.b	nB3, $06, nD4, $06, nC4, $0C, nB3, $06, nA3, $0C, nA3, $06
	dc.b	nG3, $06, nB3, $27, nRst, $0F, nE4, $0C, nE4, $0C, nD4, $0C
	dc.b	nC4, $06, nE4, $0C, nD4, $0C, nC4, $0C, nG3, $06, nB3, $06
	dc.b	nD4, $06, nC4, $0C, nB3, $06, nA3, $0C, nA3, $06, nG3, $06
	dc.b	nB3, $27, nRst, $0F, nF4, $06, nF4, $06, nA4, $06, nG4, $06
	dc.b	nRst, $06, nD4, $06, nRst, $06, nE4, $24, nRst, $12
	smpsJump	snd_sng_z1a2_FM4

; FM5 Data
snd_sng_z1a2_FM5:
	smpsSetvoice        $02
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $FD
	dc.b	nRst, $06
	smpsJump	snd_sng_z1a2_FM4

; PSG1 Data
snd_sng_z1a2_PSG1:
	dc.b	nRst, $7F, nRst, $11, nG1, $03, nA1, $03, nB1, $03, nC2, $03, nA1
	dc.b	$03, nB1, $03, nC2, $03, nD2, $03, nB1, $03, nC2, $03, nD2
	dc.b	$03, nE2, $03, nD2, $03, nE2, $03, nF2, $03, nG2, $03
	dc.b	nRst, $7F, nRst, $11, nG1, $03, nA1, $03, nB1, $03, nC2, $03, nA1, $03
	dc.b	nB1, $03, nC2, $03, nD2, $03, nB1, $03, nC2, $03, nD2, $03
	dc.b	nE2, $03, nD2, $03, nE2, $03, nF2, $03, nG2, $03, nRst, $7F
	dc.b	nRst, $7F, nRst, $7F, nRst, $2D, nG1, $09, nA1, $03, nB1, $03, nC2, $03, nA1
	dc.b	$03, nB1, $03, nC2, $03, nD2, $03, nB1, $03, nC2, $03, nD2
	dc.b	$03, nE2, $03, nD2, $03, nE2, $03, nF2, $03, nG2, $03
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $2D, nG1, $09, nA1, $03, nB1, $03, nC2, $03
	dc.b	nA1, $03, nB1, $03, nC2, $03, nD2, $03, nB1, $03, nC2, $03
	dc.b	nD2, $03, nE2, $03, nD2, $03, nE2, $03, nF2, $03, nG2, $03
	smpsJump	snd_sng_z1a2_PSG1

; PSG2 Data
snd_sng_z1a2_PSG2:
	dc.b       nRst, $06
	smpsJump	snd_sng_z1a2_PSG1

; PSG3 Data
snd_sng_z1a2_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $06, (nMaxPSG2-$23)&$FF, $06, $0C, $0C, $06, $0C
	dc.b	$0C, $0C, $06, $06, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $06, $0C, $0C, $06, $0C
	dc.b	$0C, $0C, $06, $06, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06
	dc.b	$0C, $06, $06, $06, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $06, $0C, $06, $0C, $0C
	dc.b	$0C, $06, $06, $0C, $0C, $0C
	dc.b	$06, $06, $0C, $0C, $06, $0C
	dc.b	$06, $0C, $0C, $0C, $0C, $06
	dc.b	$06, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $06, $06
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $06
	dc.b	$06, $06
	smpsJump	snd_sng_z1a2_PSG3

snd_sng_z1a2_Voices:
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
