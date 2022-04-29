Instance:     IMMZ-Patient-NoVaxAdult-f
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "calciumadult-f"
* name[=].use = #official
* birthDate = "1996-03-08"
* gender = #female

//Pregnant
Instance: pregnancy-status-NoVaxAdult-f
InstanceOf: IPSObservationPreg
Usage: #example
* status = #final
* code = http://loinc.org#82810-3 "Pregnancy status"
* subject = Reference(Patient/IMMZ-Patient-NoVaxAdult-f)
* effectiveDateTime = "2020-01-10"
* valueCodeableConcept = http://loinc.org#LA15173-0 "Pregnant"

//HIV status positive
Instance: HIVAIDS-Yes-NoVaxAdult-f
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#278977008 "Human immunodeficiency virus status (observable entity)"
* subject = Reference(Patient/IMMZ-Patient-NoVaxAdult-f)
* effectiveDateTime = "2020-05-27"
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"

Instance: cd4percent-NoVaxAdult-f
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#116745007 "Cell positive for CD4 antigen (cell)"
* subject = Reference(Patient/IMMZ-Patient-NoVaxAdult-f)
* effectiveDateTime = "2020-05-27"
* valueQuantity = 27 '%' "percent"

//CD4 count >=200 (BCG)
Instance: cd4countmore-NoVaxAdult-f
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#116745007 "Cell positive for CD4 antigen (cell)"
* subject = Reference(Patient/IMMZ-Patient-NoVaxAdult-f)
* effectiveDateTime = "2020-05-27"
* valueQuantity = 205 SCT#116745007 "Cell positive for CD4 antigen (cell)"

Instance: haart-NoVaxAdult-f
InstanceOf: MedicationStatement
Usage: #example
* status = #final
* medicationCodeableConcept = SCT#416234007 "Highly active anti-retroviral therapy (procedure)"
* subject = Reference(Patient/IMMZ-Patient-NoVaxAdult-f)
* effectiveDateTime = "2020-05-27"

Instance: vnalevelbelow-NoVaxAdult-f
InstanceOf: Observation
Usage: #example
* status = #final
* code = LNC#6524-3 "Rabies virus neutralizing antibody [Units/volume] in Serum by Neutralization test"
* subject = Reference(Patient/IMMZ-Patient-NoVaxAdult-f)
* effectiveDateTime = "2021-12-27"
* valueQuantity = 0.4 'IU/mL' "international unit/milliliter"