Instance: DTO.Donotvaccinateclientwithinactivatedhepat.a6fc2b816d
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Do not vaccinate client with inactivated hepatitis A vaccination if client has had a severe allergic reaction to the previous dose."
Description: """Do not vaccinate client with live attenuated hepatitis A vaccination if client has severe allergy to components included in the live attenuated hepatitis A-containing vaccines.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Do not vaccinate client with inactivated hepatitis A vaccination if client has had a severe allergic reaction to the previous dose."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

