Snd_NewSpecialS_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_NewSpecialS_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $33

	smpsHeaderDAC       Snd_NewSpecialS_DAC
	smpsHeaderFM        Snd_NewSpecialS_FM1,	$00, $0C
	smpsHeaderFM        Snd_NewSpecialS_FM2,	$00, $06
	smpsHeaderFM        Snd_NewSpecialS_FM3,	$00, $06
	smpsHeaderFM        Snd_NewSpecialS_FM4,	$00, $13
	smpsHeaderFM        Snd_NewSpecialS_FM5,	$00, $06
	smpsHeaderPSG       Snd_NewSpecialS_PSG1,	$F4, $01, $00, sTone_0A
	smpsHeaderPSG       Snd_NewSpecialS_PSG2,	$F4, $01, $00, sTone_0A
	smpsHeaderPSG       Snd_NewSpecialS_PSG3,	$E8, $01, $00, sTone_0A

; FM1 Data
Snd_NewSpecialS_FM1:
	smpsModSet          $14, $01, $06, $06
	smpsAlterNote       $FE

Snd_NewSpecialS_Jump00:
	smpsSetvoice        $04
	dc.b	nRst, $08, nRst, $04, nRst, nRst, nRst, $0C, nRst, $04, nRst, $08
	dc.b	nRst, $04, nG4, $08, nE4, $04, nG5, $08, nFs4, $1C
	smpsAlterPitch      $F4
	smpsSetvoice        $05

Snd_NewSpecialS_Loop0A:
	dc.b	nG5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nG5, $04, $08, nA5, $04, nG5, $08, nFs5, $14, nRst
	dc.b	$08, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nG5, $08, nFs5, $0C, nG5, $04, nFs5, $08, nD5, $14, nRst, $08
	dc.b	nF5, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, nA5
	dc.b	$08, nF5, $0C, nA4, $04, nD5, $08, nRst, $04, nE5, $08, nRst
	dc.b	$04, nF5, $08, nRst, $04, nE5, $08, nRst, $04, $08, nRst, $04
	dc.b	$08, nB4, $04, nD5, $08, nE5, $2C, nRst, $08, nA5, $28, nRst
	dc.b	$04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nG5, $08, nA5
	dc.b	$0C, nFs5, $08, smpsNoAttack, nFs5, nD5, $08, nRst, $04, nFs5, $08, nRst
	dc.b	$04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst
	dc.b	$04, nA5, $08, nD6, $04, nRst, nRst, nC6, $08, smpsNoAttack, nC6, nB5
	dc.b	$08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, $08
	dc.b	nRst, $04, nD6, $08, nRst, $04, nB5, $08, nFs6, $04, nRst, nRst
	dc.b	nD6, $08, smpsNoAttack, nD6, nFs5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nRst, $04, nG5, $08, nRst, $04, nFs5, $08, nRst, $04
	dc.b	nD5, $08, nRst, $04, nFs5, $08, nAb5, $0C, nA5, $04, nRst, nRst
	dc.b	nB5, $08, nRst
	smpsAlterPitch      $02
	smpsLoop            $01, $02, Snd_NewSpecialS_Loop0A
	smpsFMAlterVol      $FD
	smpsAlterPitch      $FC
	smpsSetvoice        $06
	dc.b	nEb6, nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04
	dc.b	nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nE6, $08
	dc.b	nFs6, $04, nAb6, $08, nB6, $04, nRst, nRst, nCs7, $0C, nAb6, $04
	dc.b	nRst, nRst, nAb6, nB6, $0C, nE6, nAb6, $08, nRst, $04, nEb6, $08
	dc.b	nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04, nRst
	dc.b	nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nFs6, $08, nAb6
	dc.b	$04, nBb6, $08, nCs7, $04, nRst, nRst, nEb7, $0C, nBb6, $04, nRst
	dc.b	nRst, nBb6, nCs7, $0C, nB6, nFs6, $08, nRst, $04, nEb6, $08, nE6
	dc.b	$04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04, nRst, nRst
	dc.b	nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nD6, $08, nE6, $04
	dc.b	nFs6, $08, nA6, $04, nRst, nRst, nB6, $0C, nD7, $04, nRst, nRst
	dc.b	nD7, nB6, $0C, nA6, nFs6, $08, nRst, $04, nG6, $08, nA6, $04
	dc.b	nB6, $08, nD7, $04, nRst, nRst, nE7, $0C, nG7, $04, $0C, nFs7
	dc.b	nE7, nD7, nG7, $5C, nRst, $04
	smpsFMAlterVol      $03
	smpsAlterPitch      $0C
	smpsCall            Snd_NewSpecialS_Call03
	smpsAlterPitch      $02
	smpsCall            Snd_NewSpecialS_Call03
	smpsAlterPitch      $FE
	smpsSetvoice        $0C
	smpsFMAlterVol      $FD
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6
	dc.b	$04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nE6
	dc.b	$08, nFs6, $04, nAb6, $08, nB6, $04, nRst, nRst, nCs7, $0C, nAb6
	dc.b	$04, nRst, nRst, nAb6, nB6, $0C, nE6, nAb6, $08, nRst, $04, nEb6
	dc.b	$08, nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04
	dc.b	nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nFs6, $08
	dc.b	nAb6, $04, nBb6, $08, nCs7, $04, nRst, nRst, nEb7, $0C, nBb6, $04
	dc.b	nRst, nRst, nBb6, nCs7, $0C, nB6, nFs6, $08, nRst, $04, nEb6, $08
	dc.b	nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04, nRst
	dc.b	nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nD6, $08, nE6
	dc.b	$04, nFs6, $08, nA6, $04, nRst, nRst, nB6, $0C, nD6, $04, nRst
	dc.b	nRst, nA5, nD6, $0C, nA5, nFs5, $08, nRst, $04, nG5, $08, nA5
	dc.b	$04, nB5, $08, nG5, $04, nRst, nRst, nD5, $0C, nG5, $04, $0C
	dc.b	nG5, nA5, nB5, nG5, $5C, nRst, $04
	smpsFMAlterVol      $03
	smpsSetvoice        $05
	smpsAlterPitch      $F4
	smpsJump            Snd_NewSpecialS_Loop0A

