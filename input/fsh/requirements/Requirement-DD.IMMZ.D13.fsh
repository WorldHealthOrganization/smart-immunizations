
Instance: DD.IMMZ.D13
InstanceOf: $SGRequirements
Title: "Update client record"
Description: """This is the requirement "Update client record" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DD.IMMZ.D13"
* name = "Update client record"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#userTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        