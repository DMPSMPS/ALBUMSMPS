snd_sng_z1a1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z1a1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $7A

	smpsHeaderDAC       snd_sng_z1a1_DAC
	smpsHeaderFM        snd_sng_z1a1_FM1,	$00, $08
	smpsHeaderFM        snd_sng_z1a1_FM2,	$00, $13
	smpsHeaderFM        snd_sng_z1a1_FM3,	$00, $13
	smpsHeaderFM        snd_sng_z1a1_FM4,	$00, $1E
	smpsHeaderFM        snd_sng_z1a1_FM5,	$00, $1E
	smpsHeaderPSG       snd_sng_z1a1_PSG1,	$00, $01, $00, sTone_06
	smpsHeaderPSG       snd_sng_z1a1_PSG2,	$00, $05, $00, sTone_04
	smpsHeaderPSG       snd_sng_z1a1_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z1a1_DAC:
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $06
	smpsJump	snd_sng_z1a1_DAC	

; FM1 Data
snd_sng_z1a1_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nF2, $06, nF3, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06
	dc.b	nF2, $06, nF3, $06, nEb2, $06, nEb3, $06, nEb2, $06, nEb3, $06
	dc.b	nEb2, $06, nEb3, $06, nEb2, $06, nEb3, $06, nBb1, $06, nBb2, $06
	dc.b	nBb1, $06, nBb2, $06, nBb1, $06, nBb2, $06, nBb1, $06, nBb2, $06
	dc.b	nC2, $06, nC3, $06, nC2, $06, nC3, $06, nC2, $06, nC3, $06
	dc.b	nD2, $06, nE2, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06
	dc.b	nF2, $06, nG2, $06, nA2, $06, nF2, $06, nEb2, $06, nEb3, $06
	dc.b	nEb2, $06, nEb3, $06, nBb2, $06, nA2, $06, nF2, $06, nEb2, $06
	dc.b	nBb1, $06, nBb2, $06, nBb1, $06, nBb2, $06, nBb1, $06, nC2, $06
	dc.b	nD2, $06, nF2, $06, nC2, $06, nC3, $06, nC2, $06, nC3, $06
	dc.b	nC2, $06, nC3, $06, nD2, $06, nE2, $06, nF2, $06, nF3, $06
	dc.b	nF2, $06, nF3, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06
	dc.b	nEb2, $06, nEb3, $06, nEb2, $06, nEb3, $06, nEb2, $06, nEb3, $06
	dc.b	nEb2, $06, nEb3, $06, nBb1, $06, nBb2, $06, nBb1, $06, nBb2, $06
	dc.b	nBb1, $06, nBb2, $06, nBb1, $06, nBb2, $06, nC2, $06, nC3, $06
	dc.b	nC2, $06, nC3, $06, nC2, $06, nC3, $06, nD2, $06, nE2, $06
	dc.b	nF2, $06, nF3, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06
	dc.b	nF2, $06, nF3, $06, nEb2, $06, nEb3, $06, nEb2, $06, nEb3, $06
	dc.b	nEb2, $06, nEb3, $06, nEb2, $06, nEb3, $06, nD2, $06, nD3, $06
	dc.b	nD2, $06, nD3, $06, nD2, $06, nD3, $06, nD2, $06, nD3, $06
	dc.b	nC2, $06, nC3, $06, nC2, $06, nC3, $06, nC2, $06, nC3, $06
	dc.b	nC2, $06, nC3, $06, nBb1, $06, nBb2, $06, nBb1, $06, nBb2, $06
	dc.b	nBb1, $06, nBb2, $06, nBb1, $06, nC2, $0C, nC3, $06, nC2, $06
	dc.b	nC3, $06, nC2, $06, nC3, $06, nC2, $06, nC3, $06, nD2, $06
	dc.b	nD3, $06, nD2, $06, nD3, $06, nD2, $06, nD3, $06, nD2, $06
	dc.b	nD3, $06, nEb2, $06, nEb3, $06, nEb2, $06, nEb3, $06, nEb2, $06
	dc.b	nEb3, $06, nEb2, $06, nEb3, $06, nBb1, $06, nBb2, $06, nBb1, $06
	dc.b	nBb2, $06, nBb1, $06, nBb2, $06, nBb1, $06, nBb2, $06, nC2, $06
	dc.b	nC3, $06, nC2, $06, nC3, $06, nC2, $06, nF2, $06, nFs2, $06
	dc.b	nG2, $0C, nG2, $06, nF2, $06, nF2, $06, nE2, $06, nE2, $06
	dc.b	nD2, $06, nC2, $06
	smpsJump	snd_sng_z1a1_FM1

