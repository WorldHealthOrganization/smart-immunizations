Instance: DTO.Shouldnotvaccinateclientwithsecondpneumo.9378ada986
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with second pneumococcal booster dose as clients age is less than 12 months and client had preterm birth."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the next dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with second pneumococcal booster dose as clients age is less than 12 months and client had preterm birth."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

