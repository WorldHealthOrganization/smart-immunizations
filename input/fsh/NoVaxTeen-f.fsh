Instance:     IMMZ-Patient-NoVaxenteen-f
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "NoVaxenteen-rhodiumteen-f"
* name[=].use = #official
* birthDate = "2009-10-16"
* gender = #female

Instance: Immunocompromised-NoVaxenteen-f
InstanceOf: Condition
Usage: #example
* clinicalStatus = #active
* code = SCT#370388006 "Patient immunocompromised (finding)"
* subject = Reference(Patient/IMMZ-Patient-NoVaxenteen-f)
* recordedDate = "2021-02-03"

Instance: birthweightlow-NoVaxenteen-f
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#276610007 "Birthweight"
* subject = Reference(Patient/IMMZ-Patient-NoVaxenteen-f)
* effectiveDateTime = "2009-10-16"
* valueQuantity = 1877 'g' "gram"