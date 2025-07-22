Instance: DTO.ClientisdueforthebOPVbirthdose
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is due for the bOPV birth dose"
Description: """"Immunization recommendation status" = "Due" (where "Type of poliovirus dose" = "bOPV")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is due for the bOPV birth dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

