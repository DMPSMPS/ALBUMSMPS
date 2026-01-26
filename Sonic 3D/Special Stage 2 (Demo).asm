Snd_SpecialS2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_SpecialS2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $79

	smpsHeaderDAC       Snd_SpecialS2_DAC
	smpsHeaderFM        Snd_SpecialS2_FM1,	$00, $0D
	smpsHeaderFM        Snd_SpecialS2_FM2,	$00, $16
	smpsHeaderFM        Snd_SpecialS2_FM3,	$00, $16
	smpsHeaderFM        Snd_SpecialS2_FM4,	$00, $10
	smpsHeaderFM        Snd_SpecialS2_FM5,	$00, $10
	smpsHeaderPSG       Snd_SpecialS2_PSG1,	$0C, $06, $00, sTone_06
	smpsHeaderPSG       Snd_SpecialS2_PSG2,	$0C, $07, $00, sTone_04
	smpsHeaderPSG       Snd_SpecialS2_PSG3,	$23, $01, $00, sTone_12

; DAC Data
Snd_SpecialS2_DAC:
	dc.b	dKickS3, $12, dKickS3, $1E, dKickS3, $12, dKickS3, $12, dKickS3, $0C, dKickS3, $12
	dc.b	dKickS3, $1E, dKickS3, $12, dKickS3, $12, dKickS3, $06, dKickS3, $12, dMuffledSnare, $0C
	dc.b	dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C
	dc.b	dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $12, dMuffledSnare, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $0C, dMuffledSnare, $0C
	dc.b	dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C
	dc.b	dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dMuffledSnare, $0C
	dc.b	dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C
	dc.b	dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $0C
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $12, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $06, dSnareS3, $06, dKickS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $12
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $06, dSnareS3, $06
	dc.b	dSnareS3, $03, dSnareS3, $03, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $12, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $03, dSnareS3, $03
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $12, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dSnareS3, $0C, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dSnareS3, $03
	dc.b	dSnareS3, $03, dSnareS3, $06, dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C
	dc.b	dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $0C, dKickS3, $0C, dMuffledSnare, $06, dSnareS3, $03
	dc.b	dSnareS3, $03, dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, dKickS3, $03, dKickS3, $03
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, dKickS3, $03, dKickS3, $03
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, dKickS3, $02, dKickS3, $02
	dc.b	dKickS3, $02, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $06, dKickS3, $0C, dKickS3, $02
	dc.b	dKickS3, $02, dKickS3, $02, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dMuffledSnare, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $06, dSnareS3, $06, dKickS3, $0C, dKickS3, $12
	dc.b	dKickS3, $02, dKickS3, $02, dKickS3, $02, dSnareS3, $0C
	smpsJump	Snd_SpecialS2_DAC	

