snd_sng_cutscene_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_cutscene_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $7A

	smpsHeaderDAC       snd_sng_cutscene_DAC
	smpsHeaderFM        snd_sng_cutscene_FM1,	$00, $0E
	smpsHeaderFM        snd_sng_cutscene_FM2,	$00, $13
	smpsHeaderFM        snd_sng_cutscene_FM3,	$00, $1E
	smpsHeaderFM        snd_sng_cutscene_FM4,	$00, $22
	smpsHeaderFM        snd_sng_cutscene_FM5,	$00, $22
	smpsHeaderPSG       snd_sng_cutscene_PSG1,	$0C, $05, $00, sTone_0A
	smpsHeaderPSG       snd_sng_cutscene_PSG2,	$0C, $06, $00, sTone_17
	smpsHeaderPSG       snd_sng_cutscene_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_cutscene_DAC:
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	dc.b	dMuffledSnare, $06, dMuffledSnare, $18, dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03
	dc.b	dMuffledSnare, $06, dMuffledSnare, $18, dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03
	dc.b	dMuffledSnare, $06, dMuffledSnare, $18, dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03
	dc.b	dSnareS3, $06, dMuffledSnare, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $03
	dc.b	dSnareS3, $03, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dMuffledSnare, $06, dMuffledSnare, $18
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dMuffledSnare, $06, dMuffledSnare, $18
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dMuffledSnare, $06, dMuffledSnare, $18
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $06, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $06
	dc.b	dSnareS3, $03, dSnareS3, $03, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $03, dSnareS3, $03
	dc.b	dSnareS3, $03, dSnareS3, $03, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dMuffledSnare, $0C, dMuffledSnare, $0C
	dc.b	dSnareS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $03, dSnareS3, $03
	dc.b	dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $06, dSnareS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	dc.b	dSnareS3, $03, dMuffledSnare, $18
	smpsStop

; FM1 Data
snd_sng_cutscene_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $02
	dc.b	nRst, $18, nA2, $03, nRst, $03, nA2, $18, nE3, $06, nA3, $06
	dc.b	nAb3, $06, nG3, $03, nRst, $03, nG3, $0C, nD3, $06, nG2, $0C
	dc.b	nG3, $06, nFs3, $06, nF3, $03, nRst, $03, nF3, $0C, nC3, $06
	dc.b	nF2, $0C, nF3, $06, nD3, $06, nE3, $06, nG3, $03, nRst, $03
	dc.b	nE3, $06, nC3, $06, nE3, $03, nRst, $03, nC3, $06, nD3, $06
	dc.b	nE3, $06, nA2, $03, nRst, $03, nA2, $18, nE3, $06, nA3, $06
	dc.b	nAb3, $06, nG3, $03, nRst, $03, nG3, $0C, nD3, $06, nG2, $0C
	dc.b	nG3, $06, nFs3, $06, nF3, $03, nRst, $03, nF3, $0C, nC3, $06
	dc.b	nF2, $0C, nF3, $06, nD3, $06, nE3, $06, nG3, $03, nRst, $03
	dc.b	nE3, $06, nC3, $06, nE3, $03, nRst, $03, nC3, $06, nD3, $06
	dc.b	nE3, $06, nA2, $03, nRst, $03, nA3, $06, nA2, $06, nC3, $0C
	dc.b	nA2, $06, nE3, $06, nA2, $06, nG2, $03, nRst, $03, nG3, $06
	dc.b	nG2, $06, nD3, $0C, nG3, $06, nFs3, $06, nE3, $06, nF3, $06
	dc.b	nG3, $06, nF3, $06, nF2, $0C, nG2, $06, nA2, $06, nC3, $06
	dc.b	nG2, $06, nRst, $06, nG2, $06, nRst, $1E, nAb2, $0C, nEb3, $06
	dc.b	nBb2, $09, nRst, $03, nBb2, $06, nF3, $06, nBb2, $06, nB2, $03
	dc.b	nRst, $03, nB2, $06, nFs3, $06, nCs3, $09, nRst, $03, nCs3, $06
	dc.b	nAb3, $06, nCs3, $06, nEb3, $09, nRst, $0F
	smpsStop

