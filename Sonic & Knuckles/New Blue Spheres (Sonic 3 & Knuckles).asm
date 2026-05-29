Snd_NewSpecialS_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_NewSpecialS_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $33

	smpsHeaderDAC       Snd_NewSpecialS_DAC
	smpsHeaderFM        Snd_NewSpecialS_FM1,	$00, $10
	smpsHeaderFM        Snd_NewSpecialS_FM2,	$00, $06
	smpsHeaderFM        Snd_NewSpecialS_FM3,	$00, $03
	smpsHeaderFM        Snd_NewSpecialS_FM4,	$00, $15
	smpsHeaderFM        Snd_NewSpecialS_FM5,	$00, $03
	smpsHeaderPSG       Snd_NewSpecialS_PSG1,	$F4, $01, $00, sTone_03
	smpsHeaderPSG       Snd_NewSpecialS_PSG2,	$F4, $01, $00, sTone_03
	smpsHeaderPSG       Snd_NewSpecialS_PSG3,	$E8, $02, $00, sTone_0A

; FM1 Data
Snd_NewSpecialS_FM1:
	smpsModSet          $14, $01, $06, $06
	smpsSetvoice        $04
	dc.b	nRst, $08, nRst, $04, nRst, nRst, nRst, $0C, nRst, $04, nRst, $08
	dc.b	nRst, $04, nG4, $08, nE4, $04, nG5, $08, nFs4, $1C
	smpsChangeTransposition		$F4
	smpsSetvoice        $05

Snd_NewSpecialS_Loop06:
	dc.b	nG5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nG5, $04, nG5, $08, nA5, $04, nG5, $08, nFs5, $14
	dc.b	nRst, $08, nFs5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08
	dc.b	nRst, $04, nG5, $08, nFs5, $04, smpsNoAttack, nFs5, $08, nG5, $04, nFs5
	dc.b	$08, nD5, $14, nRst, $08, nF5, $08, nRst, $04, nA5, $08, nRst
	dc.b	$04, nB5, $08, nRst, $04, nA5, $08, nF5, $04, smpsNoAttack, nF5, $08
	dc.b	nA4, $04, nD5, $08, nRst, $04, nE5, $08, nRst, $04, nF5, $08
	dc.b	nRst, $04, nE5, $08, nRst, $04, nE5, $08, nRst, $04, nE5, $08
	dc.b	nB4, $04, nD5, $08, nE5, $04, smpsNoAttack, $28, nRst, $08, nA5, $08
	dc.b	nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nG5, $08
	dc.b	nA5, $04, smpsNoAttack, nA5, $08, nFs5, smpsNoAttack, nFs5, nD5, $08, nRst, $04
	dc.b	nFs5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nD6, $08, nRst, $04, nA5, $08, nD6, $04, nRst, nRst, nC6, $08
	dc.b	smpsNoAttack, nC6, nB5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08
	dc.b	nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nB5, $08
	dc.b	nFs6, $04, nRst, nRst, nD6, $08, smpsNoAttack, nD6, nFs5, $08, nRst, $04
	dc.b	nB5, $08, nRst, $04, nA5, $08, nRst, $04, nG5, $08, nRst, $04
	dc.b	nFs5, $08, nRst, $04, nD5, $08, nRst, $04, nFs5, $08, nAb5, $0C
	dc.b	nA5, $04, nRst, nRst, nB5, $08, nRst
	dc.b	$FB 
	dc.b	$02
	smpsLoop            $01, $02, Snd_NewSpecialS_Loop06
	smpsAlterVol        $FD
	dc.b	$FB 
	dc.b	$FC 
	smpsSetvoice        $06
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nE6, $08, nFs6, $04, nAb6, $08, nB6, $04, nRst, nRst, nCs7, $0C
	dc.b	nAb6, $04, nRst, nRst, nAb6, nB6, $0C, nE6, nAb6, $08, nRst, $04
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nFs6, $08, nAb6, $04, nBb6, $08, nCs7, $04, nRst, nRst, nEb7, $0C
	dc.b	nBb6, $04, nRst, nRst, nBb6, nCs7, $0C, nB6, nFs6, $08, nRst, $04
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nD6, $08, nE6, $04, nFs6, $08, nA6, $04, nRst, nRst, nB6, $0C
	dc.b	nD7, $04, nRst, nRst, nD7, nB6, $0C, nA6, nFs6, $08, nRst, $04
	dc.b	nG6, $08, nA6, $04, nB6, $08, nD7, $04, nRst, nRst, nE7, $0C
	dc.b	nG7, $04, nG7, $0C, nFs7, nE7, nD7, nG7, $5C, nRst, $04
	smpsAlterVol        $03

