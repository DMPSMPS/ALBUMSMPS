Snd_Supersonic_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Supersonic_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_Supersonic_DAC
	smpsHeaderFM        Snd_Supersonic_FM1,	$00, $0B
	smpsHeaderFM        Snd_Supersonic_FM2,	$00, $11
	smpsHeaderFM        Snd_Supersonic_FM3,	$00, $07
	smpsHeaderFM        Snd_Supersonic_FM4,	$00, $16
	smpsHeaderFM        Snd_Supersonic_FM5,	$00, $16
	smpsHeaderPSG       Snd_Supersonic_PSG1,	$E8, $01, $00, sTone_11
	smpsHeaderPSG       Snd_Supersonic_PSG2,	$E8, $02, $00, sTone_11
	smpsHeaderPSG       Snd_Supersonic_PSG3,	$23, $00, $00, sTone_0F

; FM1 Data
Snd_Supersonic_FM1:
	smpsModSet          $07, $01, $03, $05
	smpsSetvoice        $00
	dc.b	nE2, $0F, nRst, $03, $0C, nB1, $06, nE2, $0C, nD2, $0F, nRst
	dc.b	$03, nFs2, $0C, nA2, $06, nB2, $0C, nCs3, $0F, nRst, $03, $0C
	dc.b	nA2, $06, nCs3, $0C, nB2, $06, nRst, nB2, nRst, nB2, nCs3, nB2
	dc.b	$0C

Snd_Supersonic_Loop04:
	smpsCall            Snd_Supersonic_Call08
	smpsCall            Snd_Supersonic_Call09
	smpsLoop            $00, $02, Snd_Supersonic_Loop04
	smpsJump            Snd_Supersonic_FM1

Snd_Supersonic_Call08:
	dc.b	nA2, $06, nRst
	smpsCall            Snd_Supersonic_Call0B
	dc.b	nE2, $06, nFs2, nAb2, nA2, nFs2, nAb2, nA2, nB2, nAb2, nA2, nB2
	dc.b	nCs3, nBb2, nC3, nCs3, nEb3, nA2, nRst
	smpsCall            Snd_Supersonic_Call0B
	dc.b	nB2, $06, nA2, nAb2, nFs2, nCs3, nB2, nA2, nAb2, nE2, nFs2, nAb2
	dc.b	nFs2, nAb2, nA2, nBb2, nB2
	smpsLoop            $01, $02, Snd_Supersonic_Call08
	dc.b	nD2, nRst, nD2, nD2, nRst, nA2, nD2, $0C, nE2, $06, nRst, nE2
	dc.b	nE2, nRst, nB2, nE2, $0C, nFs2, $06, nRst, nFs2, nFs2, nRst, nA2
	dc.b	nFs2, $0C, nAb2, $06, nRst, nAb2, nAb2, nRst, nA2, nAb2, $0C
	smpsReturn

Snd_Supersonic_Call09:
	smpsFMAlterVol      $FA
	smpsSetvoice        $05
	smpsModSet          $00, $00, $00, $00
	smpsAlterNote       $01
	dc.b	nB2, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, nD3
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nEb3
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nE3
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nF3
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $17
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nFs3
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nG3
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, nAb3
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, nA3
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, nBb3
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nB3
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsFMAlterVol      $06
	smpsSetvoice        $00
	smpsAlterNote       $00
	smpsModSet          $07, $01, $03, $05
	smpsReturn

Snd_Supersonic_Call0B:
	dc.b	nA2, nA2, $0C, nE2, $06, $0C, nD2, $06, nRst, nD2, nD2, $0C
	dc.b	nFs2, $06, $0C
	smpsReturn

; FM2 Data
Snd_Supersonic_FM2:
	smpsModSet          $07, $01, $03, $05
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nE4, $0F, nRst, $03, $0C, nFs4, $06, nE4, $0C, nFs4, $0F, nRst
	dc.b	$03, $0C, nAb4, $06, nFs4, $0C, nA4, $0F, nRst, $03, $0C, nB4
	dc.b	$06, nA4, $0C
	smpsFMAlterVol      $FC
	smpsPan             panLeft, $00
	dc.b	nB3, $06, nCs4, nD4, nE4
	smpsPan             panRight, $00
	dc.b	nFs4, nAb4, nA4, nB4
	smpsPan             panCenter, $00
	smpsFMAlterVol      $04

Snd_Supersonic_Loop03:
	smpsFMAlterVol      $09
	smpsCall            Snd_Supersonic_Call06
	smpsFMAlterVol      $F7
	smpsCall            Snd_Supersonic_Call07
	smpsLoop            $00, $02, Snd_Supersonic_Loop03
	smpsJump            Snd_Supersonic_FM2

