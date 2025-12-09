Snd_SSZ_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_SSZ_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $04

	smpsHeaderDAC       Snd_SSZ_DAC
	smpsHeaderFM        Snd_SSZ_FM1,	$00, $0D
	smpsHeaderFM        Snd_SSZ_FM2,	$00, $17
	smpsHeaderFM        Snd_SSZ_FM3,	$00, $17
	smpsHeaderFM        Snd_SSZ_FM4,	$00, $1C
	smpsHeaderFM        Snd_SSZ_FM5,	$00, $15
	smpsHeaderPSG       Snd_SSZ_PSG1,	$0C, $05, $00, sTone_04
	smpsHeaderPSG       Snd_SSZ_PSG2,	$0C, $05, $00, $00
	smpsHeaderPSG       Snd_SSZ_PSG3,	$00, $02, $00, $00

; DAC Data
Snd_SSZ_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, nRst, $7F, nRst, $45, dSnareS3, $18, dSnareS3, $18
SSZLOOPPOINT:
	dc.b	dKickS3, $06, dKickS3, $06
SSZALBUMDACLOOP:
	smpsPan             panCenter, $00
	dc.b	dKickS3, $05, dKickS3, $05, dKickS3, $1A, dMuffledSnare, $05, dMuffledSnare, $05, dMuffledSnare, $0E
	dc.b	dMuffledSnare, $18, dKickS3, $06, dKickS3, $06, dKickS3, $0C, dKickS3, $18, dMuffledSnare, $05
	dc.b	dMuffledSnare, $05, dMuffledSnare, $0E, dMuffledSnare, $18, dKickS3, $0C, dKickS3, $0C, dKickS3, $18
	dc.b	dMuffledSnare, $05, dMuffledSnare, $05, dMuffledSnare, $0E, dMuffledSnare, $18, dKickS3, $06, dKickS3, $06
	dc.b	dKickS3, $0C, dKickS3, $18, dMuffledSnare, $05, dMuffledSnare, $05, dMuffledSnare, $08
	smpsPan             panLeft, $00
	dc.b	dElectricMidTom, $06, dElectricMidTom, $06, dElectricMidTom, $06
	smpsPan             panCenter, $00
	dc.b	dElectricLowTom, $06, dElectricLowTom, $06
	smpsPan             panRight, $00
	dc.b	dElectricFloorTom, $0C
	smpsLoop            $00, $10, SSZALBUMDACLOOP
	smpsPan             panCenter, $00
	dc.b	dKickS3, $06, dKickS3, $06, dKickS3, $24, dMuffledSnare, $30, dKickS3, $06, dKickS3, $06
	dc.b	dKickS3, $18, dMuffledSnare, $05, dMuffledSnare, $05, dMuffledSnare, $0E, dMuffledSnare, $24, dKickS3, $06
	dc.b	dKickS3, $06, dKickS3, $24, dMuffledSnare, $30, dKickS3, $06, dKickS3, $06, dKickS3, $18
	dc.b	dMuffledSnare, $05, dMuffledSnare, $05, dMuffledSnare, $0E, dMuffledSnare, $24, dKickS3, $06, dKickS3, $06
	dc.b	dKickS3, $24, dMuffledSnare, $30, dKickS3, $06, dKickS3, $06, dKickS3, $18, dMuffledSnare, $05
	dc.b	dMuffledSnare, $05, dMuffledSnare, $0E, dMuffledSnare, $24, dKickS3, $06, dKickS3, $06, dKickS3, $24
	dc.b	dMuffledSnare, $30, dKickS3, $06, dKickS3, $06, dKickS3, $18, dMuffledSnare, $06, dMuffledSnare, $06
	dc.b	dKickS3, $24
	smpsJump	SSZLOOPPOINT

; FM1 Data
Snd_SSZ_FM1:
	smpsSetvoice        $00
	smpsAlterNote       $FE
	dc.b	nG0, $07, nRst, $04, nG0, $08, nRst, $04, nG0, $24, nG1, $24
	dc.b	nG0, $24, nG0, $0C, nRst, $0C, nC1, $14, nB0, $10, nG0, $08
	dc.b	nRst, $04, nG0, $08, nRst, $04, nG0, $24, nG1, $24, nG0, $24
	dc.b	nG0, $0C, nRst, $30

