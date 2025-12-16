Snd_FBZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_FBZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_FBZ1_DAC
	smpsHeaderFM        Snd_FBZ1_FM1,	$00, $0A
	smpsHeaderFM        Snd_FBZ1_FM2,	$00, $0A
	smpsHeaderFM        Snd_FBZ1_FM3,	$00, $0D
	smpsHeaderFM        Snd_FBZ1_FM4,	$00, $0D
	smpsHeaderFM        Snd_FBZ1_FM5,	$00, $13
	smpsHeaderPSG       Snd_FBZ1_PSG1,	$0C, $01, $00, $00
	smpsHeaderPSG       Snd_FBZ1_PSG2,	$0C, $04, $00, $00
	smpsHeaderPSG       Snd_FBZ1_PSG3,	$E8, $02, $00, $00

; DAC Data
Snd_FBZ1_DAC:
Snd_FBZ1_Loop00:
	dc.b	dKickS3, $18, dSnareS3, $18
	smpsLoop            $00, $03, Snd_FBZ1_Loop00
	dc.b	dKickS3, $18, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06

Snd_FBZ1_Loop01:
	dc.b	dKickS3, $18, dSnareS3, $18
	smpsLoop            $00, $03, Snd_FBZ1_Loop01

Snd_FBZ1_Loop03:
	dc.b	dKickS3, $18, dSnareS3, $0C, dSnareS3, $0C

Snd_FBZ1_Loop02:
	dc.b	dKickS3, $18, dSnareS3, $18
	smpsLoop            $00, $07, Snd_FBZ1_Loop02
	smpsLoop            $01, $02, Snd_FBZ1_Loop03
	dc.b	dKickS3, $18, dKickS3

Snd_FBZ1_Loop04:
	dc.b	$06
	smpsLoop            $00, $04, Snd_FBZ1_Loop04

Snd_FBZ1_Loop05:
	dc.b	dKickS3, $18, dSnareS3, $18
	smpsLoop            $00, $07, Snd_FBZ1_Loop05
	dc.b	dKickS3, $18, dSnareS3, $0C, dSnareS3, $0C
	smpsLoop            $01, $02, Snd_FBZ1_Loop05

Snd_FBZ1_Loop06:
	dc.b	dKickS3, $18, dSnareS3, $18
	smpsLoop            $00, $0F, Snd_FBZ1_Loop06
	dc.b	dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dSnareS3, $0C

Snd_FBZ1_Loop07:
	dc.b	dKickS3, $0C, dClapS3, $0C, dSnareS3, $0C, dClapS3, $06, dClapS3, $06
	smpsLoop            $00, $03, Snd_FBZ1_Loop07
	dc.b	dKickS3, $06, dClapS3, $06, dClapS3, $06, dClapS3, $06, dSnareS3, $0C, dClapS3, $0C
	smpsLoop            $01, $04, Snd_FBZ1_Loop07
	dc.b	dKickS3, $0C, dSnareS3, $0C, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $06, dSnareS3, $30

Snd_FBZ1_Loop08:
	dc.b	dKickS3, $18, dSnareS3, $18
	smpsLoop            $00, $07, Snd_FBZ1_Loop08
	dc.b	dKickS3, $06, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $0C, dKickS3, $0C, dKickS3, $0C
	dc.b	dSnareS3, $0C, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $36

Mus_FBZ1LASTDRUMLOOP_DAC:
	dc.b    dKickS3, $18, dSnareS3, $18
	smpsLoop            $00, $03, Mus_FBZ1LASTDRUMLOOP_DAC
	dc.b    dKickS3, $18, dSnareS3, $0C, dSnareS3, $0C

Mus_FBZ1LASTDRUMLOOP_Loop00:
	dc.b    dKickS3, $18, dSnareS3, $18
	smpsLoop            $00, $07, Mus_FBZ1LASTDRUMLOOP_Loop00
	dc.b    dKickS3, $18
	smpsJump	Snd_FBZ1_Loop04   

; FM1 Data
Snd_FBZ1_FM1:
	smpsFMAlterVol 	    $03
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panLeft, $00
	smpsSetvoice        $04
	dc.b	nRst, $7F, nRst, $41
	dc.b	nD4, $0C, nE4, $7F, smpsNoAttack, $05, nRst, $0C, nE4, $0C, nD4, $0C
	dc.b	nE4, $7F, smpsNoAttack, $3E, nRst, $0F
