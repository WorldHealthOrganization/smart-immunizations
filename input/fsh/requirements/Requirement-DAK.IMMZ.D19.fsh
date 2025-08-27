
Instance: DAK.IMMZ.D19
InstanceOf: $SGRequirements
Title: "19. Provide vaccination record"
Description: """This is the requirement "19. Provide vaccination record" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D19"
* name = "19. Provide vaccination record"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#userTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        