Mus_88_Jump03:
	smpsChangeTransposition		$0C		
	smpsCall            Mus_88_Call03
	dc.b	$FB
	dc.b	$02
	smpsCall            Mus_88_Call03
	smpsAlterVol        $FD
	dc.b	$FB 
	dc.b	$FE
	smpsSetvoice        $0A
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nE6, $08, nFs6, $04, nAb6, $08, nB6, $04, nRst, nRst, nCs7, $0C
	dc.b	nAb6, $04, nRst, nRst, nAb6, nB6, $0C, nE6, nAb6, $08, nRst, $04
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nFs6, $08, nAb6, $04, nBb6, $08, nCs7, $04, nRst, nRst, nEb7, $0C
	dc.b	nBb6, $04, nRst, nRst, nBb6, nCs7, $0C, nB6, nFs6, $08, nRst, $04
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nD6, $08, nE6, $04, nFs6, $08, nA6, $04, nRst, nRst, nB6, $0C
	dc.b	nD6, $04, nRst, nRst, nA5, nD6, $0C, nA5, nFs5, $08, nRst, $04
	dc.b	nG5, $08, nA5, $04, nB5, $08, nG5, $04, nRst, nRst, nD5, $0C
	dc.b	nG5, $04, nG5, $0C, nG5, nA5, nB5, nG5, $5C, nRst, $04
	smpsAlterVol        $03
	smpsSetvoice        $05
	smpsChangeTransposition		$F4
	smpsJump            Snd_NewSpecialS_Loop06

Mus_88_Call03:
	smpsSetvoice        $0B
	dc.b	nG5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nG5, $04, nG5, $08, nA5, $04, nG5, $08, nFs5, $14
	dc.b	nRst, $08, nFs5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08
	dc.b	nRst, $04, nG5, $08, nFs5, $04, smpsNoAttack, nFs5, $08, nG5, $04, nFs5
	dc.b	$08, nD5, $14, nRst, $08, nF5, $08, nRst, $04, nA5, $08, nRst
	dc.b	$04, nB5, $08, nRst, $04, nA5, $08, nF5, $04, smpsNoAttack, nF5, $08
	dc.b	nA4, $04, nD5, $08, nRst, $04, nE5, $08, nRst, $04, nF5, $08
	dc.b	nRst, $04, nE5, $08, nRst, $04, nE5, $08, nRst, $04, nE5, $08
	dc.b	nB4, $04, nD5, $08, nE5, $04, smpsNoAttack, $28, nRst, $08, nA5, $08
	dc.b	nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nG5, $08
	dc.b	nA5, $04, smpsNoAttack, nA5, $08, nFs5, smpsNoAttack, nFs5, nD5, $08, nRst, $04
	dc.b	nFs5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nD6, $08, nRst, $04, nA5, $08, nD6, $04, nRst, nRst, nC6, $08
	dc.b	smpsNoAttack, nC6, nB5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08
	dc.b	nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nB5, $08
	dc.b	nFs6, $04, nRst, nRst, nD6, $08, smpsNoAttack, nD6, nFs5, $08, nRst, $04
	dc.b	nB5, $08, nRst, $04, nA5, $08, nRst, $04, nG5, $08, nRst, $04
	dc.b	nFs5, $08, nRst, $04, nD5, $08, nRst, $04, nFs5, $08, nAb5, $0C
	dc.b	nA5, $04, nRst, nRst, nB5, $08, nRst
	smpsReturn

; FM2 Data
Snd_NewSpecialS_FM2:
	smpsSetvoice        $00
	dc.b	nG3, $0C, nD3, $08, nE3, $0C, nE3, $04, nB2, nRst, nB2, nC3
	dc.b	$08, nG2, $04, nC3, $08, nD3, $0C, nD3, nRst, $04

Snd_NewSpecialS_Loop05:
	dc.b	nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nFs3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nF3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nE3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nB2, $04, nD3, $08, nE3, $0C, nG2, nRst, $04
	dc.b	nD3, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nC3, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nA2, $04
	dc.b	smpsNoAttack, nA2, $08, nB2, $04, nA2, $08, nG2, $0C, nFs2, nRst, $04
	dc.b	nB2, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nA2, $04
	dc.b	smpsNoAttack, nA2, $08, nB2, $04, nA2, $08, nG2, $0C, nFs2, nRst, $04
	dc.b	nA2, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nB2, $04
	dc.b	smpsNoAttack, nA2, $08, nG2, $04, nB2, $08, nD3, $0C, nE3, nRst, $04
	dc.b	$FB 
	dc.b	$02
	smpsLoop            $00, $02, Snd_NewSpecialS_Loop05
	dc.b	$FB 
	dc.b	$FC 
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04
	dc.b	nB3, $0C, nE3, $08, nAb3, $0C, nB2, $04, nE3, $08, nAb3, $04
	dc.b	smpsNoAttack, nAb3, $08, nA3, $04, nAb3, $08, nFs3, $0C, nE3, nRst, $04
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04
	dc.b	nBb3, $0C, nCs3, $08, nFs3, $0C, nBb2, $04, nCs3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nBb3, $0C, nCs4, nRst, $04
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04
	dc.b	nA3, $0C, nD3, $08, nFs3, $0C, nA2, $04, nD3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nE3, $0C, nD3, nRst, $04
	dc.b	nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nCs3, $04, nD3, $08, nG3, $0C, nD3, nRst, $04

