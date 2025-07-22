
Instance: DD.IMMZ.D2.DT.Meningococcal
InstanceOf: $SGRequirements
Title: "Determine required Meningococcal vaccination(s) if any"
Description: """This is the requirement "Determine required Meningococcal vaccination(s) if any" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DD.IMMZ.D2.DT.Meningococcal"
* name = "Determine required Meningococcal vaccination(s) if any"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+] = $SGTasks#businessRuleTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        