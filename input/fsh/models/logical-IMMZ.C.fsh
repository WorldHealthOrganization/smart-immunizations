Invariant:    IMMZ-C-DE10-1
Description:  "If Date of Birth is entered, Calculated ages are required."
Expression:   "iif(birthDate.exists(), ageInWeeks.exists() and ageInMonths.exists() and ageInYears.exists(), true)"
Severity:     #error

Invariant:    IMMZ-C-name-1
Description:  "Only letters and special characters (period, dash) allowed."
Expression:   "$this.matches('[A-Za-z-.]*')"
Severity:     #error


Logical:      IMMZ-C-register-client
Title:        "IMMZ.C Register Client"
Description:  "Data elements for the IMMZ.C Register Client Data Dictionary."

* ^name = "IMMZ_C_Register_Client"
* obeys IMMZ-C-DE10-1
* uniqueId 1..1 SU string "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
  * ^code[+] = IMMZ.C#DE1
* name 1..1 string "The full name of the client"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE2
  * ^code[+] = LNC#54125-0 "Patient name"
  * ^code[+] = SCT#371484003 "Patient name (observable entity)"
* firstName 0..1 string "Client's first name or given name"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE3
  * ^code[+] = LNC#45392-8 "First name"
  * ^code[+] = SCT#184095009 "Patient forename (observable entity)"
* familyName 0..1 string "Client's family name or last name"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE4
  * ^code[+] = LNC#45394-4 "Last name"
  * ^code[+] = SCT#184096005 "Patient surname (observable entity)"
* sex 1..1 code "Documentation of a specific instance of sex information for the client"
  * ^code[+] = IMMZ.C#DE5
  * ^code[+] = LNC#46098-0	"Sex"
  * ^code[+] = SCT#184100006 "Patient sex (observable entity)"
* sex from IMMZ.C.DE5 (required)
* birthDate 0..1 date "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
  * ^code[+] = IMMZ.C#DE10
  * ^code[+] = LNC#21112-8	"Birth date"
  * ^code[+] = SCT#184099003 "Date of birth (observable entity)"
* ageInWeeks 0..1 integer "The client's calculated age (number of weeks) based on the date of birth (DOB) and the visit date"
  * ^code[+] = IMMZ.C#DE11
  * ^code[+] = LNC#63900-5	"Current age or age at death"
* ageInMonths 0..1 integer "The client's calculated age (number of months) based on the date of birth (DOB) and the visit date"
  * ^code[+] = IMMZ.C#DE12
  * ^code[+] = LNC#63900-5	"Current age or age at death"
* ageInYears 0..1 integer "The client's calculated age (number of years) based on the date of birth (DOB) and the visit date"
  * ^code[+] = IMMZ.C#DE13
  * ^code[+] = LNC#63900-5	"Current age or age at death"
* caregiver 0..* BackboneElement "The client's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)"
  * ^code[+] = IMMZ.C#DE14
  * ^code[+] = SCT#184140000 "Caregiver details (observable entity)"
  * name 1..1 string "The full name of the client's caregiver"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE15
    * ^code[+] = SCT#184140000 "Caregiver details (observable entity)"
  * firstName 0..1 string "First or given name of the client's caregiver"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE16
  * familyName 0..1 string "Family name or last name of the client's caregiver"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE17
* phone 1..1 string "Client's phone number"
  * ^code[+] = IMMZ.C#DE18
  * ^code[+] = LNC#42077-8 "Patient Phone number"
  * ^code[+] = SCT#184103008 "Patient telephone number (observable entity)"
* administrativeArea 0..1 CodeableConcept "The name of the city/municipality/town/village of where the client lives"
  * ^code[+] = IMMZ.C#DE19
  * ^code[+] = LNC#56799-0 "Address"
  * ^code[+] = SCT#184097001 "Patient address (observable entity)"
* healthWorker 1..1 boolean "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."
  * ^code[+] = IMMZ.C#DE20
  
