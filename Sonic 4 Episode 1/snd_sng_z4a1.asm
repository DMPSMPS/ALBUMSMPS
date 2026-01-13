snd_sng_z4a1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     snd_sng_z4a1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $7B

	smpsHeaderDAC       snd_sng_z4a1_DAC
	smpsHeaderFM        snd_sng_z4a1_FM1,	$0C, $01
	smpsHeaderFM        snd_sng_z4a1_FM2,	$00, $15
	smpsHeaderFM        snd_sng_z4a1_FM3,	$00, $15
	smpsHeaderFM        snd_sng_z4a1_FM4,	$00, $21
	smpsHeaderFM        snd_sng_z4a1_FM5,	$00, $21
	smpsHeaderPSG       snd_sng_z4a1_PSG1,	$E8, $03, $00, sTone_23
	smpsHeaderPSG       snd_sng_z4a1_PSG2,	$E8, $03, $00, sTone_23
	smpsHeaderPSG       snd_sng_z4a1_PSG3,	$23, $00, $00, sTone_0F

; DAC Data
snd_sng_z4a1_DAC:
	dc.b	dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06, dSnareS3, $06, dSnareS3, $03
	dc.b	dSnareS3, $03, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06, dSnareS3, $03
	dc.b	dSnareS3, $06, dSnareS3, $03, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $0C, dSnareS3, $09, dSnareS3, $03
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	dc.b	dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06, dSnareS3, $06, dSnareS3, $03
	dc.b	dSnareS3, $03, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06, dSnareS3, $03
	dc.b	dSnareS3, $06, dSnareS3, $03, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $03, dSnareS3, $03, dKickS3, $06, dSnareS3, $03, dSnareS3, $03
	dc.b	dSnareS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $03, dKickS3, $03, dSnareS3, $03
	dc.b	dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $09, dSnareS3, $03, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $03, dSnareS3, $03, dSnareS3, $06, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $09, dSnareS3, $03, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $03, dSnareS3, $03, dSnareS3, $06, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $0C, dSnareS3, $06, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06, dSnareS3, $0C
	dc.b	dKickS3, $06, dKickS3, $06, dSnareS3, $09, dSnareS3, $03, dKickS3, $06, dKickS3, $06
	dc.b	dSnareS3, $03, dSnareS3, $03, dSnareS3, $06, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09
	dc.b	dKickS3, $06, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06
	dc.b	dSnareS3, $0C, dKickS3, $0C, dSnareS3, $09, dSnareS3, $09, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $06, dSnareS3, $06, dKickS3, $06
	dc.b	dKickS3, $06, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dKickS3, $06
	dc.b	dSnareS3, $06, dSnareS3, $06, dKickS3, $03, dKickS3, $03, dSnareS3, $06, dKickS3, $06
	dc.b	dSnareS3, $03, dSnareS3, $03, dSnareS3, $03, dSnareS3, $03
	smpsJump	snd_sng_z4a1_DAC

