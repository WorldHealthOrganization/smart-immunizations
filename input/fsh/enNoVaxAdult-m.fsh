Instance:     IMMZ-Patient-NoVaxAdult-m
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "NoVaxcalciumadult-m"
* name[=].use = #official
* birthDate = "1993-04-08"
* gender = #male

Instance: seronegative-NoVaxAdult-m
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#68793005 "Serologic test (procedure)"
* subject = Reference(Patient/IMMZ-Patient-NoVaxAdult-m)
* effectiveDateTime = "2022-03-01"
//how do we structure this one? 
* valueCodeableConcept = SCT#81321002 "Seronegative (qualifier value)"

Instance: intussuception-NoVaxAdult-m
InstanceOf: Condition
Usage: #example
* clinicalStatus = #active
* code = SCT#41444002 "Invagination (morphologic abnormality)"
* subject = Reference(Patient/IMMZ-Patient-NoVaxAdult-m)
* recordedDate = "2022-03-01"