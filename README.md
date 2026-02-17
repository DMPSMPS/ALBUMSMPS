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
# 🎼 SMPS Type‑2 (S3K) — Seamless Modulation Refresh (FF 08)

This tutorial adds a new Coordination Flag ($FF 08$) to the Sonic 3 & Knuckles Z80 sound driver. It enables **mid-note modulation changes** across tied notes without triggering a new attack.

### ✨ Features
* **Zero Driver Modification:** Does not change a single line of original driver code; it is a purely additive extension.
* **Non-Invasive:** Implemented as a standalone command rather than hooking into core FM/PSG update loops.
* **Multi-Channel Safe:** Strictly preserves all Z80 registers, ensuring other music channels remain stable.
* **Optimized for smpsNoAttack:** Allows transitions from "no vibrato" to "vibrato" seamlessly mid-note.

---

### 📁 1. The Implementation (Z80 Assembly)

#### Step A: Register the Command
Locate `zExtraCoordFlagSwitchTable` in your driver source. This table defines the behavior for $FF$ commands. Add the pointer for `cfModRefreshNextNote` at index **$08$**.

```z80
zExtraCoordFlagSwitchTable:
        dw  cfModSet            ; 00
        ; ... (entries 01-07)
        dw  cfModRefreshNextNote ; 08 - Add this here

```

#### Step B: Add the Handler

Paste this routine into any free space in your Z80 driver. This handler performs an immediate refresh of the modulation parameters by copying the data from the current pointer into the active track registers.

```z80
; ---------------------------------------------------------------------------
; FF 08 – Integrated Modulation Refresh (Standalone Extension)
; ---------------------------------------------------------------------------
cfModRefreshNextNote:
        push de                     ; [PROTECT] Save music pointer for this channel

        ; 1. Load the Modulation Data Address from ROM
        ld  e,(ix+zTrack.ModulationPtrLow)
        ld  d,(ix+zTrack.ModulationPtrHigh)

        ; 2. Target the Track RAM (starting at ModulationWait)
        push ix
        pop  hl
        ld  b,0
        ld  c,zTrack.ModulationWait
        add hl,bc                   ; HL = Target modulation registers in RAM
        
        ex  de,hl                   ; DE = Target, HL = Source

        ; 3. Transfer the 3-byte header (Wait, Speed, Step)
        ldi                         ; Copy zTrack.ModulationWait
        ldi                         ; Copy zTrack.ModulationSpeed
        ldi                         ; Copy zTrack.ModulationStep

        ; 4. Set the phase/delta (Standard SMPS: Speed / 2)
        ld  a,(hl)                  ; Get Speed byte from ROM
        srl a                       ; Calculate initial phase Delta
        ld  (de),a                  ; Store in zTrack.ModulationValLow

        ; 5. Clear high byte of the modulation value
        xor a
        ld  (ix+zTrack.ModulationValHigh),a

        ; 6. Restore and Sync
        pop de                      ; Restore music pointer
        dec de                      ; Undo dispatcher's auto-increment
        ret

```

---

### 🧠 Why the Previous "Hook" Method Caused Issues

Older versions of this logic suggested adding a `call` hook directly into the original driver code (specifically `zUpdateFMorPSGTrack`). While well-intentioned, that approach was bugged because:

* **Logic Conflicts:** Modifying the original driver code interfered with the "Tick" timing. This caused a domino effect where **notes on other channels would fail to play** because the driver couldn't finish its processing loop correctly.
* **Register Corruption:** The Z80 `DE` register tracks the music position. The old method changed `DE` without saving it, causing the driver to "get lost" when switching between channels.
* **The "Even DAC" Bug:** The instability of hacking the core loop was so great that it often caused conflicts across the entire engine—leading to dropped notes or silence on FM, PSG, and **even the DAC** channels.

This **Integrated Extension** avoids these conflicts entirely. By staying inside the  coordination flag table and using `push/pop de`, the driver remains in its "stock" state and all channels play perfectly.

---

### 🎵 2. Music Data Usage

Add this macro to your `smps2asm` definitions:

```assembly
smpsModRefreshNextNote macro
    dc.b    $FF, $08
endm

```

#### Example Usage:

```assembly
    ; Note starts with no modulation
    smpsModSet          $01, $00, $00, $00
    dc.b                nD5, $36

    ; Mid-note transition:
    smpsModSet          $01, $01, $01, $00 ; Set new parameters
    smpsModRefreshNextNote             ; Apply parameters immediately
    dc.b                smpsNoAttack, $30  ; Note continues with new vibrato

```
