Instance: DTO.PrimaryDTPseriesiscomplete.Clientisduefo.d01b3687e4
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose"
Description: """"Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "DTP-containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