Snd_SSZ_Loop20:
	dc.b	nC1, $60, nC2, $24, nC1, $24, nC2, $18, nBb0, $06, nRst, $06
	dc.b	nBb0, $54, nBb1, $24, nBb0, $24, nBb1, $18, nA0, $06, nRst, $06
	dc.b	nA0, $48, nG1, $06, nAb1, $06, nA1, $24, nA0, $24, nA1, $18
	dc.b	nAb0, $06, nRst, $06, nAb0, $54, nAb1, $24, nAb0, $24, nBb1, $18
	smpsLoop            $00, $02, Snd_SSZ_Loop20
	dc.b	nG0, $48, nG1, $0C, nG1, $48, nG0, $24, nAb0, $48, nAb1, $0C
	dc.b	nAb1, $48, nAb0, $0C, nAb1, $18, nG0, $48, nG1, $0C, nG1, $48
	dc.b	nG0, $24, nAb0, $3C, nAb1, $24, nBb0, $3C, nBb1, $24

Snd_SSZ_Loop21:
	dc.b	nC1, $06, nRst, $06, nC1, $54, nC2, $24, nC1, $24, nC1, $18
	dc.b	nC1, $06, nRst, $06, nC1, $54, nC2, $24, nC1, $24, nC2, $18
	dc.b	nC1, $06, nRst, $06, nC1, $48, nBb1, $06, nB1, $06, nC2, $24
	dc.b	nC1, $24, nC2, $18, nC1, $07, nRst, $05, nC1, $54, nC2, $24
	dc.b	nC1, $24, nC2, $18
	smpsLoop            $00, $02, Snd_SSZ_Loop21
	dc.b	nC1

Snd_SSZ_Loop22:
	dc.b	$06, nRst, $06, nC1, $54
	smpsLoop            $00, $02, Snd_SSZ_Loop22
	dc.b	nC1, $06, nRst, $06, nC1, $48, nBb1, $06, nB1, $06, nC1, $06
	dc.b	nRst, $06, nC1, $54, nA0, $06, nRst, $06, nA0, $48, nG1, $06
	dc.b	nAb1, $06, nA1, $24, nA0, $24, nA1, $18, nAb0, $06, nRst, $06
	dc.b	nAb0, $54, nAb1, $24, nAb0, $24, nBb1, $18, nG0, $48, nG1, $0C
	dc.b	nG1, $48, nG0, $24, nAb0, $48, nAb1, $0C, nAb1, $48, nAb0, $0C
	dc.b	nAb1, $18, nG0, $48, nG1, $0C, nG1, $48, nG0, $24, nAb0, $3C
	dc.b	nAb1, $24, nBb0, $3C, nBb1, $24, nC1, $60, nC2, $24, nC1, $24
	dc.b	nC2, $18, nBb0, $06, nRst, $06, nBb0, $54, nBb1, $24, nBb0, $24
	dc.b	nBb1, $18, nA0, $06, nRst, $06, nA0, $48, nG1, $06, nAb1, $06
	dc.b	nA1, $24, nA0, $24, nA1, $18, nAb0, $06, nRst, $06, nAb0, $54
	dc.b	nBb1, $24, nBb0, $24, nBb1, $18

Snd_SSZ_Loop23:
	dc.b	nG0, $07, nRst, $04, nG0, $08, nRst, $04, nG0, $24, nG1, $24
	dc.b	nG0, $24, nG0, $0C, nRst, $0C, nC1, $14, nB0, $11
	smpsLoop            $00, $03, Snd_SSZ_Loop23
	dc.b	nG0, $07, nRst, $04, nG0, $08, nRst, $04, nG0, $24, nG1, $24
	dc.b	nG0, $24, nG0, $0C, nG0, $06, nRst, $2B
	smpsJump	Snd_SSZ_Loop20

; FM2 Data
Snd_SSZ_FM2:
	smpsSetvoice        $03
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03

Snd_SSZ_Loop1C:
	dc.b	nC4, $7F, smpsNoAttack, $41, nBb3, $7F, smpsNoAttack, $41, nA3, $7F, smpsNoAttack, $41
	dc.b	nAb3, $7F, smpsNoAttack, $41
	smpsLoop            $00, $02, Snd_SSZ_Loop1C
	dc.b	nG3, $7F, smpsNoAttack, $41, nAb3, $7F, smpsNoAttack, $41, nG3, $7F, smpsNoAttack, $41
	dc.b	nAb3, $60, nBb3, $60

