Snd_Title_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_Title_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_Title_DAC
	smpsHeaderFM        Snd_Title_FM1,	$00, $15
	smpsHeaderFM        Snd_Title_FM2,	$0C, $1C
	smpsHeaderFM        Snd_Title_FM3,	$00, $10
	smpsHeaderFM        Snd_Title_FM4,	$00, $05
	smpsHeaderFM        Snd_Title_FM5,	$00, $05
	smpsHeaderPSG       Snd_Title_PSG1,	$E8, $05, $00, sTone_0A
	smpsHeaderPSG       Snd_Title_PSG2,	$F4, $02, $00, sTone_0A
	smpsHeaderPSG       Snd_Title_PSG3,	$E8, $05, $00, sTone_0A

; FM1 Data
Snd_Title_FM1:
	smpsSetvoice        $04
	smpsAlterNote       $F6
	dc.b	nRst, $0C
	smpsCall            Snd_Title_Call00
	smpsSetvoice        $00
	smpsAlterNote       $00
	smpsModSet          $14, $01, $04, $07

Snd_Title_Jump00:
	smpsCall            Snd_Title_Call01
	dc.b	nB4, $3C, nRst, $30
	smpsCall            Snd_Title_Call01
	dc.b	$3C, nRst, $30
	smpsCall            Snd_Title_Call01
	dc.b	nB4, $3C, nRst, $30
	smpsCall            Snd_Title_Call01
	dc.b	$3C, nRst, $0C, nCs5, nD5, nE5
	smpsCall            Snd_Title_Call02
	dc.b	$18, $0C, nE5, $18
	smpsCall            Snd_Title_Call03
	dc.b	nCs5, $04, nRst, $08, nE5, $18, $12, nRst, $30, nB4, $06, nCs5
	dc.b	nE5, nB4, nCs5, nE5, nF5
	smpsCall            Snd_Title_Call02
	dc.b	nA5, nRst, nFs5, $18, nE5, $0C
	smpsCall            Snd_Title_Call03
	dc.b	nA4, $60, $06, nB4, nCs5, nE5, nB4, nCs5, nE5, nFs5
	smpsCall            Snd_Title_Call04
	smpsNoteFill        $06
	dc.b	$0C, nD6, nD6
	smpsNoteFill        $00
	dc.b	nCs6, $18, nA5, $0C, nE5, nFs5, $04, nRst, $08, nA5, $18, nB5
	dc.b	$3C, nRst, $30
	smpsCall            Snd_Title_Call04
	dc.b	nCs6, $0C, nB5, nA5
	smpsNoteFill        $17
	smpsFMAlterVol      $FE
	dc.b	nCs6, $18
	smpsNoteFill        $06
	dc.b	nA5, $0C, nA5, nG5
	smpsNoteFill        $00
	dc.b	$18, nA5, $09
	smpsStop

Snd_Title_Call00:
	dc.b	nRst, $60
	smpsModSet          $2A, $01, $29, $00
	dc.b	nE4, $3C, smpsNoAttack
	smpsModSet          $01, $00, $00, $00
	dc.b	$18
	smpsReturn

Snd_Title_Call01:
	dc.b	nA4, $18, nFs4, $0C, nE4, nA4, nFs4, nD4, nE4, $30, nD5, $18
	smpsNoteFill        $06
	dc.b	$0C, nD5, nD5
	smpsNoteFill        $00
	dc.b	nCs5, $18, nA4, $0C, nE4, nFs4, $04, nRst, $08, nA4, $18
	smpsReturn

Snd_Title_Call02:
	dc.b	nFs5, $0C, $18, $0C, nE5, $18, nD5, $0C, nE5, $6C, nFs5, $0C
	smpsReturn

Snd_Title_Call03:
	dc.b	nD5, $0C, nE5, $48, nRst, $0C, nB4, nCs5, nD5, $18, nCs5, $0C
	dc.b	nD5, nRst, nA5, nRst, nFs5, $48, nRst, $0C, nD5, nFs5, nE5, $10
	dc.b	nCs5, nB4
	smpsReturn

Snd_Title_Call04:
	dc.b	nA5, $18, nFs5, $0C, nE5, nA5, nFs5, nD5, nE5, $30, nD6, $18
	smpsReturn

