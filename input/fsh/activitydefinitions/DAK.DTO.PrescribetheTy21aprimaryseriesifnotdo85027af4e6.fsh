Instance: DAK.DTO.PrescribetheTy21aprimaryseriesifnotdo85027af4e6
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Prescribe the Ty21a primary series (if not done yet). Should vaccinate client with typhoid dose as primary series has not been completed and no live vaccines was administered in the past 4 weeks."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Prescribe the Ty21a primary series (if not done yet). Should vaccinate client with typhoid dose as primary series has not been completed and no live vaccines was administered in the past 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