Snd_SSZ_Loop1D:
	dc.b	nC4, $7F, smpsNoAttack, $41, nEb4, $7F, smpsNoAttack, $41, nD4, $7F, smpsNoAttack, $41
	dc.b	nCs4, $7F, smpsNoAttack, $41
	smpsLoop            $00, $02, Snd_SSZ_Loop1D
	dc.b	nC4, $60, nBb3, $60, nC4, $60, nBb3, $60, nA3, $7F

Snd_SSZ_Loop1E:
	dc.b	smpsNoAttack, $41, nAb3, $7F, smpsNoAttack, $41, nG3, $7F
	smpsLoop            $00, $02, Snd_SSZ_Loop1E
	dc.b	smpsNoAttack, $41, nAb3, $60, nBb3, $60, nC4, $7F, smpsNoAttack, $41, nBb3, $7F
	dc.b	smpsNoAttack, $41, nA3, $7F, smpsNoAttack, $41, nAb3, $60, nBb3, $60

Snd_SSZ_Loop1F:
	dc.b	nRst, $60, nRst, $60
	smpsLoop            $00, $04, Snd_SSZ_Loop1F
	smpsJump	Snd_SSZ_Loop1C

; FM3 Data
Snd_SSZ_FM3:
	smpsSetvoice        $01
	dc.b	nRst, $7F, nRst, $41, nF5, $12, nE5, $12, nC5, $0C, nC6, $12
	dc.b	nB5, $12, nG5, $0C, nF5, $12, nE5, $12
	smpsAlterVol        $FF
	dc.b	nC5, $0C, nRst, $0C
	smpsAlterVol        $01
	dc.b	nB4, $0C, nRst, $18

Snd_SSZ_Loop08:
	smpsSetvoice        $02
	dc.b	nC3, $06, nC2, $06, nC3, $06, nC2, $06, nD3, $06, nC2, $06
	dc.b	nE3, $06, nC2, $06, nF3, $06, nC2, $06, nE3, $06, nC2, $06
	dc.b	nD3, $06, nC2, $06, nE3, $06, nC2, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop08

Snd_SSZ_Loop09:
	dc.b	nC3, $06, nBb1, $06, nC3, $06, nBb1, $06, nD3, $06, nBb1, $06
	dc.b	nE3, $06, nBb1, $06, nF3, $06, nBb1, $06, nE3, $06, nBb1, $06
	dc.b	nD3, $06, nBb1, $06, nE3, $06, nBb1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop09

Snd_SSZ_Loop0A:
	dc.b	nC3, $06, nA1, $06, nC3, $06, nA1, $06, nD3, $06, nA1, $06
	dc.b	nE3, $06, nA1, $06, nF3, $06, nA1, $06, nE3, $06, nA1, $06
	dc.b	nD3, $06, nA1, $06, nE3, $06, nA1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop0A

Snd_SSZ_Loop0B:
	dc.b	nC3, $06, nAb1, $06, nC3, $06, nAb1, $06, nD3, $06, nAb1, $06
	dc.b	nE3, $06, nAb1, $06, nF3, $06, nAb1, $06, nE3, $06, nAb1, $06
	dc.b	nD3, $06, nAb1, $06, nE3, $06, nAb1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop0B
	smpsLoop            $01, $02, Snd_SSZ_Loop08

Snd_SSZ_Loop0C:
	dc.b	nC3, $06, nG1, $06, nC3, $06, nG1, $06, nD3, $06, nG1, $06
	dc.b	nE3, $06, nG1, $06, nF3, $06, nG1, $06, nE3, $06, nG1, $06
	dc.b	nD3, $06, nG1, $06, nE3, $06, nG1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop0C

Snd_SSZ_Loop0D:
	dc.b	nC3, $06, nAb1, $06, nC3, $06, nAb1, $06, nD3, $06, nAb1, $06
	dc.b	nE3, $06, nAb1, $06, nF3, $06, nAb1, $06, nE3, $06, nAb1, $06
	dc.b	nD3, $06, nAb1, $06, nE3, $06, nAb1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop0D

