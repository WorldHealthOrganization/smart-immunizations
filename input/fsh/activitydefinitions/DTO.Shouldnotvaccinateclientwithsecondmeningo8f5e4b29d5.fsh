Instance: DTO.Shouldnotvaccinateclientwithsecondmeningo8f5e4b29d5
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 2 months ago."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the second dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 2 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

