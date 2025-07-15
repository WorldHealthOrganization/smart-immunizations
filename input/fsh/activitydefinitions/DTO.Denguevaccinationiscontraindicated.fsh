Instance: DTO.Denguevaccinationiscontraindicated
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Dengue vaccination is contraindicated"
Description: """"Immunization recommendation status" = "Contraindicated"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Dengue vaccination is contraindicated"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

