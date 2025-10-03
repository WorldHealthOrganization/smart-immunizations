Instance: DAK.DTO.Shouldnotvaccinateclientwithyellowfev4df69647d7
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with yellow fever dose as clients age is less than 9 months. Check for any vaccines due and inform the caregiver of when to come back for the next dose."
Description: """Should not vaccinate client with yellow fever dose as client's age is less than 9 months. Check for any vaccines due and inform the caregiver of when to come back for the next dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with yellow fever dose as clients age is less than 9 months. Check for any vaccines due and inform the caregiver of when to come back for the next dose."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