Snd_SSZ_Loop0E:
	dc.b	nC3, $06, nG1, $06, nC3, $06, nG1, $06, nD3, $06, nG1, $06
	dc.b	nE3, $06, nG1, $06, nF3, $06, nG1, $06, nE3, $06, nG1, $06
	dc.b	nD3, $06, nG1, $06, nE3, $06, nG1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop0E
	dc.b	nC3, $06, nAb1, $06, nC3, $06, nAb1, $06, nD3, $06, nAb1, $06
	dc.b	nE3, $06, nAb1, $06, nF3, $06, nAb1, $06, nE3, $06, nAb1, $06
	dc.b	nD3, $06, nAb1, $06, nE3, $06, nAb1, $06, nC3, $06, nBb1, $06
	dc.b	nC3, $06, nBb1, $06, nD3, $06, nBb1, $06, nE3, $06, nBb1, $06
	dc.b	nF3, $06, nBb1, $06, nE3, $06, nBb1, $06, nD3, $06, nBb1, $06
	dc.b	nE3, $06, nBb1, $06

Snd_SSZ_Loop0F:
	dc.b	nC3, $06, nC2, $06, nC3, $06, nC2, $06, nD3, $06, nC2, $06
	dc.b	nE3, $06, nC2, $06, nF3, $06, nC2, $06, nE3, $06, nC2, $06
	dc.b	nD3, $06, nC2, $06, nE3, $06, nC2, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop0F

Snd_SSZ_Loop10:
	dc.b	nEb3, $06, nEb2, $06, nEb3, $06, nEb2, $06, nF3, $06, nEb2, $06
	dc.b	nG3, $06, nEb2, $06, nAb3, $06, nEb2, $06, nG3, $06, nEb2, $06
	dc.b	nF3, $06, nEb2, $06, nG3, $06, nEb2, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop10

Snd_SSZ_Loop11:
	dc.b	nD3, $06, nD2, $06, nD3, $06, nD2, $06, nE3, $06, nD2, $06
	dc.b	nFs3, $06, nD2, $06, nG3, $06, nD2, $06, nFs3, $06, nD2, $06
	dc.b	nE3, $06, nD2, $06, nFs3, $06, nD2, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop11

Snd_SSZ_Loop12:
	dc.b	nCs3, $06, nCs2, $06, nCs3, $06, nCs2, $06, nEb3, $06, nCs2, $06
	dc.b	nF3, $06, nCs2, $06, nFs3, $06, nCs2, $06, nF3, $06, nCs2, $06
	dc.b	nEb3, $06, nCs2, $06, nF3, $06, nCs2, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop12
	smpsLoop            $01, $02, Snd_SSZ_Loop0F
	dc.b	nC3, $06, nC2, $06, nC3, $06, nC2, $06, nD3, $06, nC2, $06
	dc.b	nE3, $06, nC2, $06, nF3, $06, nC2, $06, nE3, $06, nC2, $06
	dc.b	nD3, $06, nC2, $06, nE3, $06, nC2, $06, nBb2, $06, nBb1, $06
	dc.b	nBb2, $06, nBb1, $06, nC3, $06, nBb1, $06, nD3, $06, nBb1, $06
	dc.b	nEb3, $06

Snd_SSZ_Loop13:
	dc.b	nBb1, $06, nD3, $06, nBb1, $06, nC3, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop13
	dc.b	nC2, $06, nC3, $06, nC2, $06, nD3, $06, nC2, $06, nE3, $06
	dc.b	nC2, $06, nF3, $06, nC2, $06, nE3, $06, nC2, $06, nD3, $06
	dc.b	nC2, $06, nE3, $06, nC2, $06, nBb2, $06, nBb1, $06, nBb2, $06
	dc.b	nBb1, $06, nC3, $06, nBb1, $06, nD3, $06, nBb1, $06, nEb3, $06
	dc.b	nBb1, $06, nD3, $06, nBb1, $06, nC3, $06, nBb1, $06, nD3, $06
	dc.b	nBb1, $06, nBb1, $01

Snd_SSZ_Loop14:
	dc.b	nC3, $06, nA1, $06, nC3, $06, nA1, $06, nD3, $06, nA1, $06
	dc.b	nE3, $06, nA1, $06, nF3, $06, nA1, $06, nE3, $06, nA1, $06
	dc.b	nD3, $06, nA1, $06, nE3, $06, nA1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop14

