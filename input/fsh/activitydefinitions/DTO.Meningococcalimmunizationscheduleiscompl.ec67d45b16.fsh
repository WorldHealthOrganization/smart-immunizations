Instance: DTO.Meningococcalimmunizationscheduleiscompl.ec67d45b16
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Meningococcal immunization schedule is complete. Two meningococcal primary series doses were administered."
Description: """Check for any other vaccines due.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Meningococcal immunization schedule is complete. Two meningococcal primary series doses were administered."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

