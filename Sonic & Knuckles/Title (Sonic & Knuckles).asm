Snd_Title_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_Title_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_Title_DAC
	smpsHeaderFM        Snd_Title_FM1,	$00, $15
	smpsHeaderFM        Snd_Title_FM2,	$00, $1C
	smpsHeaderFM        Snd_Title_FM3,	$00, $10
	smpsHeaderFM        Snd_Title_FM4,	$00, $05
	smpsHeaderFM        Snd_Title_FM5,	$00, $05
	smpsHeaderPSG       Snd_Title_PSG1,	$0C, $05, $00, sTone_0A
	smpsHeaderPSG       Snd_Title_PSG2,	$F4, $02, $00, sTone_0A
	smpsHeaderPSG       Snd_Title_PSG3,	$0C, $05, $00, sTone_0A

; DAC Data
Snd_Title_DAC:
	dc.b	dKickS3, $06, dKickS3, $0C, dKickS3, $12, dKickS3, $18, dKickS3, $0C, dSnareS3, $06
	dc.b	dSnareS3, $12, dKickS3, $06, dKickS3, $0C, dKickS3, $12, dSnareS3, $18, dKickS3, $0C
	dc.b	dSnareS3

Snd_Title_Loop00:
	dc.b	$06
	smpsLoop            $00, $04, Snd_Title_Loop00

Snd_Title_Loop01:
	dc.b	dCrashCymbal, $12, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $0C, dKickS3, $0C
	dc.b	dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dKickS3, $06, dKickS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dKickS3, $12, dKickS3, $0C, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $06, dKickS3, $0C, dKickS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $06
	dc.b	dKickS3, $06, dKickS3, $0C, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C
	dc.b	dKickS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $12
	dc.b	dKickS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $0C
	smpsLoop            $00, $09, Snd_Title_Loop01
	dc.b	dKickS3, $06, dKickS3, $0C, dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $0C
	dc.b	dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C, dKickS3, $0C, dKickS3, $06, dKickS3, $0C
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $06, dKickS3, $12, dKickS3, $0C, dKickS3, $06
	dc.b	dSnareS3, $06, dKickS3, $06, dKickS3, $06, dKickS3, $06, dKickS3, $18, dSnareS3, $12
	dc.b	dSnareS3, $06, dKickS3, $0C, dKickS3, $0C, dSnareS3, $0C, dCrashCymbal, $12
	smpsStop

; FM1 Data
Snd_Title_FM1:
	smpsSetvoice        $04
	smpsAlterNote       $F6
	dc.b	nRst, $6C
	smpsModSet          $2A, $01, $29, $00
	dc.b	nE4, $3C, smpsNoAttack
	smpsModSet          $01, $00, $00, $00
	dc.b	nE4, $18
	smpsSetvoice        $00
	smpsAlterNote       $00
	smpsModSet          $14, $01, $04, $07

Snd_Title_Jump00:
	dc.b	nA4, $18, nFs4, $0C, nE4, $0C, nA4, $0C, nFs4, $0C, nD4, $0C
	dc.b	nE4, $30, nD5, $18
	smpsNoteFill        $06
	dc.b	$0C, $0C, $0C
	smpsNoteFill        $00
	dc.b	nCs5, $18, nA4, $0C, nE4, $0C, nFs4, $04, nRst, $08, nA4, $18
	dc.b	nB4