Snd_SSZ_Loop15:
	dc.b	nC3, $06, nAb1, $06, nC3, $06, nAb1, $06, nD3, $06, nAb1, $06
	dc.b	nE3, $06, nAb1, $06, nF3, $06, nAb1, $06, nE3, $06, nAb1, $06
	dc.b	nD3, $06, nAb1, $06, nE3, $06, nAb1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop15

Snd_SSZ_Loop16:
	dc.b	nC3, $06, nG1, $06, nC3, $06, nG1, $06, nD3, $06, nG1, $06
	dc.b	nE3, $06, nG1, $06, nF3, $06, nG1, $06, nE3, $06, nG1, $06
	dc.b	nD3, $06, nG1, $06, nE3, $06, nG1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop16
	smpsLoop            $01, $02, Snd_SSZ_Loop15
	dc.b	nC3, $06, nAb1, $06, nC3, $06, nAb1, $06, nD3, $06, nAb1, $06
	dc.b	nE3, $06, nAb1, $06, nF3, $06, nAb1, $06, nE3, $06, nAb1, $06
	dc.b	nD3, $06, nAb1, $06, nE3, $06, nAb1, $06, nC3, $06, nBb1, $06
	dc.b	nC3, $06, nBb1, $06, nD3, $06, nBb1, $06, nE3, $06, nBb1, $06
	dc.b	nF3, $06, nBb1, $06, nE3, $06, nBb1, $06, nD3, $06, nBb1, $06
	dc.b	nE3, $06, nBb1, $06

Snd_SSZ_Loop17:
	dc.b	nC3, $06, nC2, $06, nC3, $06, nC2, $06, nD3, $06, nC2, $06
	dc.b	nE3, $06, nC2, $06, nF3, $06, nC2, $06, nE3, $06, nC2, $06
	dc.b	nD3, $06, nC2, $06, nE3, $06, nC2, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop17

Snd_SSZ_Loop18:
	dc.b	nC3, $06, nBb1, $06, nC3, $06, nBb1, $06, nD3, $06, nBb1, $06
	dc.b	nE3, $06, nBb1, $06, nF3, $06, nBb1, $06, nE3, $06, nBb1, $06
	dc.b	nD3, $06, nBb1, $06, nE3, $06, nBb1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop18

Snd_SSZ_Loop19:
	dc.b	nC3, $06, nA1, $06, nC3, $06, nA1, $06, nD3, $06, nA1, $06
	dc.b	nE3, $06, nA1, $06, nF3, $06, nA1, $06, nE3, $06, nA1, $06
	dc.b	nD3, $06, nA1, $06, nE3, $06, nA1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop19

Snd_SSZ_Loop1A:
	dc.b	nC3, $06, nAb1, $06, nC3, $06, nAb1, $06, nD3, $06, nAb1, $06
	dc.b	nE3, $06, nAb1, $06, nF3, $06, nAb1, $06, nE3, $06, nAb1, $06
	dc.b	nD3, $06, nAb1, $06, nE3, $06, nAb1, $06
	smpsLoop            $00, $02, Snd_SSZ_Loop1A

Snd_SSZ_Loop1B:
	dc.b	nRst, $73
	smpsLoop            $00, $05, Snd_SSZ_Loop1B
	smpsSetvoice        $01
	dc.b	nF5, $12, nE5, $12, nC5, $0C, nC6, $12, nB5, $12, nG5, $0C
	dc.b	nF5, $12, nE5, $12
	smpsAlterVol        $FF
	dc.b	nC5, $0C
	smpsAlterVol        $01
	dc.b	nC6, $18, nRst, $18
	smpsJump	Snd_SSZ_Loop08

; FM4 Data
Snd_SSZ_FM4:
	smpsModSet          $24, $01, $04, $07
	smpsAlterNote       $02
	smpsSetvoice        $01
	dc.b	nRst, $0E
	smpsJump            Snd_SSZ_Loop03

; FM5 Data
Snd_SSZ_FM5:
	smpsModSet          $24, $01, $04, $08
	smpsSetvoice        $01