; FM2 Data
Snd_Title_FM2:
	smpsSetvoice        $01
	smpsModSet          $15, $01, $06, $06
	smpsCall            Snd_Title_Call05
	dc.b	$0C
	smpsCall            Snd_Title_Call05
	dc.b	nE1, nE1
	smpsCall            Snd_Title_Call06
	smpsCall            Snd_Title_Call07
	smpsCall            Snd_Title_Call06
	dc.b	$0C, nRst, $06, nG1, nRst, nG1, $0C, $06, nG1, nG1

Snd_Title_Loop00:
	smpsCall            Snd_Title_Call06
	smpsCall            Snd_Title_Call07
	smpsLoop            $00, $02, Snd_Title_Loop00

Snd_Title_Loop01:

Snd_Title_Loop02:
	dc.b	nD1, $06, nD1, nRst, nD1, nRst, nD1, nD1, $0C, nD1, nD1, $18
	dc.b	$06, nE1, nA1, nA1, nRst, nA1, nRst, nA1, nA1, $0C, nE1, $06
	dc.b	nRst, nE2, $0C, nE1, $06, nE1, nE1, $0C
	smpsLoop            $01, $02, Snd_Title_Loop02

Snd_Title_Loop03:
	dc.b	nG1, $06, nG1, nRst, nG1, nRst, nG1, nE1, $0C, nG1, $06, nRst
	dc.b	nG1, $18, nD1, $06, nE1
	smpsLoop            $01, $02, Snd_Title_Loop03
	dc.b	nA1, nA1, nRst, nA1, nRst, nA1, nFs1, $0C, nA1, $06, nRst, nA1
	dc.b	$18, nE1, $06, nFs1, nA1, nA1, nRst, nA1, nRst, nA1, nA1, $0C
	dc.b	nE1, $06, nRst, nE2, $0C, nE1, $06, nE1, nE1, $0C
	smpsLoop            $00, $02, Snd_Title_Loop01
	smpsCall            Snd_Title_Call06
	smpsCall            Snd_Title_Call07
	dc.b	nA1, nA1, nRst, nA1, nRst, nA1, nA1, $0C, nFs1, nFs1, $18, nE1
	dc.b	$0C, $06, nE1, nRst, nE1, nRst, nE1, nD1, $0C, nRst, $06, nD1
	dc.b	nRst, nD2, $0C, nD1, $06, nD1, nD1, nRst, $54, nA0, smpsNoAttack, $78
	dc.b	smpsNoAttack, $6C
	smpsStop

Snd_Title_Call05:
	dc.b	nE1, $06, nE1, nRst, nE1, nRst, nE1, nE1, $0C, nRst, nE1, nE1
	dc.b	$06, nE1
	smpsReturn

Snd_Title_Call06:
	dc.b	nA1, $06, nA1, nRst, nA1, nRst, nA1, nA1, $0C, nFs1, nFs1, $18
	dc.b	nE1, $0C, $06, nE1, nRst, nE1, nRst, nE1, nD1, $0C, nRst, $06
	dc.b	nD1, nRst, nD2, $0C, nD1, $06, nD1, nD1, nA1, nA1, nRst, nA1
	dc.b	nRst, nA1, nA1, $0C, nFs1, nFs1, $18, nG1, $0C, $06, nG1, nRst
	dc.b	nG1, nRst, nG1
	smpsReturn

Snd_Title_Call07:
	dc.b	nE1, $0C, nRst, $06, nE1, nRst, nE2, $0C, nE1, $06, nE1, nE1
	smpsReturn

; FM3 Data
Snd_Title_FM3:
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsCall            Snd_Title_Call00
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsModSet          $00, $00, $00, $00

Snd_Title_Loop04:
	smpsCall            Snd_Title_Call08
	smpsLoop            $00, $03, Snd_Title_Loop04
	smpsCall            Snd_Title_Call09
	dc.b	nG2, nG2
	smpsFMAlterVol      $03
	dc.b	nG2, nG2
	smpsFMAlterVol      $03
	dc.b	nE3, nG2
	smpsFMAlterVol      $03
	dc.b	nB2, nG2
	smpsFMAlterVol      $03
	dc.b	nG2, nG2
	smpsFMAlterVol      $03
	dc.b	nG2, nG2
	smpsFMAlterVol      $FD
	dc.b	nD3, nG2
	smpsFMAlterVol      $FD
	dc.b	nA2, nG2
	smpsFMAlterVol      $FD
	dc.b	nD3, nG2
	smpsFMAlterVol      $FD

