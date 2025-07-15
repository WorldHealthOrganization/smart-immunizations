Instance: DTO.ShouldvaccinateclientwithHibboosterdosea.eb85017688
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with Hib booster dose as primary series is complete and the latest Hib dose was administered more than 6 months ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with Hib booster dose as primary series is complete and the latest Hib dose was administered more than 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

