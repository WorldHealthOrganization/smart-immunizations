Instance: DTO.ShouldnotvaccinateclientwithfirstIPVdoseaa8a4f770a1
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with first IPV dose as clients age is less than 8 weeks."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the first poliovirus dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with first IPV dose as clients age is less than 8 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

