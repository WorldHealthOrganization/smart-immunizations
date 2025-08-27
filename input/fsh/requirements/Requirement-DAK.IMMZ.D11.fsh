
Instance: DAK.IMMZ.D11
InstanceOf: $SGRequirements
Title: "11. Administer vaccine(s"
Description: """This is the requirement "11. Administer vaccine(s" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D11"
* name = "11. Administer vaccine(s"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#manualTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        