Snd_Supersonic_Call06:
	dc.b	nA4, $18, nFs4, $0C, nE4, nA4, nFs4, nD4, nE4, $2D, nRst, $03
	dc.b	nD5, $15, nRst, $03, $06, nRst, nD5, nRst, nD5, nRst, nCs5, $18
	dc.b	nA4, $0C, nE4, nFs4, nA4, $18, nB4, $60, nRst, $0C
	smpsLoop            $02, $02, Snd_Supersonic_Call06
	smpsCall            Snd_Supersonic_Call0A
	dc.b	nCs5, $06, nRst, nCs5, nRst, nCs5, nD5, nE5, $0C, nD5, $06, nRst
	dc.b	nD5, nRst, nD5, nE5, nFs5, $0C, nE4, $48, nFs4, $06, nAb4, nA4
	dc.b	nCs5
	smpsReturn

Snd_Supersonic_Call07:
	smpsFMAlterVol      $FC
	smpsPan             panRight, $00
	dc.b	nE5, $06, nD5, nCs5, nB4
	smpsPan             panLeft, $00
	dc.b	nD5, nCs5, nB4, nA4
	smpsPan             panRight, $00
	dc.b	nCs5, nB4, nA4, nAb4
	smpsPan             panLeft, $00
	dc.b	nA4, nAb4, nFs4, nE4
	smpsPan             panCenter, $00
	smpsFMAlterVol      $04
	smpsReturn

Snd_Supersonic_Call0A:
	dc.b	nA4, $06, nRst, nA4, nRst, nA4, nB4, nCs5, $0C, nB4, $06, nRst
	dc.b	nB4, nRst, nB4, nCs5, nD5, $0C
	smpsReturn

; FM3 Data
Snd_Supersonic_FM3:
	smpsModSet          $07, $01, $03, $05
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst
	smpsCall            Snd_Supersonic_Call04
	smpsCall            Snd_Supersonic_Call05
	dc.b	nRst, $7C, nRst, $41, nRst, nRst, nRst
	smpsCall            Snd_Supersonic_Call04
	smpsCall            Snd_Supersonic_Call05
	smpsJump            Snd_Supersonic_FM3

Snd_Supersonic_Call04:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	dc.b	nCs5, $18, nB4, $0C, nA4, nCs5, nB4, nA4, nAb4, $2D, nRst, $03
	dc.b	nFs5, $15, nRst, $03, $06, nRst, nFs5, nRst, nFs5, nRst, nE5, $18
	dc.b	nCs5, $0C, nA4, nA4, nCs5, $18, nD5, $60, nRst, $0C, nFs4, $06
	dc.b	nRst, nFs4, nRst, nFs4, nAb4, nA4, $0C, nAb4, $06, nRst, nAb4, nRst
	dc.b	nAb4, nBb4, nB4, $0C
	smpsCall            Snd_Supersonic_Call0A
	smpsReturn

Snd_Supersonic_Call05:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsFMAlterVol      $10
	dc.b	nRst, $60, nA3, $03, nB3, nCs4, nE4, nB3, nCs4, nD4, nFs4
	smpsFMAlterVol      $FD
	dc.b	nCs4, nD4, nE4, nAb4, nD4, nE4, nFs4, nA4
	smpsFMAlterVol      $FD
	dc.b	nE4, nFs4, nAb4, nB4, nFs4, nAb4, nA4, nCs5
	smpsFMAlterVol      $FD
	dc.b	nAb4, nA4, nB4, nD5, nA4, nB4, nCs5, nE5
	smpsFMAlterVol      $FD
	smpsReturn

; FM4 Data
Snd_Supersonic_FM4:
	smpsAlterNote       $03
	smpsModSet          $07, $01, $03, $05
	smpsPan             panLeft, $00
	smpsSetvoice        $04

Snd_Supersonic_Loop01:
	dc.b	nE4, $0C, nRst, $06, $18, nRst, $06
	smpsLoop            $00, $02, Snd_Supersonic_Loop01
	dc.b	nA4, $0C, nRst, $06, nFs4, $18, nRst, $06, nE4, $0C, nRst, nE4
	dc.b	$18

Snd_Supersonic_Loop02:
	dc.b	nRst, $0C
	smpsCall            Snd_Supersonic_Call03
	smpsCall            Snd_Supersonic_Call02
	smpsLoop            $00, $02, Snd_Supersonic_Loop02
	smpsJump            Snd_Supersonic_FM4

Snd_Supersonic_Call03:
	smpsAlterNote       $03
	smpsModSet          $07, $01, $03, $05
	dc.b	nE4, $0C, nRst, nE4, nRst, nD4, nRst, nD4

Snd_Supersonic_Loop09:
	dc.b	nRst, nE4
	smpsLoop            $01, $06, Snd_Supersonic_Loop09
	dc.b	nRst, nD4, nRst, nD4, nRst, nAb4, nRst, nAb4, nRst, nFs4, nRst, nE4
	dc.b	nRst
	smpsLoop            $02, $02, Snd_Supersonic_Call03
	dc.b	nD4, nRst, nD4, nRst, nE4, nRst, nE4, nRst, nFs4, nRst, nFs4, nRst
	dc.b	nAb4, nRst, nAb4, nRst, $60
	smpsReturn