; FM1 Data
Snd_SpecialS2_FM1:
	smpsSetvoice        $00
	smpsModSet          $07, $01, $02, $05
	dc.b	nC2, $0C, nC3, $06, nBb2, $0C, nBb2, $06, nA2, $06, nG2, $06
	dc.b	nC2, $0C, nC3, $06, nBb2, $0C, nBb2, $06, nG2, $0C, nC2, $0C
	dc.b	nC3, $06, nBb2, $0C, nBb2, $06, nA2, $06, nG2, $06, nC2, $0C
	dc.b	nC3, $06, nBb2, $0C, nBb2, $06, nB2, $06, nC2, $0C, nC3, $06
	dc.b	nC2, $06, nC3, $06, nC2, $06, nC3, $06, nC2, $06, nBb2, $0C
	dc.b	nBb3, $06, nBb2, $06, nBb3, $06, nBb2, $06, nBb2, $06, nBb3, $06
	dc.b	nF2, $0C, nF3, $06, nF2, $06, nF3, $06, nF2, $06, nF3, $06
	dc.b	nF2, $06, nAb2, $0C, nAb3, $06, nAb2, $06, nAb3, $06, nAb2, $06
	dc.b	nAb3, $06, nAb2, $06, nC2, $0C, nC3, $06, nC2, $06, nC3, $06
	dc.b	nC2, $06, nC3, $06, nC2, $06, nBb2, $0C, nBb3, $06, nBb2, $06
	dc.b	nBb3, $06, nBb2, $06, nBb3, $06, nBb2, $06, nF2, $0C, nF3, $06
	dc.b	nF2, $06, nF3, $06, nF2, $06, nF3, $06, nF2, $06, nAb2, $0C
	dc.b	nAb3, $06, nAb2, $06, nAb3, $06, nAb2, $06, nAb3, $06, nAb2, $06
	dc.b	nAb3, $06, nC2, $06, nC3, $06, nC2, $06, nC3, $06, nC2, $06
	dc.b	nE2, $06, nG2, $06, nBb2, $0C, nBb3, $06, nBb2, $06, nBb3, $06
	dc.b	nBb2, $06, nA2, $06, nG2, $06, nF2, $0C, nF3, $06, nF2, $06
	dc.b	nF3, $06, nF2, $06, nF2, $06, nG2, $06, nAb2, $0C, nAb3, $06
	dc.b	nAb2, $06, nAb3, $06, nF3, $06, nE3, $06, nD3, $06, nC2, $0C
	dc.b	nC3, $06, nC2, $06, nC3, $06, nC2, $06, nE2, $06, nG2, $06
	dc.b	nBb2, $0C, nBb3, $06, nBb2, $06, nBb3, $06, nBb2, $06, nA2, $06
	dc.b	nG2, $06, nF2, $0C, nF3, $06, nF2, $06, nF3, $06, nF2, $06
	dc.b	nF2, $06, nG2, $06, nAb2, $0C, nAb3, $06, nAb2, $06, nAb3, $06
	dc.b	nAb2, $06, nAb3, $06, nF2, $06, nFs2, $06, nG2, $06, nG3, $06
	dc.b	nG2, $06, nG3, $06, nD3, $06, nC3, $06, nB2, $06, nA2, $0C
	dc.b	nA3, $06, nA2, $06, nA3, $06, nE3, $06, nD3, $06, nC3, $06
	dc.b	nBb2, $0C, nBb3, $06, nBb2, $06, nBb3, $06, nF3, $06, nE3, $06
	dc.b	nD3, $06, nC3, $0C, nC4, $06, nC3, $06, nC4, $06, nC3, $06
	dc.b	nB2, $06, nBb2, $06, nA2, $0C, nA3, $06, nA2, $06, nA3, $06
	dc.b	nA2, $06, nBb2, $06, nC3, $06, nBb2, $0C, nBb3, $06, nBb2, $06
	dc.b	nBb3, $06, nBb2, $06, nA2, $06, nAb2, $06, nG2, $0C, nG3, $06
	dc.b	nG2, $06, nG3, $06, nG2, $06, nF2, $06, nFs2, $06, nG2, $0C
	dc.b	nG3, $06, nF3, $06, nF3, $06, nE3, $06, nD3, $06, nC3, $06
	dc.b	nB2, $06, nG2, $06, nG3, $06, nG2, $06, nFs2, $06, nG2, $06
	dc.b	nA2, $06, nB2, $06, nA2, $0C, nA3, $06, nA2, $06, nAb2, $06
	dc.b	nA2, $06, nBb2, $06, nC3, $06, nBb2, $0C, nBb3, $06, nBb2, $06
	dc.b	nA2, $06, nBb2, $06, nC3, $06, nD3, $06, nC3, $0C, nC4, $06
	dc.b	nC3, $06, nC4, $06, nC3, $06, nB2, $06, nBb2, $06, nA2, $0C
	dc.b	nA3, $06, nA2, $06, nAb2, $06, nA2, $06, nB2, $06, nC3, $06
	dc.b	nD3, $0C, nD3, $06, nC3, $06, nCs3, $06, nD3, $06, nC3, $06
	dc.b	nB2, $06, nA2, $06, nG2, $06, nG3, $06, nG2, $06, nG3, $06
	dc.b	nG2, $06, nF2, $06, nFs2, $06, nG2, $0C, nA2, $06, nG2, $06
	dc.b	nFs2, $06, nG2, $06, nA2, $06, nB2, $06, nD3, $06, nC3, $06
	dc.b	nC4, $06, nC3, $06, nC4, $06, nC3, $06, nD3, $06, nC3, $06
	dc.b	nB2, $0C, nB3, $06, nB2, $06, nB3, $06, nB2, $06, nB2, $06
	dc.b	nC3, $06, nB2, $06, nBb2, $06, nBb3, $06, nBb2, $06, nBb3, $06
	dc.b	nBb2, $06, nBb2, $06, nA2, $06, nG2, $06, nF2, $06, nF3, $06
	dc.b	nF2, $06, nF3, $06, nF2, $06, nG2, $06, nA2, $06, nF2, $06
	dc.b	nAb2, $06, nAb3, $06, nAb2, $06, nAb3, $06, nAb2, $06, nAb2, $06
	dc.b	nBb2, $06, nAb2, $06, nG2, $06, nG2, $06, nA2, $06, nA2, $06
	dc.b	nB2, $06, nG2, $06, nA2, $06, nB2, $06, nC3, $06, nC4, $06
	dc.b	nD3, $06, nC3, $06, nE3, $06, nD3, $06, nC3, $06, nB2, $0C
	dc.b	nB3, $06, nB2, $06, nB2, $06, nD3, $06, nD3, $06, nC3, $06
	dc.b	nB2, $06, nBb2, $06, nBb3, $06, nBb2, $06, nA2, $06, nBb2, $06
	dc.b	nBb2, $06, nA2, $06, nG2, $06, nF2, $06, nF3, $06, nF2, $06
	dc.b	nF3, $06, nF2, $06, nG2, $06, nA2, $06, nF2, $06, nAb2, $06
	dc.b	nAb3, $06, nAb2, $06, nG2, $06, nAb2, $06, nG2, $06, nAb2, $06
	dc.b	nAb2, $06, nG2, $06, nG2, $06, nA2, $06, nA2, $06, nB2, $06
	dc.b	nG2, $06, nA2, $06, nB2, $06, nA2, $06, nB2, $06, nC3, $06
	dc.b	nA3, $0C, nE3, $06, nC3, $06, nA2, $06, nAb2, $06, nB2, $06
	dc.b	nC3, $06, nAb3, $0C, nE3, $06, nC3, $06, nAb2, $06, nG2, $06
	dc.b	nB2, $06, nC3, $06, nG3, $0C, nE3, $06, nC3, $06, nG2, $06
	dc.b	nFs2, $06, nA2, $06, nC3, $06, nFs3, $0C, nC3, $06, nA2, $06
	dc.b	nFs2, $06, nF2, $06, nF2, $06, nF2, $06, nF2, $06, nF2, $06
	dc.b	nE2, $06, nF2, $06, nFs2, $06, nG2, $03, nRst, $09, nG2, $12
	dc.b	nG2, $06, nA2, $06, nB2, $06
	smpsJump	Snd_SpecialS2_FM1	

