Instance: DAK.DTO.Mumpsvaccinationcouldbecontraindicateb6fa66a146
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Mumps vaccination could be contraindicated. Clinical judgement is required."
Description: """Create a clinical note.
Immunization recommendation status = "Further evaluation needed"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Mumps vaccination could be contraindicated. Clinical judgement is required."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

