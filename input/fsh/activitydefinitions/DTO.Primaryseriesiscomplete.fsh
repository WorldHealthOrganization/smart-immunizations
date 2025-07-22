Instance: DTO.Primaryseriesiscomplete
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Primary series is complete"
Description: """"Immunization recommendation status" = "Further evaluation needed"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Poliovirus-containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Primary series is complete"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