; FM2 Data
Snd_SpecialS2_FM2:
	smpsFMAlterVol      $02
	smpsSetvoice        $01
	smpsModSet          $07, $01, $05, $07
	dc.b    nC5, $03, nE4, $03, nG4, $03, nC5, $03, nE5, $03, nRst, $03
	smpsModSet          $18, $01, $09, $07
	dc.b    nD5, $1E
	smpsModSet          $07, $01, $05, $07
	dc.b    nC5, $03, nE4, $03, nG4, $03, nC5, $03, nE5, $03
	dc.b    nRst, $03, nD5, $0C, nG5, $06, nF5, $0C, nC5, $03, nE4, $03
	dc.b    nG4, $03, nC5, $03, nE5, $03, nRst, $03
	smpsModSet          $18, $01, $09, $07
	dc.b    nD5, $1E
	smpsModSet          $07, $01, $05, $07
	dc.b    nC5, $03
	dc.b    nE4, $03, nG4, $03, nC5, $03, nE5, $03, nRst, $03, nD5, $0C
	dc.b    nG5, $06, nF5, $06, nC5, $0C
	smpsSetvoice        $04
	smpsFMAlterVol      $FE
	smpsModSet          $07, $01, $03, $05
	dc.b    nG2, $06, nE3, $06, nC3, $06, nG3, $06, nE3, $06, nC4, $06
	smpsModSet          $18, $01, $09, $07
	dc.b    nBb3, $24
	smpsModSet          $07, $01, $05, $07
	dc.b    nG3, $06, nBb3, $06
	smpsModSet          $18, $01, $09, $07
	dc.b    nA3, $24
	smpsModSet          $07, $01, $03, $05
	dc.b    nF3, $06, nG3, $06
	dc.b    nAb3, $06, nRst, $06, nAb3, $06, nRst, $06, nAb3, $06, nG3, $0C
	dc.b    nF3, $06, nE3, $0C, nC3, $06, nG3, $06, nE3, $06, nC4, $06
	dc.b    nG3, $06, nE3, $06
	smpsModSet          $18, $01, $09, $07
	dc.b    nBb3, $24
	smpsModSet          $07, $01, $05, $07
	dc.b    nG3, $06, nBb3, $06
	smpsModSet          $18, $01, $09, $07
	dc.b    nA3, $24
	smpsModSet          $07, $01, $03, $05
	dc.b    nF3, $06, nG3, $06, nAb3, $0C, nC4, $0C, nF4, $06, nE4, $0C
	dc.b    nD4, $0C, nC3, $06, nG2, $06, nE3, $06, nC3, $06, nG3, $06
	dc.b    nE3, $06, nC4, $06
	smpsModSet          $18, $01, $09, $07
	dc.b    nBb3, $24
	smpsModSet          $07, $01, $05, $07
	dc.b    nG3, $06, nBb3, $06
	smpsModSet          $18, $01, $09, $07
	dc.b    nA3, $24
	smpsModSet          $07, $01, $03, $05
	dc.b    nF3, $06, nG3, $06, nAb3, $0C, nAb3, $0C, nAb3, $06, nG3, $0C
	dc.b    nF3, $06, nE3, $0C, nC3, $06, nG3, $06, nE3, $06, nC4, $06
	dc.b    nG3, $06, nE3, $06
	smpsModSet          $18, $01, $09, $07
	dc.b    nBb3, $24
	smpsModSet          $07, $01, $05, $07
	dc.b    nG3, $06, nBb3, $06
	smpsModSet          $18, $01, $09, $07
	dc.b    nA3, $24
	smpsModSet          $07, $01, $03, $05
	dc.b    nF3, $06, nG3, $06, nAb3, $0C, nC4, $0C, nF4, $06, nE4, $0C
	dc.b    nD4, $0C
	smpsSetvoice        $06
        smpsFMAlterVol      $FF
	smpsModSet          $0C, $01, $05, $07
	dc.b    nB4, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nB3, $06, nD4, $06, nG4, $06, nAb4, $06, nA4, $0C
	dc.b    nC5, $0C, nE5, $06, nD5, $0C, nC5, $06, nD5, $0C, nD4, $06
	dc.b    nF4, $06, nBb4, $06, nD5, $06, nE5, $06, nF5, $06, nE5, $0C
	dc.b    nD5, $0C, nC5, $06, nE4, $06, nG4, $06, nAb4, $06
	smpsModSet          $0C, $01, $05, $07
	dc.b    nA4, $18
	smpsModSet          $07, $01, $03, $05
	dc.b    nC4, $06, nE4, $06, nG4, $06, nA4, $06, nBb4, $0C, nA4, $0C
	dc.b    nG4, $0C, nF4, $06, nE4, $06
	smpsModSet          $0C, $01, $05, $07
	dc.b    nB4, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nD5, $06, nC5, $06
	dc.b    nB4, $06, nA4, $06, nAb4, $06
	smpsModSet          $18, $01, $05, $07
	dc.b    nG4, $36
	smpsModSet          $0C, $01, $05, $07
	dc.b    nB4, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nB3, $06
	dc.b    nD4, $06, nG4, $06, nAb4, $06, nA4, $0C, nC5, $0C, nE5, $06
	dc.b    nD5, $0C, nC5, $06, nD5, $0C, nD4, $06, nF4, $06, nBb4, $06
	dc.b    nD5, $06, nE5, $06, nF5, $06, nE5, $0C, nD5, $0C, nC5, $06
	dc.b    nE4, $06, nG4, $06, nAb4, $06
	smpsModSet          $0C, $01, $05, $07
	dc.b    nA4, $18
	smpsModSet          $07, $01, $03, $05
	dc.b    nE4, $06, nA4, $06
	dc.b    nB4, $06, nC5, $06, nD5, $0C, nC5, $0C, nB4, $0C, nA4, $06
	dc.b    nG4, $06, nG4, $06
 	smpsModSet          $07, $01, $05, $07
	dc.b    nB4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nD5, $06, nC5, $06, nB4, $06
	dc.b    nC5, $06, nD5, $06
	smpsModSet          $18, $01, $05, $07
	dc.b    nG5, $36
	smpsSetvoice        $07
        smpsFMAlterVol      $01
	smpsModSet          $0C, $01, $04, $06
	dc.b    nE5, $18
	smpsModSet          $07, $01, $03, $05
	dc.b    nE5, $06, nF5, $06, nG5, $06, nG5, $12, nF5, $0C
	dc.b    nE5, $0C, nG5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nG5, $12, nF5, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nE5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nF5, $12
	dc.b    nC5, $1E, nC5, $12, nF5, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nE5, $0C, nE5, $0C, nD5, $0C
	dc.b    nC5, $0C, nB4, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nE5, $18
	smpsModSet          $07, $01, $03, $05
	dc.b    nE5, $06, nF5, $06, nG5, $06
	smpsModSet          $0C, $01, $04, $06
	dc.b    nG5, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nF5, $0C, nE5, $0C, nG5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nG5, $12, nF5, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nE5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nF5, $12, nC5, $1E, nC5, $12, nF5, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nE5, $0C
	dc.b    nE5, $0C, nD5, $0C, nC5, $0C, nB4, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nC5, $12, nD5, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nC5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nC5, $12, nD5, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nC5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nC5, $12, nD5, $12
	smpsModSet          $07, $01, $03, $05
	dc.b    nC5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nE5, $12, nD5, $12
	smpsModSet          $07, $01, $03, $05	
	dc.b    nC5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nD5, $12, nC5, $12
	smpsModSet          $07, $01, $03, $05	
	dc.b    nD5, $0C
	smpsModSet          $0C, $01, $04, $06
	dc.b    nC5, $18, nB4, $18
	smpsJump	Snd_SpecialS2_FM2