; FM2 Data
snd_sng_cutscene_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
snd_sng_cutscene_FM2INIT:
	dc.b	nRst, $18, nA3, $03, nRst, $03, nA3, $03, nRst, $03, nC4, $03
	dc.b	nD4, $09, nE4, $03, nRst, $03, nE4, $03, nRst, $03, nA3, $0C
	dc.b	nG3, $03, nRst, $03, nG3, $03, nRst, $03, nC4, $03, nD4, $09
	dc.b	nE4, $03, nRst, $03, nE4, $03, nRst, $03, nG3, $0C, nF3, $03
	dc.b	nRst, $03, nF3, $03, nRst, $03, nC4, $03, nD4, $09, nE4, $03
	dc.b	nRst, $03, nE4, $03, nRst, $03, nF3, $0C, nE3, $03, nRst, $03
	dc.b	nE3, $03, nRst, $03, nE3, $03, nRst, $03, nG3, $03, nRst, $03
	dc.b	nG3, $03, nRst, $03, nG3, $03, nRst, $03, nB3, $03, nRst, $03
	dc.b	nB3, $03, nRst, $03, nA3, $03, nRst, $03, nA3, $03, nRst, $03
	dc.b	nC4, $03, nD4, $09, nE4, $03, nRst, $03, nE4, $03, nRst, $03
	dc.b	nA3, $0C, nG3, $03, nRst, $03, nG3, $03, nRst, $03, nC4, $03
	dc.b	nD4, $09, nE4, $03, nRst, $03, nE4, $03, nRst, $03, nG3, $0C
	dc.b	nF3, $03, nRst, $03, nF3, $03, nRst, $03, nC4, $03, nD4, $09
	dc.b	nE4, $03, nRst, $03, nE4, $03, nRst, $03, nF3, $0C, nE3, $03
	dc.b	nRst, $03, nE3, $03, nRst, $03, nE3, $03, nRst, $03, nG3, $03
	dc.b	nRst, $03, nG3, $03, nRst, $03, nG3, $03, nRst, $03, nC4, $03
	dc.b	nRst, $03, nB3, $03, nRst, $03, nC4, $12, nA3, $12, nC4, $06
	dc.b	nE4, $06, nD4, $12, nG3, $1E, nF3, $12, nC4, $0C, nB3, $06
	dc.b	nC4, $0C, nG3, $06, nRst, $06, nG3, $06, nRst, $1E, nAb3, $06
	dc.b	nC4, $06, nEb4, $06, nBb3, $0C, nD4, $06, nF4, $0C, nB3, $06
	dc.b	nEb4, $06, nFs4, $06, nCs4, $0C, nF4, $06, nAb4, $0C, nEb4, $09
	dc.b	nRst, $0F
	smpsStop

; FM3 Data
snd_sng_cutscene_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	smpsAlterNote       $FD
	;smpsPan             panLeft, $00
	dc.b	nRst, $06
	smpsJump	snd_sng_cutscene_FM2INIT

; FM4 Data 
snd_sng_cutscene_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $03
	;smpsPan             panRight, $00
	dc.b	nRst, $1E, nE4, $06, nRst, $06, nE4, $06, nD4, $06, nE4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nD4, $06, nRst, $06, nD4, $1E
	dc.b	nRst, $06, nE4, $06, nRst, $06, nE4, $06, nD4, $06, nE4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nD4, $06, nRst, $06, nD4, $1E
	dc.b	nRst, $06, nE4, $06, nRst, $06, nE4, $06, nD4, $06, nE4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nD4, $06, nRst, $06, nD4, $1E
	dc.b	nRst, $06, nE4, $06, nRst, $06, nE4, $06, nD4, $06, nE4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nD4, $06, nRst, $06, nD4, $1E
	dc.b	nA3, $06, nRst, $06, nA3, $06, nB3, $06, nC4, $06, nRst, $06
	dc.b	nA3, $06, nRst, $06, nG3, $06, nRst, $06, nG3, $06, nA3, $06
	dc.b	nB3, $06, nRst, $06, nG3, $06, nRst, $06, nF3, $06, nRst, $06
	dc.b	nF3, $06, nRst, $06, nA3, $06, nB3, $06, nC4, $0C, nB3, $06
	dc.b	nRst, $06, nG3, $06, nRst, $1E, nAb3, $0C, nC4, $06, nBb3, $12
	dc.b	nD4, $0C, nB3, $0C, nEb4, $06, nCs4, $12, nF4, $0C, nEb4, $09
	dc.b	nRst, $0F
	smpsStop

