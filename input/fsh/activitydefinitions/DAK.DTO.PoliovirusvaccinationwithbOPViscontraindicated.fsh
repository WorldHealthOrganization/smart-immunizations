Instance: DAK.DTO.PoliovirusvaccinationwithbOPViscontraindicated
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Poliovirus vaccination with bOPV is contraindicated"
Description: """Clinical judgement is required if vaccination with IPV is considered
"Immunization recommendation status" =  "Contraindicated" (where "Type of poliovirus dose" = "bOPV") AND "Immunization recommendation status" = "Further evaluation needed" (where "Type of poliovirus dose" = "IPV")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Poliovirus vaccination with bOPV is contraindicated"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

