Instance: DAK.DTO.Clientisnotdueforrotavirusvaccinationbfb0c9dd04
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is not due for rotavirus vaccination if immunization schedule is not complete."
Description: """"Immunization recommendation status" = "Not due" IF current "Immunization recommendation status" ≠ "Complete"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is not due for rotavirus vaccination if immunization schedule is not complete."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

