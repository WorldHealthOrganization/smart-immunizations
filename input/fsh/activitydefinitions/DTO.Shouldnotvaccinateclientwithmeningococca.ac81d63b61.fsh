Instance: DTO.Shouldnotvaccinateclientwithmeningococca.ac81d63b61
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with meningococcal dose as clients age is under 9 months."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the first dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with meningococcal dose as clients age is under 9 months."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

