
Instance: DD.IMMZ.D1
InstanceOf: $SGRequirements
Title: "Capture or update client history"
Description: """This is the requirement "Capture or update client history" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DD.IMMZ.D1"
* name = "Capture or update client history"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#userTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        