FBZ1FM1INIT:
	dc.b	nD4, $0C, nE4, $7F, smpsNoAttack, $05
	dc.b	nRst, $0C, nE4, $0C, nD4, $0C, nE4, $7F, smpsNoAttack, $1D, nRst, $18
	dc.b	nG2, $0C, nA2, $7F, smpsNoAttack, $1D, nRst, $18
	smpsFMAlterVol 	    -$03
	smpsPan             panCenter, $00
	dc.b	nRst, $18
	smpsSetvoice        $01
	dc.b	nRst, $0C
	dc.b	nA6, $7F, smpsNoAttack, $0B, nG6, $06, nE6, $06, nD6, $06, nE6, $06
	dc.b	nD6, $06, nC6, $06, nA5, $06, nD6, $02, nEb6, $0A, nA5, $0C
	dc.b	nRst, $78, nD6, $06, nEb6, $06, nD6, $06, nEb6, $06, nG6, $06
	dc.b	nA6, $06, nC7, $06, nA6, $06, nRst, $0C, nA6, $7F, smpsNoAttack, $0B
	dc.b	nG6, $06, nE6, $06, nD6, $06, nE6, $06, nD6, $06, nC6, $06
	dc.b	nA5, $06, nD6, $02, nEb6, $0A, nA5, $0C, nRst, $48, nE5, $06
	dc.b	nG5, $06, nE5, $06, nG5, $06, nA5, $06, nG5, $06, nA5, $06
	dc.b	nC6, $06, nEb6, $06, nE6, $06, nD6, $06, nC6, $06, nA6, $06
	dc.b	nG6, $06, nE6, $06, nC6, $06
	smpsSetvoice        $00
	dc.b	nE4, $48, nE4, $06, nA4, $04, nRst, $08, nE4, $42, nD4, $05
	dc.b	nRst, $07, nC4, $05, nRst, $07, nB3, $05, nRst, $07, nC4, $12
	dc.b	nA3, $06, nRst, $7F, nRst, $29, nE4, $48, nE4, $06, nA4, $04
	dc.b	nRst, $08, nE4, $42, nD4, $05, nRst, $07, nC4, $05, nRst, $07, nB3
	dc.b	$05, nRst, $07, nC4, $12, nE4, $06, nRst, $7F, nRst, $05, nE5, $0C
	dc.b	nD5, $0C, nC5, $0C, nC5, $12, nA4, $12, nE5, $30, nD5, $06
	dc.b	nC5, $06, nD5, $0B, nRst, $07, nB4, $0B, nRst, $07, nG4, $24
	dc.b	nB4, $0C, nA4, $0C, nAb4, $12, nB4, $06, nRst, $0C, nD5, $18
	dc.b	nF5, $06, nRst, $06, nE5, $06, nRst, $06, nD5, $06, nRst, $06
	dc.b	nE5, $10, nRst, $08, nD5, $10, nRst, $08, nC5, $10, nRst, $08
	dc.b	nB4, $10, nRst, $08, nC5, $12, nA4, $12, nE5, $2D, nRst, $03
	dc.b	nD5, $06, nC5, $06, nD5, $0B, nRst, $07, nB4, $0B, nRst, $07
	dc.b	nG4, $24, nB4, $0C, nA4, $0C, nAb4, $12, nB4, $06, nRst, $0C
	dc.b	nD5, $18, nF5, $06, nRst, $06, nE5, $06, nRst, $06, nD5, $06
	dc.b	nRst, $06, nE5, $06, nD5, $06, nE5, $7F, smpsNoAttack, $05, nRst, $30
	smpsSetvoice        $01
	dc.b	nRst, $0C, nA6, $7F, smpsNoAttack, $0B, nG6, $06, nE6, $06, nD6, $06, nE6
	dc.b	$06, nD6, $06, nC6, $06, nA5, $06, nD6, $02, nEb6, $0A, nA5
	dc.b	$7F, smpsNoAttack, $5F, nRst, $36
	smpsSetvoice        $04
	smpsPan             panLeft, $00
	smpsFMAlterVol 	    $03
	smpsJump	    FBZ1FM1INIT

; FM2 Data
Snd_FBZ1_FM2:
	smpsSetvoice        $02
	smpsModSet          $0D, $01, $02, $06
	dc.b	nA2, $0C, nG3, $06, nA3, $06, nD3, $06, nE3, $06, nA2, $03
	dc.b	nRst, $03, nA2, $03, nRst, $03, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $0C, nA2, $0C, nA2, $03, nRst, $03, nA2, $06, nD3, $06
	dc.b	nE3, $06, nG3, $06, nA3, $06, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $03, nRst, $03, nG3, $06, nA3, $06, nA2, $06, nD3, $06
	dc.b	nE3, $06, nA2, $0C, nA2, $0C, nG3, $06, nA3, $06, nD3, $06
	dc.b	nE3, $06, nA2, $03, nRst, $03, nA2, $03, nRst, $03, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $0C, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $06, nD3, $06, nE3, $06, nG3, $06, nA3, $06, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $03, nRst, $03, nG3, $06, nA3, $06
	dc.b	nA2, $06, nD3, $06, nE3, $06, nA2, $0C, nA2, $0C, nG3, $06
	dc.b	nA3, $06, nD3, $06, nE3, $06, nA2, $03, nRst, $03, nA2, $03
	dc.b	nRst, $03, nA2, $0C, nA2, $03, nRst, $03, nA2, $0C, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $06, nD3, $06, nE3, $06, nG3, $06
	dc.b	nA3, $06, nA2, $0C, nA2, $03, nRst, $03, nA2, $03, nRst, $03
	dc.b	nG3, $06, nA3, $06, nA2, $06, nD3, $06, nE3, $06, nA2, $0C
