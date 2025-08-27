
Instance: DAK.IMMZ.D10
InstanceOf: $SGRequirements
Title: "10. Prepare vaccines(s)"
Description: """This is the requirement "10. Prepare vaccines(s)" as extracted from the Digital Adaptation Kit (DAK).


"""
Usage: #definition
* id = "DAK.IMMZ.D10"
* name = "10. Prepare vaccines(s)"
// * type = #non-system
* status = #draft
* publisher = "World Health Organization (WHO)"
* experimental = false
* extension[task][+].valueCoding = $SGTasks#manualTask
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
        