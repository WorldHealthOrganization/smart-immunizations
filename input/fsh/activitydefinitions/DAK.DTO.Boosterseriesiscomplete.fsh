Instance: DAK.DTO.Boosterseriesiscomplete
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Booster series is complete"
Description: """"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Booster series is complete"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