FBZ1FM2INIT:	
	dc.b	nA2, $0C, nG3, $06, nA3, $06, nD3, $06, nE3, $06, nA2, $03
	dc.b	nRst, $03, nA2, $03, nRst, $03, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $0C, nA2, $0C, nA2, $03, nRst, $03, nA2, $06, nD3, $06
	dc.b	nE3, $06, nG3, $06, nA3, $06, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $03, nRst, $03, nG3, $06, nA3, $06, nA2, $06, nD3, $06
	dc.b	nE3, $06, nA2, $0C, nA2, $0C, nG3, $06, nA3, $06, nD3, $06
	dc.b	nE3, $06, nA2, $03, nRst, $03, nA2, $03, nRst, $03, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $0C, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $06, nD3, $06, nE3, $06, nG3, $06, nA3, $06, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $03, nRst, $03, nG3, $06, nA3, $06
	dc.b	nA2, $06, nD3, $06, nE3, $06, nA2, $0C, nA2, $0C, nG3, $06
	dc.b	nA3, $06, nD3, $06, nE3, $06, nA2, $03, nRst, $03, nA2, $03
	dc.b	nRst, $03, nA2, $0C, nA2, $03, nRst, $03, nA2, $0C, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $06, nD3, $06, nE3, $06, nG3, $06
	dc.b	nA3, $06, nA2, $0C, nA2, $03, nRst, $03, nA2, $03, nRst, $03
	dc.b	nG3, $06, nA3, $06, nA2, $06
	dc.b	nD3, $06, nE3, $06, nA2, $03, nRst, $03, nA2, $03, nRst, $03
	dc.b	nA2, $0C, nG3, $06, nA3, $06, nA2, $04, nRst, $08, nA2, $03
	dc.b	nRst, $03, nA2, $03, nRst, $03, nAb2, $0C, nG3, $06, nAb3, $06
	dc.b	nAb2, $04, nRst, $08, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03
	dc.b	nG2, $0C, nG2, $06, nG3, $06, nG2, $04, nRst, $08, nG2, $03
	dc.b	nRst, $03, nG2, $03, nRst, $03, nAb2, $0C, nAb3, $04, nRst, $08
	dc.b	nAb2, $04, nRst, $08, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03
	dc.b	nA2, $0C, nG3, $06, nA3, $06, nD3, $06, nE3, $06, nA2, $03
	dc.b	nRst, $03, nA2, $03, nRst, $03, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $0C, nA2, $0C, nA2, $03, nRst, $03, nA2, $06, nD3, $06
	dc.b	nE3, $06, nG3, $06, nA3, $06, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $03, nRst, $03, nG3, $06, nA3, $06, nA2, $06, nD3, $06
	dc.b	nE3, $06, nA2, $0C, nA2, $0C, nG3, $06, nA3, $06, nA2, $04
	dc.b	nRst, $08, nA2, $03, nRst, $03, nA2, $03, nRst, $03, nAb2, $0C
	dc.b	nG3, $06, nAb3, $06, nAb2, $04, nRst, $08, nAb2, $03, nRst, $03
	dc.b	nAb2, $03, nRst, $03, nG2, $0C, nG2, $06, nG3, $06, nG2, $04
	dc.b	nRst, $08, nG2, $03, nRst, $03, nG2, $03, nRst, $03, nAb2, $0C
	dc.b	nAb3, $04, nRst, $08, nAb2, $04, nRst, $08, nAb2, $03, nRst, $03
	dc.b	nAb2, $03, nRst, $03, nA2, $0C, nG3, $06, nA3, $06, nD3, $06
	dc.b	nE3, $06, nA2, $03, nRst, $03, nA2, $03, nRst, $03, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $0C, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $06, nD3, $06, nE3, $06, nG3, $06, nA3, $06, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $03, nRst, $03, nG3, $06, nA3, $06
	dc.b	nA2, $06, nD3, $06, nE3, $06, nA2, $0C, nA2, $0C, nG3, $06
	dc.b	nA3, $06, nA2, $04, nRst, $08, nA2, $03, nRst, $03, nA2, $03
	dc.b	nRst, $03, nAb2, $0C, nG3, $06, nAb3, $06, nAb2, $04, nRst, $08
	dc.b	nAb2, $03, nRst, $03, nAb2, $03, nRst, $03, nG2, $0C, nG2, $06
	dc.b	nG3, $06, nG2, $04, nRst, $08, nG2, $03, nRst, $03, nG2, $03
	dc.b	nRst, $03, nAb2, $0C, nAb3, $04, nRst, $08, nAb2, $04, nRst, $08
	dc.b	nAb2, $03, nRst, $03, nAb2, $03, nRst, $03, nA2, $0C, nG3, $06
	dc.b	nA3, $06, nD3, $06, nE3, $06, nA2, $03, nRst, $03, nA2, $03
	dc.b	nRst, $03, nA2, $0C, nA2, $03, nRst, $03, nA2, $0C, nA2, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $06, nD3, $06, nE3, $06, nG3, $06
	dc.b	nA3, $06, nA2, $0C, nA2, $03, nRst, $03, nA2, $03, nRst, $03
	dc.b	nG3, $06, nA3, $06, nA2, $06, nD3, $06, nE3, $06, nA2, $0C
	dc.b	nA2, $0C, nG3, $06, nA3, $06, nA2, $04, nRst, $08, nA2, $03
	dc.b	nRst, $03, nA2, $03, nRst, $03, nAb2, $0C, nG3, $06, nAb3, $06
	dc.b	nAb2, $04, nRst, $08, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03
	dc.b	nG2, $0C, nG2, $06, nG3, $06, nG2, $04, nRst, $08, nG2, $03
	dc.b	nRst, $03, nG2, $03, nRst, $03, nAb2, $0C, nAb3, $04, nRst, $08
	dc.b	nAb2, $04, nRst, $08, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03
	dc.b	nA2, $0C, nG3, $06, nA3, $06, nD3, $06, nE3, $06, nA2, $03
	dc.b	nRst, $03, nA2, $03, nRst, $03, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $0C, nA2, $0C, nA2, $03, nRst, $03, nA2, $06, nD3, $06
	dc.b	nE3, $06, nG3, $06, nA3, $06, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $03, nRst, $03, nG3, $06, nA3, $06, nA2, $06, nD3, $06
	dc.b	nE3, $06, nA2, $0C, nF2, $06, nF3, $0C, nF2, $03, nRst, $03
	dc.b	nF2, $06, nF3, $0C, nF2, $03, nRst, $03, nF2, $0C, nF3, $06
	dc.b	nRst, $06, nF2, $0C, nF3, $06, nRst, $06, nG2, $06, nG3, $0C
	dc.b	nG2, $03, nRst, $03, nG2, $06, nG3, $0C, nG2, $03, nRst, $03
	dc.b	nG2, $0C, nG3, $06, nRst, $06, nG2, $0C, nG3, $06, nRst, $06
	dc.b	nAb2, $06, nAb3, $0C, nAb2, $03, nRst, $03, nAb2, $06, nAb3, $0C
	dc.b	nAb2, $03, nRst, $03, nAb2, $0C, nAb3, $06, nRst, $06, nAb2, $0C
	dc.b	nAb3, $06, nRst, $06, nA2, $06, nA3, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $06, nA3, $0C, nA2, $03, nRst, $03, nG2, $0C, nG3, $06
	dc.b	nRst, $06, nG2, $0C, nG3, $06, nRst, $06, nF2, $06, nF3, $0C
	dc.b	nF2, $03, nRst, $03, nF2, $06, nF3, $0C, nF2, $03, nRst, $03
	dc.b	nF2, $0C, nF3, $06, nRst, $06, nF2, $0C, nF3, $06, nRst, $06
	dc.b	nG2, $06, nG3, $0C, nG2, $03, nRst, $03, nG2, $06, nG3, $0C
	dc.b	nG2, $03, nRst, $03, nG2, $0C, nG3, $06, nRst, $06, nG2, $0C
	dc.b	nG3, $06, nRst, $06, nAb2, $06, nAb3, $0C, nAb2, $03, nRst, $03
	dc.b	nAb2, $06, nAb3, $0C, nAb2, $03, nRst, $03, nAb2, $0C, nAb3, $06
	dc.b	nRst, $06, nAb2, $0C, nAb3, $06, nRst, $06, nA2, $06, nA3, $0C
	dc.b	nA2, $03, nRst, $03, nA2, $06, nA3, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $0C, nA3, $06, nRst, $06, nA2, $0C, nA3, $06, nRst, $06
	dc.b	nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06
	dc.b	nA2, $03, nRst, $03, nA2, $03, nRst, $03, nA2, $03, nRst, $03
	dc.b	nA3, $03, nRst, $03, nG3, $06, nA3, $06, nD3, $06, nE3, $06
	dc.b	nA2, $03, nRst, $03, nA2, $03, nRst, $03
	dc.b	nA2, $0C, nG3, $06, nA3, $06, nA2, $04, nRst, $08, nA2, $03
	dc.b	nRst, $03, nA2, $03, nRst, $03, nAb2, $0C, nG3, $06, nAb3, $06
	dc.b	nAb2, $04, nRst, $08, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03
	dc.b	nG2, $0C, nG2, $06, nG3, $06, nG2, $04, nRst, $08, nG2, $03
	dc.b	nRst, $03, nG2, $03, nRst, $03, nAb2, $0C, nAb3, $04, nRst, $08
	dc.b	nAb2, $04, nRst, $08, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03
	dc.b	nA2, $0C, nG3, $06, nA3, $06, nD3, $06, nE3, $06, nA2, $03
	dc.b	nRst, $03, nA2, $03, nRst, $03, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $0C, nA2, $0C, nA2, $03, nRst, $03, nA2, $06, nD3, $06
	dc.b	nE3, $06, nG3, $06, nA3, $06, nA2, $0C, nA2, $03, nRst, $03
	dc.b	nA2, $03, nRst, $03, nG3, $06, nA3, $06, nA2, $06, nD3, $06
	dc.b	nE3, $06, nA2, $0C, nA2, $0C, nG3, $06, nA3, $06, nA2, $04
	dc.b	nRst, $08, nA2, $03, nRst, $03, nA2, $03, nRst, $33
	smpsJump	FBZ1FM2INIT
	