; FM2 Data
snd_sng_z1a1_FM2:
	;smpsPan             panLeft, $00
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
snd_sng_z1a1_FM2INIT:
	dc.b	nF4, $06, nC4, $06, nG4, $06, nF4, $24, nC4, $06, nF4, $06
	dc.b	nG4, $06, nBb4, $06, nA4, $06, nG4, $06, nF4, $06, nG4, $0C
	dc.b	nA4, $06, nF4, $1E, nF4, $18, nE4, $18, nF4, $06, nC4, $06
	dc.b	nG4, $06, nF4, $24, nC4, $06, nF4, $06, nG4, $06, nBb4, $06
	dc.b	nA4, $06, nG4, $06, nF4, $06, nG4, $0C, nA4, $06, nF4, $1E
	dc.b	nF4, $18, nE4, $18, nC5, $0C, nF4, $06, nG4, $0C, nA4, $0C
	dc.b	nBb4, $0C, nC5, $12, nA4, $0C, nF4, $0C, nG4, $0C, nD4, $06
	dc.b	nF4, $36, nE4, $18, nC5, $0C, nF4, $06, nG4, $0C, nA4, $0C
	dc.b	nBb4, $0C, nC5, $12, nA4, $0C, nF4, $0C, nG4, $0C, nF4, $06
	dc.b	nC5, $30, nF5, $0C, nE5, $06, nC5, $0C, nD5, $12, nE5, $0C
	dc.b	nF5, $0C, nE5, $06, nRst, $06, nE5, $06, nD5, $0C, nC5, $0C
	dc.b	nG4, $0C, nA4, $12, nD5, $1E, nD5, $12, nC5, $1E, nBb4, $12
	dc.b	nC5, $0C, nD5, $06, nF5, $0C, nC5, $12, nF5, $0C, nA5, $06
	dc.b	nC5, $06, nG5, $18, nC6, $1E
	smpsJump	snd_sng_z1a1_FM2INIT	

; FM3 Data
snd_sng_z1a1_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	;smpsPan             panLeft, $00
snd_sng_z1a1_FM3INIT:
	dc.b	nRst, $06, nC4, $2A, nRst, $06, nC4, $24, nRst, $06, nD4, $2A
	dc.b	nRst, $06, nC4, $12, nRst, $06, nC4, $18, nRst, $06, nC4, $2A
	dc.b	nRst, $06, nC4, $24, nRst, $06, nD4, $2A, nRst, $06, nC4, $12
	dc.b	nRst, $06, nC4, $18, nRst, $0C, nF4, $42, nRst, $1E, nD4, $1E
	dc.b	nRst, $06, nD4, $18, nC4, $18, nRst, $0C, nF4, $42, nRst, $1E
	dc.b	nF4, $42, nRst, $06, nA4, $0C, nBb4, $12, nF4, $0C, nBb4, $0C
	dc.b	nG4, $06, nRst, $06, nG4, $06, nG4, $0C, nG4, $06, nRst, $06
	dc.b	nG4, $0C, nF4, $0C, nRst, $06, nF4, $18, nRst, $06, nG4, $0C
	dc.b	nRst, $06, nG4, $18, nRst, $06, nF4, $0C, nRst, $06, nF4, $0C
	dc.b	nRst, $06, nBb4, $0C, nG4, $0C, nRst, $06, nC5, $0C, nF5, $06
	dc.b	nRst, $06, nE5, $12, nRst, $06, nG5, $18, nRst, $06
	smpsJump	snd_sng_z1a1_FM3INIT

; FM4 Data
snd_sng_z1a1_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	smpsAlterNote       $FD
	;smpsPan             panRight, $00
	dc.b	nRst, $06
	smpsJump	snd_sng_z1a1_FM2INIT

