Instance: IMMZ.D.ConceptMap
InstanceOf: ConceptMap
Description:  "Mapping to and from IMMZ.D Data Dictionary to other codesystems."
Usage:        #definition

* name = "IMMZ_D_ConceptMap"
* title = "ConceptMap to and from IMMZ.D DataElements"
* status = #active
* experimental = false
* date = "2023-08-04"

* group[+]
  * source = Canonical(IMMZ.D)
  * target = $ICD11
  * insert ElementMap(DE158, QC06, relatedto)
  * insert ElementMap(DE159, QC04.Z, relatedto)
  * insert ElementMap(DE162, QA41, equivalent)
  * insert ElementMap(DE163, 4B4Z, wider)
  * insert ElementMap(DE200, 4B4Z, wider)
  * insert ElementMap(DE164, PH48, wider)
  * insert ElementMap(DE165, 4B4Z, relatedto)
  * insert ElementMap(DE187, 4B4Z, wider)
  * insert ElementMap(DE166, QC44.0, equivalent)
  * insert ElementMap(DE167, QC44.2, relatedto)
  * insert ElementMap(DE168, 1C62.1, equivalent)
  * insert ElementMap(DE170, QB98, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE188, MG25, relatedto)
  * insert ElementMap(DE190, 1B1Z, wider)
  * insert ElementMap(DE191, QA48.1, wider)
  * insert ElementMap(DE192, LA02, equivalent)
  * insert ElementMap(DE193, LB31.3, equivalent)
  * insert ElementMap(DE194, 1A40.Z, wider)
  * insert ElementMap(DE195, MG26, wider)
  * insert ElementMap(DE5, QC04, relatedto)
  * insert ElementMap(DE6, QC04.Y, wider)
  * insert ElementMap(DE7, QC04.Y, wider)
  * insert ElementMap(DE8, QC04.7, wider)
  * insert ElementMap(DE9, QC04.5, equivalent)
  * insert ElementMap(DE10, QC04.6, equivalent)
  * insert ElementMap(DE11, QC04.Z, equivalent)
  * insert ElementMap(DE12, QC04.4, equivalent)
  * insert ElementMap(DE13, QC04.3, equivalent)
  * insert ElementMap(DE14, QC04.2, equivalent)
  * insert ElementMap(DE15, QC04.1, equivalent)
  * insert ElementMap(DE16, QC04.0, equivalent)
  * insert ElementMap(DE17, QC04.Y, equivalent)
  * insert ElementMap(DE86, QA1Y, equivalent)
  * insert ElementMap(DE87, QA1Y, wider)
  * insert ElementMap(DE88, QA1Y, wider)
  * insert ElementMap(DE89, QA1Y, wider)
  * insert ElementMap(DE90, QA1Y, wider)
  * insert ElementMap(DE91, QA1Y, wider)
  * insert ElementMap(DE92, PK81.7, relatedto)
  * insert ElementMap(DE95, NE80.3, wider)
  * insert ElementMap(DE96, EH77, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE98, 8A63.Y, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE99, 1B75.3, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE100, 1G40, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE101, 8E47., narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE102, 1C45, equivalent)
  * insert ElementMap(DE103, 4A84, equivalent)
  * insert ElementMap(DE104, MG26, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE105, NE80.Y, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE109, XS2R, relatedto)
  * insert ElementMap(DE110, QF10, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE127, 1A07, equivalent)
  * insert ElementMap(DE128, 1E32, relatedto)
  * insert ElementMap(DE129, 1F03, equivalent)
  * insert ElementMap(DE133, 1C12, equivalent)
  * insert ElementMap(DE135, 1D80, equivalent)
  * insert ElementMap(DE136, 1E90, equivalent)
  * insert ElementMap(DE137, 1E50.0, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE139, 1B1Z, wider)
  * insert ElementMap(DE140, 1E50.1, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE141, XN0FG, equivalent)
  * insert ElementMap(DE142, 1C13, equivalent)
  * insert ElementMap(DE143, XN6N7, equivalent)
  * insert ElementMap(DE144, XN8JY, equivalent)
  * insert ElementMap(DE175, 1C85, equivalent)
  * insert ElementMap(DE146, 1C81, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE176, 1C17, equivalent)
  * insert ElementMap(DE177, CA40.07, equivalent)
  * insert ElementMap(DE178, 1F02, equivalent)
  * insert ElementMap(DE179, 1D2Z, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE180, 1C82, equivalent)
  * insert ElementMap(DE181, 1C1C, equivalent)
  * insert ElementMap(DE182, 1A00, equivalent)
  * insert ElementMap(DE183, 1C80, wider)
  * insert ElementMap(DE184, 1D47, equivalent)
  * insert ElementMap(DE148, RA01, equivalent)
