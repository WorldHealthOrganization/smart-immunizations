Instance: DAK.DTO.Theprimaryseriesiscomplete
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output The primary series is complete"
Description: """Client is due for TBE booster dose
"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "TBE vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "The primary series is complete"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

