Instance: DAK.DTO.ShouldnotvaccinateclientwiththirdDTPd733b4bc6fa
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with third DTP dose the latest DTP dose was administered less than 6 months ago."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for third DTP dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with third DTP dose the latest DTP dose was administered less than 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