Snd_Title_Loop58:
	dc.b	$3C, nRst, $30, nA4, $18, nFs4, $0C, nE4, $0C, nA4, $0C, nFs4
	dc.b	$0C, nD4, $0C, nE4, $30, nD5, $18
	smpsNoteFill        $06
	dc.b	$0C, $0C, $0C
	smpsNoteFill        $00
	dc.b	nCs5, $18, nA4, $0C, nE4, $0C, nFs4, $04, nRst, $08, nA4, $18
	smpsLoop            $00, $02, Snd_Title_Loop58
	dc.b	nB4, $3C, nRst, $30, nA4, $18, nFs4, $0C, nE4, $0C, nA4, $0C
	dc.b	nFs4, $0C, nD4, $0C, nE4, $30, nD5, $18
	smpsNoteFill        $06
	dc.b	$0C, $0C, $0C
	smpsNoteFill        $00
	dc.b	nCs5, $18, nA4, $0C, nE4, $0C, nFs4, $04, nRst, $08, nA4, $18
	dc.b	nA4, $3C, nRst, $0C
	dc.b	nCs5, $0C, nD5, $0C, nE5, $0C, nFs5, $0C, nFs5, $18, nFs5, $0C
	dc.b	nE5, $18, nD5, $0C, nE5, $54, nRst, $18, nFs5, $0C, nFs5, $18
	dc.b	nFs5, $0C, nE5, $18, nD5, $0C, nE5, $30, nRst, $24, nB4, $0C
	dc.b	nCs5, $0C, nD5, $18, nCs5, $0C, nD5, $0C, nRst, $0C, nA5, $0C
	dc.b	nRst, $0C, nFs5, $30, nRst, $24, nD5, $0C, nFs5, $0C, nE5, $10
	dc.b	nCs5, $10, nB4, $10, nCs5, $04, nRst, $08, nE5, $18, nE5, $12
	dc.b	nRst, $30, nB4, $06, nCs5, $06, nE5, $06, nB4, $06, nCs5, $06
	dc.b	nE5, $06, nF5, $06, nFs5, $0C, nFs5, $18, nFs5, $0C, nE5, $18
	dc.b	nD5, $0C, nE5, $54, nRst, $18, nFs5, $0C, nA5, $0C, nRst, $0C
	dc.b	nFs5, $18, nE5, $0C, nD5, $0C, nE5, $24, nRst, $30, nB4, $0C
	dc.b	nCs5, $0C, nD5, $18, nCs5, $0C, nD5, $0C, nRst, $0C, nA5, $0C
	dc.b	nRst, $0C, nFs5, $30, nRst, $24, nD5, $0C, nFs5, $0C, nE5, $10
	dc.b	nCs5, $10, nB4, $10, nA4, $48, nRst, $18, nA4, $06, nB4, $06
	dc.b	nCs5, $06, nE5, $06, nB4, $06, nCs5, $06, nE5, $06, nFs5, $06
	dc.b	nA5, $18, nFs5, $0C, nE5, $0C, nA5, $0C, nFs5, $0C
	dc.b	nD5, $0C, nE5, $30, nD6, $18
	smpsNoteFill        $06
	dc.b	$0C, $0C, $0C
	smpsNoteFill        $00
	dc.b	nCs6, $18, nA5, $0C, nE5, $0C, nFs5, $04, nRst, $08, nA5, $18
	dc.b	nB5, $3C, nRst, $30, nA5, $18, nFs5, $0C, nE5, $0C, nA5, $0C
	dc.b	nFs5, $0C, nD5, $0C, nE5, $30, nD6, $18, nCs6, $0C, nB5, $0C
	dc.b	nA5, $0C
	smpsAlterVol        $FE
	dc.b	nCs6, $18
	smpsNoteFill        $06
	dc.b	nA5, $0C, nA5, $0C, nG5, $0C
	smpsNoteFill        $00
	dc.b	nG5, $18, nA5, $09
	smpsStop

; FM2 Data
Snd_Title_FM2:
	smpsSetvoice        $01
	smpsModSet          $15, $01, $06, $06
	dc.b	nE2, $06, nE2, $06, nRst, $06, nE2, $06, nRst, $06, nE2, $06
	dc.b	nE2, $0C, nRst, $0C, nE2

Snd_Title_Loop51:
	dc.b	$0C, nE2, $06, nE2, $06
	smpsLoop            $00, $02, Snd_Title_Loop51
	dc.b	nRst, $06, nE2, $06, nRst, $06, nE2, $06, nE2, $0C, nRst, $0C
	dc.b	nE2, $0C, nE2

