
Snd_Title_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Title_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $7D

	smpsHeaderDAC       Snd_Title_DAC
	smpsHeaderFM        Snd_Title_FM1,	$00, $0B
	smpsHeaderFM        Snd_Title_FM2,	$00, $05
	smpsHeaderFM        Snd_Title_FM3,	$00, $05
	smpsHeaderFM        Snd_Title_FM4,	$00, $18
	smpsHeaderFM        Snd_Title_FM5,	$00, $09
	smpsHeaderPSG       Snd_Title_PSG1,	$0C, $02, $00, $00
	smpsHeaderPSG       Snd_Title_PSG2,	$0C, $04, $00, $00
	smpsHeaderPSG       Snd_Title_PSG3,	$23, $01, $00, sTone_0F

; DAC Data
Snd_Title_DAC:
    dc.b    dKickS3, $06, dKickS3, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03
    dc.b    dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06, dKickS3, $06, dKickS3, $06
    dc.b    dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03
    dc.b    dMuffledSnare, $03, dMuffledSnare, $03, dMuffledSnare, $03, dIntroKick, $0C, dMuffledSnare, $06, dKickS3, $03
    dc.b    dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06
    dc.b    dKickS3, $06, dKickS3, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03
    dc.b    dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06, dKickS3, $06, dKickS3, $06
    dc.b    dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03
    dc.b    dKickS3, $03, dMuffledSnare, $06, dKickS3, $06, dKickS3, $06, dMuffledSnare, $06, dKickS3, $03
    dc.b    dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06
    dc.b    dKickS3, $06, dKickS3, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03
    dc.b    dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06, dKickS3, $06, dKickS3, $06
    dc.b    dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03
    dc.b    dKickS3, $03, dMuffledSnare, $06, dKickS3, $06, dKickS3, $06, dMuffledSnare, $06, dKickS3, $03
    dc.b    dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06
    dc.b    dKickS3, $06, dKickS3, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03
    dc.b    dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06, dIntroKick, $0C, dMuffledSnare, $06
    dc.b    dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03, dKickS3, $03
    dc.b    dMuffledSnare, $06, dKickS3, $06, dKickS3, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06
    dc.b    dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06, dKickS3, $06
    dc.b    dKickS3, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06
    dc.b    dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06, dKickS3, $06, dKickS3, $06, dMuffledSnare, $06
    dc.b    dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03, dKickS3, $03
    dc.b    dMuffledSnare, $06, dKickS3, $06, dKickS3, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06
    dc.b    dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06, dKickS3, $06
    dc.b    dKickS3, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06
    dc.b    dMuffledSnare, $03, dKickS3, $03, dMuffledSnare, $06, dKickS3, $06, dKickS3, $06, dMuffledSnare, $06
    dc.b    dKickS3, $03, dMuffledSnare, $06, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03, dKickS3, $03
    dc.b    dMuffledSnare, $06, dMuffledSnare, $03, dMuffledSnare, $03, dMuffledSnare, $03, dKickS3, $06, dMuffledSnare, $03
    dc.b    dKickS3, $03, dMuffledSnare, $03, dMuffledSnare, $06, dMuffledSnare, $06, dKickS3, $03, dMuffledSnare, $03
    dc.b    dMuffledSnare, $03, dIntroKick, $06
    smpsStop

