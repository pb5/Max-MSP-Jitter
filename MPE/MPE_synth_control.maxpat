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
          "text": "現在の実装段階: Stage 3/4: 外部MPE対応ソフトシンセへのMIDI出力 (IAC / loopMIDI)",
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
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            630.0,
            800,
            20.0
          ],
          "text": "Stage 2: MPEゾーン設定（Lower Zone: Master=ch1, Member=ch2〜）とチャンネル別ボイス管理",
          "linecount": 1,
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            24,
            660.0,
            70,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            24,
            700.0,
            40,
            22.0
          ],
          "text": "15"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            24,
            740.0,
            140,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            174,
            740.0,
            260,
            20.0
          ],
          "text": "Member Channel数 (N) — 通常2〜16の15ch",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            220,
            700.0,
            40,
            22.0
          ],
          "text": "48"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            220,
            740.0,
            140,
            22.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            370,
            740.0,
            300,
            20.0
          ],
          "text": "Pitch Bend Range (semitones) — MPE既定48",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            24,
            790.0,
            70,
            22.0
          ],
          "text": "pak 0 0"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "patching_rect": [
            24,
            840.0,
            140,
            22.0
          ],
          "text": "coll mpe_voices"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            184,
            840.0,
            420,
            20.0
          ],
          "text": "index=MIDIチャンネル(1-16) / 値=現在発音中のノート番号",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            900.0,
            800,
            20.0
          ],
          "text": "Stage 3: 外部MPE対応ソフトシンセへMIDI出力（IAC Driver / loopMIDIなど仮想MIDIポート経由）",
          "linecount": 1,
          "fontsize": 13.0
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            926.0,
            800,
            20.0
          ],
          "text": "出力先はMaxメニュー [Options] > [MIDI Setup] で IAC Driver Bus（Mac）または loopMIDI Port（Windows）を選択してください。",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            24,
            956.0,
            70,
            22.0
          ],
          "text": "noteout"
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            124,
            956.0,
            70,
            22.0
          ],
          "text": "bendout"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            224,
            956.0,
            70,
            22.0
          ],
          "text": "touchout"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            324,
            956.0,
            90,
            22.0
          ],
          "text": "ctlout 74"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            986.0,
            700,
            20.0
          ],
          "text": "Note / Bend / Pressure(Z) / Timbre(Y) を受信チャンネルそのまま外部シンセへパススルー",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            1026.0,
            700,
            20.0
          ],
          "text": "MPE Configuration Message（Zoneサイズをシンセへ通知）をクリックで送信:",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            24,
            1050.0,
            20.0,
            20.0
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            54,
            1052.0,
            300,
            20.0
          ],
          "text": "Send Zone Config to Synth",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 6,
          "outlettype": [
            "bang",
            "bang",
            "bang",
            "bang",
            "bang",
            "bang"
          ],
          "patching_rect": [
            24,
            1086.0,
            200,
            22.0
          ],
          "text": "t b b b b b b"
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            24,
            1186.0,
            100,
            22.0
          ],
          "text": "ctlout 101 1"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            150,
            1186.0,
            100,
            22.0
          ],
          "text": "ctlout 100 1"
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            276,
            1186.0,
            90,
            22.0
          ],
          "text": "ctlout 6 1"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            392,
            1186.0,
            90,
            22.0
          ],
          "text": "ctlout 38 1"
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            1216.0,
            700,
            20.0
          ],
          "text": "RPN sequence: CC101=0,CC100=6,CC6=MemberCh数,CC38=0, その後 CC101=127/CC100=127 でRPN Null（master ch1へ送信）",
          "linecount": 1,
          "fontsize": 12.0
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            24,
            1126.0,
            40,
            22.0
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            150,
            1126.0,
            40,
            22.0
          ],
          "text": "6"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            276,
            1126.0,
            40,
            22.0
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            392,
            1126.0,
            50,
            22.0
          ],
          "text": "127"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            500,
            1126.0,
            50,
            22.0
          ],
          "text": "127"
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
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            0
          ],
          "destination": [
            "obj-23",
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
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-23",
            0
          ],
          "destination": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-26",
            0
          ],
          "destination": [
            "obj-27",
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
            "obj-29",
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
            "obj-29",
            1
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
            "obj-4",
            2
          ],
          "destination": [
            "obj-34",
            2
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
            "obj-34",
            1
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
            "obj-34",
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
            "obj-35",
            1
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
            "obj-35",
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
            "obj-36",
            1
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
            "obj-36",
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
            "obj-37",
            1
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
            "obj-37",
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
            "obj-42",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            5
          ],
          "destination": [
            "obj-48",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-48",
            0
          ],
          "destination": [
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            4
          ],
          "destination": [
            "obj-49",
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
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            3
          ],
          "destination": [
            "obj-24",
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
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            2
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
            "obj-46",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            1
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
            "obj-51",
            0
          ],
          "destination": [
            "obj-43",
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
            "obj-52",
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
            "obj-44",
            0
          ]
        }
      }
    ],
    "dependency_cache": [],
    "autosave": 0
  }
}
