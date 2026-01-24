snd_sng_boss2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_boss2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $6B

	smpsHeaderDAC       snd_sng_boss2_DAC
	smpsHeaderFM        snd_sng_boss2_FM1,	$F4, $0E
	smpsHeaderFM        snd_sng_boss2_FM2,	$00, $13
	smpsHeaderFM        snd_sng_boss2_FM3,	$00, $1E
	smpsHeaderFM        snd_sng_boss2_FM4,	$0C, $0F
	smpsHeaderFM        snd_sng_boss2_FM5,	$00, $0F
	smpsHeaderPSG       snd_sng_boss2_PSG1,	$0C, $03, $00, sTone_0A
	smpsHeaderPSG       snd_sng_boss2_PSG2,	$0C, $03, $00, sTone_17
	smpsHeaderPSG       snd_sng_boss2_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_boss2_DAC:
	dc.b	dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $06, dSnareS3, $03
	dc.b	dSnareS3, $03
snd_sng_boss2_DACLoop:
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $06, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	dc.b	dMuffledSnare, $06, dMuffledSnare, $18, dKickS3, $03, dKickS3, $03, dSnareS3, $0C, dKickS3, $0C
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	dc.b	dSnareS3, $03, dSnareS3, $03, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	dc.b	dSnareS3, $03, dMuffledSnare, $06, dMuffledSnare, $18, dKickS3, $03, dKickS3, $03, dSnareS3, $0C
	dc.b	dKickS3, $0C, dKickS3, $0C, dKickS3, $0C, dKickS3, $24, dSnareS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	smpsJump	snd_sng_boss2_DACLoop

; FM1 Data
snd_sng_boss2_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nRst, $18
snd_sng_boss2_FM1Loop:
	dc.b	nC3, $0C, nG3, $06, nC3, $06, nBb3, $06, nC4, $06
	dc.b	nRst, $06, nG3, $06, nBb3, $06, nF3, $06, nRst, $06, nE3, $06
	dc.b	nAb3, $06, nEb3, $06, nRst, $06, nCs3, $06, nC3, $0C, nG3, $06
	dc.b	nC3, $06, nBb3, $06, nC4, $06, nRst, $06, nG3, $06, nBb3, $06
	dc.b	nF3, $06, nRst, $06, nE3, $06, nAb3, $06, nEb3, $06, nRst, $06
	dc.b	nCs3, $06, nC3, $06, nC3, $0C, nG3, $0C, nBb3, $06, nC4, $06
	dc.b	nEb3, $06, nF3, $06, nRst, $06, nEb3, $06, nRst, $06, nE3, $06
	dc.b	nRst, $06, nCs3, $06, nRst, $06, nC3, $0C, nG3, $06, nC3, $06
	dc.b	nBb3, $06, nC4, $06, nRst, $06, nG3, $06, nBb3, $06, nF3, $06
	dc.b	nRst, $06, nE3, $06, nAb3, $06, nEb3, $06, nRst, $06, nCs3, $06
	dc.b	nC3, $0C, nG3, $06, nC3, $06, nBb3, $06, nC4, $06, nRst, $06
	dc.b	nG3, $06, nBb3, $06, nF3, $06, nRst, $06, nE3, $06, nAb3, $06
	dc.b	nEb3, $06, nRst, $06, nCs3, $06, nC3, $06, nC3, $0C, nG3, $0C
	dc.b	nBb3, $06, nC4, $06, nEb3, $06, nF3, $06, nRst, $06, nEb3, $06
	dc.b	nRst, $06, nE3, $06, nRst, $06, nCs3, $06, nRst, $36
	smpsJump	snd_sng_boss2_FM1Loop	

; FM2 Data
snd_sng_boss2_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	;smpsPan             panLeft, $00
	dc.b	nRst, $18
