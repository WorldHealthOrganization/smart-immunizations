Instance: DTO.Primaryseriesiscomplete.ClientisdueforHi.92f09369aa
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Primary series is complete. Client is due for Hib booster dose"
Description: """"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hib-containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Primary series is complete. Client is due for Hib booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

