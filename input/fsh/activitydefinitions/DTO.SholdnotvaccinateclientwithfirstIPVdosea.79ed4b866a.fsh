Instance: DTO.SholdnotvaccinateclientwithfirstIPVdosea.79ed4b866a
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Shold not vaccinate client with first IPV dose as clients age is less than 6 weeks."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the first IPV dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Shold not vaccinate client with first IPV dose as clients age is less than 6 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