; FM5 Data
snd_sng_cutscene_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $03
	;smpsPan             panRight, $00
	dc.b	nRst, $1E, nA3, $06, nRst, $06, nA3, $06, nG3, $06, nA3, $06
	dc.b	nRst, $06, nA3, $06, nRst, $06, nG3, $06, nRst, $06, nG3, $1E
	dc.b	nRst, $06, nC4, $06, nRst, $06, nA3, $06, nG3, $06, nA3, $06
	dc.b	nRst, $06, nC4, $06, nRst, $06, nB3, $06, nRst, $06, nG3, $1E
	dc.b	nRst, $06, nA3, $06, nRst, $06, nA3, $06, nG3, $06, nA3, $06
	dc.b	nRst, $06, nA3, $06, nRst, $06, nG3, $06, nRst, $06, nG3, $1E
	dc.b	nRst, $06, nC4, $06, nRst, $06, nA3, $06, nG3, $06, nA3, $06
	dc.b	nRst, $06, nC4, $06, nRst, $06, nB3, $06, nRst, $06, nG3, $1E
	dc.b	nE3, $06, nRst, $06, nE3, $06, nG3, $06, nA3, $06, nRst, $06
	dc.b	nE3, $06, nRst, $06, nD3, $06, nRst, $06, nD3, $06, nFs3, $06
	dc.b	nG3, $06, nRst, $06, nD3, $06, nRst, $06, nC3, $06, nRst, $06
	dc.b	nC3, $06, nRst, $06, nF3, $06, nD3, $06, nF3, $0C, nG3, $06
	dc.b	nRst, $06, nD3, $06, nRst, $1E, nEb3, $12, nF3, $1E, nFs3, $18
	dc.b	nAb3, $18, nBb3, $09, nRst, $0F
	smpsStop

; PSG1 Data
snd_sng_cutscene_PSG1:
	dc.b	nRst, $18, nA2, $06, nE2, $06, nC3, $06, nA2, $06, nA3, $03
	dc.b	nE3, $03, nC3, $03, nA2, $03, nE3, $03, nC3, $03, nA2, $03
	dc.b	nE2, $03, nA2, $06, nD2, $06, nB2, $06, nG2, $06, nG3, $03
	dc.b	nD3, $03, nB2, $03, nG2, $03, nD3, $03, nB2, $03, nG2, $03
	dc.b	nD2, $03, nA2, $06, nF2, $06, nC3, $06, nA2, $06, nA3, $03
	dc.b	nF3, $03, nC3, $03, nA2, $03, nF3, $03, nC3, $03, nA2, $03
	dc.b	nF2, $03, nE2, $03, nG2, $03, nB2, $03, nG2, $03, nD3, $03
	dc.b	nB2, $03, nE3, $03, nC3, $03, nF3, $03, nCs3, $03, nFs3, $03
	dc.b	nD3, $03, nG3, $03, nEb3, $03, nAb3, $03, nE3, $03, nA2, $06
	dc.b	nE2, $06, nC3, $06, nA2, $06, nA3, $03, nE3, $03, nC3, $03
	dc.b	nA2, $03, nE3, $03, nC3, $03, nA2, $03, nE2, $03, nA2, $06
	dc.b	nD2, $06, nB2, $06, nG2, $06, nG3, $03, nD3, $03, nB2, $03
	dc.b	nG2, $03, nB3, $03, nG3, $03, nD3, $03, nB2, $03, nA2, $06
	dc.b	nF2, $06, nC3, $06, nA2, $06, nA3, $03, nF3, $03, nC3, $03
	dc.b	nA2, $03, nF3, $03, nC3, $03, nA2, $03, nF2, $03, nE2, $03
	dc.b	nG2, $03, nB2, $03, nG2, $03, nD3, $03, nB2, $03, nE3, $03
	dc.b	nC3, $03, nF3, $03, nCs3, $03, nFs3, $03, nD3, $03, nG3, $03
	dc.b	nEb3, $03, nAb3, $03, nE3, $03, nRst, $06, nC3, $0C, nA2, $0C
	dc.b	nE2, $06, nC2, $06, nA1, $06, nRst, $06, nB2, $0C, nG2, $0C
	dc.b	nD2, $06, nB1, $06, nG1, $06, nRst, $06, nC3, $0C, nA2, $0C
	dc.b	nF2, $06, nC2, $06, nA1, $06, nG1, $03, nB1, $03, nD2, $03
	dc.b	nG2, $03, nB1, $03, nD2, $03, nG2, $03, nB2, $03, nD2, $03
	dc.b	nG2, $03, nB2, $03, nD3, $03, nG2, $03, nB2, $03, nD3, $03
	dc.b	nG3, $03, nC2, $06, nEb2, $06, nAb2, $06, nD2, $0C, nF2, $06
	dc.b	nBb2, $0C, nEb2, $06, nFs2, $06, nB2, $06, nF2, $0C, nAb2, $06
	dc.b	nCs3, $0C, nG2, $09, nRst, $0F
	smpsStop

