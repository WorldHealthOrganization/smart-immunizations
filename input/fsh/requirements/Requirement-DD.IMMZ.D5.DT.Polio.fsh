
Instance: DD.IMMZ.D5.DT.Polio
InstanceOf: $SGRequirements
Title: "Check for Polio contraindications before administering the vaccine"
Description: """This is the requirement "Check for Polio contraindications before administering the vaccine" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DD.IMMZ.D5.DT.Polio"
* name = "Check for Polio contraindications before administering the vaccine"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+] = $SGTasks#businessRuleTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        