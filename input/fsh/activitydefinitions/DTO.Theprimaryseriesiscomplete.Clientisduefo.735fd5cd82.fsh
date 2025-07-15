Instance: DTO.Theprimaryseriesiscomplete.Clientisduefo.735fd5cd82
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output The primary series is complete. Client is due for meningococcal booster dose"
Description: """"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "The primary series is complete. Client is due for meningococcal booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

