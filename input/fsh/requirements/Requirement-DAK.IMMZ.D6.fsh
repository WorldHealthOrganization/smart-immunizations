
Instance: DAK.IMMZ.D6
InstanceOf: $SGRequirements
Title: "6. Check stock availability of recommended vaccines"
Description: """This is the requirement "6. Check stock availability of recommended vaccines" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D6"
* name = "6. Check stock availability of recommended vaccines"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#userTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        