Snd_Title_Loop52:
	dc.b	$06
	smpsLoop            $00, $04, Snd_Title_Loop52
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nA2, $0C, nFs2, $0C, nFs2, $18, nE2, $0C, nE2, $06, nE2, $06
	dc.b	nRst, $06, nE2, $06, nRst, $06, nE2, $06, nD2, $0C, nRst, $06
	dc.b	nD2, $06, nRst, $06, nD3, $0C, nD2, $06, nD2, $06, nD2, $06
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nA2, $0C, nFs2, $0C, nFs2, $18, nG2, $0C, nG2, $06, nG2, $06
	dc.b	nRst, $06, nG2, $06, nRst, $06, nG2, $06, nE2, $0C, nRst, $06
	dc.b	nE2, $06, nRst, $06, nE3, $0C, nE2, $06, nE2, $06, nE2, $06
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nA2, $0C, nFs2, $0C, nFs2, $18, nE2, $0C, nE2, $06, nE2, $06
	dc.b	nRst, $06, nE2, $06, nRst, $06, nE2, $06, nD2, $0C, nRst, $06
	dc.b	nD2, $06, nRst, $06, nD3, $0C, nD2, $06, nD2, $06, nD2, $06
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nA2, $0C, nFs2, $0C, nFs2, $18, nG2, $0C, nG2, $06, nG2, $06
	dc.b	nRst, $06, nG2, $06, nRst, $06, nG2, $06, nG2, $0C, nRst, $06
	dc.b	nG2, $06, nRst, $06, nG2, $0C, nG2, $06, nG2, $06, nG2

Snd_Title_Loop53:
	dc.b	$06, nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2
	dc.b	$06, nA2, $0C, nFs2, $0C, nFs2, $18, nE2, $0C, nE2, $06, nE2
	dc.b	$06, nRst, $06, nE2, $06, nRst, $06, nE2, $06, nD2, $0C, nRst
	dc.b	$06, nD2, $06, nRst, $06, nD3, $0C, nD2, $06, nD2, $06, nD2
	dc.b	$06, nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2
	dc.b	$06, nA2, $0C, nFs2, $0C, nFs2, $18, nG2, $0C, nG2, $06, nG2
	dc.b	$06, nRst, $06, nG2, $06, nRst, $06, nG2, $06, nE2, $0C, nRst
	dc.b	$06, nE2, $06, nRst, $06, nE3, $0C, nE2, $06, nE2, $06
	smpsLoop            $00, $02, Snd_Title_Loop53
	dc.b	nE2, $06

Snd_Title_Loop55:
	dc.b	nD2, $06, nD2, $06, nRst, $06, nD2, $06, nRst, $06, nD2, $06
	dc.b	nD2, $0C, nD2, $0C, nD2, $18, nD2, $06, nE2, $06, nA2, $06
	dc.b	nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06, nA2, $0C
	dc.b	nE2, $06, nRst, $06, nE3, $0C, nE2

Snd_Title_Loop54:
	dc.b	$06
	smpsLoop            $00, $04, Snd_Title_Loop54
	smpsLoop            $01, $02, Snd_Title_Loop55

Snd_Title_Loop56:
	dc.b	nG2, $06, nG2, $06, nRst, $06, nG2, $06, nRst, $06, nG2, $06
	dc.b	nE2, $0C, nG2, $06, nRst, $06, nG2, $18, nD2, $06, nE2, $06
	smpsLoop            $00, $02, Snd_Title_Loop56
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nFs2, $0C, nA2, $06, nRst, $06, nA2, $18, nE2, $06, nFs2, $06
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nA2, $0C, nE2, $0C, nE3, $0C, nE2

