snd_sng_z2a3_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z2a3_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $01, $11

	smpsHeaderDAC       snd_sng_z2a3_DAC
	smpsHeaderFM        snd_sng_z2a3_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_z2a3_FM2,	$00, $13
	smpsHeaderFM        snd_sng_z2a3_FM3,	$00, $25
	smpsHeaderFM        snd_sng_z2a3_FM4,	$00, $13
	smpsHeaderPSG       snd_sng_z2a3_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       snd_sng_z2a3_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       snd_sng_z2a3_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z2a3_DAC:
	dc.b	dKickS3, $18, dSnareS3, $28, dKickS3, $08, dSnareS3, $18, dKickS3, $18, dSnareS3, $10
	dc.b	dKickS3, $18, dKickS3, $08, dSnareS3, $18, dKickS3, $18, dKickS3, $18, dSnareS3, $10
	dc.b	dSnareS3, $08, dSnareS3, $10, dKickS3, $20, dKickS3, $28, dSnareS3, $08, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $10, dKickS3, $08, dKickS3, $18, dSnareS3, $10, dKickS3, $18
	dc.b	dKickS3, $08, dSnareS3, $18, dKickS3, $18, dSnareS3, $18, dKickS3, $18, dSnareS3, $10
	dc.b	dKickS3, $08, dKickS3, $18, dSnareS3, $10, dKickS3, $18, dKickS3, $08, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $18, dKickS3, $18, dSnareS3, $10, dKickS3, $08, dKickS3, $18
	dc.b	dSnareS3, $10, dKickS3, $18, dKickS3, $08, dSnareS3, $18, dKickS3, $18, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $10, dKickS3, $08, dKickS3, $18, dSnareS3, $10, dKickS3, $18
	dc.b	dKickS3, $08, dSnareS3, $18, dKickS3, $08, dSnareS3, $10, dSnareS3, $08, dSnareS3, $08
	dc.b	dSnareS3, $08, dKickS3, $18, dSnareS3, $10, dKickS3, $08, dKickS3, $18, dSnareS3, $10
	dc.b	dKickS3, $18, dKickS3, $08, dSnareS3, $18, dKickS3, $18, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $10, dKickS3, $08, dKickS3, $18, dSnareS3, $10, dKickS3, $18, dKickS3, $08
	dc.b	dSnareS3, $18, dKickS3, $18, dSnareS3, $18, dKickS3, $18, dSnareS3, $10, dKickS3, $08
	dc.b	dKickS3, $18, dSnareS3, $10, dKickS3, $18, dKickS3, $08, dSnareS3, $18, dKickS3, $18
	dc.b	dSnareS3, $18, dKickS3, $18, dSnareS3, $10, dKickS3, $08, dKickS3, $18, dSnareS3, $10
	dc.b	dKickS3, $08, dSnareS3, $10, dKickS3, $08, dSnareS3, $10, dSnareS3, $08, dKickS3, $08
	dc.b	dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dKickS3, $18
	dc.b	dSnareS3, $10, dKickS3, $18, dKickS3, $08, dSnareS3, $10, dKickS3, $18, dKickS3, $08
	dc.b	dSnareS3, $18, dKickS3, $10, dKickS3, $08, dSnareS3, $18, dKickS3, $10, dKickS3, $08
	dc.b	dSnareS3, $10, dSnareS3, $08, dKickS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08
	dc.b	dSnareS3, $08, dSnareS3, $08, dKickS3, $18, dKickS3, $28, dSnareS3, $08, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $28, dKickS3, $08, dSnareS3, $18, dKickS3, $18, dSnareS3, $10
	dc.b	dKickS3, $18, dKickS3, $08, dSnareS3, $78
	smpsStop