; FM1 Data
snd_sng_z4a1_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	smpsAlterNote       $FE
	dc.b	nC0, $0C, nG0, $06, nC0, $0C, nD0, $06, nEb0, $06, nG0, $06
	dc.b	nBb0, $0C, nF0, $06, nBb0, $0C, nC1, $03, nC2, $03, nBb0, $03
	dc.b	nF1, $03, nBb1, $03, nF2, $03, nAb0, $0C, nEb0, $06, nAb0, $0C
	dc.b	nG0, $06, nF0, $06, nEb0, $06, nCs0, $0C, nAb0, $06, nCs0, $06
	dc.b	nCs1, $03, nCs0, $03, nF0, $03, nAb0, $03, nCs1, $03, nF1, $03
	dc.b	nAb1, $03, nCs2, $03, nC0, $0C, nG0, $06, nC0, $0C, nD0, $06
	dc.b	nEb0, $06, nG0, $06, nBb0, $0C, nF0, $06, nBb0, $0C, nC1, $03
	dc.b	nC2, $03, nBb0, $03, nF1, $03, nBb1, $03, nF2, $03, nAb0, $0C
	dc.b	nEb0, $06, nAb0, $0C, nG0, $06, nF0, $06, nEb0, $06, nCs0, $0C
	dc.b	nAb0, $06, nCs0, $06, nCs1, $03, nCs0, $03, nF0, $03, nAb0, $03
	dc.b	nCs1, $03, nF1, $03, nAb1, $03, nCs2, $03, nC0, $0C, nG0, $06
	dc.b	nC0, $0C, nD0, $06, nEb0, $06, nG0, $06, nBb0, $0C, nF0, $06
	dc.b	nBb0, $0C, nF0, $06, nBb0, $03, nBb1, $03, nA0, $03, nA1, $03
	dc.b	nAb0, $0C, nEb0, $06, nAb0, $0C, nG0, $03, nG1, $03, nFs0, $06
	dc.b	nF0, $06, nEb0, $06, nEb0, $06, nRst, $06, nF0, $06, nRst, $06
	dc.b	nFs0, $06, nG0, $03, nG1, $03, nG2, $03, nG1, $03, nC0, $0C
	dc.b	nG0, $06, nC0, $0C, nD0, $06, nEb0, $06, nG0, $06, nBb0, $0C
	dc.b	nF0, $06, nBb0, $0C, nF0, $06, nBb0, $03, nBb1, $03, nA0, $03
	dc.b	nA1, $03, nAb0, $0C, nEb0, $06, nAb0, $0C, nAb0, $03, nAb1, $03
	dc.b	nG0, $06, nEb0, $06, nF0, $06, nF0, $06, nRst, $06, nAb0, $06
	dc.b	nRst, $06, nFs0, $06, nRst, $06, nG0, $06, nC1, $06, nC0, $06
	dc.b	nG0, $06, nC0, $0C, nD0, $06, nEb0, $06, nG0, $06, nBb0, $0C
	dc.b	nF0, $06, nBb0, $0C, nF0, $06, nBb0, $03, nBb1, $03, nA1, $06
	dc.b	nAb1, $0C, nEb1, $06, nAb0, $0C, nG0, $03, nG1, $03, nFs0, $06
	dc.b	nF0, $0C, nAb0, $06, nRst, $06, nG0, $06, nRst, $06, nAb0, $03
	dc.b	nAb1, $03, nG0, $06, nBb0, $03, nBb1, $03, nC0, $0C, nG0, $06
	dc.b	nC0, $0C, nG0, $06, nFs0, $03, nG1, $03, nF0, $06, nEb0, $0C
	dc.b	nBb0, $06, nEb0, $0C, nBb0, $06, nEb1, $03, nG1, $03, nBb1, $03
	dc.b	nEb2, $03, nAb0, $06, nAb0, $06, nEb0, $06, nAb0, $0C, nEb1, $06
	dc.b	nAb0, $06, nF0, $06, nRst, $06, nFs0, $06, nRst, $06, nAb0, $06
	dc.b	nRst, $06, nG0, $06, nRst, $06, nBb0, $06, nEb1, $06, nBb1, $06
	dc.b	nEb1, $03, nEb2, $03, nD2, $06, nA1, $06, nD1, $03, nD2, $03
	dc.b	nCs1, $03, nAb1, $03, nCs2, $03, nCs1, $03
	smpsJump	snd_sng_z4a1_FM1

