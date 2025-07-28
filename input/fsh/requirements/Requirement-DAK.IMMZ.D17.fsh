
Instance: DAK.IMMZ.D17
InstanceOf: $SGRequirements
Title: "17. Report AEFI"
Description: """This is the requirement "17. Report AEFI" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D17"
* name = "17. Report AEFI"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#userTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        