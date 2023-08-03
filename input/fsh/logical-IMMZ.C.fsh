Invariant:    IMMZ-C-DE10-1
Description:  "If Date of Birth is entered, Calculated ages are required."
Expression:   "iif(DE10.exists(), DE11.exists() and DE12.exists() and DE13.exists(), true)"
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
* uniqueId 1..1 SU Identifier "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
  * ^code[+] = CS.IMMZ.C#DE1
  * value 1..1
* name 1..1 HumanName "The full name of the client"
  * text 1..1 string "The full name of the client"
    * obeys IMMZ-C-name-1
    * ^code[+] = CS.IMMZ.C#DE2
    * ^code[+] = LNC#54125-0 "Patient name"
    * ^code[+] = SCT#371484003 "Patient name (observable entity)"
  * given 0..1 string "Client's first name or given name"
    * obeys IMMZ-C-name-1
    * ^code[+] = CS.IMMZ.C#DE3
    * ^code[+] = LNC#45392-8 "First name"
    * ^code[+] = SCT#184095009 "Patient forename (observable entity)"
  * family 0..1 string "Client's family name or last name"
    * obeys IMMZ-C-name-1
    * ^code[+] = CS.IMMZ.C#DE4
    * ^code[+] = LNC#45394-4 "Last name"
    * ^code[+] = SCT#184096005 "Patient surname (observable entity)"
* sex 1..1 code "Documentation of a specific instance of sex information for the client"
  * ^code[+] = CS.IMMZ.C#DE5
  * ^code[+] = LNC#46098-0	"Sex"
  * ^code[+] = SCT#184100006 "Patient sex (observable entity)"
* sex from VS.IMMZ.C.DE5 (required)
* birthDate 0..1 date "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
  * ^code[+] = CS.IMMZ.C#DE10
  * ^code[+] = LNC#21112-8	"Birth date"
  * ^code[+] = SCT#184099003 "Date of birth (observable entity)"
* ageInWeeks 0..1 Age "The client's calculated age (number of weeks) based on the date of birth (DOB) and the visit date"
  * ^code[+] = CS.IMMZ.C#DE11
  * ^code[+] = LNC#63900-5	"Current age or age at death"
  * value 1..1
  * unit = "wk" (exactly)
* ageInMonths 0..1 Age "The client's calculated age (number of months) based on the date of birth (DOB) and the visit date"
  * ^code[+] = CS.IMMZ.C#DE12
  * ^code[+] = LNC#63900-5	"Current age or age at death"
  * value 1..1
  * unit = "mo" (exactly)
* ageInYears 0..1 Age "The client's calculated age (number of years) based on the date of birth (DOB) and the visit date"
  * ^code[+] = CS.IMMZ.C#DE13
  * ^code[+] = LNC#63900-5	"Current age or age at death"
  * value 1..1
  * unit = "a" (exactly)
* caregiver 0..* BackboneElement "The client's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)"
  * ^code[+] = CS.IMMZ.C#DE14
  * ^code[+] = SCT#184140000 "Caregiver details (observable entity)"
  * name 1..1 HumanName "The full name of the client's caregiver"
    * text 1..1 string "The full name of the client's caregiver"
      * obeys IMMZ-C-name-1
      * ^code[+] = CS.IMMZ.C#DE15
      * ^code[+] = SCT#184140000 "Caregiver details (observable entity)"
    * given 0..1 string "First or given name of the client's caregiver"
      * obeys IMMZ-C-name-1
      * ^code[+] = CS.IMMZ.C#DE16
    * family 0..1 string "Family name or last name of the client's caregiver"
      * obeys IMMZ-C-name-1
      * ^code[+] = CS.IMMZ.C#DE17
* phone 1..1 ContactPoint "Client's phone number"
  * ^code[+] = CS.IMMZ.C#DE18
  * ^code[+] = LNC#42077-8 "Patient Phone number"
  * ^code[+] = SCT#184103008 "Patient telephone number (observable entity)"
  * system = #phone
  * value 1..1  
* administrativeArea 0..1 CodeableConcept "The name of the city/municipality/town/village of where the client lives"
  * ^code[+] = CS.IMMZ.C#DE19
  * ^code[+] = LNC#56799-0 "Address"
  * ^code[+] = SCT#184097001 "Patient address (observable entity)"
* healthWorker 1..1 boolean "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."
  * ^code[+] = CS.IMMZ.C#DE20
  



CodeSystem:   CS.IMMZ.C
Title:        "IMMZ.C CodeSystem for Data Elements"
Description:  "CodeSystem for IMMZ.C Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "CS_IMMZ_C"
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


ValueSet:     VS.IMMZ.C.DE5
Title:        "IMMZ.C.DE5 ValueSet for Sex"
Description:  "ValueSet for Sex for IMMZ.C.DE5."

* ^status = #active
* ^name = "VS_IMMZ_C_DE5"
* CS.IMMZ.C#DE6 "Male"
* CS.IMMZ.C#DE7 "Female"
* CS.IMMZ.C#DE8 "Biological sex not specified"
* CS.IMMZ.C#DE9 "Intersex"