Mus_88_Jump02:
	smpsCall            Mus_88_Call02
	dc.b	$FB
	dc.b	$02
	smpsCall            Mus_88_Call02
	dc.b	$FB
	dc.b	$FE
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04
	dc.b	nB3, $0C, nE3, $08, nAb3, $0C, nB2, $04, nE3, $08, nAb3, $04
	dc.b	smpsNoAttack, nAb3, $08, nA3, $04, nAb3, $08, nFs3, $0C, nE3, nRst, $04
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04
	dc.b	nBb3, $0C, nCs3, $08, nFs3, $0C, nBb2, $04, nCs3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nBb3, $0C, nCs4, nRst, $04
	dc.b	nB3, $0C, nEb3, $08, nFs3, $0C, nB2, $04, nEb3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nE3, $0C, nEb2, nRst, $04
	dc.b	nA3, $0C, nD3, $08, nFs3, $0C, nA2, $04, nD3, $08, nFs3, $04
	dc.b	smpsNoAttack, nFs3, $08, nAb3, $04, nFs3, $08, nE3, $0C, nD3, nRst, $04
	dc.b	nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nCs3, $04, nD3, $08, nG3, $0C, nD3, nRst, $04
	smpsJump            Snd_NewSpecialS_Loop05

Mus_88_Call02:
	dc.b	nG3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nFs3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nF3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nE3, $0C, nB2, $08, nD3, $0C, nG2, $04, nB2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nB2, $04, nD3, $08, nE3, $0C, nG2, nRst, $04
	dc.b	nD3, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nD3, $04
	dc.b	smpsNoAttack, nD3, $08, nE3, $04, nD3, $08, nC3, $0C, nB2, nRst, $04
	dc.b	nC3, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nA2, $04
	dc.b	smpsNoAttack, nA2, $08, nB2, $04, nA2, $08, nG2, $0C, nFs2, nRst, $04
	dc.b	nB2, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nA2, $04
	dc.b	smpsNoAttack, nA2, $08, nB2, $04, nA2, $08, nG2, $0C, nFs2, nRst, $04
	dc.b	nA2, $0C, nFs2, $08, nA2, $0C, nD2, $04, nFs2, $08, nB2, $04
	dc.b	smpsNoAttack, nA2, $08, nG2, $04, nB2, $08, nD3, $0C, nE3, nRst, $04
	smpsReturn


; FM3 Data
Snd_NewSpecialS_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nB4, $08, nC5, $04, nRst, nRst, nB4, $0C, nA4, $04, nG4, $08
	dc.b	nB4, $04, nC5, $08, nG4, $04, nC5, $08, nD5, $1C

Snd_NewSpecialS_Loop04:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nG4, $08, nG4, $04, nRst, nRst, nG4, $18, nRst, $04, nG4, $0C
	dc.b	nFs4, nE4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nE4, nFs4
	smpsSetvoice        $02
	dc.b	nA4
	smpsSetvoice        $01
	dc.b	nF4, $08, nF4, $04, nRst, nRst, nF4, $18, nRst, $04, nF4, $0C
	dc.b	nD4, nE4
	smpsSetvoice        $02
	dc.b	nF4
	smpsSetvoice        $01
	dc.b	nE4, $0C, nE4, nD4, $08, nG3, $04, nA3, $08, nB3, $04, smpsNoAttack
	dc.b	nB3, $30, nD5, $08, nD5, $04, nRst, nRst, nD5, $18, nRst, $04
	dc.b	nD5, $0C, nCs5, nB4
	smpsSetvoice        $02
	dc.b	nA4
	smpsSetvoice        $01
	dc.b	nC5, $08, nC5, $04, nRst, nRst, nC5, $18, nRst, $04, nC5, $0C
	dc.b	nB4, nC5
	smpsSetvoice        $02
	dc.b	nE5
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nA4, nB4
	smpsSetvoice        $02
	dc.b	nD5
	smpsSetvoice        $01
	dc.b	nA4, $0C, nA4, nA4, $08, nA4, $04, nA4, $08, nB4, $04, smpsNoAttack

