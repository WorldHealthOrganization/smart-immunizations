
Instance: DD.Activity_0iglsdo
InstanceOf: $SGRequirements
Title: "Determine required JE vaccination(s) if any"
Description: """This is the requirement "Determine required JE vaccination(s) if any" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DD.Activity_0iglsdo"
* name = "Determine required JE vaccination(s) if any"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+] = $SGTasks#businessRuleTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        