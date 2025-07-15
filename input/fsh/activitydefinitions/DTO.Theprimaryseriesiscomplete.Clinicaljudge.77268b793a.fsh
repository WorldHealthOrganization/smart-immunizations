Instance: DTO.Theprimaryseriesiscomplete.Clinicaljudge.77268b793a
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note"
Description: """"Immunization recommendation status" = "Further evaluation needed"
"Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

