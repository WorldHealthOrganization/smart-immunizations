Instance: DTO.ClientisnotdueforMCV0
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is not due for MCV0"
Description: """"Immunization recommendation status" = "Not due"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is not due for MCV0"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