Snd_SSZ_Loop03:
	dc.b	nC5, $12, nB4, $12, nG4, $0C, nG5, $12, nF5, $12, nE5, $0C
	smpsLoop            $00, $03, Snd_SSZ_Loop03
	dc.b	nC5, $12, nB4, $12
	smpsAlterVol        $FF
	dc.b	nG4, $0C, nRst, $0C
	smpsAlterVol        $01
	dc.b	nG4, $0C, nRst, $18
	smpsAlterVol        $FD

Snd_SSZ_Loop04:
	dc.b	nC6, $07, nRst, $05, nC6, $48, nC5, $06, nE5, $06, nF5, $24
	dc.b	nE5, $18, nC5, $24
	smpsLoop            $00, $02, Snd_SSZ_Loop04
	dc.b	nRst, $18, nA4, $0C, nRst, $18, nC5, $0C, nRst, $18, nF4, $0C
	dc.b	nRst, $18, nA4, $24, nA4, $18, nRst, $24, nAb4, $0C, nC5, $0C
	dc.b	nBb4, $0C, nAb4, $0C, nEb5, $18, nC5, $0C, nD5, $0C, nEb5, $18
	dc.b	nD5, $0C, nC5, $18

Snd_SSZ_Loop05:
	dc.b	nC6, $06, nRst, $06, nC6, $48, nC5, $06, nE5, $06, nF5, $24
	dc.b	nE5, $18, nC5, $24
	smpsLoop            $00, $02, Snd_SSZ_Loop05
	dc.b	nRst, $18, nA4, $0C, nRst, $18, nC5, $0C, nRst, $18, nF4, $0C
	dc.b	nRst, $18, nA4, $24, nA4, $18, nRst, $24, nAb4, $0C, nC5, $0C
	dc.b	nBb4, $0C, nAb4, $0C, nEb5, $18, nC5, $0C, nD5, $0C, nEb5, $18
	dc.b	nD5, $0C, nF5, $18
	smpsAlterVol        $FF
	dc.b	nG5, $24, nEb6, $24, nD6, $07, nRst, $05, nD6, $18, nG5, $54
	dc.b	nAb5, $24, nEb6, $24, nD6, $07, nRst, $05, nD6, $18, nF6, $24
	dc.b	nEb6, $18, nD6, $18, nG5, $24, nEb6, $24, nD6, $07, nRst, $05
	dc.b	nD6, $18, nG5, $54, nAb5, $24, nC6, $24, nEb6, $18, nG6, $18
	dc.b	nF6, $0C, nEb6, $18, nF6, $24
	dc.b	nC6, $7F, smpsNoAttack, $11, nRst, $0C, nE5, $0C, nG5, $0C, nC6, $0C
	dc.b	nBb5, $24, nG5, $6C, nRst, $0C, nA5, $0C, nG5, $0C, nF5, $0C
	dc.b	nFs5, $3C, nG5, $0C, nFs5, $0C, nD5, $48, nRst, $0C, nD5, $0C
	dc.b	nE5, $0C, nF5, $18, nG5, $0C, nBb5, $24, nAb5, $0C, nF5, $48
	dc.b	nRst, $0C, nE5, $12, nRst, $06, nC6, $7F, smpsNoAttack, $11, nRst, $0C
	dc.b	nE5, $0C, nG5, $0C, nC6, $0C, nBb5, $24, nG5, $6C, nRst, $0C
	dc.b	nA5, $0C, nG5, $0C, nF5, $0C, nFs5, $3C, nG5, $0C, nFs5, $0C
	dc.b	nD5, $48, nRst, $0C, nD5, $0C, nE5, $0C, nF5, $18, nG5, $0C
	dc.b	nBb5, $24, nAb5, $0C, nF5, $48, nRst, $0C, nC5, $12, nRst, $06