Snd_NewSpecialS_Call03:
	smpsSetvoice        $0B
	dc.b	nG5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nG5, $04, $08, nA5, $04, nG5, $08, nFs5, $14, nRst
	dc.b	$08, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nG5, $08, nFs5, $0C, nG5, $04, nFs5, $08, nD5, $14, nRst, $08
	dc.b	nF5, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, nA5
	dc.b	$08, nF5, $0C, nA4, $04, nD5, $08, nRst, $04, nE5, $08, nRst
	dc.b	$04, nF5, $08, nRst, $04, nE5, $08, nRst, $04, $08, nRst, $04
	dc.b	$08, nB4, $04, nD5, $08, nE5, $2C, nRst, $08, nA5, $28, nRst
	dc.b	$04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nG5, $08, nA5
	dc.b	$0C, nFs5, $08, smpsNoAttack, nFs5, nD5, $08, nRst, $04, nFs5, $08, nRst
	dc.b	$04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst
	dc.b	$04, nA5, $08, nD6, $04, nRst, nRst, nC6, $08, smpsNoAttack, nC6, nB5
	dc.b	$08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, $08
	dc.b	nRst, $04, nD6, $08, nRst, $04, nB5, $08, nFs6, $04, nRst, nRst
	dc.b	nD6, $08, smpsNoAttack, nD6, nFs5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nRst, $04, nG5, $08, nRst, $04, nFs5, $08, nRst, $04
	dc.b	nD5, $08, nRst, $04, nFs5, $08, nAb5, $0C, nA5, $04, nRst, nRst
	dc.b	nB5, $08, nRst
	smpsReturn

; FM2 Data
Snd_NewSpecialS_FM2:
	smpsSetvoice        $00
	dc.b	nG3, $0C, nD3, $08, nE3, $0C, $04, nB2, nRst, nB2, nC3, $08
	dc.b	nG2, $04, nC3, $08, nD3, $0C, nD3, nRst, $04

