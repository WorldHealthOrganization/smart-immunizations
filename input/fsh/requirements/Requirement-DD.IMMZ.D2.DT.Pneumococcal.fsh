
Instance: DD.IMMZ.D2.DT.Pneumococcal
InstanceOf: $SGRequirements
Title: "Determine required Pneumococcal vaccination(s) if any"
Description: """This is the requirement "Determine required Pneumococcal vaccination(s) if any" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DD.IMMZ.D2.DT.Pneumococcal"
* name = "Determine required Pneumococcal vaccination(s) if any"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#businessRuleTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        