; FM2 Data
snd_sng_z4a1_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nC5, $03, nC5, $03, nC5, $05, nRst, $07, nG4, $08, nRst, $0A
	dc.b	nBb4, $0C, nC5, $03, nC5, $03, nC5, $05, nRst, $07, nEb5, $1E
	dc.b	nC5, $03, nC5, $03, nC5, $05, nRst, $07, nG4, $12, nBb4, $0C
	dc.b	nC5, $03, nC5, $03, nC5, $05, nRst, $07, nBb4, $1E, nC5, $03
	dc.b	nC5, $03, nC5, $05, nRst, $07, nG4, $08, nRst, $0A, nBb4, $0C
	dc.b	nC5, $03, nC5, $03, nC5, $05, nRst, $07, nEb5, $1E, nC5, $03
	dc.b	nC5, $03, nC5, $05, nRst, $07, nG4, $12, nBb4, $0C, nC5, $03
	dc.b	nC5, $03, nC5, $05, nRst, $07, nBb4, $1E
	smpsSetvoice        $02
	smpsChangeTransposition     $0C
	dc.b	nC5, $12, nEb5, $0C, nD5, $0C, nBb4
	dc.b	$06, nC5, $12, nG4, $12, nF4, $0C, nG4, $12, nC5, $21
	dc.b	nRst, $2D, nC5, $12, nEb5, $0C, nD5, $06, nBb4, $0C, nC5, $12, nG4
	dc.b	$12, nBb4, $0C, nC5, $12, nAb4, $21, nRst, $2D
	smpsSetvoice        $04
	smpsFMAlterVol      -$07
	smpsChangeTransposition     $F4
	dc.b	nRst, $06, nC4, $06, nEb4, $06, nF4, $06, nG4, $06, nBb4, $06
	dc.b	nRst, $06, nC5, $06, nRst, $06, nG4, $06, nBb4, $1E, nRst, $0C, nC4
	dc.b	$06, nEb4, $06, nF4, $06, nG4, $06, nBb4, $06, nRst, $06, nC5
	dc.b	$06, nRst, $06, nEb5, $06, nD5, $18, nBb4, $0C, nRst, $06, nC4
	dc.b	$06, nEb4, $06, nF4, $06, nG4, $06, nBb4, $06, nRst, $06, nC5
	dc.b	$06, nRst, $06, nG4, $06, nBb4, $21, nRst, $03, nG4, $0C, nC4
	dc.b	$06, nEb4, $0C, nRst, $06, nF4, $0C, nRst, $06, nFs4, $0C
	dc.b	nRst, $06, nG4, $06, nRst, $06, nBb4, $06, nRst, $0C
	smpsSetvoice        $01
	smpsFMAlterVol       $07
	dc.b	nEb5, $06, nEb5, $06, nRst, $06
	dc.b	nD5, $06, nD5, $06, nCs5, $06, nCs5, $06
	smpsJump	snd_sng_z4a1_FM2

; FM3 Data
snd_sng_z4a1_FM3:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $01
	dc.b	nC4, $03, nC4, $03, nC4, $05, nRst, $07, nC4, $1E, nF4, $03
	dc.b	nF4, $03, nF4, $05, nRst, $07, nF4, $1E, nEb4, $03, nEb4, $03
	dc.b	nEb4, $05, nRst, $07, nEb4, $1E, nCs4, $03, nCs4, $03, nCs4, $05
	dc.b	nRst, $07, nCs4, $1E, nC4, $03, nC4, $03, nC4, $05, nRst, $07
	dc.b	nC4, $1E, nF4, $03, nF4, $03, nF4, $05, nRst, $07, nF4, $1E
	dc.b	nEb4, $03, nEb4, $03, nEb4, $05, nRst, $07, nEb4, $1E, nCs4, $03
	dc.b	nCs4, $03, nCs4, $05, nRst, $07, nCs4, $1E
	smpsFMAlterVol       -$03
	smpsSetvoice        $03
	dc.b	nC5, $12, nEb5, $0C, nD5, $0C, nBb4
	dc.b	$06, nC5, $12, nG4, $12, nF4, $0C, nG4, $12, nC5, $21
	dc.b	nRst, $2D, nC5, $12, nEb5, $0C, nD5, $06, nBb4, $0C, nC5, $12, nG4
	dc.b	$12, nBb4, $0C, nC5, $12, nAb4, $21, nRst, $2D
	smpsFMAlterVol       $03
	smpsSetvoice        $05
	smpsFMAlterVol      -$07
	smpsChangeTransposition     $0C
	dc.b	nRst, $06, nC3, $06, nEb3, $06, nF3, $06, nG3, $06, nBb3, $06
	dc.b	nRst, $06, nC4, $06, nRst, $06, nG3, $06, nBb3, $1E, nRst, $0C, nC3
	dc.b	$06, nEb3, $06, nF3, $06, nG3, $06, nBb3, $06, nRst, $06, nC4
	dc.b	$06, nRst, $06, nEb4, $06, nD4, $18, nBb3, $0C, nRst, $06, nC3
	dc.b	$06, nEb3, $06, nF3, $06, nG3, $06, nBb3, $06, nRst, $06, nC4
	dc.b	$06, nRst, $06, nG3, $06, nBb3, $21, nRst, $03, nG3, $0C, nC3
	dc.b	$06, nEb3, $0C, nRst, $06, nF3, $0C, nRst, $06, nFs3, $0C
	dc.b	nRst, $06, nG3, $06, nRst, $06, nBb3, $06, nRst, $0C
	smpsSetvoice        $01
	smpsChangeTransposition     $F4
	smpsFMAlterVol      $07
	dc.b	nBb4, $06, nBb4, $06, nRst, $06
	dc.b	nA4, $06, nA4, $06, nAb4, $06, nAb4, $06
	smpsJump	snd_sng_z4a1_FM3