; FM1 Data
Snd_Title_FM1:
    smpsSetvoice        $00
    dc.b    nRst, $30, nRst, $30, nC3, $03, nRst, $03, nC3, $03, nRst, $03, nC4, $06
    dc.b    nC3, $03, nC4, $03, nC3, $03, nC4, $03, nC3, $06, nC4, $06
    dc.b    nC3, $03, nC4, $03, nC3, $03, nRst, $03, nC3, $03, nRst, $03
    dc.b    nC4, $06, nC3, $03, nC4, $03, nC3, $03, nC4, $03, nC3, $06
    dc.b    nC4, $06, nC3, $03, nC4, $03, nB2, $03, nRst, $03, nB2, $03
    dc.b    nRst, $03, nB3, $06, nB2, $03, nB3, $03, nB2, $03, nB3, $03
    dc.b    nB2, $06, nB3, $06, nB2, $03, nB3, $03, nB2, $03, nRst, $03
    dc.b    nB3, $03, nB3, $03, nC3, $03, nRst, $03, nC4, $03, nC4, $03
    dc.b    nD3, $03, nE3, $03, nD3, $03, nC3, $03, nB2, $03, nA2, $03
    dc.b    nG2, $06, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03, nAb3, $06
    dc.b    nAb2, $03, nAb3, $03, nAb2, $03, nAb3, $03, nAb2, $06, nAb3, $06
    dc.b    nAb2, $03, nAb3, $03, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03
    dc.b    nAb3, $06, nAb2, $03, nAb3, $03, nAb2, $03, nAb3, $03, nAb2, $06
    dc.b    nAb3, $06, nAb2, $03, nAb3, $03, nG2, $03, nRst, $03, nG2, $03
    dc.b    nRst, $03, nG3, $06, nG2, $03, nG3, $03, nG2, $03, nG3, $03
    dc.b    nG2, $06, nG3, $06, nG2, $03, nG3, $03, nG2, $03, nRst, $03
    dc.b    nG3, $03, nG3, $03, nA2, $03, nRst, $03, nA3, $03, nA3, $03
    dc.b    nB2, $03, nRst, $03, nB3, $03, nB3, $03, nG2, $03, nRst, $03
    dc.b    nG3, $03, nG3, $03, nC3, $03, nRst, $03, nC3, $03, nRst, $03
    dc.b    nC4, $06, nC3, $03, nC4, $03, nC3, $03, nC4, $03, nC3, $06
    dc.b    nC4, $06, nC3, $03, nC4, $03, nC3, $03, nRst, $03, nC3, $03
    dc.b    nRst, $03, nC4, $06, nC3, $03, nC4, $03, nC3, $03, nC4, $03
    dc.b    nC3, $06, nC4, $06, nC3, $03, nC4, $03, nB2, $03, nRst, $03
    dc.b    nB2, $03, nRst, $03, nB3, $06, nB2, $03, nB3, $03, nB2, $03
    dc.b    nB3, $03, nB2, $06, nB3, $06, nB2, $03, nB3, $03, nB2, $03
    dc.b    nRst, $03, nB3, $03, nB3, $03, nC3, $03, nRst, $03, nC4, $03
    dc.b    nC4, $03, nD3, $03, nE3, $03, nD3, $03, nC3, $03, nB2, $03
    dc.b    nA2, $03, nG2, $06, nAb2, $03, nRst, $03, nAb2, $03, nRst, $03
    dc.b    nAb3, $06, nAb2, $03, nAb3, $03, nAb2, $03, nAb3, $03, nAb2, $06
    dc.b    nAb3, $06, nAb2, $03, nAb3, $03, nG2, $03, nRst, $03, nG2, $03
    dc.b    nRst, $03, nG3, $06, nG2, $03, nG3, $03, nG2, $03, nG3, $03
    dc.b    nG2, $06, nG3, $06, nG2, $03, nG3, $03, nC3, $03, nRst, $03
    dc.b    nC3, $03, nRst, $03, nC4, $06, nC3, $03, nC4, $03, nC3, $03
    dc.b    nC4, $03, nC3, $06, nC4, $06, nC3, $03, nC4, $03, nC3, $03
    dc.b    nRst, $03, nC3, $03, nRst, $03, nC4, $06, nC3, $03, nC4, $03
    dc.b    nC3, $03, nC4, $03, nC3, $06, nC4, $06, nC3, $03, nC4, $03
    smpsStop

; FM2 Data
Snd_Title_FM2:
	smpsPan             panLeft, $00
	smpsSetvoice        $04
	smpsFMAlterVol      $28
	dc.b    nRst, $30, nFs6, $01