; FM3 Data
Snd_SpecialS2_FM3:
	smpsFMAlterVol      $03
	smpsSetvoice        $01
	smpsModSet          $07, $01, $05, $07
	dc.b	nC5, $03, nE4, $03, nG4, $03, nC5, $03, nE5, $03, nRst, $03
	dc.b	nBb4, $1E, nC5, $03, nE4, $03, nG4, $03, nC5, $03, nE5, $03
	dc.b	nRst, $03, nBb4, $0C, nD5, $06, nD5, $0C, nC5, $03, nE4, $03
	dc.b	nG4, $03, nC5, $03, nE5, $03, nRst, $03, nBb4, $1E, nC5, $03
	dc.b	nE4, $03, nG4, $03, nC5, $03, nE5, $03, nRst, $03, nBb4, $0C
	dc.b	nD5, $06, nD5, $06, nC5, $0C, nRst, $7F, nRst, $7F, nRst, $7C
	smpsFMAlterVol      $FD
	smpsModSet          $07, $01, $07, $05
	smpsSetvoice        $05
	dc.b	nG3, $06, nE3, $06, nC4, $06, nG3, $06, nE4, $06, nC4, $06
	dc.b	nG4, $06, nG4, $24, nE4, $06, nG4, $06, nF4, $24, nC4, $06
	dc.b	nE4, $06, nF4, $0C, nF4, $0C, nF4, $06, nE4, $0C, nD4, $06
	dc.b	nC4, $0C, nG3, $06, nE4, $06, nC4, $06, nG4, $06, nE4, $06
	dc.b	nC4, $06, nG4, $24, nE4, $06, nG4, $06, nF4, $24, nC4, $06
	dc.b	nE4, $06, nF4, $0C, nAb4, $0C, nC5, $06, nAb4, $0C, nB4, $0C
	dc.b	nG4, $12, nG3, $06, nB3, $06, nD4, $06, nB3, $06, nC4, $0C
	dc.b	nE4, $0C, nC5, $06, nB4, $0C, nA4, $06, nBb4, $0C, nBb3, $06
	dc.b	nD4, $06, nF4, $06, nBb4, $06, nC5, $06, nD5, $06, nC5, $0C
	dc.b	nB4, $0C, nG4, $06, nC4, $06, nE4, $06, nE4, $06, nE4, $18
	dc.b	nA3, $06, nC4, $06, nC4, $06, nE4, $06, nF4, $0C, nF4, $0C
	dc.b	nD4, $0C, nD4, $06, nC4, $06, nG4, $12, nB4, $06, nA4, $06
	dc.b	nG4, $06, nE4, $06, nEb4, $06, nD4, $36, nG4, $12, nG3, $06
	dc.b	nB3, $06, nD4, $06, nB3, $06, nC4, $0C, nE4, $0C, nG4, $06
	dc.b	nF4, $06, nG4, $06, nA4, $06, nBb4, $0C, nBb3, $06, nD4, $06
	dc.b	nF4, $06, nBb4, $06, nC5, $06, nD5, $06, nC5, $0C, nB4, $0C
	dc.b	nG4, $06, nC4, $06, nE4, $06, nD4, $06, nE4, $18, nB3, $06
	dc.b	nC4, $06, nD4, $06, nE4, $06, nA4, $0C, nA4, $0C, nG4, $0C
	dc.b	nFs4, $06, nE4, $06, nEb4, $06, nD4, $06, nE4, $06, nG4, $06
	dc.b	nA4, $06, nG4, $06, nG4, $06, nA4, $06, nB4, $36, nC5, $18
	dc.b	nC5, $0C, nC5, $06, nB4, $12, nB4, $0C, nB4, $0C, nB4, $0C
	dc.b	nBb4, $12, nBb4, $12, nBb4, $0C, nA4, $12, nA4, $1E, nAb4, $12
	dc.b	nAb4, $12, nAb4, $0C, nG4, $0C, nG4, $0C, nA4, $0C, nG4, $0C
	dc.b	nC5, $18, nC5, $0C, nC5, $06, nB4, $12, nB4, $0C, nB4, $0C
	dc.b	nB4, $0C, nBb4, $12, nBb4, $12, nBb4, $0C, nA4, $12, nA4, $1E
	dc.b	nAb4, $12, nAb4, $12, nAb4, $0C, nG4, $0C, nG4, $0C, nG4, $0C
	dc.b	nAb4, $0C, nA4, $18, nE5, $0C, nA4, $0C, nAb4, $18, nE5, $0C
	dc.b	nAb4, $0C, nG4, $18, nE5, $0C, nG4, $0C, nFs4, $18, nFs5, $0C
	dc.b	nFs4, $0C, nF4, $24, nFs4, $0C, nG4, $30
	smpsJump	Snd_SpecialS2_FM3

