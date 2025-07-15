Instance: DTO.PrimaryDTPseriesiscomplete.Clientisnotduef5aeffc5ac
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Primary DTP series is complete. Client is not due for pertussis booster dose"
Description: """"Immunization recommendation status" = "Not due" (where "Vaccine type" = "Pertussis-containing vaccines")
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "DTP-containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Primary DTP series is complete. Client is not due for pertussis booster dose"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