Snd_Title_Loop02:
	dc.b    smpsNoAttack, nFs6
	smpsFMAlterVol      $FF
	smpsLoop            $00, $2F, Snd_Title_Loop02
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsFMAlterVol      $17
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nRst, $0C, nC5, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nE5, $0C, nF5, $06, nE5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nC5, $12
	smpsModSet          $0C, $01, $F0, $FD
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F8, $FD
	dc.b    nRst, $0C, nB4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nE5, $0C, nF5, $06, nE5, $06
	dc.b    nC5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nD5, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    smpsNoAttack, $0C, nRst, $0C
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nC5, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nEb5, $0C, nF5, $06, nEb5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nC5, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    nEb5, $06
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nC5, $06
	smpsModSet          $01, $00, $00, $00
	dc.b	nD5, $36
	smpsModSet          $01, $01, $01, $00
	dc.b	smpsNoAttack, nEb5, $30
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nRst, $0C, nC5, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nE5, $0C, nF5, $06, nG5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nC5, $12
	smpsModSet          $0C, $01, $F0, $FD
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F8, $FD
	dc.b    nRst, $0C, nB4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nE5, $0C, nF5, $06, nG5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nC5, $06
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    smpsNoAttack, $0C
	smpsFMAlterVol      $FE
	smpsModSet          $0C, $01, $05, $07
	dc.b    nC5, $12
	smpsModSet          $12, $01, $09, $07
	dc.b    nF5, $1E
	smpsModSet          $07, $01, $03, $05
	dc.b    nE5, $12, nD5, $12, nC5, $06, nB4, $06
	smpsModSet          $07, $01, $09, $07
	dc.b    nC5, $30, smpsNoAttack, nC5
	smpsStop

; FM3 Data
Snd_Title_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $04
	dc.b    nRst, $30
	smpsAlterNote       $01
	smpsFMAlterVol      $28
	dc.b    nFs6, $01
Snd_Title_Loop01:
	dc.b    smpsNoAttack, nFs6
	smpsFMAlterVol      $FF
	smpsLoop            $00, $2F, Snd_Title_Loop01
	smpsPan             panCenter, $00
	smpsSetvoice        $05
	smpsAlterNote       $02
	smpsFMAlterVol      $0F
	smpsModSet          $07, $01, $03, $05
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nRst, $0C, nG4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nE4, $06, nE5, $06, nD5, $06, nC5, $0C, nD5, $06, nC5, $06
	smpsModSet          $0C, $01, $05, $05
	dc.b    nG4, $12
	smpsModSet          $0C, $01, $F0, $FD
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F8, $FD
	dc.b    nRst, $0C, nG4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nD4, $06, nD5, $06, nD5, $06, nC5, $0C, nD5, $06, nC5, $06
	dc.b    nG4, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nA4, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nRst, $0C, nG4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nE4, $06, nE5, $06, nD5, $06, nC5, $0C, nD5, $06, nC5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nG4, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    nC5, $06
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nG4, $06
	smpsModSet          $01, $00, $00, $00
	dc.b    nB4, $33, smpsNoAttack, nB4
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nRst, $0C, nG4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nE4, $06, nE5, $06, nD5, $06, nC5, $0C, nD5, $06, nC5, $06
	smpsModSet          $0C, $01, $05, $05
	dc.b    nG4, $12
	smpsModSet          $0C, $01, $F0, $FD
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F8, $FD
	dc.b    nRst, $0C, nG4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nD4, $06, nD5, $06, nD5, $06, nC5, $0C, nD5, $06, nC5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nG4, $06
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $05, $07
	dc.b    nAb4, $12
	smpsModSet          $12, $01, $09, $07
	dc.b    nAb4, $1E
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $12, nG4, $12, nG4, $06, nF4, $06
	smpsModSet          $07, $01, $09, $07
	dc.b    nE4, $30, smpsNoAttack, nE4
	smpsStop