; FM3 Data
Snd_FBZ1_FM3:
	
	smpsModSet          $0D, $01, $02, $06
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	dc.b	nA3, $18, nE4, $18, nA3, $0C, nF4, $18, nA3, $18, nFs4, $18
	dc.b	nA3, $0C, nRst, $0C, nF4, $24
	dc.b	nA3, $18, nE4, $18, nA3, $0C, nF4, $24, nA3, $0C, nFs4, $18
	dc.b	nA3, $0C, nRst, $0C, nF4, $24
	dc.b	nA3, $18, nE4, $18, nA3, $0C, nF4, $18, nA3, $18, nFs4, $18
	dc.b	nA3, $0C, nRst, $0C, nF4, $24
FBZ1FM3INIT:
	dc.b	nA3, $18, nE4, $18, nA3, $0C, nF4, $24, nA3, $0C, nFs4, $18
	dc.b	nA3, $0C, nRst, $0C, nF4, $24
	dc.b	nA3, $18, nE4, $18, nA3, $0C, nF4, $18, nA3, $18, nFs4, $18
	dc.b	nA3, $0C, nRst, $0C, nF4, $18, nF4, $0C
	dc.b	nA3, $18, nE4, $18, nA3, $0C, nF4, $24, nA3, $0C, nFs4, $18
	dc.b	nA3, $0C, nRst, $0C, nF4, $24