Mapping:      IMMZ-C-to-Patient
Source:       IMMZ-C-register-client
Target:       "Patient"
* -> "Patient"
* uniqueId -> "Patient.identifier"
* name -> "Patient.name.text"
* firstName -> "Patient.name.given"
* familyName -> "Patient.name.family"
* sex -> "Patient.gender"
* birthDate -> "Patient.birthDate"
* caregiver -> "Patient.contact"
* caregiver.name -> "Patient.contact.name.text"
* caregiver.firstName -> "Patient.contact.name.given"
* caregiver.familyName -> "Patient.contact.name.family"
* phone -> "Patient.telecom"
* administrativeArea -> "Patient.address"


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
* #DE11 "Age in weeks" "The client's calculated age (number of weeks) based on the date of birth (DOB) and the visit date"
* #DE12 "Age in months" "The client's calculated age (number of months) based on the date of birth (DOB) and the visit date"
* #DE13 "Age in years" "The client's calculated age (number of years) based on the date of birth (DOB) and the visit date"
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

RuleSet: ElementMap(source, target, equivalence)
* element[+]
  * code = #{source}
  * target[+]
    * code = #{target}
    * equivalence = #{equivalence}

Instance:     IMMZ.C.ConceptMap
InstanceOf:   ConceptMap
Description:  "Mapping from IMMZ.C Data Dictionary to other codesystems."
Usage:        #definition

* name = "IMMZ_C_ConceptMap"
* title = "ConceptMap from IMMZ.C DataElements"
* status = #active
* experimental = false
* date = "2023-08-04"

* group[+]
  * source = Canonical(IMMZ.C)
  * target = GENDER
  * insert ElementMap(DE6, male, equivalent)
  * insert ElementMap(DE7, female, equivalent)
  * insert ElementMap(DE8, unknown, equivalent)
  * insert ElementMap(DE9, other, wider)

* group[+]
  * source = GENDER
  * target = Canonical(IMMZ.C)
  * insert ElementMap(male, DE6, equivalent)
  * insert ElementMap(female, DE7, equivalent)
  * insert ElementMap(unknown, DE8, equivalent)
  * insert ElementMap(other, DE9, narrower)

* group[+]
  * source = Canonical(IMMZ.C)
  * target = ICD11
  * insert ElementMap(DE6, XX2UQ8, equivalent)
  * insert ElementMap(DE7, XX2V25, equivalent)
  * insert ElementMap(DE8, XX2PX3, equivalent)
  * insert ElementMap(DE9, XX45B7, equivalent)

* group[+]
  * source = ICD11
  * target = Canonical(IMMZ.C)
  * insert ElementMap(XX2UQ8, DE6, equivalent)
  * insert ElementMap(XX2V25, DE7, equivalent)
  * insert ElementMap(XX2PX3, DE8, equivalent)
  * insert ElementMap(XX45B7, DE9, equivalent)

* group[+]
  * source = Canonical(IMMZ.C)
  * target = LNC
  * insert ElementMap(DE2, 54125-0, equivalent)
  * insert ElementMap(DE3, 45392-8, relatedto)
  * insert ElementMap(DE4, 45394-4, relatedto)
  * insert ElementMap(DE5, 46098-0, equivalent)
  * insert ElementMap(DE10, 21112-8, equivalent)
  * insert ElementMap(DE11, 63900-5, wider)
  * insert ElementMap(DE12, 63900-5, wider)
  * insert ElementMap(DE13, 63900-5, wider)
  * insert ElementMap(DE18, 42077-8, equivalent)
  * insert ElementMap(DE19, 56799-0, narrower)

* group[+]
  * source = Canonical(IMMZ.C)
  * target = SCT
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
  * source = SCT
  * target = Canonical(IMMZ.C)
  * insert ElementMap(248153007, DE6, equivalent)
  * insert ElementMap(248152002, DE7, equivalent)
  * insert ElementMap(772004004, DE8, relatedto)
  * insert ElementMap(15867007, DE9, equivalent)