Snd_SSZ_Loop06:
	dc.b	nD5, $18, nE5, $0C, nF5, $3C, nF5, $0C, nG5, $0C, nRst, $0C
	dc.b	nAb5, $3C
	smpsLoop            $00, $02, Snd_SSZ_Loop06
	smpsAlterPitch		$0C
	dc.b	nRst, $18, nA4, $0C, nRst, $18, nC5, $0C, nRst, $18, nF4, $0C
	dc.b	nRst, $18, nA4, $24, nA4, $18, nRst, $24
	smpsAlterPitch		$F4
	dc.b	nAb4, $0C, nC5, $0C
	dc.b	nBb4, $0C, nAb4, $0C, nEb5, $18, nC5, $0C, nD5, $0C, nEb5, $18
	dc.b	nD5, $0C, nF5, $18
	dc.b	nG5, $24, nEb6, $24, nD6, $07, nRst, $05, nD6, $18, nG5, $54
	dc.b	nAb5, $24, nEb6, $24, nD6, $07, nRst, $05, nD6, $18, nF6, $24
	dc.b	nEb6, $18, nD6, $18, nG5, $24, nEb6, $24, nD6, $07, nRst, $05
	dc.b	nD6, $18, nG5, $54, nAb5, $24, nC6, $24, nEb6, $18, nG6, $18
	dc.b	nF6, $0C, nEb6, $18, nF6, $24, nC6, $54, nC5, $06, nE5, $06
	dc.b	nF5, $24, nE5, $18, nC5, $24
	smpsAlterVol        $FF
	dc.b	nC6, $54, nC6, $06, nE6, $06, nF6, $24, nE6, $18, nC6, $24
	smpsAlterVol        $FF
	dc.b	nG6, $0C, nC6, $07, nRst, $29, nC6, $0C, nG6, $0C, nC6, $07
	dc.b	nRst, $11, nC6, $0C, nRst, $0C, nC6, $0C, nG6, $0C, nC6, $0C
	dc.b	nRst, $0C, nC6, $0C
	smpsAlterVol        $FF
	dc.b	nBb6, $24, nAb6, $24, nG6, $24, nF6, $24, nEb6, $18, nF6, $18
	smpsAlterVol        $07

Snd_SSZ_Loop07:
	dc.b	nC5, $12, nB4, $12, nG4, $0C, nG5, $12, nF5, $12, nE5, $0C
	smpsLoop            $00, $07, Snd_SSZ_Loop07
	dc.b	nC5, $12, nB4, $12
	smpsAlterVol        $FF
	dc.b	nG4, $0C
	smpsAlterVol        $01
	dc.b	nG5, $18, nRst, $18
	smpsAlterVol        $FD
	smpsJump	Snd_SSZ_Loop04

; PSG1 Data
Snd_SSZ_PSG1:
	dc.b	nG2, $06, nF2, $06, nC2, $06, nF2, $06
	smpsLoop            $00, $0E, Snd_SSZ_PSG1
	dc.b	nRst, $0C, nB1, $0C, nRst, $18

Snd_SSZ_Loop24:
	dc.b	nC3, $06, nC2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop24

Snd_SSZ_Loop26:
	dc.b	nC4, $06, nC2, $06, nC4, $06

Snd_SSZ_Loop25:
	dc.b	nC2, $06, nC3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop25
	dc.b	nC2, $06
	smpsLoop            $01, $0F, Snd_SSZ_Loop26
	dc.b	nC4, $06, nC2, $06, nC4, $06, nC2, $06, nC3, $06, nC2, $06
	dc.b	nC3, $06, nC2, $06

Snd_SSZ_Loop27:
	dc.b	nG3, $06, nG2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop27
	dc.b	nG4, $06, nG2, $06, nG4, $06

Snd_SSZ_Loop28:
	dc.b	nG2, $06, nG3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop28
	dc.b	nG2, $06, nG4, $06, nG2, $06, nG4, $06, nG2, $06, nG3, $06
	dc.b	nG2, $06, nG3, $06, nG2, $06

Snd_SSZ_Loop29:
	dc.b	nAb3, $06, nAb2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop29
	dc.b	nAb4, $06, nAb2, $06, nAb4, $06

Snd_SSZ_Loop2A:
	dc.b	nAb2, $06, nAb3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop2A
	dc.b	nAb2, $06, nAb4, $06, nAb2, $06, nAb4, $06, nAb2, $06, nAb3, $06
	dc.b	nAb2, $06, nAb3, $06, nAb2, $06

Snd_SSZ_Loop2B:
	dc.b	nG3, $06, nG2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop2B
	dc.b	nG4, $06, nG2, $06, nG4, $06

Snd_SSZ_Loop2C:
	dc.b	nG2, $06, nG3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop2C
	dc.b	nG2, $06, nG4, $06, nG2, $06, nG4, $06, nG2, $06, nG3, $06
	dc.b	nG2, $06, nG3, $06, nG2, $06