Snd_FBZ1_Loop10:
	smpsSetvoice        $04
	dc.b	nA4, $10, nRst, $08, nG4, $10, nRst, $08, nE4, $0F, nRst, $03
	dc.b	nD4, $0F, nRst, $03, nC4, $06, nRst, $0C, nC4, $12, nD4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nD4, $12, nC4, $06, nRst, $18
	smpsSetvoice        $03
	dc.b	nE4, $06, nRst, $06, nE5, $24, nF4, $06, nRst, $06, nF5, $24
	dc.b	nFs4, $06, nRst, $06, nFs5, $24, nF4, $06, nRst, $06, nF5, $24
	smpsLoop            $00, $04, Snd_FBZ1_Loop10
	smpsSetvoice        $05
	dc.b	nRst, $0C

Snd_FBZ1_Loop13:
	dc.b	nC5, $24, nRst, $0C, nC5, $06, nRst, $06, nB4, $06, nC5, $06

Snd_FBZ1_Loop11:
	dc.b	nRst, $18, nD5, $23, nRst, $0D, nD5, $06, nRst, $06, nC5, $06
	dc.b	nD5, $06
	smpsLoop            $00, $02, Snd_FBZ1_Loop11
	dc.b	nRst, $18, nE5, $0C, nE5, $06

Snd_FBZ1_Loop12:
	dc.b	nE5, $06, nRst, $06
	smpsLoop            $00, $03, Snd_FBZ1_Loop12
	dc.b	nE5, $06, nE5, $06, nRst, $06, nE5, $06, nRst, $12
	smpsLoop            $01, $02, Snd_FBZ1_Loop13

