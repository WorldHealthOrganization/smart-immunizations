Instance: DTO.Theprimaryseriesiscomplete.Clientisnotduec8ed11f7bd
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output The primary series is complete. Client is not due for TBE booster dose"
Description: """"Immunization recommendation status" = "Not due"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "TBE vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "The primary series is complete. Client is not due for TBE booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

