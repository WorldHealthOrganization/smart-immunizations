Instance: DAK.DTO.Shouldnotvaccinateclientwithmeningoco1182e0d2d9
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 1 year ago."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the booster dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 1 year ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

