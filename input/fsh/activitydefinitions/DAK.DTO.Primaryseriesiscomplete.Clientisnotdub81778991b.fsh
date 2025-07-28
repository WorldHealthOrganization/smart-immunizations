Instance: DAK.DTO.Primaryseriesiscomplete.Clientisnotdub81778991b
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Primary series is complete. Client is not due for cholera booster dose"
Description: """"Immunization recommendation status" = "Not due"
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Primary series is complete. Client is not due for cholera booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

