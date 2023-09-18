CodeSystem:   IMMZ.C
Title:        "IMMZ.C CodeSystem for Data Elements"
Description:  "CodeSystem for IMMZ.C Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_C"
* #DE1 "Unique identifier" "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* #DE2 "Name" "The full name of the client"
* #DE3 "First name" "Client's first name or given name"
* #DE4 "Family name" "Client's family name or last name"
* #DE5 "Sex" "Documentation of a specific instance of sex information for the client"
* #DE6 "Male" "Client's biological sex is male"
* #DE7 "Female" "Client's biological sex is female"
* #DE8 "Biological sex not specified" "Client's biological sex is not specified"
* #DE9 "Intersex" "Client's biological sex is intersex"
* #DE10 "Date of birth" "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
* #DE13 "Age" "The client's calculated age (presented as number of years, months, days) based on the date of birth (DOB) and the visit date"
* #DE14 "Caregivers (multiple)" "The client's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)"
* #DE15 "Caregiver's full name" "The full name of the client's caregiver"
* #DE16 "Caregiver's first name" "First or given name of the client's caregiver"
* #DE17 "Caregiver's family name" "Family name or last name of the client's caregiver"
* #DE18 "Contact phone number" "Client's phone number"
* #DE19 "Administrative area" "The name of the city/municipality/town/village of where the client lives"
* #DE20 "Active health worker" "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."


ValueSet:     IMMZ.C.DE5
Title:        "IMMZ.C.DE5 ValueSet for Sex"
Description:  "ValueSet for Sex for IMMZ.C.DE5."

* ^status = #active
* ^name = "IMMZ_C_DE5"
* IMMZ.C#DE6 "Male"
* IMMZ.C#DE7 "Female"
* IMMZ.C#DE8 "Biological sex not specified"
* IMMZ.C#DE9 "Intersex"

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


Instance:     IMMZ.C.ConceptMap
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ.C Data Dictionary to other codesystems."
Usage:        #definition

* name = "IMMZ_C_ConceptMap"
* title = "ConceptMap to and from IMMZ.C DataElements"
* status = #active
* experimental = false
* date = "2023-08-04"

* group[+]
  * source = Canonical(IMMZ.C)
  * target = $ICD11
  * insert ElementMap(DE6, XX2UQ8, equivalent)
  * insert ElementMap(DE7, XX2V25, equivalent)
  * insert ElementMap(DE8, XX2PX3, equivalent)
  * insert ElementMap(DE9, XX45B7, equivalent)

* group[+]
  * source = $ICD11
  * target = Canonical(IMMZ.C)
  * insert ElementMap(XX2UQ8, DE6, equivalent)
  * insert ElementMap(XX2V25, DE7, equivalent)
  * insert ElementMap(XX2PX3, DE8, equivalent)
  * insert ElementMap(XX45B7, DE9, equivalent)

* group[+]
  * source = Canonical(IMMZ.C)
  * target = $LNC
  * insert ElementMap(DE2, 54125-0, equivalent)
  * insert ElementMap(DE3, 45392-8, relatedto)
  * insert ElementMap(DE4, 45394-4, relatedto)
  * insert ElementMap(DE5, 46098-0, equivalent)
  * insert ElementMap(DE10, 21112-8, equivalent)
  * insert ElementMap(DE13, 63900-5, wider)
  * insert ElementMap(DE18, 42077-8, equivalent)
  * insert ElementMap(DE19, 56799-0, narrower)

* group[+]
  * source = Canonical(IMMZ.C)
  * target = $SCT
  * insert ElementMap(DE2, 371484003, equivalent)
  * insert ElementMap(DE3, 184095009, relatedto)
  * insert ElementMap(DE4, 184096005, relatedto)
  * insert ElementMap(DE5, 184100006, equivalent)
  * insert ElementMap(DE6, 248153007, equivalent)
  * insert ElementMap(DE7, 248152002, equivalent)
  * insert ElementMap(DE8, 772004004, relatedto)
  * insert ElementMap(DE9, 15867007, equivalent)
  * insert ElementMap(DE10, 184099003, equivalent)
  * insert ElementMap(DE14, 184140000, wider)
  * insert ElementMap(DE15, 184140000, wider)
  * insert ElementMap(DE18, 184103008, equivalent)
  * insert ElementMap(DE19, 184097001, narrower)

* group[+]
  * source = $SCT
  * target = Canonical(IMMZ.C)
  * insert ElementMap(248153007, DE6, equivalent)
  * insert ElementMap(248152002, DE7, equivalent)
  * insert ElementMap(772004004, DE8, relatedto)
  * insert ElementMap(15867007, DE9, equivalent)
