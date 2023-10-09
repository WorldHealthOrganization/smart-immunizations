CodeSystem:   IMMZ.D4
Title:        "IMMZ.D4 CodeSystem for Check Contraindications Data Elements"
Description:  "CodeSystem for IMMZ.D4 Check Contraindications Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D4"

* #DE161 "Potential contraindications" "Specific situations or medical conditions in which it is advised or recommended to avoid or delay administering a particular vaccine"
* #DE162 "Currently pregnant" "The client is currently pregnant"
* #DE165 "Severely immunosuppressed" "The client is known to be severely immunocompromised or immunosuppressed"
* #DE166 "History of anaphylactic reactions" "The client is known to have history of anaphylaxis in the past. Anaphylaxis is a severe and potentially life-threatening allergic reaction that can occur rapidly after exposure to an allergen or vaccine component."
* #DE167 "Severe allergic reactions" "The client is known to have severe allergic reaction to vaccine"
* #DE168 "Symptomatic HIV infection" "The client is experiencing HIV-related symptoms"


ValueSet:     IMMZ.D4.DE161
Title:        "IMMZ.D4.DE161 ValueSet for Potential Contraindications"
Description:  "ValueSet for Potential Contraindications for IMMZ.D4.DE161."

* ^status = #active
* ^name = "IMMZ_D4_DE161"

* IMMZ.D4#DE162 "Currently pregnant"
* IMMZ.D4#DE165 "Severely immunosuppressed"
* IMMZ.D4#DE166 "History of anaphylactic reactions"
* IMMZ.D4#DE167 "Severe allergic reactions"
* IMMZ.D4#DE168 "Symptomatic HIV infection"


Instance:     IMMZ.D4.ConceptMap
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ.D4 Data Dictionary to other codesystems."
Usage:        #definition

* name = "IMMZ_D4_ConceptMap"
* title = "ConceptMap to and from IMMZ.D4 DataElements"
* status = #active
* experimental = false
* date = "2023-10-09"

* group[+]
  * source = Canonical(IMMZ.D4)
  * target = $ICD11
  * insert ElementMap(DE162, QA41, equivalent)
  * insert ElementMap(DE165, 4B4Z, relatedto)
  * insert ElementMap(DE166, QC44.0, equivalent)
  * insert ElementMap(DE167, QC44.2, relatedto)
  * insert ElementMap(DE168, 1C62.1, equivalent)

* group[+]
  * source = $ICD11
  * target = Canonical(IMMZ.D4)
  * insert ElementMap(QA41, DE162, equivalent)
  * insert ElementMap(4B4Z, DE165, relatedto)
  * insert ElementMap(QC44.0, DE166, equivalent)
  * insert ElementMap(QC44.2, DE167, relatedto)
  * insert ElementMap(1C62.1, DE168, equivalent)
  
* group[+]
  * source = Canonical(IMMZ.D4)
  * target = $LNC
  * insert ElementMap(DE162, 82810-3, equivalent)
  * insert ElementMap(DE165, 96381-9, relatedto)
  * insert ElementMap(DE168, 47244-9, wider)

* group[+]
  * source = $LNC
  * target = Canonical(IMMZ.D4)
  * insert ElementMap(82810-3, DE162, equivalent)
  * insert ElementMap(96381-9, DE165, relatedto)
  * insert ElementMap(47244-9, DE168, narrower)

* group[+]
  * source = Canonical(IMMZ.D4)
  * target = $SCT
  * insert ElementMap(DE162, 77386006, equivalent)
  * insert ElementMap(DE165, 370388006, equivalent)
  * insert ElementMap(DE166, 10839421000119100, equivalent)
  * insert ElementMap(DE167, 419076005, wider)
  * insert ElementMap(DE168, 86406008, equivalent)


* group[+]
  * source = $SCT
  * target = Canonical(IMMZ.D4)
  * insert ElementMap(77386006, DE162, equivalent)
  * insert ElementMap(370388006, DE165, equivalent)
  * insert ElementMap(10839421000119100, DE166, equivalent)
  * insert ElementMap(419076005, DE167, narrower)
  * insert ElementMap(86406008, DE168, equivalent)
