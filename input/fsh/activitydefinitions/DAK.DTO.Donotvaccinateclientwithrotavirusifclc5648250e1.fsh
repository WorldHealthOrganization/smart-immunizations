Instance: DAK.DTO.Donotvaccinateclientwithrotavirusifclc5648250e1
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Do not vaccinate client with rotavirus if client had severe allergic reactions to a previous rotavirus vaccine dose or rotavirus vaccine components."
Description: """Check if the client has no known severe hypersensitivity to rotavirus vaccines components.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Do not vaccinate client with rotavirus if client had severe allergic reactions to a previous rotavirus vaccine dose or rotavirus vaccine components."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

