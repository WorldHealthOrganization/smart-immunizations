Instance: DAK.DTO.Clientisdueforcholeravaccination
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is due for cholera vaccination"
Description: """"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Cholera vaccines") = FALSE when dose 1 is administered
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is due for cholera vaccination"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