Snd_NewSpecialS_Loop09:
	dc.b	nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $0C
	dc.b	nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04, nFs3, $0C, nB2
	dc.b	$08, nD3, $0C, nG2, $04, nB2, $08, nD3, $0C, nE3, $04, nD3
	dc.b	$08, nC3, $0C, nB2, nRst, $04, nF3, $0C, nB2, $08, nD3, $0C
	dc.b	nG2, $04, nB2, $08, nD3, $0C, nE3, $04, nD3, $08, nC3, $0C
	dc.b	nB2, nRst, $04, nE3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2
	dc.b	$08, nD3, $0C, nB2, $04, nD3, $08, nE3, $0C, nG2, nRst, $04
	dc.b	nD3, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nD3, $0C
	dc.b	nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04, nC3, $0C, nFs2
	dc.b	$08, nA2, $0C, nD2, $04, nFs2, $08, nA2, $0C, nB2, $04, nA2
	dc.b	$08, nG2, $0C, nFs2, nRst, $04, nB2, $0C, nFs2, $08, nA2, $0C
	dc.b	nD2, $04, nFs2, $08, nA2, $0C, nB2, $04, nA2, $08, nG2, $0C
	dc.b	nFs2, nRst, $04, nA2, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2
	dc.b	$08, nB2, $04, smpsNoAttack, nA2, $08, nG2, $04, nB2, $08, nD3, $0C
	dc.b	nE3, nRst, $04
	smpsAlterPitch      $02
	smpsLoop            $00, $02, Snd_NewSpecialS_Loop09
	smpsAlterPitch      $FC
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $0C
	dc.b	nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04, nB3, $0C, nE3
	dc.b	$08, nAb3, $0C, nB2, $04, nE3, $08, nAb3, $0C, nA3, $04, nAb3
	dc.b	$08, nFs3, $0C, nE3, nRst, $04, nB3, $0C, nEb3, $08, nFs3, $0C
	dc.b	nB2, $04, nEb3, $08, nFs3, $0C, nAb3, $04, nFs3, $08, nE3, $0C
	dc.b	nEb2, nRst, $04, nBb3, $0C, nCs3, $08, nFs3, $0C, nBb2, $04, nCs3
	dc.b	$08, nFs3, $0C, nAb3, $04, nFs3, $08, nBb3, $0C, nCs4, nRst, $04
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $0C
	dc.b	nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04, nA3, $0C, nD3
	dc.b	$08, nFs3, $0C, nA2, $04, nD3, $08, nFs3, $0C, nAb3, $04, nFs3
	dc.b	$08, nE3, $0C, nD3, nRst, $04, nG3, $0C, nB2, $08, nD3, $0C
	dc.b	nG2, $04, nB2, $08, nD3, $0C, nE3, $04, nD3, $08, nC3, $0C
	dc.b	nB2, nRst, $04, nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2
	dc.b	$08, nD3, $0C, nCs3, $04, nD3, $08, nG3, $0C, nD3, nRst, $04
	smpsCall            Snd_NewSpecialS_Call02
	smpsAlterPitch      $02
	smpsCall            Snd_NewSpecialS_Call02
	smpsAlterPitch      $FE
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $0C
	dc.b	nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04, nB3, $0C, nE3
	dc.b	$08, nAb3, $0C, nB2, $04, nE3, $08, nAb3, $0C, nA3, $04, nAb3
	dc.b	$08, nFs3, $0C, nE3, nRst, $04, nB3, $0C, nEb3, $08, nFs3, $0C
	dc.b	nB2, $04, nEb3, $08, nFs3, $0C, nAb3, $04, nFs3, $08, nE3, $0C
	dc.b	nEb2, nRst, $04, nBb3, $0C, nCs3, $08, nFs3, $0C, nBb2, $04, nCs3
	dc.b	$08, nFs3, $0C, nAb3, $04, nFs3, $08, nBb3, $0C, nCs4, nRst, $04
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $0C
	dc.b	nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04, nA3, $0C, nD3
	dc.b	$08, nFs3, $0C, nA2, $04, nD3, $08, nFs3, $0C, nAb3, $04, nFs3
	dc.b	$08, nE3, $0C, nD3, nRst, $04, nG3, $0C, nB2, $08, nD3, $0C
	dc.b	nG2, $04, nB2, $08, nD3, $0C, nE3, $04, nD3, $08, nC3, $0C
	dc.b	nB2, nRst, $04, nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2
	dc.b	$08, nD3, $0C, nCs3, $04, nD3, $08, nG3, $0C, nD3, nRst, $04
	smpsJump            Snd_NewSpecialS_Loop09

Snd_NewSpecialS_Call02:
	dc.b	nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $0C
	dc.b	nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04, nFs3, $0C, nB2
	dc.b	$08, nD3, $0C, nG2, $04, nB2, $08, nD3, $0C, nE3, $04, nD3
	dc.b	$08, nC3, $0C, nB2, nRst, $04, nF3, $0C, nB2, $08, nD3, $0C
	dc.b	nG2, $04, nB2, $08, nD3, $0C, nE3, $04, nD3, $08, nC3, $0C
	dc.b	nB2, nRst, $04, nE3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2
	dc.b	$08, nD3, $0C, nB2, $04, nD3, $08, nE3, $0C, nG2, nRst, $04
	dc.b	nD3, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nD3, $0C
	dc.b	nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04, nC3, $0C, nFs2
	dc.b	$08, nA2, $0C, nD2, $04, nFs2, $08, nA2, $0C, nB2, $04, nA2
	dc.b	$08, nG2, $0C, nFs2, nRst, $04, nB2, $0C, nFs2, $08, nA2, $0C
	dc.b	nD2, $04, nFs2, $08, nA2, $0C, nB2, $04, nA2, $08, nG2, $0C
	dc.b	nFs2, nRst, $04, nA2, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2
	dc.b	$08, nB2, $04, smpsNoAttack, nA2, $08, nG2, $04, nB2, $08, nD3, $0C
	dc.b	nE3, nRst, $04
	smpsReturn

; FM3 Data
Snd_NewSpecialS_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nB4, $08, nC5, $04, nRst, nRst, nB4, $0C, nA4, $04, nG4, $08
	dc.b	nB4, $04, nC5, $08, nG4, $04, nC5, $08, nD5, $1C

