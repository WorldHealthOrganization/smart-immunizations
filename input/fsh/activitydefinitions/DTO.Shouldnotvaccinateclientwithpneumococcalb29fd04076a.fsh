Instance: DTO.Shouldnotvaccinateclientwithpneumococcalb29fd04076a
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with pneumococcal booster dose as latest pneumococcal dose was administered within 12 months post birth and administered less than 8 weeks ago."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the next dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with pneumococcal booster dose as latest pneumococcal dose was administered within 12 months post birth and administered less than 8 weeks ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

