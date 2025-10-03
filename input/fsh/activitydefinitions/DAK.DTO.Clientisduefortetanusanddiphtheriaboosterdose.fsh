Instance: DAK.DTO.Clientisduefortetanusanddiphtheriaboosterdose
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is due for tetanus and diphtheria booster dose"
Description: """"Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is due for tetanus and diphtheria booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