; FM4 Data
snd_sng_z4a1_FM4:
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $FD
        dc.b    nRst, $0C
	smpsJump	snd_sng_z4a1_FM2


; FM5 Data
snd_sng_z4a1_FM5:
	smpsModSet          $07, $01, $03, $05
	smpsAlterNote       $FD
        dc.b    nRst, $0C
	smpsJump	snd_sng_z4a1_FM3

; PSG3 Data
snd_sng_z4a1_PSG3:
	smpsPSGform         $E7	
	dc.b	(nMaxPSG2-$23)&$FF, $06, $03, $06, $03, $06, $06
	dc.b	$06, $03, $09, $06, $03, $06
	dc.b	$03, $06, $06, $06, $03, $09
	dc.b	$06, $03, $06, $03, $06, $06
	dc.b	$06, $03, $09, $06, $03, $06
	dc.b	$03, $0C, $06, $06, $03, $03
	dc.b	$06, $03, $06, $03, $06, $06
	dc.b	$06, $03, $09, $06, $03, $06
	dc.b	$03, $06, $06, $06, $03, $09
	dc.b	$06, $03, $06, $03, $06, $06
	dc.b	$06, $03, $09, $06, $03, $06
	dc.b	$03, $0C, $06, $06, $03, $03
	dc.b	$06, $03, $09, $0C, $09, $03
	dc.b	$03, $09, $09, $03, $09, $06
	dc.b	$06, $03, $06, $06, $03, $09
	dc.b	$0C, $09, $03, $03, $09, $09
	dc.b	$03, $09, $06, $06, $03, $06
	dc.b	$06, $03, $09, $0C, $09, $03
	dc.b	$03, $09, $09, $03, $09, $06
	dc.b	$06, $03, $06, $06, $03, $09
	dc.b	$0C, $09, $03, $03, $09, $09
	dc.b	$03, $09, $06, $06, $03, $06
	dc.b	$06, $03, $09, $0C, $09, $03
	dc.b	$03, $03, $06, $03, $09, $0C
	dc.b	$09, $03, $03, $03, $06, $03
	dc.b	$09, $0C, $09, $03, $03, $09
	dc.b	$09, $03, $09, $06, $06, $03
	dc.b	$06, $06, $03, $09, $0C, $09
	dc.b	$03, $03, $03, $06, $03, $09
	dc.b	$0C, $09, $03, $03, $03, $06
	dc.b	$03, $09, $0C, $09, $03, $03
	dc.b	$09, $09, $03, $09, $06, $06
	dc.b	$03, $0C, $06, $03, $03, $06
	dc.b	$06, $03, $03, $06, $06
	smpsJump	snd_sng_z4a1_PSG3

