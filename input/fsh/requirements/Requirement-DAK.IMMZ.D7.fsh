
Instance: DAK.IMMZ.D7
InstanceOf: $SGRequirements
Title: "7. Counsel client"
Description: """This is the requirement "7. Counsel client" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D7"
* name = "7. Counsel client"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#userTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        