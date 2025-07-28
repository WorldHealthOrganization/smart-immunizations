Instance: DAK.DTO.Varicellaimmunizationscheduleiscomplete
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Varicella immunization schedule is complete"
Description: """"Immunization recommendation status" = "Complete"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Varicella immunization schedule is complete"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

