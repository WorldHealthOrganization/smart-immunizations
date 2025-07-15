Instance: DTO.Shouldnotvaccinateclientwiththirdhepatit.e090c909d0
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B-containing vaccine was administered less than 4 weeks ago."
Description: """Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with third hepatitis B dose as the client was a low-birth-weight infant and the latest hepatitis B-containing vaccine was administered less than 4 weeks ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

