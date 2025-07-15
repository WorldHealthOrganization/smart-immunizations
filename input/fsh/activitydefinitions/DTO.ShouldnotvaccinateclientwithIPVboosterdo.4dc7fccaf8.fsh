Instance: DTO.ShouldnotvaccinateclientwithIPVboosterdo.4dc7fccaf8
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with IPV booster dose as the latest poliovirus dose was administered less than 6 months ago."
Description: """Check for any other vaccines due and inform the caregiver when to come back for the booster dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with IPV booster dose as the latest poliovirus dose was administered less than 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

