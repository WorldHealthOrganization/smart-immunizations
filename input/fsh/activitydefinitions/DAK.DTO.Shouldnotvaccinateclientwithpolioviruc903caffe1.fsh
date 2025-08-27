Instance: DAK.DTO.Shouldnotvaccinateclientwithpolioviruc903caffe1
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with poliovirus dose as clients age is less than 14 weeks and three bOPV doses were administered."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for the next poliovirus dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with poliovirus dose as clients age is less than 14 weeks and three bOPV doses were administered."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

