Instance: IMMZ.D1.ConceptMap
InstanceOf: ConceptMap
Description:  "Mapping to and from IMMZ.D1 Data Dictionary to other codesystems."
Usage:        #definition

* name = "IMMZ_D1_ConceptMap"
* title = "ConceptMap to and from IMMZ.D1 DataElements"
* status = #active
* experimental = false
* date = "2024-01-19"

* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $ICD11
  * insert ElementMap(DE11, 1C62.Z, narrower)
  * insert ElementMap(DE12, QA02.Y, relatedto)
  * insert ElementMap(DE15, KA21.4, equivalent)
  * insert ElementMap(DE16, 4B4Z, wider)
  * insert ElementMap(DE86, XM0EK6, equivalent)
  * insert ElementMap(DE88, 1B1Z, relatedto)
  * insert ElementMap(DE89, QA02.0, relatedto)
  * insert ElementMap(DE29, KA21, relatedto)
  * insert ElementMap(DE35, XM0N50, relatedto)
  * insert ElementMap(DE36, XM5V19, equivalent)
  * insert ElementMap(DE37, XM79H3, equivalent)
  * insert ElementMap(DE53, XM0LB5, wider)
  * insert ElementMap(DE54, XM47S0, equivalent)
  * insert ElementMap(DE57, XM8MP6, wider)
  * insert ElementMap(DE58, XM8MP6, wider)
  * insert ElementMap(DE59, XM8MP6, wider)
  * insert ElementMap(DE60, XM8MP6, wider)
  * insert ElementMap(DE62, XM8BU8, wider)
  * insert ElementMap(DE63, XM3SF6, wider)
  * insert ElementMap(DE64, XM33K4, wider)
  * insert ElementMap(DE66, XM3Z26, equivalent)
  * insert ElementMap(DE67, XM29K4, wider)
  * insert ElementMap(DE69, XM2280, equivalent)
  * insert ElementMap(DE70, XM18Y8, equivalent)
  * insert ElementMap(DE71, XM2EH7, equivalent)
  * insert ElementMap(DE97, XM92B2, narrower)
  * insert ElementMap(DE74, XM6LL6, wider)
  * insert ElementMap(DE75, XM2A12, equivalent)
  * insert ElementMap(DE100, XM9V38, relatedto)
* group[+]
  * source = $ICD11
  * target = Canonical(IMMZ.D1)
  * insert ElementMap(1C62.Z, DE11, wider)
  * insert ElementMap(QA02.Y, DE12, relatedto)
  * insert ElementMap(KA21.4, DE15, equivalent)
  * insert ElementMap(4B4Z, DE16, narrower)
  * insert ElementMap(XM0EK6, DE86, equivalent)
  * insert ElementMap(1B1Z, DE88, relatedto)
  * insert ElementMap(QA02.0, DE89, relatedto)
  * insert ElementMap(KA21, DE29, relatedto)
  * insert ElementMap(XM0N50, DE35, relatedto)
  * insert ElementMap(XM5V19, DE36, equivalent)
  * insert ElementMap(XM79H3, DE37, equivalent)
  * insert ElementMap(XM0LB5, DE53, narrower)
  * insert ElementMap(XM47S0, DE54, equivalent)
  * insert ElementMap(XM8MP6, DE57, narrower)
  * insert ElementMap(XM8MP6, DE58, narrower)
  * insert ElementMap(XM8MP6, DE59, narrower)
  * insert ElementMap(XM8MP6, DE60, narrower)
  * insert ElementMap(XM8BU8, DE62, narrower)
  * insert ElementMap(XM3SF6, DE63, narrower)
  * insert ElementMap(XM33K4, DE64, narrower)
  * insert ElementMap(XM3Z26, DE66, equivalent)
  * insert ElementMap(XM29K4, DE67, narrower)
  * insert ElementMap(XM2280, DE69, equivalent)
  * insert ElementMap(XM18Y8, DE70, equivalent)
  * insert ElementMap(XM2EH7, DE71, equivalent)
  * insert ElementMap(XM92B2, DE97, wider)
  * insert ElementMap(XM6LL6, DE74, narrower)
  * insert ElementMap(XM2A12, DE75, equivalent)
  * insert ElementMap(XM9V38, DE100, relatedto)

* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $LNC
  * insert ElementMap(DE10, 55277-8, equivalent)
  * insert ElementMap(DE11, 45683-0, equivalent)
  * insert ElementMap(DE15, 76517-2, equivalent)
  * insert ElementMap(DE16, 96381-9, relatedto)
  * insert ElementMap(DE85, 27415-9, wider)
  * insert ElementMap(DE86, 39263-9, equivalent)
  * insert ElementMap(DE88, 45241-7, relatedto)
  * insert ElementMap(DE29, 8339-4, equivalent)
  * insert ElementMap(DE92, 96381-9, relatedto)
* group[+]
  * source = $LNC
  * target = Canonical(IMMZ.D1)
  * insert ElementMap(55277-8, DE10, equivalent)
  * insert ElementMap(45683-0, DE11, equivalent)
  * insert ElementMap(76517-2, DE15, equivalent)
  * insert ElementMap(96381-9, DE16, relatedto)
  * insert ElementMap(27415-9, DE85, narrower)
  * insert ElementMap(39263-9, DE86, equivalent)
  * insert ElementMap(45241-7, DE88, relatedto)
  * insert ElementMap(8339-4, DE29, equivalent)
  * insert ElementMap(96381-9, DE92, relatedto)

* group[+]
  * source = Canonical(IMMZ.D1)
  * target = $SCT
  * insert ElementMap(DE10, 278977008, equivalent)
  * insert ElementMap(DE11, 165816005, equivalent)
  * insert ElementMap(DE12, 165815009, equivalent)
  * insert ElementMap(DE13, 261665006, wider)
  * insert ElementMap(DE15, 395507008, equivalent)
  * insert ElementMap(DE16, 370388006, equivalent)
  * insert ElementMap(DE85, 68311008, equivalent)
  * insert ElementMap(DE86, 28163009, equivalent)
  * insert ElementMap(DE88, 10828004, wider)
  * insert ElementMap(DE89, 260385009, wider)
  * insert ElementMap(DE36, 871740006, equivalent)
* group[+]
  * source = $SCT
  * target = Canonical(IMMZ.D1)
  * insert ElementMap(278977008, DE10, equivalent)
  * insert ElementMap(165816005, DE11, equivalent)
  * insert ElementMap(165815009, DE12, equivalent)
  * insert ElementMap(261665006, DE13, narrower)
  * insert ElementMap(395507008, DE15, equivalent)
  * insert ElementMap(370388006, DE16, equivalent)
  * insert ElementMap(68311008, DE85, equivalent)
  * insert ElementMap(28163009, DE86, equivalent)
  * insert ElementMap(10828004, DE88, narrower)
  * insert ElementMap(260385009, DE89, narrower)
  * insert ElementMap(871740006, DE36, equivalent)