Snd_NewSpecialS_Loop03:
	dc.b	nB4, $0C
	smpsAlterVol        $FE
	smpsLoop            $01, $04, Snd_NewSpecialS_Loop03
	smpsAlterVol        $08
	dc.b	$FB 
	dc.b	$02
	smpsLoop            $00, $02, Snd_NewSpecialS_Loop04
	smpsAlterVol        $FB
	dc.b	$FB 
	dc.b	$FC 
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nBb4, nAb4, $08, nBb4, $04
	smpsSetvoice        $02
	dc.b	nB4, $0C
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nBb4, nB4, $08, nCs5, $04
	smpsSetvoice        $02
	dc.b	nB4, $0C
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nBb4, nAb4, $08, nBb4, $04
	smpsSetvoice        $02
	dc.b	nB4, $0C
	smpsSetvoice        $01
	dc.b	nBb4, $08, nBb4, $04, nRst, nRst, nBb4, $18, nRst, $04, nBb4, $0C
	dc.b	nAb4, nBb4, $08, nCs5, $04
	smpsSetvoice        $02
	dc.b	nBb4, $0C
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nBb4, nAb4, $08, nBb4, $04
	smpsSetvoice        $02
	dc.b	nB4, $0C
	smpsSetvoice        $01
	dc.b	nA4, $08, nA4, $04, nRst, nRst, nA4, $18, nRst, $04, nA4, $0C
	dc.b	nAb4, nA4, $08, nB4, $04
	smpsSetvoice        $02
	dc.b	nA4, $0C
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $0C, nB4, $04, nB4, $08
	dc.b	nRst, $04
	smpsSetvoice        $02
	smpsAlterVol        $03
	dc.b	nRst, $0C, nB4, $08, nRst, nRst, $04, nB4, $08, nRst
	smpsAlterVol        $02

Mus_88_Jump01:
	smpsPan             panCenter, $00
	smpsCall            Mus_88_Call01
	dc.b	$FB 
	dc.b	$02
	smpsCall            Mus_88_Call01
	dc.b	$FB 
	dc.b	$FE 
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nBb4, nAb4, $08, nBb4, $04, nAb4, $08, nBb4, $04, nB4, $08, nB4
	dc.b	$04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C, nBb4, nB4, $08
	dc.b	nCs5, $04, nEb5, $08, nCs5, $04, nB4, $08, nB4, $04, nRst, nRst
	dc.b	nB4, $18, nRst, $04, nB4, $0C, nBb4, nAb4, $08, nBb4, $04, nAb4
	dc.b	$08, nBb4, $04, nBb4, $08, nBb4, $04, nRst, nRst, nBb4, $18, nRst
	dc.b	$04, nBb4, $0C, nAb4, nBb4, $08, nCs5, $04, nEb5, $08, nCs5, $04
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nBb4, nAb4, $08, nBb4, $04, nAb4, $08, nBb4, $04, nA4, $08, nA4
	dc.b	$04, nRst, nRst, nA4, $18, nRst, $04, nA4, $0C, nAb4, nA4, $08
	dc.b	nB4, $04, nCs5, $08, nA4, $04, nB4, $08, nB4, $04, nRst, nRst
	dc.b	nB4, $18, nRst, $04, nB4, $0C, nB4, nB4, nB4, nB4, $08, nB4
	dc.b	$04, nRst, nRst, nB4, $0C, nB4, $04, nB4, $08, nRst, $04, nRst
	dc.b	$0C, nB4, $08, nRst, nRst, $04, nB4, $08, nRst
	smpsJump            Snd_NewSpecialS_Loop04

Mus_88_Call01:
	smpsSetvoice        $01
	dc.b	nG4, $08, nG4, $04, nRst, nRst, nG4, $18, nRst, $04, nG4, $0C
	dc.b	nFs4, nE4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nE4, nFs4
	smpsSetvoice        $02
	dc.b	nA4
	smpsSetvoice        $01
	dc.b	nF4, $08, nF4, $04, nRst, nRst, nF4, $18, nRst, $04, nF4, $0C
	dc.b	nD4, nE4
	smpsSetvoice        $02
	dc.b	nF4
	smpsSetvoice        $01
	dc.b	nE4, $0C, nE4, nD4, $08, nG3, $04, nA3, $08, nB3, $04, smpsNoAttack
	dc.b	nB3, $30, nD5, $08, nD5, $04, nRst, nRst, nD5, $18, nRst, $04
	dc.b	nD5, $0C, nCs5, nB4
	smpsSetvoice        $02
	dc.b	nA4
	smpsSetvoice        $01
	dc.b	nC5, $08, nC5, $04, nRst, nRst, nC5, $18, nRst, $04, nC5, $0C
	dc.b	nB4, nC5
	smpsSetvoice        $02
	dc.b	nE5
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nA4, nB4
	smpsSetvoice        $02
	dc.b	nD5
	smpsSetvoice        $01
	dc.b	nA4, $0C, nA4, nA4, $08, nA4, $04, nA4, $08, nB4, $04, smpsNoAttack
	dc.b	nB4, $30
	smpsReturn