Snd_FBZ1_Loop14:
	dc.b	nE5, $06, nRst, $06
	smpsLoop            $00, $03, Snd_FBZ1_Loop14
	dc.b	nE5, $06, nRst, $2A
	smpsSetvoice        $04
	dc.b	nA4, $10, nRst, $08, nG4, $10, nRst, $08, nE4, $0F, nRst, $03
	dc.b	nD4, $0F, nRst, $03, nC4, $06, nRst, $0C, nC4, $12, nD4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nD4, $12, nC4, $06, nRst, $18
	smpsSetvoice        $03
	dc.b	nE4, $06, nRst, $06, nE5, $24, nF4, $06, nRst, $06, nF5, $24
	dc.b	nFs4, $06, nRst, $06, nFs5, $54
	dc.b	smpsNoAttack, $2A, nRst, $36
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsJump	    FBZ1FM3INIT

; FM4 Data
Snd_FBZ1_FM4:	
	
	smpsPan             panRight, $00	
	smpsModSet          $0D, $01, $02, $06
	smpsSetvoice        $03
	dc.b	nC3, $18, nC4, $18, nC3, $0C, nC4, $18, nC3, $18, nC4, $18
	dc.b	nC3, $0C, nRst, $0C, nC4, $24
	dc.b	nC3, $18, nC4, $18, nC3, $0C, nC4, $24, nC3, $0C, nC4, $18
	dc.b	nC3, $0C, nRst, $0C, nC4, $24
	dc.b	nC3, $18, nC4, $18, nC3, $0C, nC4, $18, nC3, $18, nC4, $18
	dc.b	nC3, $0C, nRst, $0C, nC4, $24
FBZ1FM4INIT:
	dc.b	nC3, $18, nC4, $18, nC3, $0C, nC4, $24, nC3, $0C, nC4, $18
	dc.b	nC3, $0C, nRst, $0C, nC4, $24
	dc.b	nC3, $18, nC4, $18, nC3, $0C, nC4, $18, nC3, $18, nC4, $18
	dc.b	nC3, $0C, nRst, $0C, nC4, $18, nC4, $0C
	dc.b	nC3, $18, nC4, $18, nC3, $0C, nC4, $24, nC3, $0C, nC4, $18
	dc.b	nC3, $0C, nRst, $0C, nC4, $24

Snd_FBZ1_Loop0A:
	smpsSetvoice        $04
	dc.b	nE4, $10, nRst, $08, nE4, $10, nRst, $08, nC4, $0F, nRst, $03
	dc.b	nA3, $0F, nRst, $03, nE3, $06, nRst, $0C, nA3, $12, nB3, $06
	dc.b	nRst, $06, nC4, $06, nRst, $06, nB3, $12, nA3, $06, nRst, $18
	smpsSetvoice        $03

Snd_FBZ1_Loop09:
	dc.b	nC4, $06, nRst, $06, nC5, $24
	smpsLoop            $00, $04, Snd_FBZ1_Loop09
	smpsLoop            $01, $04, Snd_FBZ1_Loop0A
	dc.b	nRst, $0C
	smpsSetvoice        $05

Snd_FBZ1_Loop0D:
	dc.b	nA4, $24, nRst, $0C, nA4, $06, nRst, $06, nG4, $06, nA4, $06

Snd_FBZ1_Loop0B:
	dc.b	nRst, $18, nB4, $23, nRst, $0D, nB4, $06, nRst, $06, nA4, $06
	dc.b	nB4, $06
	smpsLoop            $00, $02, Snd_FBZ1_Loop0B
	dc.b	nRst, $18, nC5, $0C, nC5, $06

Snd_FBZ1_Loop0C:
	dc.b	nC5, $06, nRst, $06
	smpsLoop            $00, $03, Snd_FBZ1_Loop0C
	dc.b	nC5, $06, nC5, $06, nRst, $06, nC5, $06, nRst, $12
	smpsLoop            $01, $02, Snd_FBZ1_Loop0D

Snd_FBZ1_Loop0E:
	dc.b	nC5, $06, nRst, $06
	smpsLoop            $00, $03, Snd_FBZ1_Loop0E
	dc.b	nC5, $06, nRst, $2A
	smpsSetvoice        $04
	dc.b	nE4, $10, nRst, $08, nE4, $10, nRst, $08, nC4, $0F, nRst, $03
	dc.b	nA3, $0F, nRst, $03, nE3, $06, nRst, $0C, nA3, $12, nB3, $06
	dc.b	nRst, $06, nC4, $06, nRst, $06, nB3, $12, nA3, $06, nRst, $18
	smpsSetvoice        $03