Snd_NewSpecialS_Loop08:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nG4, $08, $04, nRst, nRst, nG4, $18, nRst, $04, $0C, nFs4, nE4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	$08, $04, nRst, nRst, nFs4, $18, nRst, $04, $0C, nE4, nFs4
	smpsSetvoice        $02
	dc.b	nA4
	smpsSetvoice        $01
	dc.b	nF4, $08, $04, nRst, nRst, nF4, $18, nRst, $04, $0C, nD4, nE4
	smpsSetvoice        $02
	dc.b	nF4
	smpsSetvoice        $01
	dc.b	nE4, nE4, nD4, $08, nG3, $04, nA3, $08, nB3, $34, nD5, $08
	dc.b	$04, nRst, nRst, nD5, $18, nRst, $04, $0C, nCs5, nB4
	smpsSetvoice        $02
	dc.b	nA4
	smpsSetvoice        $01
	dc.b	nC5, $08, $04, nRst, nRst, nC5, $18, nRst, $04, $0C, nB4, nC5
	smpsSetvoice        $02
	dc.b	nE5
	smpsSetvoice        $01
	dc.b	nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nA4, nB4
	smpsSetvoice        $02
	dc.b	nD5
	smpsSetvoice        $01
	dc.b	nA4, nA4, nA4, $08, $04, $08, nB4, $04, smpsNoAttack

Snd_NewSpecialS_Loop07:
	dc.b	nB4, $0C
	smpsLoop            $01, $04, Snd_NewSpecialS_Loop07
	smpsAlterPitch      $02
	smpsLoop            $00, $02, Snd_NewSpecialS_Loop08
	smpsAlterPitch      $FC
	dc.b	nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nBb4, nAb4
	dc.b	$08, nBb4, $04
	smpsSetvoice        $02
	dc.b	nB4, $0C
	smpsSetvoice        $01
	dc.b	$08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nBb4, nB4, $08
	dc.b	nCs5, $04
	smpsSetvoice        $02
	dc.b	nB4, $0C
	smpsSetvoice        $01
	dc.b	$08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nBb4, nAb4, $08
	dc.b	nBb4, $04
	smpsSetvoice        $02
	dc.b	nB4, $0C
	smpsSetvoice        $01
	dc.b	nBb4, $08, $04, nRst, nRst, nBb4, $18, nRst, $04, $0C, nAb4, nBb4
	dc.b	$08, nCs5, $04
	smpsSetvoice        $02
	dc.b	nBb4, $0C
	smpsSetvoice        $01
	dc.b	nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nBb4, nAb4
	dc.b	$08, nBb4, $04
	smpsSetvoice        $02
	dc.b	nB4, $0C
	smpsSetvoice        $01
	dc.b	nA4, $08, $04, nRst, nRst, nA4, $18, nRst, $04, $0C, nAb4, nA4
	dc.b	$08, nB4, $04
	smpsSetvoice        $02
	dc.b	nA4, $0C
	smpsSetvoice        $01
	dc.b	nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsSetvoice        $01
	dc.b	$08, $04, nRst, nRst, nB4, $0C, $04, $08, nRst, $04
	smpsSetvoice        $02
	dc.b	nRst, $0C, $08, nRst, nRst, $04, $08, nRst
	smpsFMAlterVol      $02
	smpsPan             panCenter, $00
	smpsCall            Snd_NewSpecialS_Call01
	smpsAlterPitch      $02
	smpsCall            Snd_NewSpecialS_Call01
	smpsAlterPitch      $FE
	dc.b	nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nBb4, nAb4
	dc.b	$08, nBb4, $04, nAb4, $08, nBb4, $04, nB4, $08, $04, nRst, nRst
	dc.b	nB4, $18, nRst, $04, $0C, nBb4, nB4, $08, nCs5, $04, nEb5, $08
	dc.b	nCs5, $04, nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C
	dc.b	nBb4, nAb4, $08, nBb4, $04, nAb4, $08, nBb4, $04, $08, $04, nRst
	dc.b	nRst, nBb4, $18, nRst, $04, $0C, nAb4, nBb4, $08, nCs5, $04, nEb5
	dc.b	$08, nCs5, $04, nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04
	dc.b	$0C, nBb4, nAb4, $08, nBb4, $04, nAb4, $08, nBb4, $04, nA4, $08
	dc.b	$04, nRst, nRst, nA4, $18, nRst, $04, $0C, nAb4, nA4, $08, nB4
	dc.b	$04, nCs5, $08, nA4, $04, nB4, $08, $04, nRst, nRst, nB4, $18
	dc.b	nRst, $04, $0C, nB4, nB4, nB4, nB4, $08, $04, nRst, nRst, nB4
	dc.b	$0C, $04, $08, nRst, $04, nRst, $0C, $08, nRst, nRst, $04, $08
	dc.b	nRst
	smpsFMAlterVol      $FE
	smpsJump            Snd_NewSpecialS_Loop08