; FM4 Data
Snd_SpecialS2_FM4:
	smpsPan             panLeft, $00
	smpsModSet          $07, $01, $09, $05
	smpsSetvoice        $02
	dc.b	nC3, $0C, nRst, $06, nBb2, $18, nRst, $06, nC3, $0C, nRst, $06
	dc.b	nBb2, $12, nBb2, $0C, nC3, $0C, nRst, $06, nBb2, $18, nRst, $06
	dc.b	nC3, $0C, nRst, $06, nBb2, $12, nB2, $06, nRst, $06
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $F9
	smpsModSet          $24, $01, $04, $07
	smpsAlterNote       $FD
	dc.b	nC2, $30, nBb1, $30, nA1, $30, nAb1, $30, nC2, $30, nBb1, $30
	dc.b	nA1, $30, nAb1, $30, nC2, $30, nBb1, $30, nA1, $30, nAb1, $30
	dc.b	nC2, $30, nBb1, $30, nA1, $30, nAb1, $30, nG1, $2A, nA1, $30
	dc.b	nBb1, $30, nC2, $30, nA1, $30, nBb1, $30, nB1, $24, nC2, $06
	dc.b	nCs2, $06, nD2, $36, nG1, $2A, nA1, $30, nBb1, $30, nC2, $30
	dc.b	nA1, $30, nD2, $24, nC2, $06, nB1, $06, nA1, $06, nG1, $1E
	dc.b	nG1, $06, nA1, $06, nB1, $36
	smpsSetvoice        $02
	smpsFMAlterVol      $07
	smpsPan             panLeft, $00
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $00
	dc.b	nC4, $12, nC4, $12, nC4, $06, nB3, $12, nB3, $0C, nB3, $0C
	dc.b	nB3, $0C, nBb3, $12, nBb3, $0C, nBb3, $06, nC4, $06, nBb3, $06
	dc.b	nA3, $0C, nC4, $0C, nBb3, $0C, nA3, $0C, nAb3, $12, nAb3, $12
	dc.b	nAb3, $0C, nG3, $0C, nG3, $0C, nA3, $0C, nB3, $0C, nC4, $12
	dc.b	nC4, $12, nC4, $06, nB3, $12, nB3, $0C, nB3, $0C, nB3, $0C
	dc.b	nBb3, $12, nBb3, $0C, nBb3, $06, nC4, $06, nBb3, $06, nA3, $0C
	dc.b	nC4, $0C, nBb3, $0C, nA3, $0C, nAb3, $12, nAb3, $12, nAb3, $0C
	dc.b	nG3, $0C, nG3, $0C
	smpsModSet          $07, $01, $0A, $06
	dc.b	nA3, $0C, nB3, $0C, nA3, $12, nC4, $12
	dc.b	nE4, $0C, nAb3, $12, nB3, $12, nE4, $0C, nG3, $12, nC4, $12
	dc.b	nE4, $0C, nFs4, $0C, nE4, $0C, nD4, $0C, nA3, $0C, nC4, $0C
	dc.b	nB3, $0C, nC4, $0C, nCs4, $0C, nD4, $03, nRst, $09, nD4, $24
	smpsSetvoice        $02
	smpsJump	Snd_SpecialS2_FM4	

