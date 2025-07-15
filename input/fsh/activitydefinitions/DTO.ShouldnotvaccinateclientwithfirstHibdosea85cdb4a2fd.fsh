Instance: DTO.ShouldnotvaccinateclientwithfirstHibdosea85cdb4a2fd
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first Hib dose as clients age is less than 6 weeks."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for first dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first Hib dose as clients age is less than 6 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