; FM1 Data
snd_sng_z2a3_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nF3, $40, nC3, $08, nC4, $10, nBb3, $08, nRst, $18, nBb3, $10
	dc.b	nA3, $08, nRst, $10, nG3, $08, nF3, $18, nG3, $08, nRst, $10
	dc.b	nG3, $18, nF3, $08, nRst, $10, nF3, $10, nE3, $08, nRst, $18
	dc.b	nC3, $28, nC4, $18, nC3, $08, nF3, $20, nRst, $08, nF3, $08
	dc.b	nC3, $20, nRst, $08, nC3, $08, nF3, $18, nC3, $10, nG3, $18
	dc.b	nF3, $08, nRst, $10, nF3, $08, nD3, $20, nRst, $08, nD3, $08
	dc.b	nA3, $20, nRst, $08, nA3, $08, nD3, $10, nE3, $08, nF3, $10
	dc.b	nD3, $18, nA3, $08, nRst, $10, nA3, $08, nG3, $20, nRst, $08
	dc.b	nG3, $08, nD3, $20, nRst, $08, nD3, $08, nG3, $10, nD3, $08
	dc.b	nA3, $10, nG3, $08, nRst, $10, nF3, $08, nRst, $10, nF3, $08
	dc.b	nE3, $20, nRst, $08, nE3, $08, nC3, $08, nRst, $08, nC3, $08
	dc.b	nE3, $10, nF3, $08, nG3, $08, nF3, $08, nG3, $08, nBb3, $10
	dc.b	nC4, $18, nC3, $08, nRst, $10, nC3, $08, nF3, $20, nRst, $08
	dc.b	nF3, $08, nC3, $20, nRst, $08, nC3, $08, nF3, $08, nRst, $08
	dc.b	nF3, $08, nG3, $10, nA3, $18, nF3, $08, nRst, $10, nF3, $08
	dc.b	nD3, $20, nRst, $08, nD3, $08, nA3, $20, nRst, $08, nA3, $08
	dc.b	nD3, $08, nRst, $08, nD3, $08, nE3, $10, nF3, $18, nA3, $08
	dc.b	nRst, $10, nA3, $08, nG3, $20, nRst, $08, nG3, $08, nD3, $20
	dc.b	nRst, $08, nD3, $08, nG3, $08, nRst, $08, nG3, $08, nA3, $10
	dc.b	nG3, $18, nF3, $08, nRst, $10, nF3, $08, nE3, $20, nRst, $08
	dc.b	nE3, $08, nC3, $08, nRst, $08, nC3, $08, nE3, $10, nF3, $08
	dc.b	nG3, $10, nRst, $08, nC3, $10, nRst, $08, nF3, $10, nRst, $08
	dc.b	nE3, $10, nRst, $08, nD3, $08, nRst, $10, nD3, $10, nF3, $18
	dc.b	nF3, $08, nA3, $08, nRst, $10, nA3, $10, nF3, $18, nF3, $08
	dc.b	nG3, $08, nRst, $10, nF3, $18, nE3, $08, nRst, $10, nE3, $18
	dc.b	nC3, $08, nRst, $08, nC3, $08, nE3, $08, nF3, $08, nG3, $08
	dc.b	nA3, $08, nRst, $10, nC4, $28, nC4, $08, nC3, $18, nF3, $40
	dc.b	nC3, $08, nC4, $10, nBb3, $08, nRst, $18, nBb3, $10, nA3, $08
	dc.b	nRst, $10, nG3, $08, nF3, $18, nRst, $60
	smpsStop

; FM2 Data
snd_sng_z2a3_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nC4, $08, nRst, $10, nC5, $10, nBb4, $08, nA4, $10, nBb4, $08
	dc.b	nA4, $10, nF4, $08, nRst, $18, nG4, $10, nA4, $08, nRst, $10
	dc.b	nBb4, $08, nA4, $18, nG4, $08, nRst, $10, nA4, $18, nBb4, $08
	dc.b	nRst, $10, nB4, $10, nC5, $08, nRst, $18, nC4, $10, nC4, $08
	dc.b	nRst, $10, nF4, $08, nG4, $18, nA4, $28, nC5, $50, nC4, $10
	dc.b	nC4, $08, nRst, $10, nF4, $08, nG4, $18, nA4, $28, nD5, $50
	dc.b	nC5, $10, nBb4, $08, nRst, $10, nC5, $08, nA4, $18, nBb4, $28
	dc.b	nG4, $50, nC5, $10, nBb4, $08, nRst, $10, nC5, $08, nA4, $18
	dc.b	nBb4, $28, nG4, $50, nC4, $10, nC4, $08, nRst, $10, nF4, $08
	dc.b	nG4, $18, nA4, $28, nC5, $50, nC4, $10, nC4, $08, nRst, $10
	dc.b	nF4, $08, nG4, $18, nA4, $28, nD5, $50, nC5, $10, nBb4, $08
	dc.b	nRst, $10, nC5, $08, nA4, $18, nBb4, $28, nG4, $50, nD5, $10
	dc.b	nC5, $08, nRst, $10, nBb4, $08, nA4, $18, nBb4, $30, nG4, $30
	dc.b	nC5, $08, nRst, $10, nBb4, $18, nA4, $08, nRst, $10, nG4, $18
	dc.b	nA4, $28, nD5, $20, nC5, $28, nA4, $20, nBb4, $08, nRst, $10
	dc.b	nC5, $18, nBb4, $30, nG4, $30, nA4, $08, nRst, $10, nF4, $18
	dc.b	nC4, $08, nRst, $08, nF4, $08, nG4, $18, nC4, $08, nRst, $10
	dc.b	nC5, $10, nBb4, $08, nA4, $10, nBb4, $08, nA4, $10, nF4, $08
	dc.b	nRst, $18, nG4, $10, nA4, $08, nRst, $10, nBb4, $08, nA4, $18
	dc.b	nRst, $60
	smpsStop

