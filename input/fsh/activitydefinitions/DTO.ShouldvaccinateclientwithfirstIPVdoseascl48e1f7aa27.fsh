Instance: DTO.ShouldvaccinateclientwithfirstIPVdoseascl48e1f7aa27
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with first IPV dose as clients age is more than 14 weeks, IPV dose was not administered and the latest bOPV dose was administered less than 4 weeks ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with first IPV dose as clients age is more than 14 weeks, IPV dose was not administered and the latest bOPV dose was administered less than 4 weeks ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