Snd_SSZ_Loop2D:
	dc.b	nC3, $06, nC2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop2D

Snd_SSZ_Loop2F:
	dc.b	nC4, $06, nC2, $06, nC4, $06

Snd_SSZ_Loop2E:
	dc.b	nC2, $06, nC3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop2E
	dc.b	nC2, $06
	smpsLoop            $01, $19, Snd_SSZ_Loop2F
	dc.b	nC4, $06, nC2, $06, nC4, $06, nC2, $06, nC3, $06, nC2, $06
	dc.b	nC3, $06, nC2, $06

Snd_SSZ_Loop30:
	dc.b	nG3, $06, nG2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop30
	dc.b	nG4, $06, nG2, $06, nG4, $06

Snd_SSZ_Loop31:
	dc.b	nG2, $06, nG3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop31
	dc.b	nG2, $06, nG4, $06, nG2, $06, nG4, $06, nG2, $06, nG3, $06
	dc.b	nG2, $06, nG3, $06, nG2, $06

Snd_SSZ_Loop32:
	dc.b	nAb3, $06, nAb2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop32
	dc.b	nAb4, $06, nAb2, $06, nAb4, $06

Snd_SSZ_Loop33:
	dc.b	nAb2, $06, nAb3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop33
	dc.b	nAb2, $06, nAb4, $06, nAb2, $06, nAb4, $06, nAb2, $06, nAb3, $06
	dc.b	nAb2, $06, nAb3, $06, nAb2, $06

Snd_SSZ_Loop34:
	dc.b	nG3, $06, nG2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop34
	dc.b	nG4, $06, nG2, $06, nG4, $06

Snd_SSZ_Loop35:
	dc.b	nG2, $06, nG3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop35
	dc.b	nG2, $06, nG4, $06, nG2, $06, nG4, $06, nG2, $06, nG3, $06
	dc.b	nG2, $06, nG3, $06, nG2, $06

Snd_SSZ_Loop36:
	dc.b	nC3, $06, nC2, $06
	smpsLoop            $00, $04, Snd_SSZ_Loop36

Snd_SSZ_Loop38:
	dc.b	nC4, $06, nC2, $06, nC4, $06

Snd_SSZ_Loop37:
	dc.b	nC2, $06, nC3, $06
	smpsLoop            $00, $06, Snd_SSZ_Loop37
	dc.b	nC2, $06
	smpsLoop            $01, $09, Snd_SSZ_Loop38
	dc.b	nC4, $06, nC2, $06, nC4, $06, nC2, $06, nC3, $06, nC2, $06
	dc.b	nC3, $06, nC2, $06

Snd_SSZ_Loop39:
	dc.b	nG2, $06, nF2, $06, nC2, $06, nF2, $06
	smpsLoop            $00, $1E, Snd_SSZ_Loop39
	dc.b	nC3, $18, nRst, $18
	smpsJump	Snd_SSZ_Loop24

; PSG3 Data
Snd_SSZ_PSG3:
	smpsPSGform         $E7

Snd_SSZ_Jump00:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG2, $0C
	smpsJump            Snd_SSZ_Jump00

; PSG2 Data
Snd_SSZ_PSG2:
	smpsStop

Snd_SSZ_Voices:
;	Voice $00
;	$34
;	$02, $02, $02, $02, 	$1F, $5F, $1F, $5F, 	$0E, $00, $12, $00
;	$00, $08, $02, $08, 	$4F, $0F, $4F, $0F, 	$12, $80, $12, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $12, $00, $0E
	smpsVcDecayRate2    $08, $02, $08, $00
	smpsVcDecayLevel    $00, $04, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $12, $00, $12

;	Voice $01
;	$3D
;	$01, $01, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$60, $89, $59, $79, 	$18, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $09, $09, $09, $00
	smpsVcTotalLevel    $00, $00, $00, $18

;	Voice $02
;	$3D
;	$02, $01, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$18, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $08, $08, $18

;	Voice $03
;	$04
;	$02, $02, $03, $03, 	$13, $10, $13, $10, 	$06, $0C, $06, $0C
;	$00, $00, $00, $00, 	$4F, $2F, $4F, $2F, 	$18, $90, $18, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $13, $10, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $06, $0C, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $04, $02, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $10, $18, $10, $18
