Instance:     IMMZ.C.SexToAdministrativeGender
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ.C sex coding to FHIR Administrative Gender."
Usage:        #definition

* name = "IMMZ_C_SexToAdministrativeGender"
* title = "ConceptMap to and From IMMZ.C sex to administrative gender"
* status = #active
* experimental = false
* date = "2023-08-09"

* group[+]
  * source = Canonical(IMMZ.C)
  * target = $GENDER
  * insert ElementMap(DE6, male, equivalent)
  * insert ElementMap(DE7, female, equivalent)
  * insert ElementMap(DE8, unknown, equivalent)
  * insert ElementMap(DE9, other, wider)

* group[+]
  * source = $GENDER
  * target = Canonical(IMMZ.C)
  * insert ElementMap(male, DE6, equivalent)
  * insert ElementMap(female, DE7, equivalent)
  * insert ElementMap(unknown, DE8, equivalent)
  * insert ElementMap(other, DE9, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"