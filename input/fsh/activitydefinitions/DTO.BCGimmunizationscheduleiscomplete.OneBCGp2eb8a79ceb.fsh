Instance: DTO.BCGimmunizationscheduleiscomplete.OneBCGp2eb8a79ceb
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output BCG immunization schedule is complete. One BCG primary series dose was administered."
Description: """Check for any vaccines due.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "BCG immunization schedule is complete. One BCG primary series dose was administered."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

