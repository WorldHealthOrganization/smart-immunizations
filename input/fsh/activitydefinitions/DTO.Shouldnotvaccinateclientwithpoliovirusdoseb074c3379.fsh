Instance: DTO.Shouldnotvaccinateclientwithpoliovirusdoseb074c3379
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with poliovirus dose as the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered less than 4 months ago."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the next poliovirus dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with poliovirus dose as the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered less than 4 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