; PSG2 Data
snd_sng_cutscene_PSG2:
	dc.b	nRst, $18, nA1, $06, nE1, $06, nC2, $06, nA1, $06, nA2, $03
	dc.b	nE2, $03, nC2, $03, nA1, $03, nE2, $03, nC2, $03, nA1, $03
	dc.b	nE1, $03, nA1, $06, nD1, $06, nB1, $06, nG1, $06, nG2, $03
	dc.b	nD2, $03, nB1, $03, nG1, $03, nD2, $03, nB1, $03, nG1, $03
	dc.b	nD1, $03, nA1, $06, nF1, $06, nC2, $06, nA1, $06, nA2, $03
	dc.b	nF2, $03, nC2, $03, nA1, $03, nF2, $03, nC2, $03, nA1, $03
	dc.b	nF1, $03, nE1, $03, nG1, $03, nB1, $03, nG1, $03, nD2, $03
	dc.b	nB1, $03, nE2, $03, nC2, $03, nF2, $03, nCs2, $03, nFs2, $03
	dc.b	nD2, $03, nG2, $03, nEb2, $03, nAb2, $03, nE2, $03, nA1, $06
	dc.b	nE1, $06, nC2, $06, nA1, $06, nA2, $03, nE2, $03, nC2, $03
	dc.b	nA1, $03, nE2, $03, nC2, $03, nA1, $03, nE1, $03, nA1, $06
	dc.b	nD1, $06, nB1, $06, nG1, $06, nG2, $03, nD2, $03, nB1, $03
	dc.b	nG1, $03, nB2, $03, nG2, $03, nD2, $03, nB1, $03, nA1, $06
	dc.b	nF1, $06, nC2, $06, nA1, $06, nA2, $03, nF2, $03, nC2, $03
	dc.b	nA1, $03, nF2, $03, nC2, $03, nA1, $03, nF1, $03, nE1, $03
	dc.b	nG1, $03, nB1, $03, nG1, $03, nD2, $03, nB1, $03, nE2, $03
	dc.b	nC2, $03, nF2, $03, nCs2, $03, nFs2, $03, nD2, $03, nG2, $03
	dc.b	nEb2, $03, nAb2, $03, nE2, $03, nRst, $06, nC2, $0C, nA1, $0C
	dc.b	nE1, $06, nC1, $06, nA0, $06, nRst, $06, nB1, $0C, nG1, $0C
	dc.b	nD1, $06, nB0, $06, nG0, $06, nRst, $06, nC2, $0C, nA1, $0C
	dc.b	nF1, $06, nC1, $06, nA0, $06, nG0, $03, nB0, $03, nD1, $03
	dc.b	nG1, $03, nB0, $03, nD1, $03, nG1, $03, nB1, $03, nD1, $03
	dc.b	nG1, $03, nB1, $03, nD2, $03, nG1, $03, nB1, $03, nD2, $03
	dc.b	nG2, $03, nC1, $06, nEb1, $06, nAb1, $06, nD1, $0C, nF1, $06
	dc.b	nBb1, $0C, nEb1, $06, nFs1, $06, nB1, $06, nF1, $0C, nAb1, $06
	dc.b	nCs2, $0C, nG1, $09, nRst, $0F
	smpsStop

; PSG3 Data
snd_sng_cutscene_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $06, $0C, $06, $0C, $06, $0C
	dc.b	$0C, $06, $0C, $06, $0C, $0C
	dc.b	$06, $0C, $06, $0C, $0C, $06
	dc.b	$06, $0C, $06, $0C, $06, $06
	dc.b	$0C, $06, $0C, $0C, $06, $0C
	dc.b	$06, $0C, $0C, $06, $0C, $06
	dc.b	$0C, $0C, $06, $06, $0C, $06
	dc.b	$0C, $06, $06, $0C, $06, $0C
	dc.b	$06, $06, $0C, $0C, $0C, $06
	dc.b	$06, $06, $0C, $06, $0C, $06
	dc.b	$06, $0C, $0C, $0C, $06, $06
	dc.b	$06, $06, $0C, $0C, $0C, $06
	dc.b	$06, $0C, $0C, $0C, $06, $18
	smpsStop

snd_sng_cutscene_Voices:
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
;	$35
;	$03, $02, $01, $01, 	$14, $0F, $19, $14, 	$05, $00, $0D, $0F
;	$00, $00, $04, $07, 	$01, $00, $01, $02, 	$FC, $FC, $04, $19
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $02, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $14, $0F, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $00, $0D, $0F
	smpsVcDecayRate2    $00, $00, $04, $07
	smpsVcDecayLevel    $01, $00, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0A, $05
	smpsVcTotalLevel    $FC, $FC, $04, $19

;	Voice $02
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

;	Voice $03
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
