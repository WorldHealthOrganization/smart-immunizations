Instance: DAK.DTO.Shouldnotvaccinateclientwithcholerado1c7bdafbcd
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with cholera dose as the booster series for cholera was completed less than 3 years ago."
Description: """Check for any vaccines due and inform the caregiver of when to come back for the next booster series.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with cholera dose as the booster series for cholera was completed less than 3 years ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