Snd_Title_Loop05:
	smpsCall            Snd_Title_Call08
	smpsLoop            $00, $04, Snd_Title_Loop05

Snd_Title_Loop06:

Snd_Title_Loop07:
	dc.b	nD2, nD2
	smpsFMAlterVol      $FD
	dc.b	nD2, nD2
	smpsFMAlterVol      $FD
	dc.b	nD2, nD2
	smpsFMAlterVol      $FD
	dc.b	nD2, nD2
	smpsFMAlterVol      $FD
	dc.b	nD2, nD2
	smpsFMAlterVol      $03
	dc.b	nD2, nD2
	smpsFMAlterVol      $03
	dc.b	nD2, nD2
	smpsFMAlterVol      $03
	dc.b	nD2, nE2
	smpsFMAlterVol      $03
	dc.b	nA2, nA2
	smpsFMAlterVol      $03
	dc.b	nE3, nA2
	smpsFMAlterVol      $03
	dc.b	nB2, nA2
	smpsFMAlterVol      $03
	dc.b	nA2, nA2
	smpsFMAlterVol      $03
	dc.b	nE2, nE2
	smpsFMAlterVol      $FD
	dc.b	nD3, nE3
	smpsFMAlterVol      $FD
	dc.b	nA2, nE2
	smpsFMAlterVol      $FD
	dc.b	nD3, nE2
	smpsFMAlterVol      $FD
	smpsLoop            $01, $02, Snd_Title_Loop07

Snd_Title_Loop08:
	dc.b	nG2, nG2
	smpsFMAlterVol      $FD
	smpsLoop            $01, $03, Snd_Title_Loop08
	dc.b	nE2, nE2
	smpsFMAlterVol      $FD

Snd_Title_Loop09:
	dc.b	nG2, nG2
	smpsFMAlterVol      $03
	smpsLoop            $01, $03, Snd_Title_Loop09
	dc.b	nD2, nE2
	smpsFMAlterVol      $03
	dc.b	nG2, nG2
	smpsFMAlterVol      $03
	dc.b	nE3, nG2
	smpsFMAlterVol      $03
	dc.b	nB2, nG2
	smpsFMAlterVol      $03
	dc.b	nE2, nE2
	smpsFMAlterVol      $03
	dc.b	nG2, nG2
	smpsFMAlterVol      $FD
	dc.b	nD3, nG2
	smpsFMAlterVol      $FD
	dc.b	nA2, nG2
	smpsFMAlterVol      $FD
	dc.b	nD3, nE2

Snd_Title_Loop0A:
	smpsFMAlterVol      $FD
	dc.b	nA2, nA2
	smpsLoop            $01, $03, Snd_Title_Loop0A
	smpsFMAlterVol      $FD
	dc.b	nFs2, nFs2
	smpsFMAlterVol      $FD

Snd_Title_Loop0B:
	dc.b	nA2, nA2
	smpsFMAlterVol      $03
	smpsLoop            $01, $03, Snd_Title_Loop0B
	dc.b	nE2, nFs2
	smpsFMAlterVol      $03
	dc.b	nA2, nA2
	smpsFMAlterVol      $03
	dc.b	nE3, nA2
	smpsFMAlterVol      $03
	dc.b	nB2, nA2
	smpsFMAlterVol      $03
	dc.b	nA2, nA2
	smpsFMAlterVol      $03
	dc.b	nE2, nE2
	smpsFMAlterVol      $FD
	dc.b	nD3, nE3
	smpsFMAlterVol      $FD
	dc.b	nA2, nE2
	smpsFMAlterVol      $FD
	dc.b	nD3, nE2
	smpsFMAlterVol      $FD
	smpsLoop            $00, $02, Snd_Title_Loop06
	smpsCall            Snd_Title_Call08
	smpsCall            Snd_Title_Call08
	smpsCall            Snd_Title_Call09
	dc.b	nE2, nE2
	smpsFMAlterVol      $03
	dc.b	nE2, nE2
	smpsFMAlterVol      $03
	dc.b	nE3, nE2
	smpsFMAlterVol      $03
	dc.b	nE3, nE2
	smpsFMAlterVol      $03
	dc.b	nD2, nD2
	smpsFMAlterVol      $03
	dc.b	nD2, nD2
	smpsFMAlterVol      $FD
	dc.b	nD3, nD2
	smpsFMAlterVol      $FD
	dc.b	nA2, nD2
	smpsFMAlterVol      $FD
	dc.b	nD3, nD2
	smpsFMAlterVol      $FD
	smpsStop

