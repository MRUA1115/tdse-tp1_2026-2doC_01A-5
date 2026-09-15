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
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "attrs": {
          "name": {
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\r\ninterface:\r\n    // Eventos que recibe el actuador\r\n    in event EV_ACT_START\r\n    in event EV_ACT_STOP\r\n    in event tick\r\n\r\n    // Eventos que el actuador envía al sistema\r\n    out event EV_SYS_STARTING\r\n    out event EV_SYS_STARTED\r\n    out event EV_SYS_STOPPING\r\n    out event EV_SYS_STOPPED\r\n\r\n    // Variables de tiempo y funciones\r\n    var timer: integer = 0\r\n    const DEL_ACT_START: integer = 50  // Valor de ejemplo\r\n    const DEL_ACT_STOP: integer = 50   // Valor de ejemplo\r\n    \r\n    operation LED_toggle(): void"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 128,
          "y": -56
        },
        "size": {
          "height": 60,
          "width": 89
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_OFF",
            "fontSize": 11
          }
        },
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 142,
        "embeds": []
      },
      {
        "position": {
          "x": 132,
          "y": -157
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "5b369e88-fd8d-4d07-8f87-ca0bb1ee624d",
        "z": 153,
        "embeds": [
          "77e62eb6-e8c7-4128-b990-aee0731b182d"
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
          "x": 132,
          "y": -142
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "77e62eb6-e8c7-4128-b990-aee0731b182d",
        "z": 154,
        "parent": "5b369e88-fd8d-4d07-8f87-ca0bb1ee624d"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "5b369e88-fd8d-4d07-8f87-ca0bb1ee624d"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "14.607%",
              "dy": "25%",
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
        "id": "73855db6-5058-4578-a71c-612d651c89e6",
        "z": 155,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 88,
          "y": 268
        },
        "size": {
          "height": 60,
          "width": 105
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_BLINK_OFF",
            "fontSize": 11
          }
        },
        "id": "8b3ecbc8-314a-4b25-a471-04e6e2bcfd9a",
        "z": 158,
        "embeds": [
          "69d6eff5-5384-4a78-bd41-9356a3468868"
        ]
      },
      {
        "position": {
          "x": 609,
          "y": -48
        },
        "size": {
          "height": 60,
          "width": 114
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_BLINK_ON",
            "fontSize": 11
          }
        },
        "id": "a16106fa-dee0-4abd-82b8-971eb29eac26",
        "z": 160,
        "embeds": [
          "38ba4862-7f6b-4667-a507-57af85f7c8fe"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "a16106fa-dee0-4abd-82b8-971eb29eac26",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "10.526%",
              "dy": "43.333%",
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
                "text": "EV_ACT_START/ raise EV_SYS_STARTING"
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
        "id": "4b7eaeff-0f62-46c0-a6c7-9e7485abe8d9",
        "z": 161,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a16106fa-dee0-4abd-82b8-971eb29eac26"
        },
        "target": {
          "id": "a16106fa-dee0-4abd-82b8-971eb29eac26",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "46.491%",
              "dy": "26.667%",
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
                "text": "tick[timer < DEL_ACT_START] / timer++; LED_toggle()"
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
        "id": "38ba4862-7f6b-4667-a507-57af85f7c8fe",
        "z": 162,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 786,
            "y": -114
          }
        ],
        "parent": "a16106fa-dee0-4abd-82b8-971eb29eac26"
      },
      {
        "position": {
          "x": 627,
          "y": 260
        },
        "size": {
          "height": 60,
          "width": 78
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_ON",
            "fontSize": 11
          }
        },
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 164,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a16106fa-dee0-4abd-82b8-971eb29eac26"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "53.846%",
              "dy": "33.333%",
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
                "text": "tick [timer >= DEL_ACT_START] / raise EV_SYS_STARTED;\ntimer = 0"
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
        "id": "a7a0024e-2371-4716-8f7a-83ef31b83273",
        "z": 165,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "8b3ecbc8-314a-4b25-a471-04e6e2bcfd9a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "86.667%",
              "dy": "53.333%",
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
                "text": "EV_ACT_STOP / raise EV_SYS_STOPPING"
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
        "id": "fd689016-e767-4e4e-9ea2-43e4b48c5f6a",
        "z": 166,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8b3ecbc8-314a-4b25-a471-04e6e2bcfd9a"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "19.101%",
              "dy": "55%",
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
                "text": "tick[timer >= DEL_ACT_STOP] / raise EV_SYS_STOPPED;\ntimer = 0"
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
        "id": "c81727a8-056e-4b53-af4f-b42d9ff47cdd",
        "z": 167,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8b3ecbc8-314a-4b25-a471-04e6e2bcfd9a"
        },
        "target": {
          "id": "8b3ecbc8-314a-4b25-a471-04e6e2bcfd9a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "31.429%",
              "dy": "90%",
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
                "text": "tick[timer < DEL_ACT_STOP] / timer++; LED_toggle()"
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
        "id": "69d6eff5-5384-4a78-bd41-9356a3468868",
        "z": 168,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 75,
            "y": 383
          }
        ],
        "parent": "8b3ecbc8-314a-4b25-a471-04e6e2bcfd9a"
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
          "moduleName": "ActuatorStatechart",
          "statemachinePrefix": "actuatorStatechart",
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