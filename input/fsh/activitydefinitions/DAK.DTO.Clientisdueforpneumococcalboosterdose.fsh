Instance: DAK.DTO.Clientisdueforpneumococcalboosterdose
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is due for pneumococcal booster dose"
Description: """"Immunization recommendation status" = "Due"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is due for pneumococcal booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

