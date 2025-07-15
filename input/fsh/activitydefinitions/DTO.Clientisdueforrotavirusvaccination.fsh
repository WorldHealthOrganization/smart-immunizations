Instance: DTO.Clientisdueforrotavirusvaccination
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is due for rotavirus vaccination"
Description: """"Immunization recommendation status" = "Due"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is due for rotavirus vaccination"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