Snd_Title_Loop57:
	dc.b	$06
	smpsLoop            $00, $04, Snd_Title_Loop57
	smpsLoop            $02, $02, Snd_Title_Loop55
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nA2, $0C, nFs2, $0C, nFs2, $18, nE2, $0C, nE2, $06, nE2, $06
	dc.b	nRst, $06, nE2, $06, nRst, $06, nE2, $06, nD2, $0C, nRst, $06
	dc.b	nD2, $06, nRst, $06, nD3, $0C, nD2, $06, nD2, $06, nD2, $06
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nA2, $0C, nFs2, $0C, nFs2, $18, nG2, $0C, nG2, $06, nG2, $06
	dc.b	nRst, $06, nG2, $06, nRst, $06, nG2, $06, nE2, $0C, nRst, $06
	dc.b	nE2, $06, nRst, $06, nE3, $0C, nE2, $06, nE2, $06, nE2, $06
	dc.b	nA2, $06, nA2, $06, nRst, $06, nA2, $06, nRst, $06, nA2, $06
	dc.b	nA2, $0C, nFs2, $0C, nFs2, $18, nE2, $0C, nE2, $06, nE2, $06
	dc.b	nRst, $06, nE2, $06, nRst, $06, nE2, $06, nD2, $0C, nRst, $06
	dc.b	nD2, $06, nRst, $06, nD3, $0C, nD2, $06, nD2, $06, nD2, $06
	dc.b	nRst, $54, nA1, $7F, smpsNoAttack, $7F, smpsNoAttack, $3A
	smpsStop

; FM3 Data
Snd_Title_FM3:
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	dc.b	nRst, $60
	smpsModSet          $2A, $01, $29, $00
	dc.b	nE4, $3C, smpsNoAttack
	smpsModSet          $01, $00, $00, $00
	dc.b	nE4, $24
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsModSet          $00, $00, $00, $00
	dc.b	nA2

Snd_Title_Loop06:
	dc.b	$06, nA2, $06
	smpsAlterVol        $FD
	smpsLoop            $00, $03, Snd_Title_Loop06
	dc.b	nA2, $06, nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop07:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop07
	dc.b	nE2

Snd_Title_Loop08:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop08
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop09:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop09

Snd_Title_Loop0A:
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop0A
	dc.b	nA2

Snd_Title_Loop0B:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop0B
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop0C:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop0C
	dc.b	nE2

Snd_Title_Loop0D:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop0D
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop0E:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop0E

Snd_Title_Loop0F:
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop0F
	dc.b	nA2

Snd_Title_Loop10:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop10
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop11:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop11
	dc.b	nE2

Snd_Title_Loop12:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop12
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop13:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop13

Snd_Title_Loop14:
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop14
	dc.b	nA2

Snd_Title_Loop15:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop15
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop16:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop16
	dc.b	nG2

Snd_Title_Loop17:
	dc.b	$06, nG2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop17
	dc.b	nE3, $06, nG2, $06
	smpsAlterVol        $03
	dc.b	nB2

Snd_Title_Loop18:
	dc.b	$06, nG2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop18
	dc.b	nG2, $06

Snd_Title_Loop19:
	dc.b	nG2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nG2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop19
	dc.b	nA2

Snd_Title_Loop1A:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop1A
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop1B:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop1B
	dc.b	nE2

Snd_Title_Loop1C:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop1C
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop1D:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop1D

Snd_Title_Loop1E:
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop1E
	dc.b	nA2

Snd_Title_Loop1F:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop1F
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop20:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop20
	dc.b	nE2

Snd_Title_Loop21:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop21
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop22:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop22

Snd_Title_Loop23:
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop23
	dc.b	nA2

Snd_Title_Loop24:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop24
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop25:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop25
	dc.b	nE2

Snd_Title_Loop26:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop26
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop27:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop27

Snd_Title_Loop28:
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop28
	dc.b	nA2

Snd_Title_Loop29:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop29
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop2A:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop2A
	dc.b	nE2

Snd_Title_Loop2B:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop2B
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop2C:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop2C
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3

Snd_Title_Loop2D:
	dc.b	$06, nD2, $06
	smpsAlterVol        $FD
	smpsLoop            $00, $05, Snd_Title_Loop2D
	dc.b	nD2

Snd_Title_Loop2E:
	dc.b	$06, nD2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop2E
	dc.b	nD2, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nA2, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nE3, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nB2

Snd_Title_Loop2F:
	dc.b	$06, nA2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop2F
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE3, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE2

Snd_Title_Loop30:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nD2, $06
	smpsLoop            $00, $05, Snd_Title_Loop30
	dc.b	nD2

Snd_Title_Loop31:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $03, Snd_Title_Loop31
	dc.b	nE2, $06
	smpsAlterVol        $03
	dc.b	nA2, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nE3, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nB2

Snd_Title_Loop32:
	dc.b	$06, nA2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop32
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE3, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE2

