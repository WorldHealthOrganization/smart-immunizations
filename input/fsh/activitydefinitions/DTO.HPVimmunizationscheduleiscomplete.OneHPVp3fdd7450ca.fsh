Instance: DTO.HPVimmunizationscheduleiscomplete.OneHPVp3fdd7450ca
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output HPV immunization schedule is complete. One HPV primary series dose was administered."
Description: """Check for any other vaccines due.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "HPV immunization schedule is complete. One HPV primary series dose was administered."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

