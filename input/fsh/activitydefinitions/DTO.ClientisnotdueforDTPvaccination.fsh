Instance: DTO.ClientisnotdueforDTPvaccination
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is not due for DTP vaccination"
Description: """"Immunization recommendation status" = "Not due" (where "Vaccine type" = "DTP-containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is not due for DTP vaccination"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

