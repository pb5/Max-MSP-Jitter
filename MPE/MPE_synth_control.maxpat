{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 5,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "rect": [
      80.0,
      80.0,
      960.0,
      700.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "lefttoolbarpinned": 0,
    "toptoolbarpinned": 0,
    "righttoolbarpinned": 0,
    "bottomtoolbarpinned": 0,
    "toolbars_unpinned_last_save": 0,
    "tallnewobj": 0,
    "boxanimatetime": 200,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "devicewidth": 0.0,
    "description": "",
    "digest": "",
    "tags": "",
    "style": "",
    "subpatcher_template": "",
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            20,
            820,
            20.0
          ],
          "text": "MPE対応パッチ（段階的実装） / MPE-Compatible Patch (Staged Implementation)",
          "linecount": 1,
          "fontsize": 16.0
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            46,
            820,
            20.0
          ],
          "text": "現在の実装段階: Stage 1/4: MPE MIDI受信 & モニター",
          "linecount": 1,
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            84,
            800,
            20.0
          ],
          "text": "MPEコントローラー（ROLI Seaboard / LinnStrument / Joué等）をMaxのMIDI入力に設定してください。各行はMPEの4要素: Note（発音）/ Bend（ピッチベンド=X）/ Pressure（チャンネルプレッシャー=Z）/ Timbre（CC74=Y）です。",
          "linecount": 2,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            24,
            130.0,
            70,
            22.0
          ],
          "text": "notein"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            24,
            180.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            124,
            180.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            224,
            180.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            208.0,
            400,
            20.0
          ],
          "text": "Note: pitch / velocity / channel",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            24,
            250.0,
            70,
            22.0
          ],
          "text": "bendin"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            24,
            300.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            124,
            300.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            328.0,
            500,
            20.0
          ],
          "text": "Pitch Bend (X): 0-16383, center 8192 / channel — MPE既定は±48semitones",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            24,
            370.0,
            70,
            22.0
          ],
          "text": "touchin"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            24,
            420.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            124,
            420.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            448.0,
            500,
            20.0
          ],
          "text": "Channel Pressure (Z): 0-127 / channel — MPEの縦方向の圧力表現",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            24,
            490.0,
            90,
            22.0
          ],
          "text": "ctlin 74"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            24,
            540.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            124,
            540.0,
            50.0,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            568.0,
            500,
            20.0
          ],
          "text": "Timbre (Y) = CC74: 0-127 / channel — 左右方向のスライド表現",
          "linecount": 1,
          "fontsize": 12.0
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
            "obj-4",
            1
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
            "obj-4",
            2
          ],
          "destination": [
            "obj-7",
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
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-9",
            1
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
            "obj-13",
            0
          ],
          "destination": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-13",
            1
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
            "obj-17",
            0
          ],
          "destination": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            1
          ],
          "destination": [
            "obj-19",
            0
          ]
        }
      }
    ],
    "dependency_cache": [],
    "autosave": 0
  }
}