Snd_Title_Call08:

Snd_Title_Loop0C:
	dc.b	nA2, $06, nA2
	smpsFMAlterVol      $FD
	smpsLoop            $01, $03, Snd_Title_Loop0C
	dc.b	nA2, nFs2
	smpsFMAlterVol      $FD

Snd_Title_Loop0D:
	dc.b	nFs2, nFs2
	smpsFMAlterVol      $03
	smpsLoop            $01, $03, Snd_Title_Loop0D
	dc.b	nE2, nE2
	smpsFMAlterVol      $03
	dc.b	nE2, nE2
	smpsFMAlterVol      $03
	dc.b	nE3, nE2
	smpsFMAlterVol      $03
	dc.b	nB2, nE2
	smpsFMAlterVol      $03
	dc.b	nD2, nD2
	smpsFMAlterVol      $03
	dc.b	nD2, nD2
	smpsFMAlterVol      $FD
	dc.b	nD3, nD2
	smpsFMAlterVol      $FD
	dc.b	nA2, nD2
	smpsFMAlterVol      $FD
	dc.b	nD3, nD2
	smpsFMAlterVol      $FD
	smpsReturn

Snd_Title_Call09:

Snd_Title_Loop0E:
	dc.b	nA2, $06, nA2
	smpsFMAlterVol      $FD
	smpsLoop            $00, $03, Snd_Title_Loop0E
	dc.b	nA2, nFs2
	smpsFMAlterVol      $FD

Snd_Title_Loop0F:
	dc.b	nFs2, nFs2
	smpsFMAlterVol      $03
	smpsLoop            $00, $03, Snd_Title_Loop0F
	smpsReturn

; FM4 Data
Snd_Title_FM4:
	smpsSetvoice        $05
	smpsAlterNote       $FC
	smpsPan             panRight, $00
	smpsCall            Snd_Title_Call0A
	smpsModSet          $14, $01, $04, $06
	dc.b	nRst, $18
	smpsCall            Snd_Title_Call0B
	dc.b	nE3, $24
	smpsCall            Snd_Title_Call0C
	dc.b	nRst, $18
	smpsCall            Snd_Title_Call0B
	dc.b	nD3, $24
	smpsCall            Snd_Title_Call0C
	dc.b	nRst, $18
	smpsCall            Snd_Title_Call0B
	dc.b	nAb3, $24
	smpsCall            Snd_Title_Call0C
	dc.b	nRst, $18
	smpsCall            Snd_Title_Call0B
	dc.b	nD3, $24
	smpsCall            Snd_Title_Call0C

Snd_Title_Loop10:
	dc.b	nRst
	smpsLoop            $00, $78, Snd_Title_Loop10
	smpsSetvoice        $06
	smpsAlterNote       $FE
	smpsModSet          $14, $01, $06, $06
	smpsPan             panCenter, $00
	smpsFMAlterVol      $0D
	dc.b	nA4, $06, nCs5, nB4, nD5
	smpsFMAlterVol      $FF
	dc.b	nCs5, nE5, nD5, nFs5
	smpsFMAlterVol      $FF
	dc.b	nE5, nAb5, nFs5, nA5
	smpsFMAlterVol      $FF
	dc.b	nAb5, nB5, nA5, nCs6, nRst
	smpsSetvoice        $03
	smpsAlterNote       $FC
	smpsPan             panRight, $00
	smpsModSet          $14, $01, $04, $06
	dc.b	nRst, $12
	smpsFMAlterVol      $F3
	smpsFMAlterVol      $03
	smpsCall            Snd_Title_Call0B
	dc.b	nE3, $24
	smpsCall            Snd_Title_Call0C
	smpsCall            Snd_Title_Call0D

Snd_Title_Call0A:
	smpsModSet          $01, $01, $06, $00
	dc.b	nG3, $54, smpsNoAttack, $6C
	smpsSetvoice        $03
	smpsReturn

