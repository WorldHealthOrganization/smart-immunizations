# IMMZ.D17.LMToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D17.LMToBundle**

## StructureMap: IMMZ.D17.LMToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D17.LMToBundle | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D17.LMToBundle |

 
Immunization Administer Vaccine - Transform Logical Model to Immunization resources 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.LMToBundle" = "IMMZ.D17.LMToBundle"

// Immunization Administer Vaccine - Transform Logical Model to Immunization resources

uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD17" alias IMMZD17 as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias Bundle as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"

group IMMZD17ToBundle(source immz : IMMZD17, target bundle : Bundle) {
  immz -> bundle.type = 'transaction' "SetBundleType";
  immz.patient as patient then {
    immz ->  uuid() as aeid,  bundle.entry as entry,  entry.fullUrl = append('urn:uuid:', aeid),  entry.request as request,  request.method = 'PUT',  request.url = append('AdverseEvent/', aeid),  entry.resource = create('AdverseEvent') as ae then {
      immz -> ae.id = aeid "SetId";
      immz -> ae.actuality = 'actual' "SetActuality";
      patient -> ae.subject = patient "SetSubject";
      immz.reactionDate as date -> ae.date = date "SetDate";
      immz.reactionManifestation as manifestation -> ae.event = manifestation "SetEvent";
      immz.typeOfReaction as seriousness -> ae.seriousness = seriousness "SetSeriousness";
      immz.reactionOutcome as outcome -> ae.outcome = translate(outcome, 'http://smart.who.int/immunizations/ConceptMap/IMMZ.D.ConceptMap', 'coding') "SetOutcome";
      immz.otherImportantMedicalEvent as event -> ae.extension as ext then {
        event -> ext.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZOtherMedicalEvent' "SetURL";
        event -> ext.value = event "SetValue";
      } "CreateOtherMedicalExt";
    } "CreateAdverseEvent";
  } "GetPatient";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D17.LMToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.LMToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D17.LMToBundle",
  "status" : "draft",
  "date" : "2025-11-25T19:41:02+00:00",
  "publisher" : "WHO",
  "contact" : [
    {
      "name" : "WHO",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://who.int"
        }
      ]
    }
  ],
  "description" : "Immunization Administer Vaccine - Transform Logical Model to Immunization resources",
  "structure" : [
    {
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17",
      "mode" : "source",
      "alias" : "IMMZD17"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
      "mode" : "target",
      "alias" : "Bundle"
    }
  ],
  "import" : [
    "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"
  ],
  "group" : [
    {
      "name" : "IMMZD17ToBundle",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "immz",
          "type" : "IMMZD17",
          "mode" : "source"
        },
        {
          "name" : "bundle",
          "type" : "Bundle",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "SetBundleType",
          "source" : [
            {
              "context" : "immz"
            }
          ],
          "target" : [
            {
              "context" : "bundle",
              "contextType" : "variable",
              "element" : "type",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "transaction"
                }
              ]
            }
          ]
        },
        {
          "name" : "GetPatient",
          "source" : [
            {
              "context" : "immz",
              "element" : "patient",
              "variable" : "patient"
            }
          ],
          "rule" : [
            {
              "name" : "CreateAdverseEvent",
              "source" : [
                {
                  "context" : "immz"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "aeid",
                  "transform" : "uuid"
                },
                {
                  "context" : "bundle",
                  "contextType" : "variable",
                  "element" : "entry",
                  "variable" : "entry"
                },
                {
                  "context" : "entry",
                  "contextType" : "variable",
                  "element" : "fullUrl",
                  "transform" : "append",
                  "parameter" : [
                    {
                      "valueString" : "urn:uuid:"
                    },
                    {
                      "valueId" : "aeid"
                    }
                  ]
                },
                {
                  "context" : "entry",
                  "contextType" : "variable",
                  "element" : "request",
                  "variable" : "request"
                },
                {
                  "context" : "request",
                  "contextType" : "variable",
                  "element" : "method",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "PUT"
                    }
                  ]
                },
                {
                  "context" : "request",
                  "contextType" : "variable",
                  "element" : "url",
                  "transform" : "append",
                  "parameter" : [
                    {
                      "valueString" : "AdverseEvent/"
                    },
                    {
                      "valueId" : "aeid"
                    }
                  ]
                },
                {
                  "context" : "entry",
                  "contextType" : "variable",
                  "element" : "resource",
                  "variable" : "ae",
                  "transform" : "create",
                  "parameter" : [
                    {
                      "valueString" : "AdverseEvent"
                    }
                  ]
                }
              ],
              "rule" : [
                {
                  "name" : "SetId",
                  "source" : [
                    {
                      "context" : "immz"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "ae",
                      "contextType" : "variable",
                      "element" : "id",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "aeid"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetActuality",
                  "source" : [
                    {
                      "context" : "immz"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "ae",
                      "contextType" : "variable",
                      "element" : "actuality",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueString" : "actual"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetSubject",
                  "source" : [
                    {
                      "context" : "patient"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "ae",
                      "contextType" : "variable",
                      "element" : "subject",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "patient"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetDate",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "reactionDate",
                      "variable" : "date"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "ae",
                      "contextType" : "variable",
                      "element" : "date",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "date"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetEvent",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "reactionManifestation",
                      "variable" : "manifestation"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "ae",
                      "contextType" : "variable",
                      "element" : "event",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "manifestation"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetSeriousness",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "typeOfReaction",
                      "variable" : "seriousness"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "ae",
                      "contextType" : "variable",
                      "element" : "seriousness",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "seriousness"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetOutcome",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "reactionOutcome",
                      "variable" : "outcome"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "ae",
                      "contextType" : "variable",
                      "element" : "outcome",
                      "transform" : "translate",
                      "parameter" : [
                        {
                          "valueId" : "outcome"
                        },
                        {
                          "valueString" : "http://smart.who.int/immunizations/ConceptMap/IMMZ.D.ConceptMap"
                        },
                        {
                          "valueString" : "coding"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "CreateOtherMedicalExt",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "otherImportantMedicalEvent",
                      "variable" : "event"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "ae",
                      "contextType" : "variable",
                      "element" : "extension",
                      "variable" : "ext"
                    }
                  ],
                  "rule" : [
                    {
                      "name" : "SetURL",
                      "source" : [
                        {
                          "context" : "event"
                        }
                      ],
                      "target" : [
                        {
                          "context" : "ext",
                          "contextType" : "variable",
                          "element" : "url",
                          "transform" : "copy",
                          "parameter" : [
                            {
                              "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZOtherMedicalEvent"
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "name" : "SetValue",
                      "source" : [
                        {
                          "context" : "event"
                        }
                      ],
                      "target" : [
                        {
                          "context" : "ext",
                          "contextType" : "variable",
                          "element" : "value",
                          "transform" : "copy",
                          "parameter" : [
                            {
                              "valueId" : "event"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

```