Snd_Supersonic_Call02:
	smpsModSet          $00, $00, $00, $00
	smpsAlterNote       $02
	dc.b	nE4, $14
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nF4
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $17
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, nG4
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nA4
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nCs5, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nD5, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nEb5, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, nE5, $01
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $05
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $09, nRst, $01
	smpsReturn

; FM5 Data
Snd_Supersonic_FM5:
	smpsAlterNote       $FD
	smpsModSet          $07, $01, $03, $05
	smpsPan             panRight, $00
	smpsSetvoice        $04
	dc.b	nB4, $0C, nRst, $06, nAb4, $18, nRst, $06, nA4, $0C, nRst, $06
	dc.b	nB4, $18, nRst, $06, nCs5, $0C, nRst, $06, nA4, $18, nRst, $06
	dc.b	nB4, $0C, nRst, nAb4, $18

Snd_Supersonic_Loop00:
	dc.b	nRst, $0C
	smpsCall            Snd_Supersonic_Call01
	smpsAlterPitch      $0C
	smpsCall            Snd_Supersonic_Call02
	smpsAlterPitch      $F4
	smpsLoop            $00, $02, Snd_Supersonic_Loop00
	smpsJump            Snd_Supersonic_FM5

Snd_Supersonic_Call01:
	smpsAlterNote       $FD
	smpsModSet          $07, $01, $03, $05
	dc.b	nA4, $0C, nRst, nA4, nRst, nFs4, nRst, nFs4, nRst, nAb4, nRst, nAb4
	dc.b	nRst, nB4, nRst, nB4

Snd_Supersonic_Loop07:
	dc.b	nRst, nA4
	smpsLoop            $01, $04, Snd_Supersonic_Loop07

Snd_Supersonic_Loop08:
	dc.b	nRst, nB4
	smpsLoop            $01, $04, Snd_Supersonic_Loop08
	dc.b	nRst
	smpsLoop            $02, $02, Snd_Supersonic_Call01
	dc.b	nFs4, nRst, nFs4, nRst, nAb4, nRst, nAb4, nRst, nA4, nRst, nA4, nRst
	dc.b	nB4, nRst, nB4, nRst, $60
	smpsReturn

; PSG1 Data
Snd_Supersonic_PSG1:
	dc.b	nRst, $7F, nRst, $41
	smpsCall            Snd_Supersonic_Call06
	dc.b	nRst, $60
	smpsCall            Snd_Supersonic_Call06
	dc.b	nRst, $60
	smpsJump            Snd_Supersonic_PSG1

; PSG2 Data
Snd_Supersonic_PSG2:
	smpsAlterNote       $FF
	dc.b	nRst, $05
	smpsJump            Snd_Supersonic_PSG1

; PSG3 Data
Snd_Supersonic_PSG3:
	smpsPSGform         $E7

Snd_Supersonic_Loop05:
	dc.b	(nMaxPSG2-$23)&$FF, $12, $1E
	smpsLoop            $00, $04, Snd_Supersonic_Loop05

Snd_Supersonic_Loop06:
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	smpsLoop            $00, $28, Snd_Supersonic_Loop06
	dc.b	$12, $12, $18, $24, $12, $12, $18, $24
	smpsLoop            $01, $02, Snd_Supersonic_Loop06
	smpsJump            Snd_Supersonic_Loop05

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

Snd_Supersonic_Voices:
;	Voice $00
;	$32
;	$00, $06, $01, $02, 	$1F, $95, $1F, $1F, 	$0E, $0F, $0E, $00
;	$00, $00, $00, $00, 	$2F, $4F, $4F, $2F, 	$29, $1A, $1A, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $06, $00
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $15, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $0F, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $04, $04, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1A, $1A, $29

;	Voice $01
;	$3D
;	$01, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1D, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1D

;	Voice $02
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $17

;	Voice $03
;	$36
;	$0F, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$12, $11, $0E, $00
;	$00, $0A, $07, $09, 	$FF, $0F, $1F, $0F, 	$18, $18, $18, $18
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $11, $12
	smpsVcDecayRate2    $09, $07, $0A, $00
	smpsVcDecayLevel    $00, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $18, $18, $18, $18

;	Voice $04
;	$2F
;	$33, $33, $72, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$80, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $02, $03, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $05
;	$3D
;	$51, $21, $30, $10, 	$1F, $1F, $1F, $1F, 	$0F, $00, $00, $00
;	$00, $00, $00, $00, 	$1F, $4F, $4F, $4F, 	$10, $8E, $8E, $8E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $03, $02, $05
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $04, $04, $04, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0E, $0E, $0E, $10
