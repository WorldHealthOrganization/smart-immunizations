Instance: DAK.DTO.Rubellavaccinationiscontraindicated
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Rubella vaccination is contraindicated"
Description: """"Immunization recommendation status" = "Contraindicated"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Rubella vaccination is contraindicated"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