; FM5 Data
Snd_SpecialS2_FM5:
	smpsPan             panRight, $00
	smpsModSet          $07, $01, $08, $05
	smpsSetvoice        $02
	dc.b	nC5, $0C, nRst, $06, nBb4, $18, nRst, $06, nC5, $0C, nRst, $06
	dc.b	nBb4, $12, nBb4, $0C, nC5, $0C, nRst, $06, nBb4, $18, nRst, $06
	dc.b	nC5, $0C, nRst, $06, nBb4, $12, nB4, $06, nRst, $06
	smpsSetvoice        $03
	smpsFMAlterVol      $F9
	smpsPan             panLeft, $00
	smpsModSet          $24, $01, $04, $07
	smpsAlterNote       $02	
	dc.b	nC2, $30, nBb1, $30, nA1, $30, nAb1, $30, nC2, $30, nBb1, $30
	dc.b	nA1, $30, nAb1, $30, nC2, $30, nBb1, $30, nA1, $30, nAb1, $30
	dc.b	nC2, $30, nBb1, $30, nA1, $30, nAb1, $30, nG1, $2A, nA1, $30
	dc.b	nBb1, $30, nC2, $30, nA1, $30, nBb1, $30, nB1, $24, nC2, $06
	dc.b	nCs2, $06, nD2, $36, nG1, $2A, nA1, $30, nBb1, $30, nC2, $30
	dc.b	nA1, $30, nD2, $24, nC2, $06, nB1, $06, nA1, $06, nG1, $1E
	dc.b	nG1, $06, nA1, $06, nB1, $36
	smpsPan             panRight, $00
	smpsFMAlterVol      $07
	smpsSetvoice        $02
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $00
	dc.b	nE4, $12, nF4, $12, nE4, $06, nD4, $12, nD4, $0C, nE4, $0C
	dc.b	nD4, $0C, nD4, $0C, nE4, $06, nD4, $0C, nC4, $06, nD4, $06
	dc.b	nE4, $06, nF4, $0C, nE4, $0C, nD4, $0C, nC4, $0C, nC4, $12
	dc.b	nF4, $12, nE4, $0C, nG4, $0C, nF4, $0C, nE4, $0C, nD4, $0C
	dc.b	nE4, $12, nF4, $12, nE4, $06, nD4, $12, nD4, $0C, nE4, $0C
	dc.b	nD4, $0C, nD4, $0C, nE4, $06, nD4, $0C, nC4, $06, nD4, $06
	dc.b	nE4, $06, nF4, $0C, nE4, $0C, nD4, $0C, nC4, $0C, nC4, $12
	dc.b	nF4, $12, nE4, $0C, nG4, $0C, nF4, $0C, nE4, $0C, nD4, $0C
	smpsModSet          $07, $01, $0A, $06
	dc.b	nC4, $12, nE4, $12, nA4, $0C, nB3, $12, nE4, $12, nAb4, $0C
	dc.b	nC4, $12, nE4, $12, nG4, $0C, nA4, $0C, nG4, $0C, nFs4, $0C
	dc.b	nD4, $0C, nF4, $0C, nE4, $0C, nF4, $0C, nFs4, $0C, nG4, $03
	dc.b	nRst, $09, nG4, $24
	smpsJump	Snd_SpecialS2_FM5	

