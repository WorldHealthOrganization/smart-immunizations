Instance: DTO.BCGvaccinationcouldbecontraindicated.Cli.9246814f59
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note."
Description: """'"Immunization recommendation status" = "Further evaluation needed"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

