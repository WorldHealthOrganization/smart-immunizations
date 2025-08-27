Instance: DAK.DTO.Primaryseriesiscomplete.Clientisduefobe1222f320
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Primary series is complete. Client is due for cholera booster dose"
Description: """"Immunization recommendation status" = "Due"
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Primary series is complete. Client is due for cholera booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