; PSG1 Data
Snd_SpecialS2_PSG1:
	smpsPSGAlterVol     $FF
	dc.b	nRst, $1E, nE3, $06, nD3, $18, nRst, $42, nE3, $06, nD3, $18
	smpsPSGAlterVol     $01
	dc.b	nRst, $54, nC2, $0C, nG2, $0C, nBb2, $0C, nG2, $06, nA2, $24
	dc.b	nRst, $72, nC2, $0C, nG2, $0C, nBb2, $0C, nG2, $06, nA2, $24
	dc.b	nRst, $72, nC2, $0C, nG2, $0C, nBb2, $0C, nG2, $06, nA2, $24
	dc.b	nRst, $72, nC2, $0C, nG2, $0C, nBb2, $0C, nG2, $06, nA2, $24
	dc.b	nRst, $77, nRst, $77, nRst, $77, nRst, $77, nRst, $77, nRst, $77
	dc.b	nRst, $77, nRst, $01, nC3, $30, nB2
	dc.b	$30, nBb2, $30, nA2, $30, nAb2, $24, nAb2, $0C, nG2, $0C, nG2
	dc.b	$0C, nA2, $0C, nG2, $0C, nC3, $30, nB2, $30, nBb2, $30, nA2
	dc.b	$30, nAb2, $24, nAb2, $0C, nG2, $0C, nG2, $0C, nG2, $0C, nAb2, $0C
	dc.b	nA2, $06, nB2, $06, nC3, $06, nRst, $06, nE3, $06
	dc.b	nRst, $06, nC3, $06, nA2, $06, nAb2, $06, nB2, $06, nC3, $06
	dc.b	nRst, $06, nE3, $06, nRst, $06, nC3, $06, nAb2, $06, nG2, $06, nB2
	dc.b	$06, nC3, $06, nRst, $06, nE3, $06, nRst, $06, nC3, $06, nG2
	dc.b	$06, nFs2, $06, nB2, $06, nC3, $06, nRst, $06, nFs3, $06, nE3
	dc.b	$06, nC3, $06, nA2, $06, nF2, $30, nRst, $30
	smpsJump	Snd_SpecialS2_PSG1

