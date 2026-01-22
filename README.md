The SMPS files for the album in SMPS2ASM format. There are some songs that require a new pitchbend command to be programmed into the SMPS Z80 driver. You can follow this tutorial I made with Copilot here:
---

# 🎼 SMPS Type‑2 (S3K) — Modulation Refresh on Next Note (FF 08)
### *A new SMPS feature enabling seamless modulation changes across tied notes without re‑attack*

This document describes a clean, safe extension to the Sonic 3K Z80 sound driver that adds a new FF command:

> **FF 08 — Refresh modulation on the next note event (one‑shot)**

This allows modulation to be reinitialized **without triggering a key‑on**, enabling expressive vibrato/tremolo transitions across tied notes.

The feature is fully compatible with the original driver architecture and requires only one hook and one small routine.

---

## ✨ Features

- Refresh modulation **exactly once**, at the next note event  
- Works seamlessly with `smpsNoAttack`  
- No key‑on → **no attack**  
- No envelope reset  
- No pitchbend glitch  
- No artifacts  
- No driver rewrites  
- Only one inserted call and one FF command  

This is a capability the original S3K driver never supported.

---

# 📁 Implementation

## 1. Add FF 08 to the Meta‑Coord Flag Table

In `zExtraCoordFlagSwitchTable`:

```asm
        dw cfModRefreshNextNote    ; 08 – refresh modulation on next note
```

Ensure this is placed at index `$08`.

---

## 2. Add the FF 08 Handler

```asm
; FF 08 – Request modulation refresh on the next note event
cfModRefreshNextNote:
        ld  (ix+zTrack.Unk11h),1    ; set one-shot refresh flag
        dec de                      ; undo cfMetaCF's inc de
        ret
```

### Why `dec de` is required  
`cfMetaCF` increments DE before calling the handler.  
Without undoing it, the next event byte is skipped, corrupting the stream.

---

## 3. Add the One‑Shot Refresh Routine

Place this in free space:

```asm
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

This is a safe clone of the modulation init logic inside `zPrepareModulation`.

---

## 4. Insert the Hook in the FM Note Handler

In `zUpdateFMorPSGTrack`, find:

```asm
call    zGetNextNote
bit     4,(ix+zTrack.PlaybackControl)
ret     nz

call    zPrepareModulation
```

Insert your call **right before** `zPrepareModulation`:

```asm
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

---

## 5. Add the Macro

```asm
smpsModRefreshNextNote macro
    dc.b $FF,$08
endm
```

---

# 🎵 Usage in Music Data

The correct ordering is:

1. `smpsModSet` — new modulation parameters  
2. `smpsModRefreshNextNote` — request refresh  
3. `smpsNoAttack` — prevent key‑on  
4. duration byte — SMPS reuses previous note  

### Example (working pattern):

```asm
smpsModSet          $01, $00, $00, $00
dc.b    nD5, $36

smpsModSet          $01, $01, $01, $00
smpsModRefreshNextNote
dc.b    smpsNoAttack, $30
```

SMPS interprets `$30` as:

> “Continue the previous note (D5).”

The engine:

- sees no‑attack  
- sees your refresh flag  
- refreshes modulation  
- skips key‑on  
- continues the note seamlessly  

---

# ✔ Result

With this feature:

- Modulation changes mid‑note  
- No attack  
- No envelope reset  
- No pitchbend glitch  
- No artifacts  
- No driver rewrites  
- Only one inserted call and one FF command  

This is a clean, modern, expressive extension to SMPS Type‑2.