; FM5 Data
Snd_NewSpecialS_FM5:
	smpsAlterNote       $FE
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nG4, $08, nG4, $04, nRst, nRst, nG4, $0C, nG4, $04, nD4, $08
	dc.b	nG4, $04, nG4, $08, nE4, $04, nG5, $08, nFs4, $1C

Snd_NewSpecialS_Loop02:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsSetvoice        $01
	dc.b	nB4, $0C, nB4, nB4, $08, nG4, $04, nG4, $08, nG4, $04, smpsNoAttack
	dc.b	nG4, $0C, nG4, nA4, nB4, nFs4, $08, nFs4, $04, nRst, nRst, nFs4
	dc.b	$18, nRst, $04, nFs4, $0C, nFs4, nFs4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	nFs4, $0C, nFs4, nFs4, $08, nFs4, $04, nFs4, $08, nAb4, $04, smpsNoAttack

Snd_NewSpecialS_Loop01:
	dc.b	nAb4, $0C
	smpsAlterVol        $FE
	smpsLoop            $01, $04, Snd_NewSpecialS_Loop01
	smpsAlterVol        $08
	dc.b	$FB 
	dc.b	$02
	smpsLoop            $00, $02, Snd_NewSpecialS_Loop02
	smpsAlterVol        $FB
	dc.b	$FB 
	dc.b	$FC 
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4, $08, nFs4, $04
	smpsSetvoice        $02
	dc.b	nFs4, $0C
	smpsSetvoice        $01
	dc.b	nAb4, $08, nAb4, $04, nRst, nRst, nAb4, $18, nRst, $04, nAb4, $0C
	dc.b	nAb4, nAb4, $08, nAb4, $04
	smpsSetvoice        $02
	dc.b	nAb4, $0C
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4, $08, nFs4, $04
	smpsSetvoice        $02
	dc.b	nFs4, $0C
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4, $08, nFs4, $04
	smpsSetvoice        $02
	dc.b	nFs4, $0C
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4, $08, nFs4, $04
	smpsSetvoice        $02
	dc.b	nFs4, $0C
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4, $08, nFs4, $04
	smpsSetvoice        $02
	dc.b	nFs4, $0C
	smpsSetvoice        $01
	dc.b	nG4, $08, nG4, $04, nRst, nRst, nG4, $18, nRst, $04, nG4, $0C
	dc.b	nFs4, nE4
	smpsSetvoice        $02
	dc.b	nG4
	smpsSetvoice        $01
	dc.b	nG4, $08, nG4, $04, nRst, nRst, nG4, $0C, nG4, $04, nG4, $08
	dc.b	nRst, $04
	smpsSetvoice        $02
	smpsAlterVol        $03
	dc.b	nRst, $0C, nG4, $08, nRst, nRst, $04, nG4, $08, nRst
	smpsAlterVol        $02

Mus_88_Jump00:
	smpsPan             panCenter, $00
	smpsCall            Mus_88_Call00
	dc.b	$FB 
	dc.b	$02
	smpsCall            Mus_88_Call00
	dc.b	$FB 
	dc.b	$FE 
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4, $08, nFs4, $04, nFs4, $08, nFs4, $04, nAb4, $08, nAb4
	dc.b	$04, nRst, nRst, nAb4, $18, nRst, $04, nAb4, $0C, nAb4, nAb4, $08
	dc.b	nAb4, $04, nAb4, $08, nAb4, $04, nFs4, $08, nFs4, $04, nRst, nRst
	dc.b	nFs4, $18, nRst, $04, nFs4, $0C, nFs4, nFs4, $08, nFs4, $04, nFs4
	dc.b	$08, nFs4, $04, nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst
	dc.b	$04, nFs4, $0C, nFs4, nFs4, $08, nFs4, $04, nFs4, $08, nFs4, $04
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4, $08, nFs4, $04, nFs4, $08, nFs4, $04, nFs4, $08, nFs4
	dc.b	$04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C, nFs4, nFs4, $08
	dc.b	nFs4, $04, nFs4, $08, nFs4, $04, nG4, $08, nG4, $04, nRst, nRst
	dc.b	nG4, $18, nRst, $04, nG4, $0C, nFs4, nE4, nFs4, nG4, $08, nG4
	dc.b	$04, nRst, nRst, nG4, $0C, nG4, $04, nG4, $08, nRst, $04, nRst
	dc.b	$0C, nG4, $08, nRst, nRst, $04, nG4, $08, nRst
	smpsJump            Snd_NewSpecialS_Loop02