snd_sng_boss2_FM2Loop:
	dc.b	nC5, $06, nC4, $06, nF4, $06, nG4, $06, nEb5, $06
	dc.b	nF4, $06, nG4, $06, nC5, $06, nD5, $06, nEb5, $06, nD5, $06
	dc.b	nCs5, $06
	;smpsModSet          $00, $01, $01, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $03, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $04, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $06, $04
	dc.b	smpsNoAttack, $06
	dc.b	nC5, $06, nC4, $06, nF4, $06, nG4, $06, nEb5, $06, nF4, $06
	dc.b	nG4, $06, nC5, $06, nD5, $06, nEb5, $06, nD5, $06, nCs5, $06
	;smpsModSet          $00, $01, $01, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $03, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $04, $04
	dc.b	nEb5, $06
	;smpsModSet          $00, $01, $06, $04
	dc.b	smpsNoAttack, $06
	;smpsPan             panCenter, $00
	smpsAlterVol	    $04
	dc.b	nC5, $0C, nG4, $06, nC5, $06, nRst, $06, nEb5, $06, nRst, $06
	dc.b	nC5, $06, nEb5, $06, nRst, $06, nEb5, $06, nRst, $06, nD5, $06
	dc.b	nRst, $06, nCs5, $06, nRst, $06
	smpsAlterVol	    $FC
	;smpsPan             panLeft, $00
	dc.b	nC5, $06, nC4, $06, nF4, $06
	dc.b	nG4, $06, nEb5, $06, nF4, $06, nG4, $06, nC5, $06, nD5, $06
	dc.b	nEb5, $06, nD5, $06, nCs5, $06
	;smpsModSet          $00, $01, $01, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $03, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $04, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $06, $04
	dc.b	smpsNoAttack, $06
	dc.b	nC5, $06, nC4, $06, nF4, $06, nG4, $06, nEb5, $06, nF4, $06
	dc.b	nG4, $06, nC5, $06, nD5, $06, nEb5, $06, nD5, $06, nCs5, $06
	;smpsModSet          $00, $01, $01, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $03, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $04, $04
	dc.b	nEb5, $06
	;smpsModSet          $00, $01, $06, $04
	dc.b	smpsNoAttack, $06
	;smpsPan             panCenter, $00
	smpsAlterVol	    $04
	dc.b	nC5, $0C, nG4, $06, nC5, $06, nRst, $06, nEb5, $06, nRst, $06
	dc.b	nC5, $06, nEb5, $06, nRst, $06, nEb5, $06, nRst, $06, nD5, $06
	dc.b	nRst, $06, nCs5, $06, nRst, $36
	;smpsPan             panLeft, $00
	smpsAlterVol	    $FC
	smpsJump	snd_sng_boss2_FM2Loop

; FM3 Data
snd_sng_boss2_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote		$FD
	smpsSetvoice        $01
	dc.b	nRst, $18
snd_sng_boss2_FM3Loop:
	dc.b	nRst, $06, nC5, $06, nC4, $06, nF4, $06, nG4, $06, nEb5, $06
	dc.b	nF4, $06, nG4, $06, nC5, $06, nD5, $06, nEb5, $06, nD5, $06
	;smpsModSet          $00, $01, $01, $04
	dc.b	nCs5, $06
	;smpsModSet          $00, $01, $03, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $04, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $06, $04
	dc.b	smpsNoAttack, $06

	dc.b	smpsNoAttack, $06, nC5, $06, nC4, $06, nF4, $06, nG4, $06, nEb5, $06
	dc.b	nF4, $06, nG4, $06, nC5, $06, nD5, $06, nEb5, $06, nD5, $06
	;smpsModSet          $00, $01, $01, $04
	dc.b	nCs5, $06
	;smpsModSet          $00, $01, $03, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $04, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $06, $04
	dc.b	nEb5, $06

	smpsAlterVol        $F5
	dc.b	nC4, $0C, nG3, $06, nC4, $06, nRst, $06, nEb4, $06, nRst, $06
	dc.b	nC4, $06, nEb4, $06, nRst, $06, nEb4, $06, nRst, $06, nD4, $06
	dc.b	nRst, $06, nCs4, $06, nRst, $0A, nRst, $02
	smpsAlterVol        $0B
	dc.b	nC5, $06, nC4, $06, nF4, $06, nG4, $06, nEb5, $06, nF4, $06
	dc.b	nG4, $06, nC5, $06, nD5, $06, nEb5, $06, nD5, $06
	;smpsModSet          $00, $01, $01, $04
	dc.b	nCs5, $06
	;smpsModSet          $00, $01, $03, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $04, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $06, $04
	dc.b	smpsNoAttack, $06

	dc.b	smpsNoAttack, $06, nC5, $06, nC4, $06, nF4, $06, nG4, $06, nEb5, $06
	dc.b	nF4, $06, nG4, $06, nC5, $06, nD5, $06, nEb5, $06, nD5, $06
	;smpsModSet          $00, $01, $01, $04
	dc.b	nCs5, $06
	;smpsModSet          $00, $01, $03, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $04, $04
	dc.b	smpsNoAttack, $06
	;smpsModSet          $00, $01, $06, $04
	dc.b	nEb5, $06

	smpsAlterVol        $F5
	dc.b	nC4, $0C, nG3, $06, nC4, $06, nRst, $06, nEb4, $06, nRst, $06
	dc.b	nC4, $06, nEb4, $06, nRst, $06, nEb4, $06, nRst, $06, nD4, $06
	dc.b	nRst, $06, nCs4, $06, nRst, $36
	smpsAlterVol        $0B
	smpsJump	snd_sng_boss2_FM3Loop