Snd_Title_Loop33:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nG2, $06
	smpsLoop            $00, $03, Snd_Title_Loop33
	dc.b	nG2, $06
	smpsAlterVol        $FD
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nG2

Snd_Title_Loop34:
	dc.b	$06, nG2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop34
	dc.b	nD2, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nG2, $06, nG2, $06
	smpsAlterVol        $03
	dc.b	nE3, $06, nG2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nG2, $06
	smpsAlterVol        $03
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nG2, $06, nG2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nG2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nG2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE2

Snd_Title_Loop35:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop35
	dc.b	nA2, $06
	smpsAlterVol        $FD
	dc.b	nFs2, $06, nFs2, $06
	smpsAlterVol        $FD
	dc.b	nA2

Snd_Title_Loop36:
	dc.b	$06, nA2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop36
	dc.b	nE2, $06, nFs2, $06
	smpsAlterVol        $03
	dc.b	nA2, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nE3, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nB2

Snd_Title_Loop37:
	dc.b	$06, nA2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop37
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE3, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE2

Snd_Title_Loop38:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nD2, $06
	smpsLoop            $00, $05, Snd_Title_Loop38
	dc.b	nD2

Snd_Title_Loop39:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $03, Snd_Title_Loop39
	dc.b	nE2, $06
	smpsAlterVol        $03
	dc.b	nA2, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nE3, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nB2

Snd_Title_Loop3A:
	dc.b	$06, nA2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop3A
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE3, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE2

Snd_Title_Loop3B:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nD2, $06
	smpsLoop            $00, $05, Snd_Title_Loop3B
	dc.b	nD2

Snd_Title_Loop3C:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $03, Snd_Title_Loop3C
	dc.b	nE2, $06
	smpsAlterVol        $03
	dc.b	nA2, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nE3, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nB2

Snd_Title_Loop3D:
	dc.b	$06, nA2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop3D
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE3, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE2

Snd_Title_Loop3E:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nG2, $06
	smpsLoop            $00, $03, Snd_Title_Loop3E
	dc.b	nG2, $06
	smpsAlterVol        $FD
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nG2

Snd_Title_Loop3F:
	dc.b	$06, nG2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop3F
	dc.b	nD2, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nG2, $06, nG2, $06
	smpsAlterVol        $03
	dc.b	nE3, $06, nG2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nG2, $06
	smpsAlterVol        $03
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nG2, $06, nG2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nG2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nG2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE2

Snd_Title_Loop40:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop40
	dc.b	nA2, $06
	smpsAlterVol        $FD
	dc.b	nFs2, $06, nFs2, $06
	smpsAlterVol        $FD
	dc.b	nA2

Snd_Title_Loop41:
	dc.b	$06, nA2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop41
	dc.b	nE2, $06, nFs2, $06
	smpsAlterVol        $03
	dc.b	nA2, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nE3, $06, nA2, $06
	smpsAlterVol        $03
	dc.b	nB2

Snd_Title_Loop42:
	dc.b	$06, nA2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop42
	dc.b	nE2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE3, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nE2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nE2

Snd_Title_Loop43:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $04, Snd_Title_Loop43
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop44:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop44
	dc.b	nE2

Snd_Title_Loop45:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop45
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop46:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop46

Snd_Title_Loop47:
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop47
	dc.b	nA2

Snd_Title_Loop48:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop48
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop49:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop49
	dc.b	nE2

Snd_Title_Loop4A:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop4A
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	dc.b	nB2, $06, nE2

Snd_Title_Loop4B:
	dc.b	$06
	smpsAlterVol        $03
	dc.b	nD2, $06
	smpsLoop            $00, $02, Snd_Title_Loop4B

Snd_Title_Loop4C:
	dc.b	nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $02, Snd_Title_Loop4C
	dc.b	nA2

Snd_Title_Loop4D:
	dc.b	$06
	smpsAlterVol        $FD
	dc.b	nA2, $06
	smpsLoop            $00, $03, Snd_Title_Loop4D
	dc.b	nFs2, $06
	smpsAlterVol        $FD
	dc.b	nFs2

