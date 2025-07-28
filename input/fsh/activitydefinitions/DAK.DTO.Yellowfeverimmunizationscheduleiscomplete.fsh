Instance: DAK.DTO.Yellowfeverimmunizationscheduleiscomplete
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Yellow fever immunization schedule is complete"
Description: """"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Yellow fever immunization schedule is complete"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