; FM4 Data
snd_sng_boss2_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nRst, $18
	smpsJump	snd_sng_boss2_FM5Loop

; FM5 Data
snd_sng_boss2_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	dc.b	nRst, $18
snd_sng_boss2_FM5Loop:
	dc.b	nRst, $59, nRst, $67, nG3, $0C, nE3, $06, nG3, $06, nRst, $06, nC4
	dc.b	$06, nRst, $06, nG3, $06, nC4, $06, nRst, $06, nAb3, $06
	dc.b	nRst, $06, nA3, $06, nRst, $06, nBb3, $06, nRst, $7F, nRst, $47, nG3, $0C
	dc.b	nE3, $06, nG3, $06, nRst, $06, nC4, $06, nRst, $06, nG3, $06
	dc.b	nC4, $06, nRst, $06, nAb3, $06, nRst, $06, nA3, $06, nRst, $06
	dc.b	nBb3, $06, nRst, $36
	smpsJump	snd_sng_boss2_FM5Loop

; PSG1 Data
snd_sng_boss2_PSG1:
	dc.b	nG2, $03, nD2, $03, nG1, $03, nFs2, $03
	dc.b	nCs2, $03, nFs1, $03, nF2, $03, nD2, $03
snd_sng_boss2_PSG1Loop:
	dc.b	nC2, $1E, nG1, $0C
	dc.b	nC2, $06, nBb1, $0C, nA1, $06, nAb1, $09, nG2, $03, nCs2, $03
	dc.b	nG1, $03, nFs2, $03, nC2, $03, nFs1, $03, nF2, $03, nC2, $1E
	dc.b	nG1, $0C, nC2, $06, nBb1, $0C, nA1, $06, nAb1, $09, nG2, $03
	dc.b	nCs2, $03, nG1, $03, nFs2, $03, nC2, $03, nFs1, $03, nF2, $03
	dc.b	nRst, $60, nC2, $1E, nG1, $0C, nC2, $06, nBb1, $0C, nA1, $06
	dc.b	nAb1, $09, nG2, $03, nCs2, $03, nG1, $03, nFs2, $03, nC2, $03
	dc.b	nFs1, $03, nF2, $03, nC2, $1E, nG1, $0C, nC2, $06, nBb1, $0C
	dc.b	nA1, $06, nAb1, $09, nG2, $03, nCs2, $03, nG1, $03, nFs2, $03
	dc.b	nC2, $03, nFs1, $03, nF2, $03, nRst, $60, nC3, $03, nG2, $03
	dc.b	nC2, $03, nB2, $03, nFs2, $03, nB1, $03, nBb2, $03, nF2, $03
	dc.b	nFs2, $03, nCs2, $03, nFs1, $03, nF2, $03, nC2, $03, nF1, $03
	dc.b	nE2, $03, nCs2, $03
	smpsJump	snd_sng_boss2_PSG1Loop	

; PSG2 Data
snd_sng_boss2_PSG2:
	dc.b	nRst, $06
	smpsJump	snd_sng_boss2_PSG1	

; PSG3 Data
snd_sng_boss2_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $18
snd_sng_boss2_PSG3Loop:
	dc.b	(nMaxPSG2-$23)&$FF, $06, $03, $06, $03, $06
	dc.b	$06, $09, $03, $06, $06, $06
	dc.b	$03, $03, $06, $03, $03, $03
	dc.b	$03, $06, $06, $06, $03, $06
	dc.b	$03, $06, $06, $09, $03, $06
	dc.b	$06, $06, $03, $03, $06, $03
	dc.b	$03, $03, $03, $0C, $0C, $06
	dc.b	$03, $06, $03, $06, $12, $0C
	dc.b	$0C, $0C, $06, $06, $03, $06
	dc.b	$03, $06, $06, $09, $03, $06
	dc.b	$06, $06, $03, $03, $06, $03
	dc.b	$03, $03, $03, $06, $06, $06
	dc.b	$03, $06, $03, $06, $06, $09
	dc.b	$03, $06, $06, $06, $03, $03
	dc.b	$06, $03, $03, $03, $03, $0C
	dc.b	$0C, $06, $03, $06, $03, $06
	dc.b	$12, $0C, $0C, $0C, $36
	smpsJump	snd_sng_boss2_PSG3Loop

snd_sng_boss2_Voices:
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