Mus_88_Call00:
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsSetvoice        $01
	dc.b	nB4, $08, nB4, $04, nRst, nRst, nB4, $18, nRst, $04, nB4, $0C
	dc.b	nB4, nB4
	smpsSetvoice        $02
	dc.b	nB4
	smpsSetvoice        $01
	dc.b	nB4, $0C, nB4, nB4, $08, nG4, $04, nG4, $08, nG4, $04, smpsNoAttack
	dc.b	nG4, $0C, nG4, nA4, nB4, nFs4, $08, nFs4, $04, nRst, nRst, nFs4
	dc.b	$18, nRst, $04, nFs4, $0C, nFs4, nFs4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	nFs4, $08, nFs4, $04, nRst, nRst, nFs4, $18, nRst, $04, nFs4, $0C
	dc.b	nFs4, nFs4
	smpsSetvoice        $02
	dc.b	nFs4
	smpsSetvoice        $01
	dc.b	nFs4, $0C, nFs4, nFs4, $08, nFs4, $04, nFs4, $08, nAb4, $04, smpsNoAttack
	dc.b	nAb4, $0C, nAb4, nAb4, nAb4
	smpsReturn

; FM4 Data
Snd_NewSpecialS_FM4:
	smpsAlterNote       $05
	dc.b	nRst, $07
	smpsJump            Snd_NewSpecialS_FM1

; PSG1 Data
Snd_NewSpecialS_PSG1:
	dc.b	nB3, $30, nC4, $14, nD4, $1C

Snd_NewSpecialS_Jump01:
	dc.b	nB3, $60, nB3, nB3, $60, nB3, nA3, nA3, nA3, nA3, $30, nAb3
	dc.b	$FB 
	dc.b	$02, nB3, $60, nB3, nB3, nB3, nA3, nA3, nA3, nA3, $30, nAb3
	dc.b	$FB 
	dc.b	$FE 
	dc.b	nB3, $60, nB3, nB3, nBb3, nB3, nA3, nB3, nB3
	smpsJump            Snd_NewSpecialS_Jump01

; PSG2 Data
Snd_NewSpecialS_PSG2:
	dc.b	nG3, $30, nG3, $14, nA3, $1C

Snd_NewSpecialS_Jump00:
	dc.b	nG3, $60, nFs3, nF3, $60, nE3, nD3, nC3, nB2, nA2, $30, nB2
	dc.b	$FB 
	dc.b	$02, nG3, $60, nFs3, nF3, nE3, nD4, nC4, nB3, nA3, $30, nB3
	dc.b	$FB 
	dc.b	$FE 
	dc.b	nFs3, $60, nAb3, nFs3, nFs3, nFs3, nFs3, nG3, nG3
	smpsJump            Snd_NewSpecialS_Jump00

; PSG3 Data
Snd_NewSpecialS_PSG3:
	smpsModSet          $15, $01, $03, $06
	smpsAlterNote       $00
	dc.b	nRst, $08, nRst, $04, nRst, nRst, nRst, $0C, nRst, $04, nRst, $08
	dc.b	nRst, $04, nG4, $08, nE4, $04, nG5, $08, nFs4, $1C
	smpsChangeTransposition		$F4

