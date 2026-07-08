{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      40.0,
      40.0,
      1300.0,
      900.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "gridsnaponopen": 1,
    "toolbarvisible": 1,
    "boxanimatetime": 200,
    "midichannel": 0,
    "settype": 0,
    "boxes": [
      {
        "box": {
          "maxclass": "comment",
          "text": "Sherman Filterbank Controller",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            10,
            700,
            26
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            10,
            700,
            30
          ],
          "fontsize": 20,
          "textjustification": 0,
          "id": "obj-1"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "MIDI CC control surface for the Sherman Filterbank 2 (analog, no native MIDI). Use with a MIDI-to-CV converter, or edit the CV section below for direct DC control-voltage output. Select the MIDI output port in Max's MIDI Setup. To view/control this patch from an iPad: open Mira, then in Max choose File > Show Mira Settings and enable this patcher (a mira.frame object is included below).",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            38,
            1080,
            30
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            40,
            1080,
            28
          ],
          "fontsize": 11,
          "id": "obj-2"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Cutoff Frequency  (CC74)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            70,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            70,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-3"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            20,
            88,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            88,
            110,
            110
          ],
          "varname": "sfb_74",
          "id": "obj-4"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            20,
            202,
            40,
            20
          ],
          "id": "obj-5"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 74 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            70,
            202,
            90,
            20
          ],
          "id": "obj-6"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            70,
            170,
            100,
            20
          ],
          "id": "obj-7"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Resonance  (CC71)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            203,
            70,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            70,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-8"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            203,
            88,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            88,
            110,
            110
          ],
          "varname": "sfb_71",
          "id": "obj-9"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            203,
            202,
            40,
            20
          ],
          "id": "obj-10"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 71 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            253,
            202,
            90,
            20
          ],
          "id": "obj-11"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            253,
            170,
            100,
            20
          ],
          "id": "obj-12"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Distortion / Drive  (CC21)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            386,
            70,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            70,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-13"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            386,
            88,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            88,
            110,
            110
          ],
          "varname": "sfb_21",
          "id": "obj-14"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            386,
            202,
            40,
            20
          ],
          "id": "obj-15"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 21 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            436,
            202,
            90,
            20
          ],
          "id": "obj-16"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            436,
            170,
            100,
            20
          ],
          "id": "obj-17"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "FM Rate  (CC22)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            569,
            70,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            569,
            70,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-18"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            569,
            88,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            569,
            88,
            110,
            110
          ],
          "varname": "sfb_22",
          "id": "obj-19"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            569,
            202,
            40,
            20
          ],
          "id": "obj-20"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 22 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            619,
            202,
            90,
            20
          ],
          "id": "obj-21"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            619,
            170,
            100,
            20
          ],
          "id": "obj-22"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "FM Amount  (CC23)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            220,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            220,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-23"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            20,
            238,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            238,
            110,
            110
          ],
          "varname": "sfb_23",
          "id": "obj-24"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            20,
            352,
            40,
            20
          ],
          "id": "obj-25"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 23 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            70,
            352,
            90,
            20
          ],
          "id": "obj-26"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            70,
            320,
            100,
            20
          ],
          "id": "obj-27"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Env. Attack  (CC24)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            203,
            220,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            220,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-28"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            203,
            238,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            238,
            110,
            110
          ],
          "varname": "sfb_24",
          "id": "obj-29"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            203,
            352,
            40,
            20
          ],
          "id": "obj-30"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 24 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            253,
            352,
            90,
            20
          ],
          "id": "obj-31"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            253,
            320,
            100,
            20
          ],
          "id": "obj-32"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Env. Release  (CC25)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            386,
            220,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            220,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-33"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            386,
            238,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            238,
            110,
            110
          ],
          "varname": "sfb_25",
          "id": "obj-34"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            386,
            352,
            40,
            20
          ],
          "id": "obj-35"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 25 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            436,
            352,
            90,
            20
          ],
          "id": "obj-36"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            436,
            320,
            100,
            20
          ],
          "id": "obj-37"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Env. Follower Amt  (CC26)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            569,
            220,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            569,
            220,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-38"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            569,
            238,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            569,
            238,
            110,
            110
          ],
          "varname": "sfb_26",
          "id": "obj-39"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            569,
            352,
            40,
            20
          ],
          "id": "obj-40"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 26 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            619,
            352,
            90,
            20
          ],
          "id": "obj-41"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            619,
            320,
            100,
            20
          ],
          "id": "obj-42"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Ring Mod Freq  (CC27)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            370,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            370,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-43"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            20,
            388,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            388,
            110,
            110
          ],
          "varname": "sfb_27",
          "id": "obj-44"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            20,
            502,
            40,
            20
          ],
          "id": "obj-45"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 27 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            70,
            502,
            90,
            20
          ],
          "id": "obj-46"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            70,
            470,
            100,
            20
          ],
          "id": "obj-47"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Ring Mod Amount  (CC28)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            203,
            370,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            370,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-48"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            203,
            388,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            388,
            110,
            110
          ],
          "varname": "sfb_28",
          "id": "obj-49"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            203,
            502,
            40,
            20
          ],
          "id": "obj-50"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 28 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            253,
            502,
            90,
            20
          ],
          "id": "obj-51"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            253,
            470,
            100,
            20
          ],
          "id": "obj-52"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "LFO Rate  (CC29)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            386,
            370,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            370,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-53"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            386,
            388,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            388,
            110,
            110
          ],
          "varname": "sfb_29",
          "id": "obj-54"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            386,
            502,
            40,
            20
          ],
          "id": "obj-55"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 29 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            436,
            502,
            90,
            20
          ],
          "id": "obj-56"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            436,
            470,
            100,
            20
          ],
          "id": "obj-57"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Dry / Wet Mix  (CC30)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            569,
            370,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            569,
            370,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-58"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            569,
            388,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            569,
            388,
            110,
            110
          ],
          "varname": "sfb_30",
          "id": "obj-59"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            569,
            502,
            40,
            20
          ],
          "id": "obj-60"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 30 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            619,
            502,
            90,
            20
          ],
          "id": "obj-61"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            619,
            470,
            100,
            20
          ],
          "id": "obj-62"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Output Level  (CC7)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            520,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            520,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-63"
        }
      },
      {
        "box": {
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            20,
            538,
            110,
            110
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            538,
            110,
            110
          ],
          "varname": "sfb_7",
          "id": "obj-64"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            20,
            652,
            40,
            20
          ],
          "id": "obj-65"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 7 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            70,
            652,
            90,
            20
          ],
          "id": "obj-66"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            70,
            620,
            100,
            20
          ],
          "id": "obj-67"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Filter Type  (CC31)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            203,
            520,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            520,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-68"
        }
      },
      {
        "box": {
          "maxclass": "live.tab",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            203,
            538,
            150,
            30
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            538,
            150,
            30
          ],
          "varname": "sfb_filtertype",
          "items": [
            "LP",
            "BP",
            "HP"
          ],
          "id": "obj-69"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "scale 0 2 0 127",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            203,
            576,
            100,
            20
          ],
          "id": "obj-70"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "int",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            203,
            604,
            40,
            20
          ],
          "id": "obj-71"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 31 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            253,
            604,
            90,
            20
          ],
          "id": "obj-72"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            253,
            628,
            100,
            20
          ],
          "id": "obj-73"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Bypass  (CC32)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            386,
            520,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            520,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-74"
        }
      },
      {
        "box": {
          "maxclass": "live.toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            386,
            538,
            30,
            30
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            538,
            30,
            30
          ],
          "varname": "sfb_bypass",
          "id": "obj-75"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "* 127",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            386,
            576,
            50,
            20
          ],
          "id": "obj-76"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "ctlout 32 1",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            441,
            576,
            90,
            20
          ],
          "id": "obj-77"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "receive sfb_midich",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            441,
            600,
            100,
            20
          ],
          "id": "obj-78"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "MIDI Channel (1-16)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            680,
            140,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            680,
            140,
            16
          ],
          "fontsize": 10,
          "id": "obj-79"
        }
      },
      {
        "box": {
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20,
            698,
            50,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            698,
            50,
            20
          ],
          "min": 1,
          "max": 16,
          "id": "obj-80"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "send sfb_midich",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            80,
            698,
            90,
            20
          ],
          "id": "obj-81"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "loadbang",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            180,
            698,
            60,
            20
          ],
          "id": "obj-82"
        }
      },
      {
        "box": {
          "maxclass": "message",
          "text": "1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            180,
            724,
            40,
            20
          ],
          "id": "obj-83"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Presets (click to store: shift-click a slot)",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            280,
            680,
            260,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            280,
            680,
            260,
            16
          ],
          "fontsize": 10,
          "id": "obj-84"
        }
      },
      {
        "box": {
          "maxclass": "preset",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            280,
            698,
            140,
            44
          ],
          "presentation": 1,
          "presentation_rect": [
            280,
            698,
            140,
            44
          ],
          "id": "obj-85"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Mira: File > Show Mira Settings > enable this patcher (or use the mira.frame object below to define a dedicated capture region for the iPad view).",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440,
            680,
            400,
            44
          ],
          "presentation": 1,
          "presentation_rect": [
            440,
            680,
            400,
            44
          ],
          "fontsize": 10,
          "id": "obj-86"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "mira.frame",
          "numinlets": 0,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            440,
            730,
            100,
            20
          ],
          "id": "obj-87"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "OPTIONAL: direct CV output for a hardware DC-coupled interface (e.g. Expert Sleepers ES-8/ES-9, MOTU 8A). Requires audio DSP to be turned on (click the ezdac~ below). Default range is 0V-5V - EDIT the \"scale 0 127 lo hi\" arguments on each object below to match your actual Filterbank 2 CV input spec before connecting real hardware; this was not verified against the official manual.",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            770,
            1080,
            30
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            770,
            1080,
            30
          ],
          "fontsize": 10,
          "id": "obj-88"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Cutoff Frequency -> CV out 1",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20,
            804,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            804,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-89"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "scale 0 127 0. 5.",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            20,
            822,
            120,
            20
          ],
          "id": "obj-90"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "line~ 20",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            20,
            848,
            70,
            20
          ],
          "id": "obj-91"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Resonance -> CV out 2",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            203,
            804,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            203,
            804,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-92"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "scale 0 127 0. 5.",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            203,
            822,
            120,
            20
          ],
          "id": "obj-93"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "line~ 20",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            203,
            848,
            70,
            20
          ],
          "id": "obj-94"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "FM Amount -> CV out 3",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            386,
            804,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            386,
            804,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-95"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "scale 0 127 0. 5.",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            386,
            822,
            120,
            20
          ],
          "id": "obj-96"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "line~ 20",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            386,
            848,
            70,
            20
          ],
          "id": "obj-97"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Env. Follower Amt -> CV out 4",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            569,
            804,
            165,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            569,
            804,
            165,
            16
          ],
          "fontsize": 10,
          "id": "obj-98"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "scale 0 127 0. 5.",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            569,
            822,
            120,
            20
          ],
          "id": "obj-99"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "line~ 20",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            569,
            848,
            70,
            20
          ],
          "id": "obj-100"
        }
      },
      {
        "box": {
          "maxclass": "newobj",
          "text": "dac~ 1 2 3 4",
          "numinlets": 4,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            20,
            878,
            100,
            20
          ],
          "id": "obj-101"
        }
      },
      {
        "box": {
          "maxclass": "ezdac~",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            500,
            848,
            45,
            45
          ],
          "presentation": 1,
          "presentation_rect": [
            500,
            848,
            45,
            45
          ],
          "id": "obj-102"
        }
      },
      {
        "box": {
          "maxclass": "comment",
          "text": "Audio/CV on-off",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            500,
            824,
            100,
            16
          ],
          "presentation": 1,
          "presentation_rect": [
            500,
            824,
            100,
            16
          ],
          "fontsize": 10,
          "id": "obj-103"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "obj-4",
            0
          ],
          "destination": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-5",
            0
          ],
          "destination": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-7",
            0
          ],
          "destination": [
            "obj-6",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-9",
            0
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-10",
            0
          ],
          "destination": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-12",
            0
          ],
          "destination": [
            "obj-11",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-14",
            0
          ],
          "destination": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-15",
            0
          ],
          "destination": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            0
          ],
          "destination": [
            "obj-16",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-19",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-20",
            0
          ],
          "destination": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            0
          ],
          "destination": [
            "obj-21",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-24",
            0
          ],
          "destination": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-25",
            0
          ],
          "destination": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-27",
            0
          ],
          "destination": [
            "obj-26",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-29",
            0
          ],
          "destination": [
            "obj-30",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-30",
            0
          ],
          "destination": [
            "obj-31",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-32",
            0
          ],
          "destination": [
            "obj-31",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-34",
            0
          ],
          "destination": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-35",
            0
          ],
          "destination": [
            "obj-36",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-37",
            0
          ],
          "destination": [
            "obj-36",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-39",
            0
          ],
          "destination": [
            "obj-40",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-40",
            0
          ],
          "destination": [
            "obj-41",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            0
          ],
          "destination": [
            "obj-41",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-44",
            0
          ],
          "destination": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-45",
            0
          ],
          "destination": [
            "obj-46",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-47",
            0
          ],
          "destination": [
            "obj-46",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-49",
            0
          ],
          "destination": [
            "obj-50",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-50",
            0
          ],
          "destination": [
            "obj-51",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-52",
            0
          ],
          "destination": [
            "obj-51",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-54",
            0
          ],
          "destination": [
            "obj-55",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-55",
            0
          ],
          "destination": [
            "obj-56",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-57",
            0
          ],
          "destination": [
            "obj-56",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-59",
            0
          ],
          "destination": [
            "obj-60",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-60",
            0
          ],
          "destination": [
            "obj-61",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-62",
            0
          ],
          "destination": [
            "obj-61",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-64",
            0
          ],
          "destination": [
            "obj-65",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-65",
            0
          ],
          "destination": [
            "obj-66",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
            0
          ],
          "destination": [
            "obj-66",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-69",
            0
          ],
          "destination": [
            "obj-70",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-70",
            0
          ],
          "destination": [
            "obj-71",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-71",
            0
          ],
          "destination": [
            "obj-72",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-73",
            0
          ],
          "destination": [
            "obj-72",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-75",
            0
          ],
          "destination": [
            "obj-76",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-76",
            0
          ],
          "destination": [
            "obj-77",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-78",
            0
          ],
          "destination": [
            "obj-77",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-80",
            0
          ],
          "destination": [
            "obj-81",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-82",
            0
          ],
          "destination": [
            "obj-83",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-83",
            0
          ],
          "destination": [
            "obj-80",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-4",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-9",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-14",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-19",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-24",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-29",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-34",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-39",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-44",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-49",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-54",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-59",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-64",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-69",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-75",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-4",
            0
          ],
          "destination": [
            "obj-90",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-90",
            0
          ],
          "destination": [
            "obj-91",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-9",
            0
          ],
          "destination": [
            "obj-93",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-93",
            0
          ],
          "destination": [
            "obj-94",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-24",
            0
          ],
          "destination": [
            "obj-96",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-96",
            0
          ],
          "destination": [
            "obj-97",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-39",
            0
          ],
          "destination": [
            "obj-99",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-99",
            0
          ],
          "destination": [
            "obj-100",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-91",
            0
          ],
          "destination": [
            "obj-101",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-94",
            0
          ],
          "destination": [
            "obj-101",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-97",
            0
          ],
          "destination": [
            "obj-101",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-100",
            0
          ],
          "destination": [
            "obj-101",
            3
          ]
        }
      }
    ],
    "styles": []
  }
}