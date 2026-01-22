# 🎵 **Sonic & Knuckles • Sonic 3D: The Lost, Obscure, and Unheard**

<p align="center">
  <img src="https://img.shields.io/badge/Format-SMPS2ASM-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Hardware-Genesis%2FMega%20Drive-purple?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Analysis-Spectrogram%20%2B%20MIDI-green?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge" />
  <br/>
  <img src="https://img.shields.io/badge/Sonic%203D-Demo%20Tape%20Recovered-orange?style=flat-square" />
  <img src="https://img.shields.io/badge/Sonic%204-Episodes%201%20%26%202%20Reconstructed-red?style=flat-square" />
  <img src="https://img.shields.io/badge/Promo%20Album-1994%20Arrangements-yellow?style=flat-square" />
</p>

---

# 🏛️ **Archival Overview — Purpose of This Project**

For decades, certain Sonic music variants have existed only in rumor, degraded tape transfers, or obscure promotional releases. Many of these tracks were considered:

- lost  
- unrecoverable  
- inaccessible  
- impossible to experience on real hardware  

Some existed only as:

- low‑quality cassette rips  
- partial recordings  
- undocumented prototypes  
- rare promotional CDs  
- modern arrangements with no 16‑bit equivalent  

This project exists to **preserve**, **restore**, and **rebuild** these compositions in a fully authentic, hardware‑accurate format.

### 🎯 Mission
To create the **definitive SMPS2ASM archive** of rare, obscure, and unheard Sonic music — reconstructed with:

- hardware‑accurate envelopes  
- correct FM operator behavior  
- precise modulation  
- authentic timing  
- spectrogram‑verified accuracy  
- real SMPS driver behavior  

This is **preservation**, not remixing.  
Every track is rebuilt to behave exactly as it would on a real Sega Mega Drive / Genesis.

---

# 📚 **Included Sources**

## **Sonic 3D Blast — Demo Tape Material**
The Sonic 3D demo tapes circulated for years only through rough cassette rips and incomplete captures. Their original forms were never publicly available.

This archive reconstructs these early compositions with:

- correct FM envelopes  
- accurate operator ratios  
- proper timing  
- spectrogram‑verified pitch and harmonics  

This is the first time these prototypes can be heard as originally intended.

---

## **Sonic Origins (2022) — Super Sonic Theme**
The modern Super Sonic theme introduced in Sonic Origins quickly became iconic, yet it never existed in a true Genesis‑compatible form.

This project includes the **first accurate SMPS realization** of the track.

---

## **Sonic & Knuckles / Sonic the Hedgehog 3 Promo Album (1994)**
The 1994 Promo Album is a rare collector’s item — expensive, difficult to find, and often heard only through second‑hand recordings.

This archive contains **full SMPS conversions** of the album’s arrangements, preserving a piece of Sonic history previously inaccessible to most fans.

---

# 🎮 **Sonic the Hedgehog 4 — Episodes 1 & 2 (SMPS Reconstructions)**

These reconstructions were created using:

- spectrogram analysis  
- WiiWare MIDI data  
- Korg Triton analysis  
- Xpand!2 analysis  
- Vacuum synth analysis  
- FM voice matching  
- SMPS macro reconstruction  

### 🎛 FM Voice Reconstruction
FM patches were built by:

- using **exact FM voices from Sonic 3K and Sonic 3D** when they matched Triton/Xpand2/Vacuum timbres  
- creating **new FM voices** only when necessary  
- replicating **Jun Senoue’s SMPS‑era programming traits**, including:  
  - modulation depth and rate  
  - operator balance  
  - detune structure  
  - envelope curves  
  - vibrato macros  
  - pitch slide behavior  
  - sustain logic  

The result is a set of Sonic 4 tracks that reflect how the soundtrack **would have played on the Mega Drive**, grounded in real SMPS behavior.

---

# 🛠 **Restored Sonic 3K & Sonic 3D Data**

During reconstruction, several previously undocumented issues were discovered and corrected:

- incorrect loop points  
- malformed PSG macros  
- tied‑note timing errors  
- envelope inconsistencies  
- modulation mismatches  
- missing vibrato resets  
- incorrect operator detune values  

These fixes ensure the tracks finally play as intended on real hardware.

---

# 🔍 **Technical Reconstruction Workflow**

## **Spectrogram Analysis**
Used to decode:

- harmonic structure  
- envelope curves  
- vibrato depth  
- FM operator interactions  
- timing variations  

## **Audio Tools**
- Audacity  
- FL Studio  
- GNMIDI  

## **SMPS Conversion**
- ValleyBell’s mid2smps  
- custom programming for modulation and macro accuracy  
- final output in SMPS2ASM  