; PSG2 Data
Snd_SpecialS2_PSG2:
	dc.b	nRst, $02
	smpsJump	Snd_SpecialS2_PSG1	

; PSG3 Data
Snd_SpecialS2_PSG3:
	smpsPSGform         $E7
	dc.b	(nMaxPSG2-$23)&$FF, $12, $1E, $12, $12, $0C, $12
	dc.b	$1E, $12, $12, $06, $12
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06, $06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06, $06, $06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_0F
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$12
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06, $06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06, $06, $06, $06, $06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$18, $0C
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06, $06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	dc.b	$12
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06, $06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGAlterVol     $FF
	dc.b	$18
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06, $0C, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$0C, $06, $06, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$12
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06, $0C, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$0C, $18
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$12
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06, $0C, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$0C, $06, $06, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$12
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06, $0C, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$0C, $1E
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06, $0C, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$0C, $06, $06, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$12
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06, $0C, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$0C, $18
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$12
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06, $0C, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$0C, $06, $06, $12
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b	$06, $0C, $0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$12
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $04
	dc.b	$0C
	smpsPSGAlterVol     $FD
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06, $06, $06
	smpsPSGAlterVol     $01
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$06, $0C
	smpsPSGvoice        sTone_0F
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	$0C
	smpsPSGAlterVol     $FD
	dc.b	$0C, $18, $0C
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	dc.b	$06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06, $06, $06, $06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $02
	dc.b	$06, $06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b	$06, $0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	$0C
	smpsPSGAlterVol     $FD
	dc.b	$0C, $18
	smpsPSGAlterVol     $01
	dc.b	$12, $1E, $12, $1E, $12, $1E
	dc.b	$12, $12, $0C, $0C
	smpsPSGAlterVol     $FF
	dc.b	$0C, $0C, $0C
	smpsPSGvoice        sTone_0F
	dc.b	$0C
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $03
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$0C
	smpsPSGAlterVol     $FF
	smpsPSGvoice        sTone_12
	smpsJump	Snd_SpecialS2_PSG3

Snd_SpecialS2_Voices:
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
;	$04
;	$57, $02, $70, $50, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$06, $0A, $00, $0A, 	$00, $0F, $00, $0F, 	$1A, $80, $10, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $07, $00, $05
	smpsVcCoarseFreq    $00, $00, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0A, $00, $0A, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $00, $0F, $00
	smpsVcTotalLevel    $00, $10, $00, $1A

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
;	$04
;	$04, $04, $04, $04, 	$13, $10, $13, $10, 	$06, $0C, $06, $0C
;	$00, $00, $00, $00, 	$4F, $2F, $4F, $2F, 	$1E, $8C, $1E, $8C
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $13, $10, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $06, $0C, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $04, $02, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0C, $1E, $0C, $1E

;	Voice $04
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

;	Voice $05
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $06
;	$35
;	$01, $01, $13, $00, 	$1F, $1D, $18, $19, 	$00, $09, $06, $0D
;	$00, $00, $02, $03, 	$00, $06, $15, $16, 	$1E, $80, $83, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $00, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $18, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $06, $09, $00
	smpsVcDecayRate2    $03, $02, $00, $00
	smpsVcDecayLevel    $01, $01, $00, $00
	smpsVcReleaseRate   $06, $05, $06, $00
	smpsVcTotalLevel    $00, $03, $00, $1E

;	Voice $07
;	$3D
;	$01, $21, $50, $01, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$26, $28, $28, $18, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $08, $08, $08, $06
	smpsVcTotalLevel    $00, $00, $00, $19
