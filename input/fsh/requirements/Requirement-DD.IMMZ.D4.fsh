
Instance: DD.IMMZ.D4
InstanceOf: $SGRequirements
Title: "Check contraindications"
Description: """This is the requirement "Check contraindications" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DD.IMMZ.D4"
* name = "Check contraindications"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#userTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        