Snd_NewSpecialS_Loop06PSG:
	dc.b	nG5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nG5, $04, nG5, $08, nA5, $04, nG5, $08, nFs5, $14
	dc.b	nRst, $08, nFs5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08
	dc.b	nRst, $04, nG5, $08, nFs5, $04, smpsNoAttack, nFs5, $08, nG5, $04, nFs5
	dc.b	$08, nD5, $14, nRst, $08, nF5, $08, nRst, $04, nA5, $08, nRst
	dc.b	$04, nB5, $08, nRst, $04, nA5, $08, nF5, $04, smpsNoAttack, nF5, $08
	dc.b	nA4, $04, nD5, $08, nRst, $04, nE5, $08, nRst, $04, nF5, $08
	dc.b	nRst, $04, nE5, $08, nRst, $04, nE5, $08, nRst, $04, nE5, $08
	dc.b	nB4, $04, nD5, $08, nE5, $04, smpsNoAttack, $28, nRst, $08, nA5, $08
	dc.b	nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nG5, $08
	dc.b	nA5, $04, smpsNoAttack, nA5, $08, nFs5, smpsNoAttack, nFs5, nD5, $08, nRst, $04
	dc.b	nFs5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nD6, $08, nRst, $04, nA5, $08, nD6, $04, nRst, nRst, nC6, $08
	dc.b	smpsNoAttack, nC6, nB5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08
	dc.b	nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nB5, $08
	dc.b	nFs6, $04, nRst, nRst, nD6, $08, smpsNoAttack, nD6, nFs5, $08, nRst, $04
	dc.b	nB5, $08, nRst, $04, nA5, $08, nRst, $04, nG5, $08, nRst, $04
	dc.b	nFs5, $08, nRst, $04, nD5, $08, nRst, $04, nFs5, $08, nAb5, $0C
	dc.b	nA5, $04, nRst, nRst, nB5, $08, nRst
	dc.b	$FB 
	dc.b	$02
	smpsLoop            $01, $02, Snd_NewSpecialS_Loop06PSG
	dc.b	$FB 
	dc.b	$FC 
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nE6, $08, nFs6, $04, nAb6, $08, nB6, $04, nRst, nRst, nCs7, $0C
	dc.b	nAb6, $04, nRst, nRst, nAb6, nB6, $0C, nE6, nAb6, $08, nRst, $04
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nFs6, $08, nAb6, $04, nBb6, $08, nCs7, $04, nRst, nRst, nEb7, $0C
	dc.b	nBb6, $04, nRst, nRst, nBb6, nCs7, $0C, nB6, nFs6, $08, nRst, $04
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nD6, $08, nE6, $04, nFs6, $08, nA6, $04, nRst, nRst, nB6, $0C
	dc.b	nD7, $04, nRst, nRst, nD7, nB6, $0C, nA6, nFs6, $08, nRst, $04
	dc.b	nG6, $08, nA6, $04, nB6, $08, nD7, $04, nRst, nRst, nE7, $0C
	dc.b	nG7, $04, nG7, $0C, nFs7, nE7, nD7, nG7, $5C, nRst, $04

Mus_88_Jump03PSG:
	smpsChangeTransposition		$0C		
	smpsCall            Mus_88_Call03PSG
	dc.b	$FB
	dc.b	$02
	smpsCall            Mus_88_Call03PSG
	dc.b	$FB 
	dc.b	$FE
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nE6, $08, nFs6, $04, nAb6, $08, nB6, $04, nRst, nRst, nCs7, $0C
	dc.b	nAb6, $04, nRst, nRst, nAb6, nB6, $0C, nE6, nAb6, $08, nRst, $04
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nFs6, $08, nAb6, $04, nBb6, $08, nCs7, $04, nRst, nRst, nEb7, $0C
	dc.b	nBb6, $04, nRst, nRst, nBb6, nCs7, $0C, nB6, nFs6, $08, nRst, $04
	dc.b	nEb6, $08, nE6, $04, nFs6, $08, nFs6, $04, nRst, nRst, nAb6, $0C
	dc.b	nEb6, $04, nRst, nRst, nEb6, nFs6, $0C, nB5, nCs6, $08, nRst, $04
	dc.b	nD6, $08, nE6, $04, nFs6, $08, nA6, $04, nRst, nRst, nB6, $0C
	dc.b	nD6, $04, nRst, nRst, nA5, nD6, $0C, nA5, nFs5, $08, nRst, $04
	dc.b	nG5, $08, nA5, $04, nB5, $08, nG5, $04, nRst, nRst, nD5, $0C
	dc.b	nG5, $04, nG5, $0C, nG5, nA5, nB5, nG5, $5C, nRst, $04
	smpsChangeTransposition		$F4
	smpsJump	Snd_NewSpecialS_Loop06PSG

Mus_88_Call03PSG:
	dc.b	nG5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nA5, $08, nG5, $04, nG5, $08, nA5, $04, nG5, $08, nFs5, $14
	dc.b	nRst, $08, nFs5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08
	dc.b	nRst, $04, nG5, $08, nFs5, $04, smpsNoAttack, nFs5, $08, nG5, $04, nFs5
	dc.b	$08, nD5, $14, nRst, $08, nF5, $08, nRst, $04, nA5, $08, nRst
	dc.b	$04, nB5, $08, nRst, $04, nA5, $08, nF5, $04, smpsNoAttack, nF5, $08
	dc.b	nA4, $04, nD5, $08, nRst, $04, nE5, $08, nRst, $04, nF5, $08
	dc.b	nRst, $04, nE5, $08, nRst, $04, nE5, $08, nRst, $04, nE5, $08
	dc.b	nB4, $04, nD5, $08, nE5, $04, smpsNoAttack, $28, nRst, $08, nA5, $08
	dc.b	nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nG5, $08
	dc.b	nA5, $04, smpsNoAttack, nA5, $08, nFs5, smpsNoAttack, nFs5, nD5, $08, nRst, $04
	dc.b	nFs5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08, nRst, $04
	dc.b	nD6, $08, nRst, $04, nA5, $08, nD6, $04, nRst, nRst, nC6, $08
	dc.b	smpsNoAttack, nC6, nB5, $08, nRst, $04, nA5, $08, nRst, $04, nB5, $08
	dc.b	nRst, $04, nB5, $08, nRst, $04, nD6, $08, nRst, $04, nB5, $08
	dc.b	nFs6, $04, nRst, nRst, nD6, $08, smpsNoAttack, nD6, nFs5, $08, nRst, $04
	dc.b	nB5, $08, nRst, $04, nA5, $08, nRst, $04, nG5, $08, nRst, $04
	dc.b	nFs5, $08, nRst, $04, nD5, $08, nRst, $04, nFs5, $08, nAb5, $0C
	dc.b	nA5, $04, nRst, nRst, nB5, $08, nRst
	smpsReturn

