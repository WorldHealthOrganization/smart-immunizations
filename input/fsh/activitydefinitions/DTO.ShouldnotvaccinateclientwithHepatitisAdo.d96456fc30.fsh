Instance: DTO.ShouldnotvaccinateclientwithHepatitisAdo.d96456fc30
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with Hepatitis A dose as live vaccine was administered in the last 4 weeks."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the first dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with Hepatitis A dose as live vaccine was administered in the last 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