; PSG1 Data
snd_sng_z4a1_PSG1:
        smpsModSet          $02, $01, $01, $03
        dc.b    nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $08, nRst, $0A
        dc.b    nRst, $0C, nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $1E
        dc.b    nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $12, nRst, $0C
        dc.b    nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $1E, nRst, $03
        dc.b    nRst, $03, nRst, $05, nRst, $07, nRst, $08, nRst, $0A, nRst, $0C
        dc.b    nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $1E, nRst, $03
        dc.b    nRst, $03, nRst, $05, nRst, $07, nRst, $12, nRst, $0C, nRst, $03
        dc.b    nRst, $03, nRst, $05, nRst, $07, nRst, $1E, nRst, $06, nG5, $03
	dc.b	nRst, $03, nD5, $03, nRst, $09, nG5, $03, nRst, $03, nD5, $03
	dc.b	nRst, $09, nC5, $03, nRst, $09, nF5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $09, nF5, $03, nRst, $03, nC5, $03, nRst, $09, nBb4, $03
	dc.b	nRst, $09, nEb5, $03, nRst, $03, nBb4, $03, nRst, $09, nEb5, $03
	dc.b	nRst, $03, nBb4, $03, nRst, $09, nAb4, $03, nRst, $09, nG4, $03
	dc.b	nRst, $09, nAb4, $03, nRst, $09, nBb4, $03, nRst, $09, nD5, $03
	dc.b	nRst, $09, nG5, $03, nRst, $03, nD5, $03, nRst, $09, nG5, $03
	dc.b	nRst, $03, nD5, $03, nRst, $09, nC5, $03, nRst, $09, nF5, $03
	dc.b	nRst, $03, nC5, $03, nRst, $09, nF5, $03, nRst, $03, nC5, $03
	dc.b	nRst, $09, nBb4, $03, nRst, $09, nEb5, $03, nRst, $03, nBb4, $03
	dc.b	nRst, $09, nEb5, $03, nRst, $03, nBb4, $03, nRst, $09, nAb4, $03
	dc.b	nRst, $09, nAb4, $03, nRst, $09, nAb4, $03, nRst, $09, nC5, $03
	dc.b	nRst, $09, nD5, $03, nRst, $03, nC5, $03, nF4, $03, nG4, $03
	dc.b	nC4, $03, nRst, $18, nC4, $03, nF4, $03, nG4, $03, nBb4, $03
	dc.b	nC5, $03, nF5, $03, nG5, $03, nBb4, $03, nRst, $18, nBb3, $03
	dc.b	nF4, $03, nBb4, $03, nF5, $03, nEb5, $03, nBb4, $03, nAb4, $03
	dc.b	nEb4, $03, nRst, $18, nAb3, $03, nEb4, $03, nAb4, $03, nEb5, $03
	dc.b	nRst, $06, nC5, $03, nRst, $09, nAb4, $03, nRst, $09, nBb4, $03
	dc.b	nRst, $09, nD5, $03, nRst, $03, nC5, $03, nF4, $03, nG4, $03
	dc.b	nC4, $03, nRst, $18, nC4, $03, nF4, $03, nG4, $03, nBb4, $03
	dc.b	nC5, $03, nF5, $03, nG5, $03, nBb4, $03, nRst, $18, nBb3, $03
	dc.b	nF4, $03, nBb4, $03, nF5, $03, nEb5, $03, nBb4, $03, nAb4, $03
	dc.b	nEb4, $03, nRst, $18, nAb3, $03, nEb4, $03, nAb4, $03, nEb5, $03
	dc.b	nRst, $06, nEb5, $03, nRst, $09, nCs5, $03, nRst, $09, nB4, $03
	dc.b	nRst, $09, nD5, $03, nRst, $09, nRst, $06, nRst, $06, nRst, $06
	dc.b	nRst, $06, nRst, $06, nRst, $06, nRst, $06
	smpsJump	snd_sng_z4a1_PSG1		


