Instance: DTO.Tetanusvaccinationiscontraindicated
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Tetanus vaccination is contraindicated"
Description: """"Immunization recommendation status" = "Contraindicated" (where "Vaccine type" = "Tetanus -containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Tetanus vaccination is contraindicated"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

