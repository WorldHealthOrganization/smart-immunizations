Invariant:    IMMZ-C-DE11-1
Description:  "If Date of Birth is entered, this is required."
Expression:   "iif(DE10.exists(), DE11.exists(), true)"
Severity:     #error

Invariant:    IMMZ-C-DE12-1
Description:  "If Date of Birth is entered, this is required."
Expression:   "iif(DE10.exists(), DE12.exists(), true)"
Severity:     #error

Invariant:    IMMZ-C-DE13-1
Description:  "If Date of Birth is entered, this is required."
Expression:   "iif(DE10.exists(), DE13.exists(), true)"
Severity:     #error

Invariant:    IMMZ-C-name-1
Description:  "Only letters and special characters (period, dash) allowed."
Expression:   "$this.matches('[A-Za-z-.]*')"
Severity:     #error


Logical:      IMMZ-C-register-client
Title:        "IMMZ.C Register Client"
Description:  "Data elements for the IMMZ.C Register Client Data Dictionary."

* ^name = "IMMZ_C_Register_Client"
* DE1 1..1 SU Identifier "Unique identifier" "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
* DE2 1..1 string "Name" "The full name of the client"
  * obeys IMMZ-C-name-1
* DE3 0..1	string "First name" "Client's first name or given name"
  * obeys IMMZ-C-name-1
* DE4 0..1	string "Family name" "Client's family name or last name"
  * obeys IMMZ-C-name-1
* DE5 1..1	code "Sex" "Documentation of a specific instance of sex information for the client"
* DE5 from VS.IMMZ.C.DE5 (required)
* DE10 0..1 date "Date of birth" "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
* DE11 0..1 Age "Age in weeks" "The client's calculated age (number of weeks) based on the date of birth (DOB) and the visit date"
  * obeys IMMZ-C-DE11-1
  * value 1..1
  * unit = "wk" (exactly)
* DE12 0..1 Age "Age in months" "The client's calculated age (number of months) based on the date of birth (DOB) and the visit date"
  * obeys IMMZ-C-DE12-1
  * value 1..1
  * unit = "mo" (exactly)
* DE13 0..1 Age "Age in years" "The client's calculated age (number of years) based on the date of birth (DOB) and the visit date"
  * obeys IMMZ-C-DE13-1
  * value 1..1
  * unit = "a" (exactly)
* DE14 0..* BackboneElement "Caregivers (multiple)" "The client's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)"
  * DE15 1..1 string "Caregiver's full name" "The full name of the client's caregiver"
    * obeys IMMZ-C-name-1
  * DE16 0..1 string "Caregiver's first name" "First or given name of the client's caregiver"
    * obeys IMMZ-C-name-1
  * DE17 0..1 string "Caregiver's family name" "Family name or last name of the client's caregiver"
    * obeys IMMZ-C-name-1
* DE18 1..1	ContactPoint "Contact phone number" "Client's phone number"
* DE19 0..1	CodeableConcept "Administrative area" "The name of the city/municipality/town/village of where the client lives"
* DE20 1..1	boolean "Active health worker" "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."


CodeSystem:   CS.IMMZ.C.DE5
Title:        "IMMZ.C.DE5 CodeSystem for Sex"
Description:  "CodeSystem for Sex for IMMZ.C.DE5."

* ^experimental = false
* ^caseSensitive = false
* ^name = "CS_IMMZ_C_DE5"
* #IMMZ.C.DE6 "Male" "Client's biological sex is male"
* #IMMZ.C.DE7 "Female" "Client's biological sex is female"
* #IMMZ.C.DE8 "Biological sex not specified" "Client's biological sex is not specified"
* #IMMZ.C.DE9 "Intersex" "Client's biological sex is intersex"

ValueSet:     VS.IMMZ.C.DE5
Title:        "IMMZ.C.DE5 ValueSet for Sex"
Description:  "ValueSet for Sex for IMMZ.C.DE5."

* ^status = #active
* ^name = "VS_IMMZ_C_DE5"
* include codes from system CS.IMMZ.C.DE5