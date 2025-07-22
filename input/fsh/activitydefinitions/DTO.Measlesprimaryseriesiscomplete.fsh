Instance: DTO.Measlesprimaryseriesiscomplete
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Measles primary series is complete"
Description: """"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines")
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Measles primary series is complete"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

