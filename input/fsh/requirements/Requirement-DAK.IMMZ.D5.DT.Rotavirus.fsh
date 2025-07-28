
Instance: DAK.IMMZ.D5.DT.Rotavirus
InstanceOf: $SGRequirements
Title: "Determine required Rotavirus vaccination(s) if any"
Description: """This is the requirement "Determine required Rotavirus vaccination(s) if any" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D5.DT.Rotavirus"
* name = "Determine required Rotavirus vaccination(s) if any"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#businessRuleTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        