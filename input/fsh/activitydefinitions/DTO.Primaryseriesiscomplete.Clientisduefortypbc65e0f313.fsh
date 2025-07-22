Instance: DTO.Primaryseriesiscomplete.Clientisduefortypbc65e0f313
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Primary series is complete. Client is due for typhoid booster dose"
Description: """"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Typhoid vaccines") = TRUE
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Primary series is complete. Client is due for typhoid booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

