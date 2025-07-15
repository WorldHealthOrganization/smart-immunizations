Instance: DTO.ShouldnotvaccinateclientwiththirdHibdose.e9304334a3
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with third Hib dose as latest Hib dose was administered less than 4 weeks ago."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for third dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with third Hib dose as latest Hib dose was administered less than 4 weeks ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