Snd_NewSpecialS_Call01:
	smpsSetvoice        $01
	dc.b	nG4, $08, $04, nRst, nRst, nG4, $18, nRst, $04, $0C, nFs4, nE4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	$08, $04, nRst, nRst, nFs4, $18, nRst, $04, $0C, nE4, nFs4
	smpsSetvoice        $02
	dc.b	nA4
	smpsSetvoice        $01
	dc.b	nF4, $08, $04, nRst, nRst, nF4, $18, nRst, $04, $0C, nD4, nE4
	smpsSetvoice        $02
	dc.b	nF4
	smpsSetvoice        $01
	dc.b	nE4, nE4, nD4, $08, nG3, $04, nA3, $08, nB3, $34, nD5, $08
	dc.b	$04, nRst, nRst, nD5, $18, nRst, $04, $0C, nCs5, nB4
	smpsSetvoice        $02
	dc.b	nA4
	smpsSetvoice        $01
	dc.b	nC5, $08, $04, nRst, nRst, nC5, $18, nRst, $04, $0C, nB4, nC5
	smpsSetvoice        $02
	dc.b	nE5
	smpsSetvoice        $01
	dc.b	nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nA4, nB4
	smpsSetvoice        $02
	dc.b	nD5
	smpsSetvoice        $01
	dc.b	nA4, nA4, nA4, $08, $04, $08, nB4, $34
	smpsReturn

; FM5 Data
Snd_NewSpecialS_FM5:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nG4, $08, $04, nRst, nRst, nG4, $0C, $04, nD4, $08, nG4, $04
	dc.b	$08, nE4, $04, nG5, $08, nFs4, $1C

Snd_NewSpecialS_Loop04:
	smpsPan             panLeft, $00

Snd_NewSpecialS_Loop01:
	smpsSetvoice        $01
	dc.b	nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsLoop            $00, $03, Snd_NewSpecialS_Loop01
	smpsSetvoice        $01
	dc.b	$0C, nB4, nB4, $08, nG4, $04, $08, $10, nG4, $0C, nA4, nB4
	dc.b	nFs4

Snd_NewSpecialS_Loop02:
	dc.b	$08, $04, nRst, nRst, nFs4, $18, nRst, $04, $0C, nFs4, nFs4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	smpsLoop            $00, $03, Snd_NewSpecialS_Loop02
	dc.b	$0C, nFs4, nFs4, $08, $04, $08, nAb4, $04, smpsNoAttack

Snd_NewSpecialS_Loop03:
	dc.b	nAb4, $0C
	smpsLoop            $01, $04, Snd_NewSpecialS_Loop03
	smpsAlterPitch      $02
	smpsLoop            $02, $02, Snd_NewSpecialS_Loop04
	smpsAlterPitch      $FC
	dc.b	$08, $04, nRst, nRst, nFs4, $18, nRst, $04, $0C, nFs4, nFs4, $08
	dc.b	$04
	smpsSetvoice        $02
	dc.b	$0C
	smpsSetvoice        $01
	dc.b	nAb4, $08, $04, nRst, nRst, nAb4, $18, nRst, $04, $0C, nAb4, nAb4

Snd_NewSpecialS_Loop05:
	dc.b	$08, $04
	smpsSetvoice        $02
	dc.b	$0C
	smpsSetvoice        $01
	dc.b	nFs4, $08, $04, nRst, nRst, nFs4, $18, nRst, $04, $0C, nFs4
	smpsLoop            $00, $04, Snd_NewSpecialS_Loop05
	dc.b	nFs4, $08, $04
	smpsSetvoice        $02
	dc.b	$0C
	smpsSetvoice        $01
	dc.b	nG4, $08, $04, nRst, nRst, nG4, $18, nRst, $04, $0C, nFs4, nE4
	smpsSetvoice        $02
	dc.b	nG4
	smpsSetvoice        $01
	dc.b	$08, $04, nRst, nRst, nG4, $0C, $04, $08, nRst, $04
	smpsSetvoice        $02
	dc.b	nRst, $0C, $08, nRst, nRst, $04, $08, nRst
	smpsFMAlterVol      $02
	smpsPan             panCenter, $00
	smpsCall            Snd_NewSpecialS_Call00
	smpsAlterPitch      $02
	smpsCall            Snd_NewSpecialS_Call00
	smpsAlterPitch      $FE
	dc.b	nFs4, $08, $04, nRst, nRst, nFs4, $18, nRst, $04, $0C, nFs4, nFs4
	dc.b	$08, $04, $08, $04, nAb4, $08, $04, nRst, nRst, nAb4, $18, nRst
	dc.b	$04, $0C, nAb4, nAb4

