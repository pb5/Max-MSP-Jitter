# Sherman Filterbank Controller

A Max/MSP patch (`sherman_filterbank_controller.maxpat`) that provides a touch-friendly
control surface for the Sherman Filterbank 2, viewable and playable from an iPad via
Mira.

The Filterbank 2 itself has no built-in MIDI, so the patch talks to it as MIDI CC and
leaves the last hop (MIDI -> CV/Gate) to whatever interface you actually own — most
commonly a MIDI-to-CV converter (e.g. a Kenton unit) patched into the Filterbank's rear
CV inputs. An optional direct CV section is also included for DC-coupled audio
interfaces (see below).

## Controls

| Control | CC# |
|---|---|
| Cutoff Frequency | 74 |
| Resonance | 71 |
| Distortion / Drive | 21 |
| FM Rate | 22 |
| FM Amount | 23 |
| Envelope Attack | 24 |
| Envelope Release | 25 |
| Envelope Follower Amount | 26 |
| Ring Mod Frequency | 27 |
| Ring Mod Amount | 28 |
| LFO Rate | 29 |
| Dry/Wet Mix | 30 |
| Output Level | 7 |
| Filter Type (LP/BP/HP) | 31 |
| Bypass | 32 |

MIDI channel is set with the number box in the "Global" row (default 1). Pick the
actual MIDI output port in Max's own MIDI Setup dialog — the patch itself doesn't pick
a device.

A `preset` object stores/recalls snapshots of every dial/tab/toggle: click a slot to
recall, shift-click to store.

CC assignments are arbitrary (there's no official MIDI spec for this analog device) —
edit the `ctlout` object arguments directly in the patch if you need different numbers
to match an existing MIDI-CV mapping.

## Using it with Mira

All controls are built with `live.dial` / `live.tab` / `live.toggle` and laid out in
Presentation mode, which is what Mira mirrors. A `mira.frame` object is included as the
capture region marker.

1. Open the patch in Max, open the Mira app on an iPad on the same network.
2. In Max: **File > Show Mira Settings**, and enable this patcher for Mira viewing.
3. The dials/tabs/toggle/preset grid will appear on the iPad, touch-operable.

## Optional: direct CV output

Below the MIDI section there's a small bank (4 channels: Cutoff, Resonance, FM Amount,
Envelope Amount) that scales each dial's 0-127 value to a DC control voltage and sends
it out `dac~` channels 1-4. This requires:

- A DC-coupled audio interface (e.g. Expert Sleepers ES-8/ES-9, MOTU 8A) patched into
  the Filterbank's CV inputs.
- Audio DSP turned on (click the `ezdac~` toggle near that section).

**The default scale range (0V-5V) was not verified against Sherman's official manual**
(not reachable while building this patch) — check your actual unit/manual and edit the
`scale 0 127 <lo> <hi>` object arguments before connecting real hardware.
