Instance: DTO.ForbOPVdosedonotvaccinateclientforbOPVdo.0333642c87
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output For bOPV dose, do not vaccinate client for bOPV dose as bOPV vaccination is contranindicated in clients with immunodeficiency disorders."
Description: """Check if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "For bOPV dose, do not vaccinate client for bOPV dose as bOPV vaccination is contranindicated in clients with immunodeficiency disorders."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