; FM3 Data
snd_sng_z2a3_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	smpsAlterNote	    $FD
	dc.b	nRst, $0C, nC4, $08, nRst, $10, nC5, $10, nBb4, $08, nA4, $10
	dc.b	nBb4, $08, nA4, $10, nF4, $08, nRst, $18, nG4, $10, nA4, $08
	dc.b	nRst, $10, nBb4, $08, nA4, $18, nG4, $08, nRst, $10, nA4, $18
	dc.b	nBb4, $08, nRst, $10, nB4, $10, nC5, $08, nRst, $18, nC4, $10
	dc.b	nC4, $08, nRst, $10, nF4, $08, nG4, $18, nA4, $28, nC5, $50
	dc.b	nC4, $10, nC4, $08, nRst, $10, nF4, $08, nG4, $18, nA4, $28
	dc.b	nD5, $50, nC5, $10, nBb4, $08, nRst, $10, nC5, $08, nA4, $18
	dc.b	nBb4, $28, nG4, $50, nC5, $10, nBb4, $08, nRst, $10, nC5, $08
	dc.b	nA4, $18, nBb4, $28, nG4, $50, nC4, $10, nC4, $08, nRst, $10
	dc.b	nF4, $08, nG4, $18, nA4, $28, nC5, $50, nC4, $10, nC4, $08
	dc.b	nRst, $10, nF4, $08, nG4, $18, nA4, $28, nD5, $50, nC5, $10
	dc.b	nBb4, $08, nRst, $10, nC5, $08, nA4, $18, nBb4, $28, nG4, $50
	dc.b	nD5, $10, nC5, $08, nRst, $10, nBb4, $08, nA4, $18, nBb4, $30
	dc.b	nG4, $30, nC5, $08, nRst, $10, nBb4, $18, nA4, $08, nRst, $10
	dc.b	nG4, $18, nA4, $28, nD5, $20, nC5, $28, nA4, $20, nBb4, $08
	dc.b	nRst, $10, nC5, $18, nBb4, $30, nG4, $30, nA4, $08, nRst, $10
	dc.b	nF4, $18, nC4, $08, nRst, $08, nF4, $08, nG4, $18, nC4, $08
	dc.b	nRst, $10, nC5, $10, nBb4, $08, nA4, $10, nBb4, $08, nA4, $10
	dc.b	nF4, $08, nRst, $18, nG4, $10, nA4, $08, nRst, $10, nBb4, $08
	dc.b	nA4, $18, nRst, $54
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	smpsStop

