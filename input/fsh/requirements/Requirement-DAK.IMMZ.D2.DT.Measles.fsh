
Instance: DAK.IMMZ.D2.DT.Measles
InstanceOf: $SGRequirements
Title: "Determine required Measles vaccination(s) if any"
Description: """This is the requirement "Determine required Measles vaccination(s) if any" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D2.DT.Measles"
* name = "Determine required Measles vaccination(s) if any"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#businessRuleTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        