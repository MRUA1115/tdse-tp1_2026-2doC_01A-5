{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "system_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_SYS_BTN_DOWN\n    in event EV_SYS_BTN_UP\n    in event tick\n    \n    out event EV_ACT_LED_BLINK\n    out event EV_ACT_LED_ON\n    out event EV_ACT_LED_OFF\n    \ninternal:\n    var DEL_SYS_NAME : integer = 0\n    var MAX_DEL_SYS : integer = 1000\n    "
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -382,
          "y": -131
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "7aed6f88-c229-4591-8837-b1cee235d41d",
        "z": 12,
        "embeds": [
          "f1eafe7c-350a-4a46-adb0-23ef00a6a6c1"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -382,
          "y": -116
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "f1eafe7c-350a-4a46-adb0-23ef00a6a6c1",
        "z": 13,
        "parent": "7aed6f88-c229-4591-8837-b1cee235d41d"
      },
      {
        "position": {
          "x": -226,
          "y": -152
        },
        "size": {
          "width": 123,
          "height": 63
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_IDLE",
            "fontSize": 11
          }
        },
        "id": "b482bc81-3a3e-4f72-8181-890180aa0a78",
        "z": 41,
        "embeds": [
          "d0eceb38-83f5-4d6c-b100-1226e4a069b5"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b482bc81-3a3e-4f72-8181-890180aa0a78"
        },
        "target": {
          "id": "b482bc81-3a3e-4f72-8181-890180aa0a78",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "15.447%",
              "dy": "11.111%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d0eceb38-83f5-4d6c-b100-1226e4a069b5",
        "z": 42,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "b482bc81-3a3e-4f72-8181-890180aa0a78"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7aed6f88-c229-4591-8837-b1cee235d41d"
        },
        "target": {
          "id": "b482bc81-3a3e-4f72-8181-890180aa0a78",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "40.65%",
              "dy": "58.73%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1930ca18-1000-4cf5-ad1d-c69411eb904f",
        "z": 49,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 280,
          "y": -158
        },
        "size": {
          "width": 143,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_WAIT_RELEASE",
            "fontSize": 11
          }
        },
        "id": "53b74631-aaae-4129-a349-a40ef7c2534a",
        "z": 50,
        "embeds": [
          "ad9d309b-c57f-4f80-96a8-7ee9b0c86feb"
        ]
      },
      {
        "position": {
          "x": 57,
          "y": 23
        },
        "size": {
          "width": 116,
          "height": 61
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_ACTIVE",
            "fontSize": 11
          }
        },
        "id": "d71df2ce-f26b-410c-8987-13c94db1f860",
        "z": 51,
        "embeds": [
          "08a9c290-e40a-46ea-887e-eb12e56983ba"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b482bc81-3a3e-4f72-8181-890180aa0a78"
        },
        "target": {
          "id": "53b74631-aaae-4129-a349-a40ef7c2534a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "19.58%",
              "dy": "65%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_BTN_DOWN/raise EV_ACT_LED_BLINK; DEL_SYS_NAME = 0"
              }
            },
            "position": {
              "distance": 0.5104438642297651,
              "offset": -17,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "cee889fd-e6b0-48ba-ac02-a8c288e4b23f",
        "z": 52,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "53b74631-aaae-4129-a349-a40ef7c2534a"
        },
        "target": {
          "id": "d71df2ce-f26b-410c-8987-13c94db1f860",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "87.069%",
              "dy": "65.574%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_BTN_UP/ raise EV_ACT_LED_ON; DEL_SYS_NAME = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0498ef98-f471-4bb2-ae88-37355d133905",
        "z": 53,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 349,
            "y": -13
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d71df2ce-f26b-410c-8987-13c94db1f860"
        },
        "target": {
          "id": "d71df2ce-f26b-410c-8987-13c94db1f860",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "87.931%",
              "dy": "9.836%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick[DEL_SYS_NAME<MAX_DEL_SYS] / DEL_SYS_NAME++"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "08a9c290-e40a-46ea-887e-eb12e56983ba",
        "z": 54,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "d71df2ce-f26b-410c-8987-13c94db1f860"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d71df2ce-f26b-410c-8987-13c94db1f860"
        },
        "target": {
          "id": "b482bc81-3a3e-4f72-8181-890180aa0a78",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "43.902%",
              "dy": "87.302%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick[DEL_SYS_NAME>=MAX_DEL_SYS]/raise EV_ACT_LED_OFF"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d0d779a6-8af3-4833-bc21-ce93440ea33f",
        "z": 55,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "53b74631-aaae-4129-a349-a40ef7c2534a"
        },
        "target": {
          "id": "53b74631-aaae-4129-a349-a40ef7c2534a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "80.42%",
              "dy": "11.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick / DEL_SYS_NAME++"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ad9d309b-c57f-4f80-96a8-7ee9b0c86feb",
        "z": 56,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "53b74631-aaae-4129-a349-a40ef7c2534a"
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "SystemStatechart",
          "statemachinePrefix": "systemStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}