This ensures every track behaves exactly as it would on a real Mega Drive.

---

# 🎼 **SMPS Type‑2 (S3K) — Modulation Refresh on Next Note (FF 08)**  
*(Placed at the very end exactly as you requested — unchanged)*

The SMPS files for the album in SMPS2ASM format. There are some songs that require a new pitchbend command to be programmed into the SMPS Z80 driver. You can follow this tutorial I made with Copilot here:
🎼 SMPS Type‑2 (S3K) — Modulation Refresh on Next Note (FF 08)
A new SMPS feature enabling seamless modulation changes across tied notes without re‑attack
This document describes a clean, safe extension to the Sonic 3K Z80 sound driver that adds a new FF command:

FF 08 — Refresh modulation on the next note event (one‑shot)

This allows modulation to be reinitialized without triggering a key‑on, enabling expressive vibrato/tremolo transitions across tied notes.

The feature is fully compatible with the original driver architecture and requires only one hook and one small routine.

✨ Features
Refresh modulation exactly once, at the next note event  
Works seamlessly with smpsNoAttack  
No key‑on → no attack  
No envelope reset  
No pitchbend glitch  
No artifacts  
No driver rewrites  
Only one inserted call and one FF command  
This is a capability the original S3K driver never supported.

📁 Implementation  
1. Add FF 08 to the Meta‑Coord Flag Table  
In zExtraCoordFlagSwitchTable:

```
        dw cfModRefreshNextNote    ; 08 – refresh modulation on next note
```

Ensure this is placed at index $08.

2. Add the FF 08 Handler

```
; FF 08 – Request modulation refresh on the next note event
cfModRefreshNextNote:
        ld  (ix+zTrack.Unk11h),1    ; set one-shot refresh flag
        dec de                      ; undo cfMetaCF's inc de
        ret
```

Why dec de is required  
cfMetaCF increments DE before calling the handler.  
Without undoing it, the next event byte is skipped, corrupting the stream.

3. Add the One‑Shot Refresh Routine  
Place this in free space:

```
; Called once per note event, before zPrepareModulation
zCheckModRefreshNextNote:
        ld  a,(ix+zTrack.Unk11h)
        or  a
        ret z                      ; nothing to do

        xor a
        ld  (ix+zTrack.Unk11h),a   ; clear flag

        ; reinitialize modulation using the track’s ModulationPtr
        ld  e,(ix+zTrack.ModulationPtrLow)
        ld  d,(ix+zTrack.ModulationPtrHigh)

        push ix
        pop  hl

        ld  b,0
        ld  c,zTrack.ModulationWait
        add hl,bc
        ex  de,hl

        ldi
        ldi
        ldi

        ld  a,(hl)
        srl a
        ld  (de),a

        xor a
        ld  (ix+zTrack.ModulationValLow),a
        ld  (ix+zTrack.ModulationValHigh),a

        ret
```

This is a safe clone of the modulation init logic inside zPrepareModulation.

4. Insert the Hook in the FM Note Handler  
In zUpdateFMorPSGTrack, find:

```
call    zGetNextNote
bit     4,(ix+zTrack.PlaybackControl)
ret     nz

call    zPrepareModulation
```

Insert your call right before zPrepareModulation:

```
call    zGetNextNote
bit     4,(ix+zTrack.PlaybackControl)
ret     nz

call    zCheckModRefreshNextNote    ; <-- INSERT THIS LINE

call    zPrepareModulation
call    zUpdateFreq
call    zDoModulation
call    zFMSendFreq
jp      zFMNoteOn
```

This is the only safe hook point in the entire driver.

5. Add the Macro

```
smpsModRefreshNextNote macro
    dc.b $FF,$08
endm
```

🎵 Usage in Music Data  
The correct ordering is:

smpsModSet — new modulation parameters  
smpsModRefreshNextNote — request refresh  
smpsNoAttack — prevent key‑on  
duration byte — SMPS reuses previous note  

Example (working pattern):

```
smpsModSet          $01, $00, $00, $00
dc.b    nD5, $36

smpsModSet          $01, $01, $01, $00
smpsModRefreshNextNote
dc.b    smpsNoAttack, $30
```

SMPS interprets $30 as:

“Continue the previous note (D5).”

The engine:

- sees no‑attack  
- sees your refresh flag  
- refreshes modulation  
- skips key‑on  
- continues the note seamlessly  

✔ Result  
With this feature:

- Modulation changes mid‑note  
- No attack  
- No envelope reset  
- No pitchbend glitch  
- No artifacts  
- No driver rewrites  
- Only one inserted call and one FF command  

This is a clean, modern, expressive extension to SMPS Type‑2.

---