* group[+]
  * source = $ICD11
  * target = Canonical(IMMZ.D)
  * insert ElementMap(QC06, DE158, relatedto)
  * insert ElementMap(QC04.Z, DE159, relatedto)
  * insert ElementMap(QA41, DE162, equivalent)
  * insert ElementMap(4B4Z, DE163, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(4B4Z, DE200, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(PH48, DE164, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(4B4Z, DE165, relatedto)
  * insert ElementMap(4B4Z, DE187, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QC44.0, DE166, equivalent)
  * insert ElementMap(QC44.2, DE167, relatedto)
  * insert ElementMap(1C62.1, DE168, equivalent)
  * insert ElementMap(QB98, DE170, wider)
  * insert ElementMap(MG25, DE188, relatedto)
  * insert ElementMap(1B1Z, DE190, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QA48.1, DE191, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(LA02, DE192, equivalent)
  * insert ElementMap(LB31.3, DE193, equivalent)
  * insert ElementMap(1A40.Z, DE194, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(MG26, DE195, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QC04, DE5, relatedto)
  * insert ElementMap(QC04.Y, DE6, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QC04.Y, DE7, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QC04.7, DE8, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QC04.5, DE9, equivalent)
  * insert ElementMap(QC04.6, DE10, equivalent)
  * insert ElementMap(QC04.Z, DE11, equivalent)
  * insert ElementMap(QC04.4, DE12, equivalent)
  * insert ElementMap(QC04.3, DE13, equivalent)
  * insert ElementMap(QC04.2, DE14, equivalent)
  * insert ElementMap(QC04.1, DE15, equivalent)
  * insert ElementMap(QC04.0, DE16, equivalent)
  * insert ElementMap(QC04.Y, DE17, equivalent)
  * insert ElementMap(QA1Y, DE86, equivalent)
  * insert ElementMap(QA1Y, DE87, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QA1Y, DE88, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QA1Y, DE89, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QA1Y, DE90, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(QA1Y, DE91, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(PK81.7, DE92, relatedto)
  * insert ElementMap(NE80.3, DE95, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(EH77, DE96, wider)
  * insert ElementMap(8A63.Y, DE98, wider)
  * insert ElementMap(1B75.3, DE99, wider)
  * insert ElementMap(1G40, DE100, wider)
  * insert ElementMap(8E47., DE101, wider)
  * insert ElementMap(1C45, DE102, equivalent)
  * insert ElementMap(4A84, DE103, equivalent)
  * insert ElementMap(MG26, DE104, wider)
  * insert ElementMap(NE80.Y, DE105, wider)
  * insert ElementMap(XS2R, DE109, relatedto)
  * insert ElementMap(QF10, DE110, wider)
  * insert ElementMap(1A07, DE127, equivalent)
  * insert ElementMap(1E32, DE128, relatedto)
  * insert ElementMap(1F03, DE129, equivalent)
  * insert ElementMap(1C12, DE133, equivalent)
  * insert ElementMap(1D80, DE135, equivalent)
  * insert ElementMap(1E90, DE136, equivalent)
  * insert ElementMap(1E50.0, DE137, wider)
  * insert ElementMap(1B1Z, DE139, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(1E50.1, DE140, wider)
  * insert ElementMap(XN0FG, DE141, equivalent)
  * insert ElementMap(1C13, DE142, equivalent)
  * insert ElementMap(XN6N7, DE143, equivalent)
  * insert ElementMap(XN8JY, DE144, equivalent)
  * insert ElementMap(1C85, DE175, equivalent)
  * insert ElementMap(1C81, DE146, wider)
  * insert ElementMap(1C17, DE176, equivalent)
  * insert ElementMap(CA40.07, DE177, equivalent)
  * insert ElementMap(1F02, DE178, equivalent)
  * insert ElementMap(1D2Z, DE179, wider)
  * insert ElementMap(1C82, DE180, equivalent)
  * insert ElementMap(1C1C, DE181, equivalent)
  * insert ElementMap(1A00, DE182, equivalent)
  * insert ElementMap(1C80, DE183, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(1D47, DE184, equivalent)
  * insert ElementMap(RA01, DE148, equivalent)

* group[+]
  * source = Canonical(IMMZ.D)
  * target = $LNC
  * insert ElementMap(DE162, 82810-3, equivalent)
  * insert ElementMap(DE163, 96381-9, relatedto)
  * insert ElementMap(DE200, 96381-9, relatedto)
  * insert ElementMap(DE165, 96381-9, relatedto)
  * insert ElementMap(DE187, 82757-6, wider)
  * insert ElementMap(DE168, 47244-9, wider)
  * insert ElementMap(DE170, LL3859-7, wider)
  * insert ElementMap(DE191, 63895-7, wider)
  * insert ElementMap(DE19, 39236-5, equivalent)
  * insert ElementMap(DE20, 30952-6, equivalent)
  * insert ElementMap(DE22, 72060-7, equivalent)
  * insert ElementMap(DE23, 30957-5, equivalent)
  * insert ElementMap(DE24, 30959-1, equivalent)
  * insert ElementMap(DE26, 74066-2, wider)
  * insert ElementMap(DE34, 82745-1, equivalent)
  * insert ElementMap(DE93, 30953-4, equivalent)
  * insert ElementMap(DE186, 39289-4, wider)
* group[+]
  * source = $LNC
  * target = Canonical(IMMZ.D)
  * insert ElementMap(82810-3, DE162, equivalent)
  * insert ElementMap(96381-9, DE163, relatedto)
  * insert ElementMap(96381-9, DE200, relatedto)
  * insert ElementMap(96381-9, DE165, relatedto)
  * insert ElementMap(82757-6, DE187, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(47244-9, DE168, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(LL3859-7, DE170, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(63895-7, DE191, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(39236-5, DE19, equivalent)
  * insert ElementMap(30952-6, DE20, equivalent)
  * insert ElementMap(72060-7, DE22, equivalent)
  * insert ElementMap(30957-5, DE23, equivalent)
  * insert ElementMap(30959-1, DE24, equivalent)
  * insert ElementMap(74066-2, DE26, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(82745-1, DE34, equivalent)
  * insert ElementMap(30953-4, DE93, equivalent)
  * insert ElementMap(39289-4, DE186, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"

* group[+]
  * source = Canonical(IMMZ.D)
  * target = $SCT
  * insert ElementMap(DE158, 722187008, relatedto)
  * insert ElementMap(DE162, 77386006, equivalent)
  * insert ElementMap(DE163, 370388006, equivalent)
  * insert ElementMap(DE200, 370388006, wider)
  * insert ElementMap(DE164, 86553008, wider)
  * insert ElementMap(DE165, 370388006, equivalent)
  * insert ElementMap(DE187, 234532001, equivalent)
  * insert ElementMap(DE166, 10839421000119100, equivalent)
  * insert ElementMap(DE167, 419076005, wider)
  * insert ElementMap(DE168, 86406008, equivalent)
  * insert ElementMap(DE170, 116859006, equivalent)
  * insert ElementMap(DE188, 39104002, wider)
  * insert ElementMap(DE190, 56717001, wider)
  * insert ElementMap(DE191, 169750002, equivalent)
  * insert ElementMap(DE192, 67531005, equivalent)
  * insert ElementMap(DE193, 204997000, equivalent)
  * insert ElementMap(DE194, 69776003, wider)
  * insert ElementMap(DE195, 386661006, wider)
  * insert ElementMap(DE4, 385660001, equivalent)
  * insert ElementMap(DE9, 591000119102, equivalent)
  * insert ElementMap(DE13, 370388006, equivalent)
  * insert ElementMap(DE14, 39104002, wider)
  * insert ElementMap(DE15, 39104002, wider)
  * insert ElementMap(DE19, 787859002, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE92, 418799008, wider)
  * insert ElementMap(DE108, 399166001, equivalent)
  * insert ElementMap(DE109, 442452003, equivalent)
  * insert ElementMap(DE110, 21134002, equivalent)
  * insert ElementMap(DE111, 32485007, equivalent)
  * insert ElementMap(DE112, 276654001, wider)
  * insert ElementMap(DE115, 293104008, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE127, 4834000, equivalent)
  * insert ElementMap(DE128, 6142004, equivalent)
  * insert ElementMap(DE129, 14189004, equivalent)
  * insert ElementMap(DE133, 27836007, equivalent)
  * insert ElementMap(DE135, 36989005, equivalent)
  * insert ElementMap(DE136, 38907003, equivalent)
  * insert ElementMap(DE137, 40468003, equivalent)
  * insert ElementMap(DE139, 56717001, equivalent)
  * insert ElementMap(DE140, 66071002, equivalent)
  * insert ElementMap(DE141, 70036007, equivalent)
  * insert ElementMap(DE142, 76902006, equivalent)
  * insert ElementMap(DE143, 186150001, equivalent)
  * insert ElementMap(DE144, 240532009, equivalent)
  * insert ElementMap(DE175, 52947006, equivalent)
  * insert ElementMap(DE146, 398102009, equivalent)
  * insert ElementMap(DE176, 397428000, equivalent)
  * insert ElementMap(DE177, 16814004, equivalent)
  * insert ElementMap(DE178, 36653000, equivalent)
  * insert ElementMap(DE179, 20927009, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(DE180, 14168008, equivalent)
  * insert ElementMap(DE181, 7180009, equivalent)
  * insert ElementMap(DE182, 63650001, equivalent)
  * insert ElementMap(DE183, 712986001, equivalent)
  * insert ElementMap(DE184, 16541001, equivalent)
  * insert ElementMap(DE148, 840539006, equivalent)
  * insert ElementMap(DE185, 185353001, wider)
  * insert ElementMap(DE186, 410671006, wider)
* group[+]
  * source = $SCT
  * target = Canonical(IMMZ.D)
  * insert ElementMap(722187008, DE158, relatedto)
  * insert ElementMap(77386006, DE162, equivalent)
  * insert ElementMap(370388006, DE163, equivalent)
  * insert ElementMap(370388006, DE200, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(86553008, DE164, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(370388006, DE165, equivalent)
  * insert ElementMap(234532001, DE187, equivalent)
  * insert ElementMap(10839421000119100, DE166, equivalent)
  * insert ElementMap(419076005, DE167, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(86406008, DE168, equivalent)
  * insert ElementMap(116859006, DE170, equivalent)
  * insert ElementMap(39104002, DE188, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(56717001, DE190, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(169750002, DE191, equivalent)
  * insert ElementMap(67531005, DE192, equivalent)
  * insert ElementMap(204997000, DE193, equivalent)
  * insert ElementMap(69776003, DE194, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(386661006, DE195, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(385660001, DE4, equivalent)
  * insert ElementMap(591000119102, DE9, equivalent)
  * insert ElementMap(370388006, DE13, equivalent)
  * insert ElementMap(39104002, DE14, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(39104002, DE15, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(787859002, DE19, wider)
  * insert ElementMap(418799008, DE92, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(399166001, DE108, equivalent)
  * insert ElementMap(442452003, DE109, equivalent)
  * insert ElementMap(21134002, DE110, equivalent)
  * insert ElementMap(32485007, DE111, equivalent)
  * insert ElementMap(276654001, DE112, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(293104008, DE115, wider)
  * insert ElementMap(4834000, DE127, equivalent)
  * insert ElementMap(6142004, DE128, equivalent)
  * insert ElementMap(14189004, DE129, equivalent)
  * insert ElementMap(27836007, DE133, equivalent)
  * insert ElementMap(36989005, DE135, equivalent)
  * insert ElementMap(38907003, DE136, equivalent)
  * insert ElementMap(40468003, DE137, equivalent)
  * insert ElementMap(56717001, DE139, equivalent)
  * insert ElementMap(66071002, DE140, equivalent)
  * insert ElementMap(70036007, DE141, equivalent)
  * insert ElementMap(76902006, DE142, equivalent)
  * insert ElementMap(186150001, DE143, equivalent)
  * insert ElementMap(240532009, DE144, equivalent)
  * insert ElementMap(52947006, DE175, equivalent)
  * insert ElementMap(398102009, DE146, equivalent)
  * insert ElementMap(397428000, DE176, equivalent)
  * insert ElementMap(16814004, DE177, equivalent)
  * insert ElementMap(36653000, DE178, equivalent)
  * insert ElementMap(20927009, DE179, wider)
  * insert ElementMap(14168008, DE180, equivalent)
  * insert ElementMap(7180009, DE181, equivalent)
  * insert ElementMap(63650001, DE182, equivalent)
  * insert ElementMap(712986001, DE183, equivalent)
  * insert ElementMap(16541001, DE184, equivalent)
  * insert ElementMap(840539006, DE148, equivalent)
  * insert ElementMap(185353001, DE185, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"
  * insert ElementMap(410671006, DE186, narrower)
  * element[=].target[=].comment = "The source concept is more specific than the target"