Snd_Title_Call0B:
	dc.b	nA3, $0C, nRst, $18, nFs3, $09, nRst, $0F
	smpsReturn

Snd_Title_Call0C:
	dc.b	nRst, $60, nA3, $0C, nRst, $18, nA3, $09, nRst, $1B, nB3, $06
	dc.b	nRst, nB3, $18, $30, nRst, $0C
	smpsReturn

Snd_Title_Call0D:
	dc.b	nA3, $0C, nRst, $30, nFs3, $09, nRst, $0F, nE3, $3C, nRst, $30
	smpsNoteFill        $17
	dc.b	nCs4, $18
	smpsNoteFill        $06
	dc.b	nA3, $0C, nA3, nG3
	smpsNoteFill        $00
	dc.b	$18, nA3, $09
	smpsStop
	smpsReturn

; FM5 Data
Snd_Title_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $05
	smpsCall            Snd_Title_Call0A
	smpsAlterNote       $04
	smpsModSet          $14, $01, $04, $06
	dc.b	nRst, $18
	smpsCall            Snd_Title_Call0B
	dc.b	nE3, $24, nRst, $60
	smpsCall            Snd_Title_Call0B
	smpsCall            Snd_Title_Call0E
	dc.b	nE3, $30, nRst, $24
	smpsCall            Snd_Title_Call0B
	dc.b	nD3, $24, nRst, $60
	smpsCall            Snd_Title_Call0B
	smpsCall            Snd_Title_Call0E
	dc.b	nD3, $30, nRst, $24
	smpsCall            Snd_Title_Call0B
	dc.b	nAb3, $24, nRst, $60
	smpsCall            Snd_Title_Call0B
	smpsCall            Snd_Title_Call0E
	dc.b	nAb3, $30, nRst, $24
	smpsCall            Snd_Title_Call0B
	dc.b	nD3, $24, nRst, $60
	smpsCall            Snd_Title_Call0B
	smpsCall            Snd_Title_Call0E
	dc.b	nD3, $30

Snd_Title_Loop11:
	dc.b	nRst, $0C
	smpsLoop            $00, $79, Snd_Title_Loop11
	smpsSetvoice        $06
	smpsAlterNote       $02
	smpsModSet          $15, $01, $06, $06
	smpsPan             panCenter, $00
	smpsFMAlterVol      $17
	dc.b	nRst, $03, nB4, $06, nE5, nCs5, nFs5
	smpsFMAlterVol      $FF
	dc.b	nD5, nAb5, nE5, nA5
	smpsFMAlterVol      $FF
	dc.b	nFs5, nB5, nAb5, nCs6
	smpsFMAlterVol      $FF
	dc.b	nA5, nD6, nB5, nE6, $03, nRst, $06
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsAlterNote       $04
	smpsModSet          $14, $01, $04, $06
	dc.b	nRst, $12
	smpsFMAlterVol      $E9
	smpsFMAlterVol      $03
	smpsCall            Snd_Title_Call0B
	dc.b	nE3, $24, nRst, $60
	smpsCall            Snd_Title_Call0B
	smpsCall            Snd_Title_Call0E
	dc.b	nE3, $30, nRst, $0C
	smpsCall            Snd_Title_Call0D

Snd_Title_Call0E:
	dc.b	nRst, $0C, nG3, $06, nRst, nG3, $18
	smpsReturn

; PSG1 Data
Snd_Title_PSG1:
	dc.b	nRst, $60, nA3, $06, nCs4, nB3, nD4
	smpsPSGAlterVol     $FF
	dc.b	nCs4, nE4, nD4, nFs4
	smpsPSGAlterVol     $FF
	dc.b	nE4, nAb4, nFs4, nA4
	smpsPSGAlterVol     $FF
	dc.b	nAb4, nB4, nA4, nCs5
	smpsPSGAlterVol     $03
	smpsAlterPitch      $0C
	smpsModSet          $00, $00, $00, $00

Snd_Title_Loop12:
	smpsCall            Snd_Title_Call0F
	smpsLoop            $00, $04, Snd_Title_Loop12

Snd_Title_Loop13:
	smpsCall            Snd_Title_Call10
	smpsCall            Snd_Title_Call10