Snd_NewSpecialS_Loop06:
	dc.b	$08, $04, $08, $04, nFs4, $08, $04, nRst, nRst, nFs4, $18, nRst
	dc.b	$04, $0C, nFs4
	smpsLoop            $00, $04, Snd_NewSpecialS_Loop06
	dc.b	nFs4, $08, $04, $08, $04, nG4, $08, $04, nRst, nRst, nG4, $18
	dc.b	nRst, $04, $0C, nFs4, nE4, nFs4, nG4, $08, $04, nRst, nRst, nG4
	dc.b	$0C, $04, $08, nRst, $04, nRst, $0C, $08, nRst, nRst, $04, $08
	dc.b	nRst
	smpsFMAlterVol      $FE
	smpsJump            Snd_NewSpecialS_Loop04

Snd_NewSpecialS_Call00:
	smpsSetvoice        $01
	dc.b	nB4, $08, $04, nRst, nRst, nB4, $18, nRst, $04, $0C, nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsLoop            $00, $03, Snd_NewSpecialS_Call00
	smpsSetvoice        $01
	dc.b	$0C, nB4, nB4, $08, nG4, $04, $08, $10, nG4, $0C, nA4, nB4
	dc.b	nFs4

Snd_NewSpecialS_Loop0C:
	dc.b	$08, $04, nRst, nRst, nFs4, $18, nRst, $04, $0C, nFs4, nFs4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	smpsLoop            $00, $03, Snd_NewSpecialS_Loop0C
	dc.b	$0C, nFs4, nFs4, $08, $04, $08, nAb4, $10, nAb4, $0C, nAb4, nAb4
	smpsReturn

; FM4 Data
Snd_NewSpecialS_FM4:
	smpsModSet          $15, $01, $06, $06
	smpsAlterNote       $02
	dc.b	nRst, $07
	smpsJump            Snd_NewSpecialS_Jump00

; PSG1 Data
Snd_NewSpecialS_PSG1:
	dc.b	nB3, $30, nC4, $14, nD4, $1C

Snd_NewSpecialS_Jump02:
	dc.b	nB3, $60, nB3, nB3, $60, nB3, nA3, nA3, nA3, nA3, $30, nAb3
	smpsAlterPitch      $02
	dc.b	nB3, $60, nB3, nB3, nB3, nA3, nA3, nA3, nA3, $30, nAb3
	smpsAlterPitch      $FE
	dc.b	nB3, $60, nB3, nB3, nBb3, nB3, nA3, nB3, nB3
	smpsJump            Snd_NewSpecialS_Jump02

; PSG2 Data
Snd_NewSpecialS_PSG2:
	dc.b	nG3, $30, $14, nA3, $1C

Snd_NewSpecialS_Jump01:
	dc.b	nG3, $60, nFs3, nF3, $60, nE3, nD3, nC3, nB2, nA2, $30, nB2
	smpsAlterPitch      $02
	dc.b	nG3, $60, nFs3, nF3, nE3, nD4, nC4, nB3, nA3, $30, nB3
	smpsAlterPitch      $FE
	dc.b	nFs3, $60, nAb3, nFs3, nFs3, nFs3, nFs3, nG3, nG3
	smpsJump            Snd_NewSpecialS_Jump01

; PSG3 Data
Snd_NewSpecialS_PSG3:
	smpsModSet          $15, $01, $03, $06
	dc.b	nRst, $08, nRst, $04, nRst, nRst, nRst, $0C, nRst, $04, nRst, $08
	dc.b	nRst, $04, nG4, $08, nE4, $04, nG5, $08, nFs4, $1C
	smpsAlterPitch      $F4

