
Instance: DD.IMMZ.D2.DT.Polio
InstanceOf: $SGRequirements
Title: "Determine required Polio vaccination(s) if any"
Description: """This is the requirement "Determine required Polio vaccination(s) if any" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DD.IMMZ.D2.DT.Polio"
* name = "Determine required Polio vaccination(s) if any"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+] = $SGTasks#businessRuleTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        