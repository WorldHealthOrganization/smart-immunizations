Instance: DTO.Shouldvaccinateclientwithrubelladoseasno.1529b7c3d3
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with rubella dose as no rubella doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with rubella dose as no rubella doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

