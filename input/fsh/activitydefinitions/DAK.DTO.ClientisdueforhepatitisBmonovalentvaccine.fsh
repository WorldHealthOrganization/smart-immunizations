Instance: DAK.DTO.ClientisdueforhepatitisBmonovalentvaccine
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client is due for hepatitis B monovalent vaccine"
Description: """"Immunization recommendation status" = "Due" (where "Type of hepatitis B dose" = "Hepatitis B monovalent vaccine")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client is due for hepatitis B monovalent vaccine"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