Snd_NewSpecialS_Loop0B:
	dc.b	nG5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nG5, $04, $08, nA5, $04, nG5, $08, nFs5, $14, nRst
	dc.b	$08, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nG5, $08, nFs5, $0C, nG5, $04, nFs5, $08, nD5, $14, nRst, $08
	dc.b	nF5, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, nA5
	dc.b	$08, nF5, $0C, nA4, $04, nD5, $08, nRst, $04, nE5, $08, nRst
	dc.b	$04, nF5, $08, nRst, $04, nE5, $08, nRst, $04, $08, nRst, $04
	dc.b	$08, nB4, $04, nD5, $08, nE5, $2C, nRst, $08, nA5, $28, nRst
	dc.b	$04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nG5, $08, nA5
	dc.b	$0C, nFs5, $08, smpsNoAttack, nFs5, nD5, $08, nRst, $04, nFs5, $08, nRst
	dc.b	$04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst
	dc.b	$04, nA5, $08, nD6, $04, nRst, nRst, nC6, $08, smpsNoAttack, nC6, nB5
	dc.b	$08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, $08
	dc.b	nRst, $04, nD6, $08, nRst, $04, nB5, $08, nFs6, $04, nRst, nRst
	dc.b	nD6, $08, smpsNoAttack, nD6, nFs5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nRst, $04, nG5, $08, nRst, $04, nFs5, $08, nRst, $04
	dc.b	nD5, $08, nRst, $04, nFs5, $08, nAb5, $0C, nA5, $04, nRst, nRst
	dc.b	nB5, $08, nRst
	smpsAlterPitch      $02
	smpsLoop            $01, $02, Snd_NewSpecialS_Loop0B
	smpsAlterPitch      $FC
	dc.b	nEb6, nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04
	dc.b	nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nE6, $08
	dc.b	nFs6, $04, nAb6, $08, nB6, $04, nRst, nRst, nCs7, $0C, nAb6, $04
	dc.b	nRst, nRst, nAb6, nB6, $0C, nE6, nAb6, $08, nRst, $04, nEb6, $08
	dc.b	nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04, nRst
	dc.b	nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nFs6, $08, nAb6
	dc.b	$04, nBb6, $08, nCs7, $04, nRst, nRst, nEb7, $0C, nBb6, $04, nRst
	dc.b	nRst, nBb6, nCs7, $0C, nB6, nFs6, $08, nRst, $04, nEb6, $08, nE6
	dc.b	$04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04, nRst, nRst
	dc.b	nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nD6, $08, nE6, $04
	dc.b	nFs6, $08, nA6, $04, nRst, nRst, nB6, $0C, nD7, $04, nRst, nRst
	dc.b	nD7, nB6, $0C, nA6, nFs6, $08, nRst, $04, nG6, $08, nA6, $04
	dc.b	nB6, $08, nD7, $04, nRst, nRst, nE7, $0C, nG7, $04, $0C, nFs7
	dc.b	nE7, nD7, nG7, $5C, nRst, $04
	smpsAlterPitch      $0C
	smpsCall            Snd_NewSpecialS_Call04
	smpsAlterPitch      $02
	smpsCall            Snd_NewSpecialS_Call04
	smpsAlterPitch      $FE
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6
	dc.b	$04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nE6
	dc.b	$08, nFs6, $04, nAb6, $08, nB6, $04, nRst, nRst, nCs7, $0C, nAb6
	dc.b	$04, nRst, nRst, nAb6, nB6, $0C, nE6, nAb6, $08, nRst, $04, nEb6
	dc.b	$08, nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04
	dc.b	nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nFs6, $08
	dc.b	nAb6, $04, nBb6, $08, nCs7, $04, nRst, nRst, nEb7, $0C, nBb6, $04
	dc.b	nRst, nRst, nBb6, nCs7, $0C, nB6, nFs6, $08, nRst, $04, nEb6, $08
	dc.b	nE6, $04, nFs6, $08, $04, nRst, nRst, nAb6, $0C, nEb6, $04, nRst
	dc.b	nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04, nD6, $08, nE6
	dc.b	$04, nFs6, $08, nA6, $04, nRst, nRst, nB6, $0C, nD6, $04, nRst
	dc.b	nRst, nA5, nD6, $0C, nA5, nFs5, $08, nRst, $04, nG5, $08, nA5
	dc.b	$04, nB5, $08, nG5, $04, nRst, nRst, nD5, $0C, nG5, $04, $0C
	dc.b	nG5, nA5, nB5, nG5, $5C, nRst, $04
	smpsAlterPitch      $F4
	smpsJump            Snd_NewSpecialS_Loop0B

Snd_NewSpecialS_Call04:
	dc.b	nG5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nG5, $04, $08, nA5, $04, nG5, $08, nFs5, $14, nRst
	dc.b	$08, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nG5, $08, nFs5, $0C, nG5, $04, nFs5, $08, nD5, $14, nRst, $08
	dc.b	nF5, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, nA5
	dc.b	$08, nF5, $0C, nA4, $04, nD5, $08, nRst, $04, nE5, $08, nRst
	dc.b	$04, nF5, $08, nRst, $04, nE5, $08, nRst, $04, $08, nRst, $04
	dc.b	$08, nB4, $04, nD5, $08, nE5, $2C, nRst, $08, nA5, $28, nRst
	dc.b	$04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nG5, $08, nA5
	dc.b	$0C, nFs5, $08, smpsNoAttack, nFs5, nD5, $08, nRst, $04, nFs5, $08, nRst
	dc.b	$04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst
	dc.b	$04, nA5, $08, nD6, $04, nRst, nRst, nC6, $08, smpsNoAttack, nC6, nB5
	dc.b	$08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04, $08
	dc.b	nRst, $04, nD6, $08, nRst, $04, nB5, $08, nFs6, $04, nRst, nRst
	dc.b	nD6, $08, smpsNoAttack, nD6, nFs5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nRst, $04, nG5, $08, nRst, $04, nFs5, $08, nRst, $04
	dc.b	nD5, $08, nRst, $04, nFs5, $08, nAb5, $0C, nA5, $04, nRst, nRst
	dc.b	nB5, $08, nRst
	smpsReturn