; FM4 Data
Snd_Title_FM4:
	dc.b    nRst, $32, nRst, $32
	smpsAlterNote       $FD
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nRst, $0C, nC5, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nE5, $0C, nF5, $06, nE5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nC5, $12
	smpsModSet          $0C, $01, $F0, $FD
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F8, $FD
	dc.b    nRst, $0C, nB4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nE5, $0C, nF5, $06, nE5, $06
	dc.b    nC5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nD5, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    smpsNoAttack, $0C, nRst, $0C
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nC5, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nEb5, $0C, nF5, $06, nEb5, $06
	dc.b    nC5, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    nEb5, $06
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nC5, $06
	smpsModSet          $01, $00, $00, $00
	dc.b	nD5, $36
	smpsModSet          $01, $01, $01, $00
	dc.b	smpsNoAttack, nEb5, $30
	smpsModSet          $0C, $01, $F8, $FF
	dc.b    nRst, $0C, nC5, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nE5, $0C, nF5, $06, nG5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nC5, $12
	smpsModSet          $0C, $01, $F0, $FD
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F8, $FD
	dc.b    nRst, $0C, nB4, $0C
	smpsModSet          $07, $01, $03, $05
	dc.b    nG4, $06, nG5, $06, nF5, $06, nE5, $0C, nF5, $06, nG5, $06
	smpsModSet          $07, $01, $09, $05
	dc.b    nC5, $06
	dc.b    smpsNoAttack, $0C
	smpsModSet          $0C, $01, $F0, $FF
	dc.b    smpsNoAttack, $08
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsModSet          $24, $01, $04, $07
	smpsFMAlterVol      $F1
	dc.b    nAb2, $04
	dc.b    smpsNoAttack, $2C, nG2, $30
	smpsModSet          $07, $01, $09, $07
	dc.b    nC3, $30, smpsNoAttack, nC3
	smpsStop

; FM5 Data
Snd_Title_FM5:
	smpsModSet          $24, $01, $04, $07
	smpsAlterNote       $02
	smpsSetvoice        $03
	dc.b    nRst, $38, nRst, $38, nRst, $38, nRst, $38, nRst, $38, nRst, $38
	dc.b    nRst, $38, nRst, $38, nRst, $38, nRst, $38, nRst, $38, nRst, $38
	smpsPan             panLeft, $00
	dc.b    nAb2, $30, nG2, $30
	smpsModSet          $07, $01, $09, $07
	dc.b    nC3, $30, smpsNoAttack, nC3
	smpsStop

; PSG1 Data
Snd_Title_PSG1:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $60, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nB1, $06
	dc.b	nF2, $06, nB1, $06, nF2, $06, nB1, $06, nF2, $06, nB1, $06
	dc.b	nF2, $06, nB1, $06, nF2, $06, nB1, $06, nF2, $06, nB1, $06
	dc.b	nF2, $06, nB1, $06, nF2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG0, $03, nB0, $03, nD1, $03, nF1, $03, nG1, $03
	dc.b	nF1, $03, nD1, $03, nB0, $03, nG0, $03, nB0, $03, nD1, $03
	dc.b	nF1, $03, nG1, $03, nF1, $03, nD1, $03, nB0, $03, nG0, $03
	dc.b	nB0, $03, nE1, $03, nG1, $03, nB0, $03, nEb1, $03, nAb1, $03
	dc.b	nB1, $03, nEb1, $03, nG1, $03, nC2, $03, nEb2, $03, nG1, $03
	dc.b	nB1, $03, nE2, $03, nG2, $03, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nB1, $06, nF2, $06, nB1, $06, nF2, $06, nB1, $06
	dc.b	nF2, $06, nB1, $06, nF2, $06, nB1, $06, nF2, $06, nB1, $06
	dc.b	nF2, $06, nB1, $06, nF2, $06, nB1, $06, nF2, $06, nAb1, $30
	dc.b	nG1, $30, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG1, $06, nE2, $06, nG1, $06, nE2, $06, nG1, $06
	dc.b	nE2, $06, nG1, $06, nE2, $06, nG1, $06, nE2, $06
	smpsStop