Snd_Title_Loop4E:
	dc.b	$06, nFs2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $03, Snd_Title_Loop4E
	dc.b	nE2

Snd_Title_Loop4F:
	dc.b	$06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop4F

Snd_Title_Loop50:
	dc.b	nE3, $06, nE2, $06
	smpsAlterVol        $03
	smpsLoop            $00, $02, Snd_Title_Loop50
	dc.b	nD2, $06, nD2, $06
	smpsAlterVol        $03
	dc.b	nD2, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nA2, $06, nD2, $06
	smpsAlterVol        $FD
	dc.b	nD3, $06, nD2, $06
	smpsAlterVol        $FD
	smpsStop

; FM4 Data
Snd_Title_FM4:
	smpsSetvoice        $05
	smpsAlterNote       $FC
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $06, $00
	dc.b	nG3, $60, smpsNoAttack, nG3
	smpsSetvoice        $03
	smpsModSet          $14, $01, $04, $06

Snd_Title_Loop04:
	dc.b	nRst, $18, nA3, $0C, nRst, $18, nFs3, $09, nRst, $0F, nE3, $24, nRst
	dc.b	$60, nA3, $0C, nRst, $18, nA3, $09, nRst, $1B, nB3, $06, nRst
	dc.b	$06, nB3, $18, nB3, $30, nRst, $0C
	smpsLoop            $00, $03, Snd_Title_Loop04
	dc.b	nRst, $18, nA3, $0C, nRst, $18, nFs3, $09, nRst, $0F, nE3, $24
	dc.b	nRst, $60, nA3, $0C, nRst, $18, nA3, $09, nRst, $1B, nB3, $06
	dc.b	nRst, $06, nB3, $18, nB3, $30

Snd_Title_Loop05:
	dc.b	nRst, $79
	smpsLoop            $00, $0C, Snd_Title_Loop05
	smpsAlterNote       $FE
	smpsModSet          $14, $01, $06, $06
	smpsSetvoice        $06
	smpsPan             panCenter, $00
	smpsAlterVol        $0D
	dc.b	nA3, $06, nCs4, $06, nB3, $06, nD4, $06
	smpsAlterVol        $FF
	dc.b	nCs4, $06, nE4, $06, nD4, $06, nFs4, $06
	smpsAlterVol        $FF
	dc.b	nE4, $06, nAb4, $06, nFs4, $06, nA4, $06
	smpsAlterVol        $FF
	dc.b	nAb4, $06, nB4, $06, nA4, $06, nCs5, $06, nRst, $06
	smpsSetvoice        $03
	smpsAlterNote       $FC
	smpsPan             panRight, $00
	smpsModSet          $14, $01, $04, $06
	dc.b	nRst, $12
	smpsAlterVol        $F3
	smpsAlterVol        $03
	dc.b	nA3, $0C, nRst, $18, nFs3, $09, nRst, $0F, nE3, $24, nRst, $60
	dc.b	nA3, $0C, nRst, $18, nA3, $09, nRst, $1B, nB3, $06, nRst, $06
	dc.b	nB3, $18, nB3, $30, nRst, $0C, nA3, $0C, nRst, $30, nFs3, $09
	dc.b	nRst, $0F, nE3, $3C, nRst, $30
	smpsNoteFill        $17
	dc.b	nCs4, $18
	smpsNoteFill        $06
	dc.b	nA3, $0C, nA3, $0C, nG3, $0C
	smpsNoteFill        $00
	dc.b	nG3, $18, nA3, $09
	smpsStop

; FM5 Data
Snd_Title_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $05
	smpsModSet          $01, $01, $06, $00
	dc.b	nG3, $60, smpsNoAttack, nG3
	smpsSetvoice        $03
	smpsAlterNote       $04
	smpsModSet          $14, $01, $04, $06