; FM4 Data
snd_sng_z2a3_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	dc.b	nA3, $08, nRst, $10, nA4, $10, nG4, $08, nF4, $10, nG4, $08
	dc.b	nF4, $10, nC4, $08, nRst, $18, nE4, $10, nF4, $08, nRst, $10
	dc.b	nD4, $08, nF4, $18, nD4, $08, nRst, $10, nF4, $18, nD4, $08
	dc.b	nRst, $10, nF4, $10, nE4, $08, nRst, $18, nG3, $10, nA3, $08
	dc.b	nRst, $10, nC4, $08, nE4, $18, nF4, $28, nA4, $50, nG3, $10
	dc.b	nA3, $08, nRst, $10, nC4, $08, nE4, $18, nF4, $28, nA4, $50
	dc.b	nA4, $10, nF4, $08, nRst, $10, nA4, $08, nD4, $18, nG4, $28
	dc.b	nD4, $50, nA4, $10, nG4, $08, nRst, $10, nA4, $08, nF4, $18
	dc.b	nG4, $28, nC4, $50, nG3, $10, nA3, $08, nRst, $10, nC4, $08
	dc.b	nE4, $18, nF4, $28, nA4, $50, nG3, $10, nA3, $08, nRst, $10
	dc.b	nD4, $08, nE4, $18, nF4, $28, nA4, $50, nA4, $10, nF4, $08
	dc.b	nRst, $10, nA4, $08, nD4, $18, nG4, $28, nD4, $50, nBb4, $10
	dc.b	nA4, $08, nRst, $10, nG4, $08, nF4, $18, nE4, $30, nC4, $30
	dc.b	nA4, $08, nRst, $10, nG4, $18, nF4, $08, nRst, $10, nC4, $18
	dc.b	nD4, $28, nA4, $20, nF4, $28, nD4, $20, nG4, $08, nRst, $10
	dc.b	nF4, $18, nG4, $30, nE4, $30, nF4, $08, nRst, $10, nC4, $18
	dc.b	nA3, $08, nRst, $08, nC4, $08, nE4, $18, nA3, $08, nRst, $10
	dc.b	nA4, $10, nG4, $08, nF4, $10, nG4, $08, nF4, $10, nC4, $08
	dc.b	nRst, $18, nE4, $10, nF4, $08, nRst, $10, nD4, $08, nF4, $18
	dc.b	nRst, $60
	smpsStop

; PSG3 Data
snd_sng_z2a3_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $10, $18, $08, $10, $18, $08
	dc.b	$10, $18, $08, $08, $08, $08
	dc.b	$18, $10, $08, $18, $10, $08
	dc.b	$10, $20, $18, $08, $08, $08
	dc.b	$18, $10, $08, $08, $10, $10
	dc.b	$08, $08, $08, $08, $10, $08
	dc.b	$08, $10, $08, $10, $08, $08
	dc.b	$08, $10, $08, $08, $10, $10
	dc.b	$08, $08, $08, $08, $10, $08
	dc.b	$08, $10, $08, $10, $08, $08
	dc.b	$08, $10, $08, $08, $10, $10
	dc.b	$08, $08, $08, $08, $10, $08
	dc.b	$08, $10, $08, $10, $08, $08
	dc.b	$08, $10, $08, $08, $10, $10
	dc.b	$08, $08, $08, $08, $10, $08
	dc.b	$08, $10, $10, $20, $10, $08
	dc.b	$08, $10, $10, $08, $08, $08
	dc.b	$08, $10, $08, $08, $10, $08
	dc.b	$10, $08, $08, $08, $10, $08
	dc.b	$08, $10, $10, $08, $08, $08
	dc.b	$08, $10, $08, $08, $10, $08
	dc.b	$10, $08, $08, $08, $10, $08
	dc.b	$08, $10, $10, $08, $08, $08
	dc.b	$08, $10, $08, $08, $10, $08
	dc.b	$10, $08, $08, $08, $10, $08
	dc.b	$08, $10, $10, $08, $08, $08
	dc.b	$08, $10, $08, $08, $10, $10
	dc.b	$20, $10, $18, $18, $18, $18
	dc.b	$08, $20, $10, $10, $08, $10
	dc.b	$08, $08, $18, $10, $10, $08
	dc.b	$10, $08, $10, $08, $08, $18
	dc.b	$08, $08, $10, $18, $08, $10
	dc.b	$18, $08, $10, $18, $08, $08
	dc.b	$08, $08, $78
	smpsStop

; PSG1 Data
snd_sng_z2a3_PSG1:
; PSG2 Data
snd_sng_z2a3_PSG2:
	smpsStop

snd_sng_z2a3_Voices:
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
;	$77, $71, $32, $31, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $1B

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
