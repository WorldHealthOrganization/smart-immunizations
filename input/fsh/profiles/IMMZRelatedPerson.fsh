Profile:      IMMZCaregiver
Parent:       RelatedPerson
Id:           IMMZ.Caregiver
Title:        "SMART Guidelines Immunizations Caregiver (RelatedPerson)"
Description:  "Caregiver (RelatedPerson) Profile for the Immunizations SMART Guidelines.  From IMMZ.C Client Registration for IMMZ.C4.Create client record OR IMMZ.C5.3.Update client details."


* relationship 1..1
* relationship = http://terminology.hl7.org/5.1.0/CodeSystem-v3-RoleClass.html#CAREGIVER

* patient only Reference(IMMZPatient)

* name 1..*
* name.text 1..1
* name.family MS 
* name.given MS