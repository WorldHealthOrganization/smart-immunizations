Instance:     IMMZ.D1.ConceptMap
InstanceOf:   ConceptMap
Description:  "Mapping to and from IMMZ.D1 Data Dictionary to other codesystems."
Usage:        #definition

* name = "IMMZ_D1_ConceptMap"
* title = "ConceptMap to and from IMMZ.D1 DataElements"
* status = #active
* experimental = false
* date = "2023-08-09"

* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $ICD11
  * insert ElementMap(DE11, 1C62.Z, narrower)
  * insert ElementMap(DE12, QA02.Y, relatedto)
  * insert ElementMap(DE15, KA21.4, equivalent)

* group[+]
  * source = $ICD11
  * target = Canonical(IMMZ.D1)
  * insert ElementMap(1C62.Z, DE11, wider)
  * insert ElementMap(QA02.Y, DE12, relatedto)
  * insert ElementMap(KA21.4, DE15, equivalent)

  
* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $LNC
  * insert ElementMap(DE11, 45683-0, equivalent)
  * insert ElementMap(DE10, 55277-8, equivalent)
  * insert ElementMap(DE92, 96381-9, relatedto)
  * insert ElementMap(DE15, 76517-2, equivalent)
  * insert ElementMap(DE19, 39236-5, equivalent)
  * insert ElementMap(DE20, 30952-6, equivalent)

* group[+]
  * source = $LNC
  * target = Canonical(IMMZ.D1)
  * insert ElementMap(45683-0, DE11, equivalent)
  * insert ElementMap(55277-8, DE10, equivalent)
  * insert ElementMap(96381-9, DE92, relatedto)
  * insert ElementMap(76517-2, DE15, equivalent)
  * insert ElementMap(39236-5, DE19, equivalent)
  * insert ElementMap(30952-6, DE20, equivalent)

* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $SCT
  * insert ElementMap(DE12, 165815009, equivalent)
  * insert ElementMap(DE11, 165816005, equivalent)
  * insert ElementMap(DE13, 261665006, wider)
  * insert ElementMap(DE10, 278977008, equivalent)
  * insert ElementMap(DE15, 395507008, equivalent)


* group[+]
  * source = $SCT
  * target = Canonical(IMMZ.D1)
  * insert ElementMap(165815009, DE12, equivalent)
  * insert ElementMap(165816005, DE11, equivalent)
  * insert ElementMap(261665006, DE13, narrower)
  * insert ElementMap(278977008, DE10, equivalent)
  * insert ElementMap(395507008, DE15, equivalent)