; FM5 Data
snd_sng_z1a1_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	smpsAlterNote       $FD
	;smpsPan             panRight, $00
	dc.b	nRst, $06
	smpsJump	snd_sng_z1a1_FM3INIT

; PSG1 Data
snd_sng_z1a1_PSG1:
	dc.b	nRst, $1E, nF3, $06, nC3, $06, nG3, $06, nF3, $30, nRst, $78
	dc.b	nF3, $06, nC3, $06, nG3, $06, nA3, $36, nRst, $7F, nRst, $59, nG3
	dc.b	$0C, nD3, $06, nF3, $1E, nRst, $06, nE3, $06, nF3, $06, nG3
	dc.b	$06, nRst, $78, nG3, $0C, nA3, $06, nBb3, $06, nC4, $1E
	dc.b	nRst, $06, nA3, $0C, nRst, $06
	smpsPSGAlterVol     $FF
	dc.b	nF3, $06, nD3, $06, nRst, $06, nF3, $06, nD3, $06, nRst, $06
	dc.b	nG3, $06, nRst, $06, nG3, $06, nC3, $06, nG3, $06, nRst, $06
	dc.b	nG3, $06, nC3, $06, nRst, $0C, nF3, $06, nD3, $06, nRst, $06
	dc.b	nF3, $06, nD3, $06, nRst, $06, nF3, $06, nRst, $06, nG3, $06
	dc.b	nD3, $06, nG3, $06, nRst, $06, nG3, $06, nC3, $06, nRst, $0C
	dc.b	nF3, $06, nD3, $06, nRst, $06, nF3, $06, nRst, $06, nF3, $06
	dc.b	nD3, $06, nRst, $06, nG3, $06, nE3, $06, nF3, $06, nRst, $06
	dc.b	nA3, $06, nRst, $06, nG3, $0C, nE3, $06, nF3, $06, nG3, $06
	dc.b	nRst, $06, nC4, $12
	smpsPSGAlterVol     $01
	smpsJump	snd_sng_z1a1_PSG1

; PSG2 Data
snd_sng_z1a1_PSG2:
	dc.b	nRst, $06
	smpsJump	snd_sng_z1a1_PSG1

; PSG3 Data
snd_sng_z1a1_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $06, (nMaxPSG2-$23)&$FF, $0C,  $0C,  $06,  $06,  $0C
	dc.b	 $0C,  $0C,  $06,  $06,  $0C,  $0C
	dc.b	 $0C,  $06,  $06,  $0C,  $0C,  $0C
	dc.b	 $06,  $06,  $0C,  $0C,  $0C,  $06
	dc.b	 $06,  $0C,  $0C,  $0C,  $06,  $06
	dc.b	 $0C,  $0C,  $0C,  $06,  $06,  $0C
	dc.b	 $0C,  $0C,  $06,  $06,  $0C,  $0C
	dc.b	 $0C,  $06,  $06,  $0C,  $0C,  $0C
	dc.b	 $06,  $06,  $0C,  $0C,  $0C,  $06
	dc.b	 $06,  $0C,  $0C,  $0C,  $06,  $06
	dc.b	 $0C,  $0C,  $0C,  $06,  $06,  $0C
	dc.b	 $0C,  $0C,  $06,  $06,  $0C,  $0C
	dc.b	 $0C,  $06,  $06,  $0C,  $0C,  $0C
	dc.b	 $06,  $06,  $0C,  $06,  $06,  $0C
	dc.b	 $0C,  $0C,  $06,  $06,  $0C,  $0C
	dc.b	 $0C,  $06,  $06,  $0C,  $0C,  $0C
	dc.b	 $06,  $06,  $0C,  $0C,  $0C,  $06
	dc.b	 $06,  $0C,  $0C,  $0C,  $06,  $06
	dc.b	 $0C,  $0C,  $0C,  $0C,  $0C,  $0C, nRst, $06
	smpsJump	snd_sng_z1a1_PSG3

snd_sng_z1a1_Voices:
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
;	$3E
;	$12, $15, $21, $12, 	$0F, $14, $14, $12, 	$05, $05, $05, $0A
;	$00, $00, $00, $00, 	$11, $22, $22, $22, 	$05, $05, $F6, $19
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
	smpsVcTotalLevel    $05, $05, $F6, $19
