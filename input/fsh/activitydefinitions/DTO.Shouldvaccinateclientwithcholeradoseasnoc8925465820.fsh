Instance: DTO.Shouldvaccinateclientwithcholeradoseasnoc8925465820
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with cholera dose as no cholera doses have been administered."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with cholera dose as no cholera doses have been administered."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

