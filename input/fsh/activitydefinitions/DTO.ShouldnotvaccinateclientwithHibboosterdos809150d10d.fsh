Instance: DTO.ShouldnotvaccinateclientwithHibboosterdos809150d10d
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with Hib booster dose as latest Hib dose was administered less than 6 months ago. Hib primary series is complete."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for booster dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with Hib booster dose as latest Hib dose was administered less than 6 months ago. Hib primary series is complete."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