; DAC Data
Snd_NewSpecialS_DAC:
	dc.b	dKickS3, $0C, $08, $04, dQuickLooseSnare, $14, $0C, $0C, dKickS3, $04, dQuickLooseSnare, $08
	dc.b	$04, dKickS3, $08, dQuickLooseSnare, $04

Snd_NewSpecialS_Loop00:
	dc.b	dKickS3, $0C, $08, $04, dQuickLooseSnare, $14, dKickS3, $0C, $0C, $04, dQuickLooseSnare, $14
	dc.b	$04
	smpsLoop            $01, $07, Snd_NewSpecialS_Loop00
	dc.b	dKickS3, $0C, $08, $04, dQuickLooseSnare, $14, dKickS3, $0C, $0C, $04, dQuickLooseSnare, $0C
	dc.b	$08, $04
	smpsLoop            $00, $03, Snd_NewSpecialS_Loop00
	smpsJump            Snd_NewSpecialS_Loop00

Snd_NewSpecialS_Voices:
;	Voice $00
;	$00
;	$23, $33, $30, $20, 	$1F, $1F, $1F, $1F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $0F, 	$19, $37, $18, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $03, $03, $02
	smpsVcCoarseFreq    $00, $00, $03, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $00, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $37, $19

;	Voice $01
;	$3A
;	$71, $0C, $32, $01, 	$5F, $99, $5F, $1F, 	$05, $05, $05, $0C
;	$02, $02, $02, $02, 	$11, $11, $11, $66, 	$24, $2F, $20, $85
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $02, $0C, $01
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $06, $01, $01, $01
	smpsVcReleaseRate   $06, $01, $01, $01
	smpsVcTotalLevel    $05, $20, $2F, $24

;	Voice $02
;	$3B
;	$03, $01, $01, $02, 	$14, $14, $12, $1F, 	$00, $03, $03, $0C
;	$02, $00, $08, $0E, 	$0F, $0F, $3F, $1F, 	$1A, $13, $1E, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $12, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $03, $03, $00
	smpsVcDecayRate2    $0E, $08, $00, $02
	smpsVcDecayLevel    $01, $03, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $13, $1A

;	Voice $03
;	$3C
;	$61, $71, $3F, $32, 	$9F, $5F, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $80, $1D, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $06
	smpsVcCoarseFreq    $02, $0F, $01, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $07, $02, $08, $03
	smpsVcTotalLevel    $07, $1D, $00, $15

;	Voice $04
;	$24
;	$70, $74, $30, $38, 	$12, $1F, $1F, $1F, 	$05, $03, $05, $03
;	$05, $03, $05, $03, 	$36, $2C, $26, $2C, 	$0A, $80, $06, $A4
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $08, $00, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $03, $05
	smpsVcDecayRate2    $03, $05, $03, $05
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $0C, $06, $0C, $06
	smpsVcTotalLevel    $24, $06, $00, $0A

;	Voice $05
;	$04
;	$11, $02, $0F, $74, 	$5F, $5F, $5F, $5F, 	$00, $08, $00, $00
;	$00, $00, $00, $0A, 	$0F, $FF, $0F, $0F, 	$1C, $80, $23, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $01
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $08, $00
	smpsVcDecayRate2    $0A, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $03, $23, $00, $1C

;	Voice $06
;	$34
;	$71, $72, $30, $30, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $80, $18, $8F
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $0F, $18, $00, $10

;	Voice $07
;	$00
;	$27, $37, $30, $20, 	$1F, $1F, $1F, $1F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $0F, 	$19, $37, $18, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $03, $03, $02
	smpsVcCoarseFreq    $00, $00, $07, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $00, $01, $01, $02
	smpsVcReleaseRate   $0F, $00, $00, $00
	smpsVcTotalLevel    $00, $18, $37, $19

;	Voice $08
;	$34
;	$01, $02, $0F, $04, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $80, $18, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $05, $18, $00, $10

;	Voice $09
;	$34
;	$00, $02, $00, $04, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $80, $18, $91
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $00, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $11, $18, $00, $10

;	Voice $0A
;	$34
;	$00, $02, $11, $11, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$0E, $80, $28, $8F
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $0F, $28, $00, $0E

;	Voice $0B
;	$3C
;	$01, $02, $0F, $04, 	$5F, $5F, $5F, $5F, 	$00, $08, $00, $00
;	$00, $08, $00, $0C, 	$0F, $FF, $0F, $0F, 	$1C, $80, $23, $81
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $08, $00
	smpsVcDecayRate2    $0C, $00, $08, $00
	smpsVcDecayLevel    $00, $00, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $23, $00, $1C

;	Voice $0C
;	$3C
;	$01, $02, $00, $01, 	$1F, $1F, $1F, $1F, 	$10, $0E, $06, $08
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $80, $18, $8F
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $06, $0E, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $0F, $18, $00, $10
