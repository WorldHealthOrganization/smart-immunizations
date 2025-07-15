Instance: DTO.Theprimaryseriesiscomplete.Clientisduefo.041c5bfa9e
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output The primary series is complete. Client is due for seasonal influenza annual dose"
Description: """"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Seasonal influenza vaccines") = TRUE
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "The primary series is complete. Client is due for seasonal influenza annual dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