; PSG2 Data
snd_sng_z4a1_PSG2:
	smpsModSet        $04, $01, $01, $04
	smpsAlterNote	  $FF
        dc.b    nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $08, nRst, $0A
        dc.b    nRst, $0C, nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $1E
        dc.b    nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $12, nRst, $0C
        dc.b    nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $1E, nRst, $03
        dc.b    nRst, $03, nRst, $05, nRst, $07, nRst, $08, nRst, $0A, nRst, $0C
        dc.b    nRst, $03, nRst, $03, nRst, $05, nRst, $07, nRst, $1E, nRst, $03
        dc.b    nRst, $03, nRst, $05, nRst, $07, nRst, $12, nRst, $0C, nRst, $03
        dc.b    nRst, $03, nRst, $05, nRst, $07, nRst, $1E, nRst, $06, nC5, $03
	dc.b	nRst, $03, nG4, $03, nRst, $09, nC5, $03, nRst, $03, nG4, $03
	dc.b	nRst, $09, nG4, $03, nRst, $09, nBb4, $03, nRst, $03, nF4, $03
	dc.b	nRst, $09, nBb4, $03, nRst, $03, nF4, $03, nRst, $09, nF4, $03
	dc.b	nRst, $09, nBb4, $03, nRst, $03, nEb4, $03, nRst, $09, nBb4, $03
	dc.b	nRst, $03, nEb4, $03, nRst, $09, nEb4, $03, nRst, $09, nC4, $03
	dc.b	nRst, $09, nEb4, $03, nRst, $09, nF4, $03, nRst, $09, nEb4, $03
	dc.b	nRst, $09, nC5, $03, nRst, $03, nG4, $03, nRst, $09, nC5, $03
	dc.b	nRst, $03, nG4, $03, nRst, $09, nG4, $03, nRst, $09, nBb4, $03
	dc.b	nRst, $03, nF4, $03, nRst, $09, nBb4, $03, nRst, $03, nF4, $03
	dc.b	nRst, $09, nF4, $03, nRst, $09, nBb4, $03, nRst, $03, nEb4, $03
	dc.b	nRst, $09, nBb4, $03, nRst, $03, nEb4, $03, nRst, $09, nEb4, $03
	dc.b	nRst, $09, nF4, $03, nRst, $09, nEb4, $03, nRst, $09, nF4, $03
	dc.b	nRst, $09, nG4, $03, nRst, $03, nC5, $03, nF4, $03, nG4, $03
	dc.b	nC4, $03, nRst, $18, nC4, $03, nF4, $03, nG4, $03, nBb4, $03
	dc.b	nC5, $03, nF5, $03, nG5, $03, nBb4, $03, nRst, $18, nBb3, $03
	dc.b	nF4, $03, nBb4, $03, nF5, $03, nEb5, $03, nBb4, $03, nAb4, $03
	dc.b	nEb4, $03, nRst, $18, nAb3, $03, nEb4, $03, nAb4, $03, nEb5, $03
	dc.b	nRst, $06, nAb4, $03, nRst, $09, nF4, $03, nRst, $09, nF4, $03
	dc.b	nRst, $09, nG4, $03, nRst, $03, nC5, $03, nF4, $03, nG4, $03
	dc.b	nC4, $03, nRst, $18, nC4, $03, nF4, $03, nG4, $03, nBb4, $03
	dc.b	nC5, $03, nF5, $03, nG5, $03, nBb4, $03, nRst, $18, nBb3, $03
	dc.b	nF4, $03, nBb4, $03, nF5, $03, nEb5, $03, nBb4, $03, nAb4, $03
	dc.b	nEb4, $03, nRst, $18, nAb3, $03, nEb4, $03, nAb4, $03, nEb5, $03
	dc.b	nRst, $06, nFs4, $03, nRst, $09, nAb4, $03, nRst, $09, nG4, $03
	dc.b	nRst, $09, nFs4, $03, nRst, $09, nRst, $06, nRst, $06, nRst, $06
	dc.b	nRst, $06, nRst, $06, nRst, $06, nRst, $06	
	smpsJump	snd_sng_z4a1_PSG2

snd_sng_z4a1_Voices:
;	Voice $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00,  $00,  $00,  $00
	smpsVcCoarseFreq    $01,  $01,  $01,  $01
	smpsVcRateScale     $00,  $00,  $00,  $00
	smpsVcAttackRate    $1F,  $1F,  $1F,  $1F
	smpsVcAmpMod        $00,  $00,  $00,  $00
	smpsVcDecayRate1    $0E,  $0C,  $0A,  $08
	smpsVcDecayRate2    $00,  $00,  $00,  $00
	smpsVcDecayLevel    $02,  $02,  $02,  $01
	smpsVcReleaseRate   $0F,  $0F,  $0F,  $0F
	smpsVcTotalLevel    $08,  $08,  $08,  $12

;	Voice $01
;	$3B
;	$41, $12, $16, $74, 	$1F, $12, $1F, $1F, 	$04, $02, $04, $0A
;	$01, $01, $02, $02, 	$1F, $1F, $1F, $1F, 	$1C, $17, $18, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $01, $04
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $04, $02, $04
	smpsVcDecayRate2    $02, $02, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $F6, $18, $17, $1C

;	Voice $02
;	$3A
;	$01, $75, $01, $41, 	$54, $59, $5C, $4C, 	$02, $06, $03, $04
;	$00, $00, $00, $00, 	$1F, $3F, $1F, $0F, 	$21, $28, $30, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $07, $00
	smpsVcCoarseFreq    $01, $01, $05, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $0C, $1C, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $03, $06, $02
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $03, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $30, $28, $21

;	Voice $03
;	$34
;	$70, $72, $31, $31, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $83, $18, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $03, $18, $03, $10

;	Voice $04
;	$3C
;	$71, $72, $3F, $34, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $80, $1D, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $07, $02, $08, $03
	smpsVcTotalLevel    $07, $1D, $00, $15

;	Voice $05
;	$3F
;	$71, $72, $3F, $34, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $14, $1D, $1B
	smpsVcAlgorithm     $07
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $0F, $04, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $1D, $00, $15