; PSG2 Data
Snd_Title_PSG2:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $63, nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06
	dc.b	nC2, $06, nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06
	dc.b	nC2, $06, nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06
	dc.b	nD2, $06, nG2, $06, nD2, $06, nG2, $06, nD2, $06, nG2, $06
	dc.b	nD2, $06, nG2, $06, nD2, $06, nG2, $06, nD2, $06, nG2, $06
	dc.b	nD2, $06, nG2, $06, nD2, $06, nG2, $06, nC2, $06, nG2, $06
	dc.b	nC2, $06, nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06
	dc.b	nC2, $06, nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06
	dc.b	nC2, $06, nG0, $03, nB0, $03, nD1, $03, nF1, $03, nG1, $03
	dc.b	nF1, $03, nD1, $03, nB0, $03, nG0, $03, nB0, $03, nD1, $03
	dc.b	nF1, $03, nG1, $03, nF1, $03, nD1, $03, nB0, $03, nG0, $03
	dc.b	nC1, $03, nE1, $03, nG1, $03, nB0, $03, nE1, $03, nAb1, $03
	dc.b	nB1, $03, nEb1, $03, nAb1, $03, nC2, $03, nEb2, $03, nG1, $03
	dc.b	nC2, $03, nE2, $03, nG2, $03, nG2, $06, nC2, $06, nG2, $06
	dc.b	nC2, $06, nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06
	dc.b	nC2, $06, nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06
	dc.b	nC2, $06, nG2, $06, nD2, $06, nG2, $06, nD2, $06, nG2, $06
	dc.b	nD2, $06, nG2, $06, nD2, $06, nG2, $06, nD2, $06, nG2, $06
	dc.b	nD2, $06, nG2, $06, nD2, $06, nG2, $06, nD2, $03, nEb1, $30
	dc.b	nD1, $30, nRst, $03, nG2, $06, nC2, $06, nG2, $06, nC2, $06
	dc.b	nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06, nC2, $06
	dc.b	nG2, $06, nC2, $06, nG2, $06, nC2, $06, nG2, $06, nC2, $06
	smpsStop

; PSG3 Data
Snd_Title_PSG3:
	smpsPSGform         $E7
	dc.b    (nMaxPSG2-$23)&$FF, $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $06
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	dc.b    $03
	smpsPSGvoice        sTone_0F
	dc.b    $03
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03, $03
	smpsPSGvoice        sTone_12
	dc.b    $06
	smpsPSGvoice        sTone_0F
	smpsPSGAlterVol     $02
	dc.b    $03
	smpsPSGAlterVol     $FF
	dc.b    $03
	smpsPSGvoice        sTone_12
	smpsPSGAlterVol     $FF
	dc.b    $09
	smpsStop

Snd_Title_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
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

;	Voice $02
;	$3D
;	$01, $02, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$1C, $99, $99, $99
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $19, $19, $19, $1C

;	Voice $03
;	$04
;	$04, $04, $03, $03, 	$13, $10, $13, $10, 	$06, $0C, $06, $0C
;	$00, $00, $00, $00, 	$4F, $2F, $4F, $2F, 	$1E, $8C, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $03, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $13, $10, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $06, $0C, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $04, $02, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $0C, $1E

;	Voice $04
;	$00
;	$53, $7F, $1F, $19, 	$1F, $1F, $1F, $08, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$10, $23, $0F, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $07, $05
	smpsVcCoarseFreq    $09, $0F, $0F, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $08, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $23, $10

;	Voice $05
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

;	Voice $06
;	$3D
;	$01, $01, $01, $01, 	$10, $50, $50, $50, 	$07, $08, $08, $08
;	$01, $00, $00, $00, 	$20, $1A, $1A, $1A, 	$19, $84, $84, $84
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $00
	smpsVcTotalLevel    $04, $04, $04, $19
