Invariant:    IMMZ-C-name-1
Description:  "Only letters and special characters (period, dash) allowed."
Expression:   "$this.matches('[A-Za-z-.]*')"
Severity:     #error


Logical:      IMMZCRegisterClient
Title:        "IMMZ.C Register Client"
Description:  "Data elements for the IMMZ.C Register Client Data Dictionary."

* ^name = "IMMZ_C_Register_Client"
* ^status = #active
* uniqueId 1..1 SU string "Unique identifier" "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
  * ^code[+] = IMMZ.C#DE1
//  * ^code[WHOCommon] = IMMZ.C#DE1
* name 1..1 string "Name" "The full name of the client"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE2
  * ^code[+] = $LNC#54125-0 "Patient name"
  * ^code[+] = $SCT#371484003 "Patient name (observable entity)"
* firstName 0..1 string "First name" "Client's first name or given name"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE3
  * ^code[+] = $LNC#45392-8 "First name"
  * ^code[+] = $SCT#184095009 "Patient forename (observable entity)"
* familyName 0..1 string "Last name" "Client's family name or last name"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE4
  * ^code[+] = $LNC#45394-4 "Last name"
  * ^code[+] = $SCT#184096005 "Patient surname (observable entity)"
* sex 1..1 code "Sex" "Documentation of a specific instance of sex information for the client"
  * ^code[+] = IMMZ.C#DE5
  * ^code[+] = $LNC#46098-0	"Sex"
  * ^code[+] = $SCT#184100006 "Patient sex (observable entity)"
* sex from IMMZ.C.DE5 (required)
* birthDate 0..1 date "Date of birth" "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
  * ^code[+] = IMMZ.C#DE10
  * ^code[+] = $LNC#21112-8	"Birth date"
  * ^code[+] = $SCT#184099003 "Date of birth (observable entity)"
* caregiver 0..* BackboneElement "Caregiver" "The client's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)"
  * ^code[+] = IMMZ.C#DE14
  * ^code[+] = $SCT#184140000 "Caregiver details (observable entity)"
  * name 1..1 string "Caregiver's full name" "The full name of the client's caregiver"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE15
    * ^code[+] = $SCT#184140000 "Caregiver details (observable entity)"
  * firstName 0..1 string "Caregiver's first name" "First or given name of the client's caregiver"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE16
  * familyName 0..1 string "Caregiver's family name" "Family name or last name of the client's caregiver"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE17
* phone 1..1 string "Contact phone number" "Client's phone number"
  * ^code[+] = IMMZ.C#DE18
  * ^code[+] = $LNC#42077-8 "Patient Phone number"
  * ^code[+] = $SCT#184103008 "Patient telephone number (observable entity)"
* administrativeArea 0..1 CodeableConcept "Administrative area" "The name of the city/municipality/town/village of where the client lives"
  * ^code[+] = IMMZ.C#DE19
  * ^code[+] = $LNC#56799-0 "Address"
  * ^code[+] = $SCT#184097001 "Patient address (observable entity)"
* healthWorker 1..1 boolean "Active health worker" "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."
  * ^code[+] = IMMZ.C#DE20
  
Mapping:      IMMZ-C-to-Patient
Source:       IMMZCRegisterClient
Target:       "Patient"
* -> "Patient"
* uniqueId -> "Patient.identifier.value"
* name -> "Patient.name.text"
* firstName -> "Patient.name.given"
* familyName -> "Patient.name.family"
* sex -> "Patient.gender"
* birthDate -> "Patient.birthDate"
* caregiver -> "Patient.contact"
* caregiver.name -> "Patient.contact.name.text"
* caregiver.firstName -> "Patient.contact.name.given"
* caregiver.familyName -> "Patient.contact.name.family"
* phone -> "Patient.telecom.value"
* administrativeArea -> "Patient.address.text"