Snd_FBZ1_Loop0F:
	dc.b	nC4, $06, nRst, $06, nC5, $24
	smpsLoop            $00, $02, Snd_FBZ1_Loop0F
	dc.b	nC4, $06, nRst, $06, nC5, $54
	smpsSetvoice        $03
	dc.b	smpsNoAttack, $2A, nRst, $36
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsJump	    FBZ1FM4INIT

; FM5 Data
Snd_FBZ1_FM5:
	smpsFMAlterVol 	    $FA
	smpsModSet          $0D, $01, $02, $06
	smpsPan             panRight, $00
	smpsSetvoice        $04
	dc.b	nRst, $7F, nRst, $41
	dc.b	nF4, $0C, nG4, $7F, smpsNoAttack, $05, nRst, $0C, nG4, $0C, nF4, $0C
	dc.b	nG4, $7F, smpsNoAttack, $3E, nRst, $0F
FBZ1FM5INIT:
	dc.b	nF4, $0C, nG4, $7F, smpsNoAttack, $05
	dc.b	nRst, $0C, nG4, $0C, nF4, $0C, nG4, $7F, smpsNoAttack, $1D, nRst, $18
	dc.b	nG3, $0C, nA3, $7F, smpsNoAttack, $1D, nRst, $18, nRst, $10
	smpsPan             panCenter, $00
	smpsFMAlterVol 	    $06
	dc.b	nRst, $18
	smpsSetvoice        $01
	dc.b	nRst, $0C
	dc.b	nA6, $7F, smpsNoAttack, $0B, nG6, $06, nE6, $06, nD6, $06, nE6, $06
	dc.b	nD6, $06, nC6, $06, nA5, $06, nD6, $02, nEb6, $0A, nA5, $0C
	dc.b	nRst, $78, nD6, $06, nEb6, $06, nD6, $06, nEb6, $06, nG6, $06
	dc.b	nA6, $06, nC7, $06, nA6, $06, nRst, $0C, nA6, $7F, smpsNoAttack, $0B
	dc.b	nG6, $06, nE6, $06, nD6, $06, nE6, $06, nD6, $06, nC6, $06
	dc.b	nA5, $06, nD6, $02, nEb6, $0A, nA5, $0C, nRst, $48, nE5, $06
	dc.b	nG5, $06, nE5, $06, nG5, $06, nA5, $06, nG5, $06, nA5, $06
	dc.b	nC6, $06, nEb6, $06, nE6, $06, nD6, $06, nC6, $06, nA6, $06
	dc.b	nG6, $06, nE6, $06, nC6, $06
	smpsSetvoice        $00
	dc.b	nE4, $48, nE4, $06, nA4, $04, nRst, $08, nE4, $42, nD4, $05
	dc.b	nRst, $07, nC4, $05, nRst, $07, nB3, $05, nRst, $07, nC4, $12
	dc.b	nA3, $06, nRst, $7F, nRst, $29, nE4, $48, nE4, $06, nA4, $04
	dc.b	nRst, $08, nE4, $42, nD4, $05, nRst, $07, nC4, $05, nRst, $07, nB3
	dc.b	$05, nRst, $07, nC4, $12, nE4, $06, nRst, $7F, nRst, $05, nE5, $0C
	dc.b	nD5, $0C, nC5, $0C, nC5, $12, nA4, $12, nE5, $30, nD5, $06
	dc.b	nC5, $06, nD5, $0B, nRst, $07, nB4, $0B, nRst, $07, nG4, $24
	dc.b	nB4, $0C, nA4, $0C, nAb4, $12, nB4, $06, nRst, $0C, nD5, $18
	dc.b	nF5, $06, nRst, $06, nE5, $06, nRst, $06, nD5, $06, nRst, $06
	dc.b	nE5, $10, nRst, $08, nD5, $10, nRst, $08, nC5, $10, nRst, $08
	dc.b	nB4, $10, nRst, $08, nC5, $12, nA4, $12, nE5, $2D, nRst, $03
	dc.b	nD5, $06, nC5, $06, nD5, $0B, nRst, $07, nB4, $0B, nRst, $07
	dc.b	nG4, $24, nB4, $0C, nA4, $0C, nAb4, $12, nB4, $06, nRst, $0C
	dc.b	nD5, $18, nF5, $06, nRst, $06, nE5, $06, nRst, $06, nD5, $06
	dc.b	nRst, $06, nE5, $06, nD5, $06, nE5, $7F, smpsNoAttack, $05, nRst, $20
	dc.b	nRst, $10
	smpsSetvoice        $01
	dc.b	nRst, $0C, nA6, $7F, smpsNoAttack, $0B, nG6, $06, nE6, $06, nD6, $06, nE6
	dc.b	$06, nD6, $06, nC6, $06, nA5, $06, nD6, $02, nEb6, $0A, nA5
	dc.b	$7F, smpsNoAttack, $5F, nRst, $26
	smpsPan             panRight, $00
	smpsSetvoice        $04
	smpsFMAlterVol 	    $FA
	smpsJump	    FBZ1FM5INIT

