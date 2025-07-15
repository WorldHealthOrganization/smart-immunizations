Instance: DTO.Shouldnotvaccinateclientwithfirsthepatit.a9eeb36291
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first hepatitis B dose as clients age is not within appropriate age range."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the first dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first hepatitis B dose as clients age is not within appropriate age range."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

