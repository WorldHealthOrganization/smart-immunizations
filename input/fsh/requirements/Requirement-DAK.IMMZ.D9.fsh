
Instance: DAK.IMMZ.D9
InstanceOf: $SGRequirements
Title: "9. Inform client when to return for vaccine(s)"
Description: """This is the requirement "9. Inform client when to return for vaccine(s)" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D9"
* name = "9. Inform client when to return for vaccine(s)"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#manualTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        