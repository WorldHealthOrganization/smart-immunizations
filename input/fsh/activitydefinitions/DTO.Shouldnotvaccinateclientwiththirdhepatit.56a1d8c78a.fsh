Instance: DTO.Shouldnotvaccinateclientwiththirdhepatit.56a1d8c78a
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with third hepatitis B dose as the first hepatitis B dose was administered less than 6 months ago."
Description: """Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with third hepatitis B dose as the first hepatitis B dose was administered less than 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

