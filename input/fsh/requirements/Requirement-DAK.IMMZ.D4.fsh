
Instance: DAK.IMMZ.D4
InstanceOf: $SGRequirements
Title: "4. Check contraindications"
Description: """This is the requirement "4. Check contraindications" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D4"
* name = "4. Check contraindications"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#userTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        