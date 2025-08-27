Instance: DAK.DTO.Clientisnotduefortetanusanddiphtheria3dd4669e8e
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is not due for tetanus and diphtheria booster dose"
Description: """"Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is not due for tetanus and diphtheria booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