Snd_Title_Loop14:
	dc.b	nD4, nB3
	smpsLoop            $01, $04, Snd_Title_Loop14
	smpsCall            Snd_Title_Call10

Snd_Title_Loop15:
	dc.b	nE4, nB3
	smpsLoop            $01, $04, Snd_Title_Loop15
	smpsLoop            $00, $02, Snd_Title_Loop13
	smpsCall            Snd_Title_Call0F

Snd_Title_Loop16:
	dc.b	nE4, nB3
	smpsLoop            $00, $04, Snd_Title_Loop16
	dc.b	nD4, nB3, nE4, nB3, nE4, nB3, nE4, nB3, nRst, $60

Snd_Title_Loop17:
	dc.b	nG3, $0C, nA3, $18, nCs4, $24, nE3, $18
	smpsLoop            $00, $02, Snd_Title_Loop17
	smpsCall            Snd_Title_Call11
	smpsPSGAlterVol     $01
	smpsCall            Snd_Title_Call11
	dc.b	smpsNoAttack, $48
	smpsStop

Snd_Title_Call0F:

Snd_Title_Loop18:
	dc.b	nE4, $0C, nB3
	smpsLoop            $01, $04, Snd_Title_Loop18
	dc.b	nD4

Snd_Title_Loop19:
	dc.b	nB3, nE4
	smpsLoop            $01, $07, Snd_Title_Loop19
	dc.b	nB3, nD4, nB3, nD4, nB3, nD5, nB4, nD5, nB4
	smpsReturn

Snd_Title_Call10:

Snd_Title_Loop1A:
	dc.b	nD4, $0C, nB3
	smpsLoop            $01, $04, Snd_Title_Loop1A

Snd_Title_Loop1B:
	dc.b	nE4, nB3
	smpsLoop            $01, $04, Snd_Title_Loop1B
	smpsReturn

Snd_Title_Call11:
	dc.b	nG3, $0C
	smpsPSGAlterVol     $01
	dc.b	nA3, $18
	smpsPSGAlterVol     $01
	dc.b	nCs4, $24
	smpsPSGAlterVol     $01
	dc.b	nE3, $18
	smpsReturn

; PSG2 Data
Snd_Title_PSG2:
	smpsModSet          $01, $01, $FD, $00
	smpsAlterNote       $04
	dc.b	nD1, $48, smpsNoAttack, $78, nRst, $06
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $03
	smpsAlterNote       $00

Snd_Title_Loop1C:
	smpsCall            Snd_Title_Call12
	smpsCall            Snd_Title_Call12
	dc.b	nCs5, nA4, nCs5, nA4
	smpsLoop            $00, $04, Snd_Title_Loop1C

Snd_Title_Loop1D:
	smpsCall            Snd_Title_Call12
	smpsLoop            $00, $0B, Snd_Title_Loop1D
	dc.b	nCs4, nA3, nCs5, nA4, nCs5, nA4
	smpsCall            Snd_Title_Call12
	dc.b	nCs4, nA3, nRst, $5A

Snd_Title_Loop1E:
	dc.b	nA2, $18, nE3, $24, nA3, $18, nD4, $0C
	smpsLoop            $00, $02, Snd_Title_Loop1E
	smpsCall            Snd_Title_Call13
	smpsPSGAlterVol     $01
	smpsCall            Snd_Title_Call13
	dc.b	smpsNoAttack, $54
	smpsStop

Snd_Title_Call12:

Snd_Title_Loop1F:
	dc.b	nCs4, $0C, nA3
	smpsLoop            $01, $07, Snd_Title_Loop1F
	smpsReturn

Snd_Title_Call13:
	dc.b	nA2, $18
	smpsPSGAlterVol     $01
	dc.b	nE3, $24
	smpsPSGAlterVol     $01
	dc.b	nA3, $18
	smpsPSGAlterVol     $01
	dc.b	nD4, $0C
	smpsReturn

; PSG3 Data
Snd_Title_PSG3:
	smpsAlterNote       $02
	dc.b	nRst, $63, nB3, $06, nE4, nCs4, nFs4
	smpsPSGAlterVol     $FF
	dc.b	nD4, nAb4, nE4, nA4
	smpsPSGAlterVol     $FF
	dc.b	nFs4, nB4, nAb4, nCs5
	smpsPSGAlterVol     $FF
	dc.b	nA4, nD5, nB4, nE5, $03
	smpsModSet          $15, $01, $03, $06
	smpsPSGAlterVol     $FF
	smpsJump            Snd_Title_Jump00