Snd_Title_Loop02:
	dc.b	nRst, $18, nA3, $0C, nRst, $18, nFs3, $09, nRst, $0F, nE3, $24, nRst
	dc.b	$60, nA3, $0C, nRst, $18, nFs3, $09, nRst, $1B, nG3, $06, nRst
	dc.b	$06, nG3, $18, nE3, $30, nRst, $0C
	smpsLoop            $00, $03, Snd_Title_Loop02
	dc.b	nRst, $18, nA3, $0C, nRst, $18, nFs3, $09, nRst, $0F, nE3, $24
	dc.b	nRst, $60, nA3, $0C, nRst, $18, nFs3, $09, nRst, $1B, nG3, $06
	dc.b	nRst, $06, nG3, $18, nE3, $30

Snd_Title_Loop03:
	dc.b	nRst, $79
	smpsLoop            $00, $0C, Snd_Title_Loop03
	dc.b	nRst, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsAlterVol        $17
	smpsAlterNote       $02
	smpsModSet          $15, $01, $06, $06
	dc.b	nB3, $06, nE4, $06, nCs4, $06, nFs4, $06
	smpsAlterVol        $FF
	dc.b	nD4, $06, nAb4, $06, nE4, $06, nA4, $06
	smpsAlterVol        $FF
	dc.b	nFs4, $06, nB4, $06, nAb4, $06, nCs5, $06
	smpsAlterVol        $FF
	dc.b	nA4, $06, nD5, $06, nB4, $06, nE5, $03, nRst, $06
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsAlterNote       $04
	smpsModSet          $14, $01, $04, $06
	dc.b	nRst, $12
	smpsAlterVol        $E9
	smpsAlterVol        $03
	dc.b	nA3, $0C, nRst, $18, nFs3, $09, nRst, $0F, nE3, $24, nRst, $60
	dc.b	nA3, $0C, nRst, $18, nFs3, $09, nRst, $1B, nG3, $06, nRst, $06
	dc.b	nG3, $18, nE3, $30, nRst, $0C, nA3, $0C, nRst, $30, nFs3, $09
	dc.b	nRst, $0F, nE3, $3C, nRst, $30
	smpsNoteFill        $17
	dc.b	nCs4, $18
	smpsNoteFill        $06
	dc.b	nA3, $0C, nA3, $0C, nG3, $0C
	smpsNoteFill        $00
	dc.b	nG3, $18, nA3, $09
	smpsStop

; PSG1 Data
Snd_Title_PSG1:
	dc.b	nRst, $60, nA0, $06, nCs1, $06, nB0, $06, nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $06, nE1, $06, nD1, $06, nFs1, $06
	smpsPSGAlterVol     $FF
	dc.b	nE1, $06, nAb1, $06, nFs1, $06, nA1, $06
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $06, nB1, $06, nA1, $06, nCs2, $06
	smpsPSGAlterVol     $03
	smpsModSet          $00, $00, $00, $00

Snd_Title_Loop5F:
	dc.b	nE2, $0C, nB1, $0C
	smpsLoop            $00, $04, Snd_Title_Loop5F
	dc.b	nD2, $0C

Snd_Title_Loop60:
	dc.b	nB1, $0C, nE2, $0C
	smpsLoop            $00, $07, Snd_Title_Loop60
	dc.b	nB1, $0C, nD2, $0C, nB1, $0C, nD2, $0C, nB1, $0C, nD3, $0C
	dc.b	nB2, $0C, nD3, $0C, nB2, $0C
	smpsLoop            $01, $04, Snd_Title_Loop5F

Snd_Title_Loop61:
	dc.b	nD2, $0C, nB1, $0C
	smpsLoop            $00, $04, Snd_Title_Loop61

Snd_Title_Loop62:
	dc.b	nE2, $0C, nB1, $0C
	smpsLoop            $00, $04, Snd_Title_Loop62
	smpsLoop            $01, $02, Snd_Title_Loop61

Snd_Title_Loop63:
	dc.b	nD2, $0C, nB1, $0C
	smpsLoop            $00, $08, Snd_Title_Loop63

Snd_Title_Loop64:
	dc.b	nE2, $0C, nB1, $0C
	smpsLoop            $00, $08, Snd_Title_Loop64
	smpsLoop            $02, $02, Snd_Title_Loop61

Snd_Title_Loop65:
	dc.b	nE2, $0C, nB1, $0C
	smpsLoop            $00, $04, Snd_Title_Loop65
	dc.b	nD2, $0C

