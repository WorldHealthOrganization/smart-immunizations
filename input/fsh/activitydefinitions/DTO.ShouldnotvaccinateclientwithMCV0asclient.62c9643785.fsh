Instance: DTO.ShouldnotvaccinateclientwithMCV0asclient.62c9643785
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with MCV0 as clients age is more than 9 months."
Description: """Check measles routine immunization schedule.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with MCV0 as clients age is more than 9 months."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