; DAC Data
Snd_Title_DAC:
	dc.b	dKickS3, $06, $0C, $12, $18, $0C, dSnareS3, $06, $12, dKickS3, $06, $0C
	dc.b	$12, dSnareS3, $18, dKickS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3

Snd_Title_Loop20:
	dc.b	dCrashCymbal, $12, dKickS3, $06, dSnareS3, dKickS3, dKickS3, $0C, dKickS3, dKickS3, dSnareS3, dKickS3
	dc.b	dKickS3, $06, $0C, $06, dSnareS3, dKickS3, dKickS3, $12, $0C, $06, dSnareS3, dKickS3
	dc.b	dKickS3, $0C, $06, $0C, $06, dSnareS3, dKickS3, dKickS3, $0C, dKickS3, dKickS3, dSnareS3
	dc.b	dKickS3, dKickS3, $06, $0C, $06, dSnareS3, dKickS3, dKickS3, $12, $0C, $06, dSnareS3
	dc.b	dKickS3, dKickS3, $0C
	smpsLoop            $00, $09, Snd_Title_Loop20
	dc.b	$06, $0C, $06, dSnareS3, dKickS3, dKickS3, $0C, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3
	dc.b	$06, $0C, $06, dSnareS3, dKickS3, dKickS3, $12, $0C, $06, dSnareS3, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, $18, dSnareS3, $12, $06, dKickS3, $0C, dKickS3, dSnareS3, dCrashCymbal
	smpsStop

Snd_Title_Voices:
;	Voice $00
;	$3D
;	$61, $02, $12, $52, 	$1F, $18, $18, $1B, 	$09, $02, $01, $02
;	$06, $00, $00, $00, 	$5F, $4F, $3F, $4F, 	$17, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $01, $00, $06
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $02, $09
	smpsVcDecayRate2    $00, $00, $00, $06
	smpsVcDecayLevel    $04, $03, $04, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $17

;	Voice $01
;	$2D
;	$01, $51, $31, $21, 	$13, $1F, $19, $1F, 	$0B, $09, $00, $0B
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$0C, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $03, $05, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $19, $1F, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $00, $09, $0B
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $80, $0C

;	Voice $02
;	$0A
;	$51, $76, $01, $19, 	$1C, $1B, $1C, $1F, 	$00, $08, $04, $11
;	$00, $01, $00, $00, 	$1F, $FF, $FF, $7F, 	$82, $10, $32, $0C
	smpsVcAlgorithm     $02
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $07, $05
	smpsVcCoarseFreq    $09, $01, $06, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $04, $08, $00
	smpsVcDecayRate2    $00, $00, $01, $00
	smpsVcDecayLevel    $07, $0F, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0C, $32, $10, $82

;	Voice $03
;	$2A
;	$32, $2A, $01, $02, 	$12, $12, $11, $16, 	$0A, $0E, $0E, $08
;	$00, $00, $00, $00, 	$FF, $FF, $1F, $CF, 	$15, $15, $2C, $85
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $02, $03
	smpsVcCoarseFreq    $02, $01, $0A, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $11, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $0E, $0E, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0C, $01, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $85, $2C, $15, $15

;	Voice $04
;	$3D
;	$12, $58, $04, $15, 	$0F, $1A, $1C, $1A, 	$00, $00, $0F, $05
;	$00, $00, $00, $00, 	$0F, $0F, $1F, $FF, 	$22, $86, $86, $86
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $05, $01
	smpsVcCoarseFreq    $05, $04, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1C, $1A, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0F, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $01, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $86, $86, $86, $22

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
	smpsVcTotalLevel    $8E, $8E, $8E, $10

;	Voice $06
;	$04
;	$12, $0A, $06, $7C, 	$5F, $5F, $5F, $5F, 	$00, $08, $00, $00
;	$00, $00, $00, $0A, 	$0F, $FF, $0F, $0F, 	$11, $8C, $13, $8C
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $01
	smpsVcCoarseFreq    $0C, $06, $0A, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $08, $00
	smpsVcDecayRate2    $0A, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $8C, $13, $8C, $11