; PSG1 Data
Snd_FBZ1_PSG1:
	
	smpsModSet          $0D, $01, $02, $06
	smpsPSGvoice        $00
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
FBZ1PSG1INIT:
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nA2, $06, nC3, $06, nD3, $06, nEb3, $06, nE3, $06, nEb3, $06
	dc.b	nD3, $06, nC3, $06, nA3, $06, nG3, $06, nE3, $06, nD3, $06
	dc.b	nC3, $06, nD3, $06, nG2, $06, nA2, $7F, smpsNoAttack, $17, nRst, $7F
	dc.b	nRst, $11, nA3, $06, nG3, $06, nE3, $06, nD3, $06, nE3, $06, nD3
	dc.b	$06, nC3, $06, nG2, $06, nA2, $06, nC3, $06, nEb3, $06, nG2
	dc.b	$1E, nRst, $70, nRst, $70, nRst, $70, nRst, $70, nRst, $70, nRst, $70, nRst, $70, nRst, $70, nRst, $70, nRst, $70
	dc.b	nRst, $70, nRst, $70
	smpsJump	FBZ1PSG1INIT

; PSG2 Data
Snd_FBZ1_PSG2:

	smpsModSet          $0D, $01, $02, $06
	dc.b	nRst, $10
	smpsJump	Snd_FBZ1_PSG1	

; PSG3 Data
Snd_FBZ1_PSG3:
	smpsStop
	

Snd_FBZ1_Voices:
;	Voice $00
;	$38
;	$47, $31, $73, $41, 	$17, $11, $14, $18, 	$02, $0C, $05, $01
;	$00, $0F, $00, $00, 	$1F, $3F, $5F, $1F, 	$28, $13, $23, $81
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $03, $04
	smpsVcCoarseFreq    $01, $03, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $14, $11, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $05, $0C, $02
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $23, $13, $28

;	Voice $01
;	$38
;	$73, $55, $12, $31, 	$16, $15, $14, $12, 	$0E, $01, $05, $04
;	$0C, $13, $0C, $0B, 	$FF, $EF, $DF, $8F, 	$36, $38, $21, $85
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $05, $07
	smpsVcCoarseFreq    $01, $02, $05, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $14, $15, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $05, $01, $0E
	smpsVcDecayRate2    $0B, $0C, $13, $0C
	smpsVcDecayLevel    $08, $0D, $0E, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $05, $21, $38, $36

;	Voice $02
;	$3B
;	$47, $40, $41, $40, 	$9F, $1F, $1F, $1F, 	$0F, $0E, $09, $09
;	$00, $00, $00, $00, 	$EF, $EF, $EF, $EF, 	$24, $12, $15, $81
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $04, $04
	smpsVcCoarseFreq    $00, $01, $00, $07
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $0E, $0F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0E, $0E, $0E, $0E
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $15, $12, $24

;	Voice $03
;	$34
;	$61, $01, $01, $61, 	$10, $11, $50, $D1, 	$06, $01, $01, $01
;	$08, $00, $09, $00, 	$8F, $FF, $FF, $FF, 	$19, $85, $17, $86
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $00, $00, $06
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $03, $01, $00, $00
	smpsVcAttackRate    $11, $10, $11, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $01, $06
	smpsVcDecayRate2    $00, $09, $00, $08
	smpsVcDecayLevel    $0F, $0F, $0F, $08
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $17, $05, $19

;	Voice $04
;	$3B
;	$7C, $19, $11, $71, 	$13, $1C, $1C, $1B, 	$0C, $09, $0A, $02
;	$00, $06, $04, $07, 	$1F, $EF, $FF, $EF, 	$23, $29, $10, $81
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $01, $07
	smpsVcCoarseFreq    $01, $01, $09, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $1C, $1C, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0A, $09, $0C
	smpsVcDecayRate2    $07, $04, $06, $00
	smpsVcDecayLevel    $0E, $0F, $0E, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $10, $29, $23

;	Voice $05
;	$1B
;	$65, $50, $20, $41, 	$1C, $18, $1A, $18, 	$0F, $0C, $0B, $07
;	$05, $01, $05, $01, 	$CF, $0F, $DF, $CF, 	$21, $19, $26, $81
	smpsVcAlgorithm     $03
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $02, $05, $06
	smpsVcCoarseFreq    $01, $00, $00, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $1A, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0B, $0C, $0F
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0C, $0D, $00, $0C
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $26, $19, $21