Snd_Title_Loop66:
	dc.b	nB1, $0C, nE2, $0C
	smpsLoop            $00, $07, Snd_Title_Loop66
	dc.b	nB1, $0C, nD2, $0C, nB1, $0C, nD2, $0C, nB1, $0C, nD3, $0C
	dc.b	nB2, $0C, nD3, $0C, nB2, $0C

Snd_Title_Loop67:
	dc.b	nE2, $0C, nB1, $0C
	smpsLoop            $00, $04, Snd_Title_Loop67
	dc.b	nD2, $0C

Snd_Title_Loop68:
	dc.b	nB1, $0C, nE2, $0C
	smpsLoop            $00, $03, Snd_Title_Loop68
	dc.b	nB1, $0C, nRst, $60

Snd_Title_Loop69:
	dc.b	nG1, $0C, nA1, $18, nCs2, $24, nE1, $18
	smpsLoop            $00, $02, Snd_Title_Loop69
	dc.b	nG1, $0C
	smpsPSGAlterVol     $01
	dc.b	nA1, $18
	smpsPSGAlterVol     $01
	dc.b	nCs2, $24
	smpsPSGAlterVol     $01
	dc.b	nE1, $18
	smpsPSGAlterVol     $01
	dc.b	nG1, $0C
	smpsPSGAlterVol     $01
	dc.b	nA1, $18
	smpsPSGAlterVol     $01
	dc.b	nCs2, $24
	smpsPSGAlterVol     $01
	dc.b	nE1, $60
	smpsStop

; PSG2 Data
Snd_Title_PSG2:
	smpsModSet          $01, $01, $FD, $00
	smpsAlterNote       $04
	dc.b	nD1, $60, smpsNoAttack, $60, nRst, $06
	smpsAlterPitch	    $18
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol     $03
	smpsAlterNote       $00

Snd_Title_Loop5B:
	dc.b	nCs2, $0C, nA1, $0C
	smpsLoop            $00, $0E, Snd_Title_Loop5B
	dc.b	nCs3, $0C, nA2, $0C, nCs3, $0C, nA2, $0C
	smpsLoop            $01, $04, Snd_Title_Loop5B

Snd_Title_Loop5C:
	dc.b	nCs2, $0C, nA1, $0C
	smpsLoop            $00, $4E, Snd_Title_Loop5C
	dc.b	nCs3, $0C, nA2, $0C, nCs3, $0C, nA2, $0C

Snd_Title_Loop5D:
	dc.b	nCs2, $0C, nA1, $0C
	smpsLoop            $00, $08, Snd_Title_Loop5D
	dc.b	nRst, $5A

Snd_Title_Loop5E:
	dc.b	nA0, $18, nE1, $24, nA1, $18, nD2, $0C
	smpsLoop            $00, $02, Snd_Title_Loop5E
	dc.b	nA0, $18
	smpsPSGAlterVol     $01
	dc.b	nE1, $24
	smpsPSGAlterVol     $01
	dc.b	nA1, $18
	smpsPSGAlterVol     $01
	dc.b	nD2, $0C
	smpsPSGAlterVol     $01
	dc.b	nA0, $18
	smpsPSGAlterVol     $01
	dc.b	nE1, $24
	smpsPSGAlterVol     $01
	dc.b	nA1, $18
	smpsPSGAlterVol     $01
	dc.b	nD2, $60
	smpsStop

; PSG3 Data
Snd_Title_PSG3:
	smpsAlterNote       $02
	dc.b	nRst, $63, nB0, $06, nE1, $06, nCs1, $06, nFs1, $06
	smpsPSGAlterVol     $FF
	dc.b	nD1, $06, nAb1, $06, nE1, $06, nA1, $06
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $06, nB1, $06, nAb1, $06, nCs2, $06
	smpsPSGAlterVol     $FF
	dc.b	nA1, $06, nD2, $06, nB1, $06, nE2, $03
	smpsModSet          $15, $01, $03, $06
	smpsPSGAlterVol     $FF
	smpsAlterPitch      $DC
	smpsJump            Snd_Title_Jump00

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