Mus_88_Call04PSG:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_01
	dc.b	nRst, $0C, nRst, nG6, nRst, nRst, nRst, nG6, nRst

Mus_10_Loop07:
	dc.b	nG6, $0C, nRst, nG6, nRst, $04, nRst, nG6, nRst, nRst, nG6, $0C
	dc.b	nRst, $04, nG6, $0C, nRst, $04, nRst, nG6
	smpsLoop            $01, $07, Mus_10_Loop07
	dc.b	nG6, $0C, nRst, nG6, nRst, $04, nRst, nG6, nRst, nRst, nG6, $0C
	dc.b	nG6, nRst, $04, nG6, $0C
	smpsLoop            $00, $03, Mus_10_Loop07
	smpsJump            Mus_10_Loop07

Snd_NewSpecialS_DAC:
    dc.b    dKickS3, $0C, dKickS3, $08, dKickS3, $04, dQuickLooseSnare, $14
    dc.b    dQuickLooseSnare, $0C, dQuickLooseSnare, $0C, dKickS3, $04, dQuickLooseSnare, $08, dQuickLooseSnare, $04, dKickS3, $08, dQuickLooseSnare, $04

Snd_NewSpecialS_Loop00:
    dc.b    dKickS3, $0C, dKickS3, $08, dKickS3, $04, dQuickLooseSnare, $14, dKickS3, $0C, dKickS3, $0C, dKickS3, $04, dQuickLooseSnare, $14, dQuickLooseSnare, $04
    smpsLoop            $01, $07, Snd_NewSpecialS_Loop00
    dc.b    dKickS3, $0C, dKickS3, $08, dKickS3, $04, dQuickLooseSnare, $14, dKickS3, $0C, dKickS3, $0C, dKickS3, $04, dQuickLooseSnare, $0C, dQuickLooseSnare, $08, dQuickLooseSnare, $04
    smpsLoop            $00, $03, Snd_NewSpecialS_Loop00
    smpsJump            Snd_NewSpecialS_Loop00


Snd_NewSpecialS_Voices:
;	Voice $00
;	$00
;	$27, $37, $30, $20, 	$1F, $1F, $1F, $1F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $0F, 	$19, $37, $18, $F6
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
;	$71, $0C, $32, $01, 	$9C, $96, $5D, $92, 	$04, $09, $04, $07
;	$00, $01, $03, $08, 	$1F, $1F, $1F, $0F, 	$24, $2F, $20, $04
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
	smpsVcTotalLevel    $07, $20, $2F, $24

;	Voice $02
;	$3B
;	$03, $01, $01, $02, 	$14, $14, $12, $1F, 	$00, $03, $03, $0C
;	$02, $00, $08, $0E, 	$0F, $0F, $3F, $1F, 	$1A, $13, $1E, $00
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
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $00, $1D, $07
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
;	$05, $03, $05, $03, 	$36, $2C, $26, $2C, 	$0A, $00, $06, $24
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
;	$00, $00, $00, $0A, 	$0F, $FF, $0F, $0F, 	$1C, $00, $23, $03
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
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $0C, $18, $0F
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
;	$00, $02, $0F, $04, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $00, $18, $05
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
;	$00, $02, $0F, $04, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $00, $18, $11
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
;	$01, $06, $06, $00, 	$35, $1A, $1A, $1A, 	$0E, $00, $28, $14
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
;	$11, $02, $0F, $74, 	$5F, $5F, $5F, $5F, 	$00, $08, $00, $00
;	$00, $08, $00, $0C, 	$0F, $FF, $0F, $0F, 	$1C, $00, $23, $03
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
	smpsVcTotalLevel    $03, $23, $00, $1C
