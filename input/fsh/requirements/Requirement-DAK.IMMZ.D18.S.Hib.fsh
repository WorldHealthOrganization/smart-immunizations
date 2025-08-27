
Instance: DAK.IMMZ.D18.S.Hib
InstanceOf: $SGRequirements
Title: "Determine required Hib vaccination(s) if any"
Description: """This is the requirement "Determine required Hib vaccination(s) if any" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D18.S.Hib"
* name = "Determine required Hib vaccination(s) if any"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#businessRuleTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        