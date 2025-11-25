# ConceptMap to and from IMMZ.D DataElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **ConceptMap to and from IMMZ.D DataElements**

## ConceptMap: ConceptMap to and from IMMZ.D DataElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ConceptMap/IMMZ.D.ConceptMap | *Version*:0.2.0 |
| Active as of 2025-01-10 | *Computable Name*:IMMZ_D_ConceptMap |

 
Mapping to and from IMMZ.D Data Dictionary to other codesystems. 

Mapping from (not specified) to (not specified)

**Group 1**Mapping from [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md) to [EventStatus](http://hl7.org/fhir/R4/codesystem-event-status.html)

* **Source Code**: DE2 (Completed)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: completed
* **Source Code**: DE3 (Entered in error)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: entered-in-error
* **Source Code**: DE4 (Not done)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: not-done

-------

**Group 2**Mapping from [EventStatus](http://hl7.org/fhir/R4/codesystem-event-status.html) to [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md)

* **Source Code**: completed
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE2 (Completed)
* **Source Code**: entered-in-error
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE3 (Entered in error)
* **Source Code**: not-done
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE4 (Not done)

-------

**Group 3**Mapping from [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md) to [AdverseEventOutcome](http://hl7.org/fhir/R4/codesystem-adverse-event-outcome.html)

* **Source Code**: DE116 (Died)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: fatal
* **Source Code**: DE117 (Recovered)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: resolved
* **Source Code**: DE118 (Recovered with sequelae)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: resolvedWithSequelae
* **Source Code**: DE119 (Recovering)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: recovering
* **Source Code**: DE120 (Not recovered)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: ongoing
* **Source Code**: DE121 (Unknown)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: unknown

-------

**Group 4**Mapping from [AdverseEventOutcome](http://hl7.org/fhir/R4/codesystem-adverse-event-outcome.html) to [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md)

* **Source Code**: fatal
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE116 (Died)
* **Source Code**: resolved
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE117 (Recovered)
* **Source Code**: resolvedWithSequelae
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE118 (Recovered with sequelae)
* **Source Code**: recovering
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE119 (Recovering)
* **Source Code**: ongoing
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE120 (Not recovered)
* **Source Code**: unknown
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE121 (Unknown)

-------

**Group 5**Mapping from [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md) to [International Classification of Diseases, 11th Revision Mortality and Morbidity Statistics (MMS)](http://terminology.hl7.org/6.1.0/CodeSystem-ICD11MMS.html)

* **Source Code**: DE158 (Due)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: QC06
  * **Comment**: 
* **Source Code**: DE159 (Contraindicated)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: QC04.Z
  * **Comment**: 
* **Source Code**: DE162 (Currently pregnant)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QA41
  * **Comment**: 
* **Source Code**: DE163 (Immunocompromised)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 4B4Z
  * **Comment**: 
* **Source Code**: DE200 (Severely immunocompromised)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 4B4Z
  * **Comment**: 
* **Source Code**: DE164 (Exposed to immunosuppressive treatment)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: PH48
  * **Comment**: 
* **Source Code**: DE165 (Severely immunosuppressed)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 4B4Z
  * **Comment**: 
* **Source Code**: DE187 (Immunodeficiency syndromes)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 4B4Z
  * **Comment**: 
* **Source Code**: DE166 (History of anaphylactic reactions)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC44.0
  * **Comment**: 
* **Source Code**: DE167 (Severe allergic reactions)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: QC44.2
  * **Comment**: 
* **Source Code**: DE168 (Symptomatic HIV infection)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1C62.1
  * **Comment**: 
* **Source Code**: DE170 (Receiving blood products)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: QB98
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE188 (Severe acute illness)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: MG25
  * **Comment**: 
* **Source Code**: DE190 (TB disease)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 1B1Z
  * **Comment**: 
* **Source Code**: DE191 (Breastfeeding)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QA48.1
  * **Comment**: 
* **Source Code**: DE192 (Spina bifida)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: LA02
  * **Comment**: 
* **Source Code**: DE193 (Bladder exstrophy)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: LB31.3
  * **Comment**: 
* **Source Code**: DE194 (Acute gastroenteritis)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 1A40.Z
  * **Comment**: 
* **Source Code**: DE195 (Moderate to severe fever)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: MG26
  * **Comment**: 
* **Source Code**: DE86 (Client education and counselling on immunization)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QA1Y
  * **Comment**: 
* **Source Code**: DE87 (Counselling on functions of the immunological system)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QA1Y
  * **Comment**: 
* **Source Code**: DE88 (Advising about functions of the immunological system)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QA1Y
  * **Comment**: 
* **Source Code**: DE89 (Education to influence immunization behaviours)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QA1Y
  * **Comment**: 
* **Source Code**: DE90 (Advising about immunization behaviours)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QA1Y
  * **Comment**: 
* **Source Code**: DE91 (Awareness raising to influence immunization behaviours)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QA1Y
  * **Comment**: 
* **Source Code**: DE5 (Reason vaccine was not administered)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: QC04
  * **Comment**: 
* **Source Code**: DE6 (Immunity)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QC04.Y
  * **Comment**: 
* **Source Code**: DE7 (Medical precaution)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QC04.Y
  * **Comment**: 
* **Source Code**: DE8 (Product out of stock)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: QC04.7
  * **Comment**: 
* **Source Code**: DE9 (Client objection)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.5
  * **Comment**: 
* **Source Code**: DE10 (Caregiver refusal)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.6
  * **Comment**: 
* **Source Code**: DE11 (Unspecified reason)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.Z
  * **Comment**: 
* **Source Code**: DE12 (Client allergy to vaccine or component)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.4
  * **Comment**: 
* **Source Code**: DE13 (Immunocompromised)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.3
  * **Comment**: 
* **Source Code**: DE14 (Chronic illness or condition)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.2
  * **Comment**: 
* **Source Code**: DE15 (Acute illness)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.1
  * **Comment**: 
* **Source Code**: DE16 (Had the disease)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.0
  * **Comment**: 
* **Source Code**: DE17 (Immunization not carried out for other reasons)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: QC04.Y
  * **Comment**: 
* **Source Code**: DE127 (Typhoid)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1A07
  * **Comment**: 
* **Source Code**: DE128 (Influenza)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 1E32
  * **Comment**: 
* **Source Code**: DE129 (Measles)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1F03
  * **Comment**: 
* **Source Code**: DE133 (Pertussis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1C12
  * **Comment**: 
* **Source Code**: DE135 (Mumps)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1D80
  * **Comment**: 
* **Source Code**: DE136 (Varicella)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1E90
  * **Comment**: 
* **Source Code**: DE137 (Viral hepatitis A)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 1E50.0
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE139 (Tuberculosis)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 1B1Z
  * **Comment**: 
* **Source Code**: DE140 (Viral hepatitis B)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 1E50.1
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE141 (Haemophilus influenzae type b)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XN0FG
  * **Comment**: 
* **Source Code**: DE142 (Tetanus)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1C13
  * **Comment**: 
* **Source Code**: DE143 (Rotavirus)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XN6N7
  * **Comment**: 
* **Source Code**: DE144 (Human papillomavirus)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XN8JY
  * **Comment**: 
* **Source Code**: DE175 (Japanese encephalitis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1C85
  * **Comment**: 
* **Source Code**: DE146 (Poliomyelitis)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 1C81
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE176 (Diphtheria)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1C17
  * **Comment**: 
* **Source Code**: DE177 (Pneumococcal disease)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: CA40.07
  * **Comment**: 
* **Source Code**: DE178 (Rubella)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1F02
  * **Comment**: 
* **Source Code**: DE179 (Dengue)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 1D2Z
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE180 (Rabies)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1C82
  * **Comment**: 
* **Source Code**: DE181 (Meningococcal)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1C1C
  * **Comment**: 
* **Source Code**: DE182 (Cholera)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1A00
  * **Comment**: 
* **Source Code**: DE183 (Tick-borne encephalitis)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 1C80
  * **Comment**: 
* **Source Code**: DE184 (Yellow fever)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1D47
  * **Comment**: 
* **Source Code**: DE148 (COVID-19)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: RA01
  * **Comment**: 
* **Source Code**: DE92 (Reaction reported)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: PK81.7
  * **Comment**: 
* **Source Code**: DE95 (Reaction manifestation)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: NE80.3
  * **Comment**: 
* **Source Code**: DE96 (Severe local reaction)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: EH77
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE98 (Seizures)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 8A63.Y
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE99 (Abscess)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 1B75.3
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE100 (Sepsis)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 1G40
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE101 (Encephalopathy)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 8E47
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE102 (Toxic shock syndrome)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 1C45
  * **Comment**: 
* **Source Code**: DE103 (Anaphylaxis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 4A84
  * **Comment**: 
* **Source Code**: DE104 (Fever)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: MG26
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE105 (Other)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: NE80.Y
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE109 (Life threatening)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: XS2R
  * **Comment**: 
* **Source Code**: DE110 (Disability)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: QF10
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE205 (HIV-positive)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 1C62.Z
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE206 (HIV-negative)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: QA02.Y
  * **Comment**: 
* **Source Code**: DE208 (Preterm birth)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: KA21.4
  * **Comment**: 
* **Source Code**: DE209 (Immunocompromised)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 4B4Z
  * **Comment**: 
* **Source Code**: DE245 (TST)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM0EK6
  * **Comment**: 
* **Source Code**: DE247 (Positive)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 1B1Z
  * **Comment**: 
* **Source Code**: DE248 (Negative)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: QA02.0
  * **Comment**: 
* **Source Code**: DE211 (Birth weight in grams)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: KA21
  * **Comment**: 
* **Source Code**: DE212 (Type of poliovirus dose)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: XM0N50
  * **Comment**: 
* **Source Code**: DE213 (IPV)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM5V19
  * **Comment**: 
* **Source Code**: DE214 (bOPV)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM79H3
  * **Comment**: 
* **Source Code**: DE217 (Inactivated Vero cell-derived vaccine)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM0LB5
  * **Comment**: 
* **Source Code**: DE218 (Live attenuated vaccine)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM47S0
  * **Comment**: 
* **Source Code**: DE221 (FSME-Immun)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM8MP6
  * **Comment**: 
* **Source Code**: DE222 (Encepur)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM8MP6
  * **Comment**: 
* **Source Code**: DE223 (TBE-Moscow)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM8MP6
  * **Comment**: 
* **Source Code**: DE224 (EnceVir)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM8MP6
  * **Comment**: 
* **Source Code**: DE226 (Typbar-TCV)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM8BU8
  * **Comment**: 
* **Source Code**: DE227 (ViPS)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM3SF6
  * **Comment**: 
* **Source Code**: DE228 (Ty21a)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM33K4
  * **Comment**: 
* **Source Code**: DE230 (WC vaccine)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM3Z26
  * **Comment**: 
* **Source Code**: DE231 (WC-rBS vaccine)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM29K4
  * **Comment**: 
* **Source Code**: DE233 (MenA conjugate vaccine (5µg))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM2280
  * **Comment**: 
* **Source Code**: DE234 (Monovalent MenC conjugate)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM18Y8
  * **Comment**: 
* **Source Code**: DE235 (Quadrivalent conjugate)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM2EH7
  * **Comment**: 
* **Source Code**: DE252 (Polysaccharide vaccine)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: XM92B2
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE238 (Live attenuated hepatitis A vaccine)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: XM6LL6
  * **Comment**: 
* **Source Code**: DE239 (Inactivated hepatitis A vaccine)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: XM2A12
  * **Comment**: 
* **Source Code**: DE255 (Hepatitis B monovalent vaccine)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: XM9V38
  * **Comment**: 

-------

**Group 6**Mapping from [International Classification of Diseases, 11th Revision Mortality and Morbidity Statistics (MMS)](http://terminology.hl7.org/6.1.0/CodeSystem-ICD11MMS.html) to [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md)

* **Source Code**: QC06
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE158 (Due)
  * **Comment**: 
* **Source Code**: QC04.Z
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE159 (Contraindicated)
  * **Comment**: 
* **Source Code**: QA41
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE162 (Currently pregnant)
  * **Comment**: 
* **Source Code**: 4B4Z
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE163 (Immunocompromised)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 4B4Z
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE200 (Severely immunocompromised)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: PH48
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE164 (Exposed to immunosuppressive treatment)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 4B4Z
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE165 (Severely immunosuppressed)
  * **Comment**: 
* **Source Code**: 4B4Z
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE187 (Immunodeficiency syndromes)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QC44.0
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE166 (History of anaphylactic reactions)
  * **Comment**: 
* **Source Code**: QC44.2
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE167 (Severe allergic reactions)
  * **Comment**: 
* **Source Code**: 1C62.1
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE168 (Symptomatic HIV infection)
  * **Comment**: 
* **Source Code**: QB98
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE170 (Receiving blood products)
  * **Comment**: 
* **Source Code**: MG25
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE188 (Severe acute illness)
  * **Comment**: 
* **Source Code**: 1B1Z
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE190 (TB disease)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QA48.1
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE191 (Breastfeeding)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: LA02
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE192 (Spina bifida)
  * **Comment**: 
* **Source Code**: LB31.3
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE193 (Bladder exstrophy)
  * **Comment**: 
* **Source Code**: 1A40.Z
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE194 (Acute gastroenteritis)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: MG26
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE195 (Moderate to severe fever)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QA1Y
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE86 (Client education and counselling on immunization)
  * **Comment**: 
* **Source Code**: QA1Y
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE87 (Counselling on functions of the immunological system)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QA1Y
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE88 (Advising about functions of the immunological system)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QA1Y
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE89 (Education to influence immunization behaviours)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QA1Y
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE90 (Advising about immunization behaviours)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QA1Y
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE91 (Awareness raising to influence immunization behaviours)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QC04
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE5 (Reason vaccine was not administered)
  * **Comment**: 
* **Source Code**: QC04.Y
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE6 (Immunity)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QC04.Y
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE7 (Medical precaution)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QC04.7
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE8 (Product out of stock)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: QC04.5
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE9 (Client objection)
  * **Comment**: 
* **Source Code**: QC04.6
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE10 (Caregiver refusal)
  * **Comment**: 
* **Source Code**: QC04.Z
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE11 (Unspecified reason)
  * **Comment**: 
* **Source Code**: QC04.4
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE12 (Client allergy to vaccine or component)
  * **Comment**: 
* **Source Code**: QC04.3
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE13 (Immunocompromised)
  * **Comment**: 
* **Source Code**: QC04.2
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE14 (Chronic illness or condition)
  * **Comment**: 
* **Source Code**: QC04.1
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE15 (Acute illness)
  * **Comment**: 
* **Source Code**: QC04.0
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE16 (Had the disease)
  * **Comment**: 
* **Source Code**: QC04.Y
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE17 (Immunization not carried out for other reasons)
  * **Comment**: 
* **Source Code**: 1A07
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE127 (Typhoid)
  * **Comment**: 
* **Source Code**: 1E32
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE128 (Influenza)
  * **Comment**: 
* **Source Code**: 1F03
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE129 (Measles)
  * **Comment**: 
* **Source Code**: 1C12
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE133 (Pertussis)
  * **Comment**: 
* **Source Code**: 1D80
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE135 (Mumps)
  * **Comment**: 
* **Source Code**: 1E90
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE136 (Varicella)
  * **Comment**: 
* **Source Code**: 1E50.0
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE137 (Viral hepatitis A)
  * **Comment**: 
* **Source Code**: 1B1Z
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE139 (Tuberculosis)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 1E50.1
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE140 (Viral hepatitis B)
  * **Comment**: 
* **Source Code**: XN0FG
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE141 (Haemophilus influenzae type b)
  * **Comment**: 
* **Source Code**: 1C13
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE142 (Tetanus)
  * **Comment**: 
* **Source Code**: XN6N7
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE143 (Rotavirus)
  * **Comment**: 
* **Source Code**: XN8JY
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE144 (Human papillomavirus)
  * **Comment**: 
* **Source Code**: 1C85
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE175 (Japanese encephalitis)
  * **Comment**: 
* **Source Code**: 1C81
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE146 (Poliomyelitis)
  * **Comment**: 
* **Source Code**: 1C17
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE176 (Diphtheria)
  * **Comment**: 
* **Source Code**: CA40.07
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE177 (Pneumococcal disease)
  * **Comment**: 
* **Source Code**: 1F02
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE178 (Rubella)
  * **Comment**: 
* **Source Code**: 1D2Z
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE179 (Dengue)
  * **Comment**: 
* **Source Code**: 1C82
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE180 (Rabies)
  * **Comment**: 
* **Source Code**: 1C1C
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE181 (Meningococcal)
  * **Comment**: 
* **Source Code**: 1A00
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE182 (Cholera)
  * **Comment**: 
* **Source Code**: 1C80
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE183 (Tick-borne encephalitis)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 1D47
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE184 (Yellow fever)
  * **Comment**: 
* **Source Code**: RA01
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE148 (COVID-19)
  * **Comment**: 
* **Source Code**: PK81.7
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE92 (Reaction reported)
  * **Comment**: 
* **Source Code**: NE80.3
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE95 (Reaction manifestation)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: EH77
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE96 (Severe local reaction)
  * **Comment**: 
* **Source Code**: 8A63.Y
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE98 (Seizures)
  * **Comment**: 
* **Source Code**: 1B75.3
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE99 (Abscess)
  * **Comment**: 
* **Source Code**: 1G40
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE100 (Sepsis)
  * **Comment**: 
* **Source Code**: 8E47
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE101 (Encephalopathy)
  * **Comment**: 
* **Source Code**: 1C45
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE102 (Toxic shock syndrome)
  * **Comment**: 
* **Source Code**: 4A84
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE103 (Anaphylaxis)
  * **Comment**: 
* **Source Code**: MG26
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE104 (Fever)
  * **Comment**: 
* **Source Code**: NE80.Y
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE105 (Other)
  * **Comment**: 
* **Source Code**: XS2R
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE109 (Life threatening)
  * **Comment**: 
* **Source Code**: QF10
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE110 (Disability)
  * **Comment**: 
* **Source Code**: 1C62.Z
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE205 (HIV-positive)
  * **Comment**: 
* **Source Code**: QA02.Y
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE206 (HIV-negative)
  * **Comment**: 
* **Source Code**: KA21.4
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE208 (Preterm birth)
  * **Comment**: 
* **Source Code**: 4B4Z
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE209 (Immunocompromised)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM0EK6
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE245 (TST)
  * **Comment**: 
* **Source Code**: 1B1Z
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE247 (Positive)
  * **Comment**: 
* **Source Code**: QA02.0
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE248 (Negative)
  * **Comment**: 
* **Source Code**: KA21
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE211 (Birth weight in grams)
  * **Comment**: 
* **Source Code**: XM0N50
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE212 (Type of poliovirus dose)
  * **Comment**: 
* **Source Code**: XM5V19
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE213 (IPV)
  * **Comment**: 
* **Source Code**: XM79H3
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE214 (bOPV)
  * **Comment**: 
* **Source Code**: XM0LB5
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE217 (Inactivated Vero cell-derived vaccine)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM47S0
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE218 (Live attenuated vaccine)
  * **Comment**: 
* **Source Code**: XM8MP6
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE221 (FSME-Immun)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM8MP6
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE222 (Encepur)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM8MP6
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE223 (TBE-Moscow)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM8MP6
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE224 (EnceVir)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM8BU8
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE226 (Typbar-TCV)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM3SF6
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE227 (ViPS)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM33K4
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE228 (Ty21a)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM3Z26
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE230 (WC vaccine)
  * **Comment**: 
* **Source Code**: XM29K4
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE231 (WC-rBS vaccine)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM2280
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE233 (MenA conjugate vaccine (5µg))
  * **Comment**: 
* **Source Code**: XM18Y8
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE234 (Monovalent MenC conjugate)
  * **Comment**: 
* **Source Code**: XM2EH7
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE235 (Quadrivalent conjugate)
  * **Comment**: 
* **Source Code**: XM92B2
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE252 (Polysaccharide vaccine)
  * **Comment**: 
* **Source Code**: XM6LL6
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE238 (Live attenuated hepatitis A vaccine)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: XM2A12
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE239 (Inactivated hepatitis A vaccine)
  * **Comment**: 
* **Source Code**: XM9V38
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE255 (Hepatitis B monovalent vaccine)
  * **Comment**: 

-------

**Group 7**Mapping from [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md) to [Logical Observation Identifiers, Names and Codes (LOINC)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-loinc.html)

* **Source Code**: DE19 (Vaccine type)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 39236-5 (Vaccine code (CPT) CPHS)
  * **Comment**: 
* **Source Code**: DE20 (Date and time of vaccination)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 30952-6 (Date and time of vaccination)
  * **Comment**: 
* **Source Code**: DE201 (Contact date)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 21975-8 (Date last contact)
  * **Comment**: 
* **Source Code**: DE202 (ANC contact number)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 75612-2 (Number of visits to this healthcare entity in the last 12 months)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE162 (Currently pregnant)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 82810-3 (Pregnancy status)
  * **Comment**: 
* **Source Code**: DE163 (Immunocompromised)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 96381-9 (Immune status)
  * **Comment**: 
* **Source Code**: DE200 (Severely immunocompromised)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 96381-9 (Immune status)
  * **Comment**: 
* **Source Code**: DE165 (Severely immunosuppressed)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 96381-9 (Immune status)
  * **Comment**: 
* **Source Code**: DE187 (Immunodeficiency syndromes)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 82757-6 (Immunodeficiency)
  * **Comment**: 
* **Source Code**: DE168 (Symptomatic HIV infection)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 47244-9 (Symptom, diagnosis, or opportunistic infection related to HIV treatment)
  * **Comment**: 
* **Source Code**: DE170 (Receiving blood products)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: LL3859-7 (Blood products)
  * **Comment**: 
* **Source Code**: DE191 (Breastfeeding)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 63895-7 (Breastfeeding status)
  * **Comment**: 
* **Source Code**: DE22 (Administrative area)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 72060-7 (Where was vaccine received)
  * **Comment**: 
* **Source Code**: DE23 (Vaccine manufacturer)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 30957-5 (Manufacturer name [Identifier] Vaccine)
  * **Comment**: 
* **Source Code**: DE24 (Vaccine batch number)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 30959-1 (Lot number [Identifier] Vaccine)
  * **Comment**: 
* **Source Code**: DE26 (Expiration date)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 74066-2 (Expiration date of Medication [AHRQ])
  * **Comment**: 
* **Source Code**: DE34 (Dose quantity)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 82745-1 (Doses of vaccine given [#] --pre symptom onset)
  * **Comment**: 
* **Source Code**: DE93 (Reaction date)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 30953-4 (Date and time of onset of vaccination adverse event)
  * **Comment**: 
* **Source Code**: DE186 (Recommended follow-up date)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 39289-4 (Follow-up (referred to) provider /specialist, appointment date CPHS)
  * **Comment**: 
* **Source Code**: DE204 (HIV status)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 55277-8 (HIV status)
  * **Comment**: 
* **Source Code**: DE205 (HIV-positive)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 45683-0 (HIV infection [Minimum Data Set])
  * **Comment**: 
* **Source Code**: DE208 (Preterm birth)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 76517-2 (Premature infant)
  * **Comment**: 
* **Source Code**: DE209 (Immunocompromised)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 96381-9 (Immune status)
  * **Comment**: 
* **Source Code**: DE244 (IGRA)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 27415-9 (Interferon gamma [Mass/volume] in Serum or Plasma)
  * **Comment**: 
* **Source Code**: DE245 (TST)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 39263-9 (Tuberculin screen test status CPHS)
  * **Comment**: 
* **Source Code**: DE247 (Positive)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 45241-7 (Tuberculosis status)
  * **Comment**: 
* **Source Code**: DE211 (Birth weight in grams)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 8339-4 (Birth weight Measured)
  * **Comment**: 

-------

**Group 8**Mapping from [Logical Observation Identifiers, Names and Codes (LOINC)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-loinc.html) to [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md)

* **Source Code**: 39236-5 (Vaccine code (CPT) CPHS)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE19 (Vaccine type)
  * **Comment**: 
* **Source Code**: 30952-6 (Date and time of vaccination)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE20 (Date and time of vaccination)
  * **Comment**: 
* **Source Code**: 21975-8 (Date last contact)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE201 (Contact date)
  * **Comment**: 
* **Source Code**: 75612-2 (Number of visits to this healthcare entity in the last 12 months)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE202 (ANC contact number)
  * **Comment**: 
* **Source Code**: 82810-3 (Pregnancy status)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE162 (Currently pregnant)
  * **Comment**: 
* **Source Code**: 96381-9 (Immune status)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE163 (Immunocompromised)
  * **Comment**: 
* **Source Code**: 96381-9 (Immune status)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE200 (Severely immunocompromised)
  * **Comment**: 
* **Source Code**: 96381-9 (Immune status)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE165 (Severely immunosuppressed)
  * **Comment**: 
* **Source Code**: 82757-6 (Immunodeficiency)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE187 (Immunodeficiency syndromes)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 47244-9 (Symptom, diagnosis, or opportunistic infection related to HIV treatment)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE168 (Symptomatic HIV infection)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: LL3859-7 (Blood products)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE170 (Receiving blood products)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 63895-7 (Breastfeeding status)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE191 (Breastfeeding)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 72060-7 (Where was vaccine received)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE22 (Administrative area)
  * **Comment**: 
* **Source Code**: 30957-5 (Manufacturer name [Identifier] Vaccine)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE23 (Vaccine manufacturer)
  * **Comment**: 
* **Source Code**: 30959-1 (Lot number [Identifier] Vaccine)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE24 (Vaccine batch number)
  * **Comment**: 
* **Source Code**: 74066-2 (Expiration date of Medication [AHRQ])
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE26 (Expiration date)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 82745-1 (Doses of vaccine given [#] --pre symptom onset)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE34 (Dose quantity)
  * **Comment**: 
* **Source Code**: 30953-4 (Date and time of onset of vaccination adverse event)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE93 (Reaction date)
  * **Comment**: 
* **Source Code**: 39289-4 (Follow-up (referred to) provider /specialist, appointment date CPHS)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE186 (Recommended follow-up date)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 55277-8 (HIV status)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE204 (HIV status)
  * **Comment**: 
* **Source Code**: 45683-0 (HIV infection [Minimum Data Set])
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE205 (HIV-positive)
  * **Comment**: 
* **Source Code**: 76517-2 (Premature infant)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE208 (Preterm birth)
  * **Comment**: 
* **Source Code**: 96381-9 (Immune status)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE209 (Immunocompromised)
  * **Comment**: 
* **Source Code**: 27415-9 (Interferon gamma [Mass/volume] in Serum or Plasma)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE244 (IGRA)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 39263-9 (Tuberculin screen test status CPHS)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE245 (TST)
  * **Comment**: 
* **Source Code**: 45241-7 (Tuberculosis status)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE247 (Positive)
  * **Comment**: 
* **Source Code**: 8339-4 (Birth weight Measured)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE211 (Birth weight in grams)
  * **Comment**: 

-------

**Group 9**Mapping from [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md) to [SNOMED CT (all versions)](http://hl7.org/fhir/R4/codesystem-snomedct.html)

* **Source Code**: DE19 (Vaccine type)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 787859002 (Vaccine product)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE201 (Contact date)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 406543005 (Date of visit (observable entity))
  * **Comment**: 
* **Source Code**: DE202 (ANC contact number)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 3401000175105 (Total number of prenatal care visits (observable entity))
  * **Comment**: 
* **Source Code**: DE158 (Due)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 722187008 (Under immunized (finding))
  * **Comment**: 
* **Source Code**: DE162 (Currently pregnant)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 77386006 (Pregnancy)
  * **Comment**: 
* **Source Code**: DE163 (Immunocompromised)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 370388006 (Patient immunocompromised)
  * **Comment**: 
* **Source Code**: DE200 (Severely immunocompromised)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 370388006 (Patient immunocompromised)
  * **Comment**: 
* **Source Code**: DE164 (Exposed to immunosuppressive treatment)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 86553008 (Immunosuppressive therapy)
  * **Comment**: 
* **Source Code**: DE165 (Severely immunosuppressed)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 370388006 (Patient immunocompromised)
  * **Comment**: 
* **Source Code**: DE187 (Immunodeficiency syndromes)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 234532001 (Immunodeficiency disorder)
  * **Comment**: 
* **Source Code**: DE166 (History of anaphylactic reactions)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 10839421000119100
  * **Comment**: 
* **Source Code**: DE167 (Severe allergic reactions)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 419076005 (Allergic reaction (disorder))
  * **Comment**: 
* **Source Code**: DE168 (Symptomatic HIV infection)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 86406008 (Human immunodeficiency virus infection)
  * **Comment**: 
* **Source Code**: DE170 (Receiving blood products)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 116859006 (Transfusion of blood product)
  * **Comment**: 
* **Source Code**: DE188 (Severe acute illness)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 39104002 (Illness)
  * **Comment**: 
* **Source Code**: DE190 (TB disease)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 56717001 (Tuberculosis)
  * **Comment**: 
* **Source Code**: DE191 (Breastfeeding)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 169750002 (Mother currently breast-feeding)
  * **Comment**: 
* **Source Code**: DE192 (Spina bifida)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 67531005 (Spina bifida)
  * **Comment**: 
* **Source Code**: DE193 (Bladder exstrophy)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 204997000 (Exstrophy of urinary bladder NOS)
  * **Comment**: 
* **Source Code**: DE194 (Acute gastroenteritis)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 69776003 (Acute gastroenteritis)
  * **Comment**: 
* **Source Code**: DE195 (Moderate to severe fever)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 386661006 (Fever (finding))
  * **Comment**: 
* **Source Code**: DE4 (Not done)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 385660001 (Not done (qualifier value))
  * **Comment**: 
* **Source Code**: DE9 (Client objection)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 591000119102 (Vaccine refused by patient)
  * **Comment**: 
* **Source Code**: DE13 (Immunocompromised)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 370388006 (Patient immunocompromised)
  * **Comment**: 
* **Source Code**: DE14 (Chronic illness or condition)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 39104002 (Illness)
  * **Comment**: 
* **Source Code**: DE15 (Acute illness)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 39104002 (Illness)
  * **Comment**: 
* **Source Code**: DE127 (Typhoid)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 4834000 (Typhoid fever)
  * **Comment**: 
* **Source Code**: DE128 (Influenza)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 6142004 (Influenza)
  * **Comment**: 
* **Source Code**: DE129 (Measles)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 14189004 (Measles)
  * **Comment**: 
* **Source Code**: DE133 (Pertussis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 27836007 (Pertussis)
  * **Comment**: 
* **Source Code**: DE135 (Mumps)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 36989005 (Mumps)
  * **Comment**: 
* **Source Code**: DE136 (Varicella)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 38907003 (Varicella)
  * **Comment**: 
* **Source Code**: DE137 (Viral hepatitis A)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 40468003 (Viral hepatitis, type A)
  * **Comment**: 
* **Source Code**: DE139 (Tuberculosis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 56717001 (Tuberculosis)
  * **Comment**: 
* **Source Code**: DE140 (Viral hepatitis B)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 66071002 (Type B viral hepatitis)
  * **Comment**: 
* **Source Code**: DE141 (Haemophilus influenzae type b)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 70036007 (Haemophilus influenzae pneumonia)
  * **Comment**: 
* **Source Code**: DE142 (Tetanus)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 76902006 (Tetanus)
  * **Comment**: 
* **Source Code**: DE143 (Rotavirus)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 186150001 (Rotavirus enteritis)
  * **Comment**: 
* **Source Code**: DE144 (Human papillomavirus)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 240532009 (Human papilloma virus infection)
  * **Comment**: 
* **Source Code**: DE175 (Japanese encephalitis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 52947006 (Japanese encephalitis virus disease)
  * **Comment**: 
* **Source Code**: DE146 (Poliomyelitis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 398102009 (Acute poliomyelitis (disorder))
  * **Comment**: 
* **Source Code**: DE176 (Diphtheria)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 397428000 (Diphtheria (disorder))
  * **Comment**: 
* **Source Code**: DE177 (Pneumococcal disease)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 16814004 (Pneumococcal infectious disease)
  * **Comment**: 
* **Source Code**: DE178 (Rubella)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 36653000 (Rubella)
  * **Comment**: 
* **Source Code**: DE179 (Dengue)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 20927009 (Dengue hemorrhagic fever)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE180 (Rabies)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 14168008 (Rabies)
  * **Comment**: 
* **Source Code**: DE181 (Meningococcal)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 7180009 (Meningitis)
  * **Comment**: 
* **Source Code**: DE182 (Cholera)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 63650001 (Cholera)
  * **Comment**: 
* **Source Code**: DE183 (Tick-borne encephalitis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 712986001 (Tickborne encephalitis)
  * **Comment**: 
* **Source Code**: DE184 (Yellow fever)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 16541001 (Yellow fever)
  * **Comment**: 
* **Source Code**: DE148 (COVID-19)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 840539006 (Disease caused by 2019 novel coronavirus)
  * **Comment**: 
* **Source Code**: DE92 (Reaction reported)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 418799008 (Finding reported by subject or history provider (finding))
  * **Comment**: 
* **Source Code**: DE108 (Death)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 399166001 (Fatal (qualifier value))
  * **Comment**: 
* **Source Code**: DE109 (Life threatening)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 442452003 (Life threatening severity)
  * **Comment**: 
* **Source Code**: DE110 (Disability)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 21134002 (Disability)
  * **Comment**: 
* **Source Code**: DE111 (Hospitalization)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 32485007 (Hospital admission)
  * **Comment**: 
* **Source Code**: DE112 (Congenital anomaly)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 276654001 (Congenital malformation)
  * **Comment**: 
* **Source Code**: DE115 (Reaction outcome)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: 293104008 (Adverse reaction to immunization)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: DE185 (Date/time of follow-up appointment)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 185353001 (Appointment date)
  * **Comment**: 
* **Source Code**: DE186 (Recommended follow-up date)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 410671006 (Date (attribute))
  * **Comment**: 
* **Source Code**: DE204 (HIV status)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 278977008 (HIV status)
  * **Comment**: 
* **Source Code**: DE205 (HIV-positive)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 165816005 (HIV positive)
  * **Comment**: 
* **Source Code**: DE206 (HIV-negative)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 165815009 (HIV negative)
  * **Comment**: 
* **Source Code**: DE207 (Unknown)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 261665006 (Unknown)
  * **Comment**: 
* **Source Code**: DE208 (Preterm birth)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 395507008 (Premature infant (finding))
  * **Comment**: 
* **Source Code**: DE209 (Immunocompromised)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 370388006 (Patient immunocompromised)
  * **Comment**: 
* **Source Code**: DE244 (IGRA)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 68311008 (Interferon assay)
  * **Comment**: 
* **Source Code**: DE245 (TST)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 28163009 (Skin test for tuberculosis, Tine test)
  * **Comment**: 
* **Source Code**: DE247 (Positive)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 10828004 (Positive)
  * **Comment**: 
* **Source Code**: DE248 (Negative)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 260385009 (Negative)
  * **Comment**: 
* **Source Code**: DE213 (IPV)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 871740006 (Inactivated whole Human poliovirus antigen only vaccine product)
  * **Comment**: 

-------

**Group 10**Mapping from [SNOMED CT (all versions)](http://hl7.org/fhir/R4/codesystem-snomedct.html) to [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md)

* **Source Code**: 787859002 (Vaccine product)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE19 (Vaccine type)
  * **Comment**: 
* **Source Code**: 406543005 (Date of visit (observable entity))
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE201 (Contact date)
  * **Comment**: 
* **Source Code**: 3401000175105 (Total number of prenatal care visits (observable entity))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE202 (ANC contact number)
  * **Comment**: 
* **Source Code**: 722187008 (Under immunized (finding))
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: DE158 (Due)
  * **Comment**: 
* **Source Code**: 77386006 (Pregnancy)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE162 (Currently pregnant)
  * **Comment**: 
* **Source Code**: 370388006 (Patient immunocompromised)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE163 (Immunocompromised)
  * **Comment**: 
* **Source Code**: 370388006 (Patient immunocompromised)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE200 (Severely immunocompromised)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 86553008 (Immunosuppressive therapy)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE164 (Exposed to immunosuppressive treatment)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 370388006 (Patient immunocompromised)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE165 (Severely immunosuppressed)
  * **Comment**: 
* **Source Code**: 234532001 (Immunodeficiency disorder)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE187 (Immunodeficiency syndromes)
  * **Comment**: 
* **Source Code**: 10839421000119100
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE166 (History of anaphylactic reactions)
  * **Comment**: 
* **Source Code**: 419076005 (Allergic reaction (disorder))
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE167 (Severe allergic reactions)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 86406008 (Human immunodeficiency virus infection)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE168 (Symptomatic HIV infection)
  * **Comment**: 
* **Source Code**: 116859006 (Transfusion of blood product)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE170 (Receiving blood products)
  * **Comment**: 
* **Source Code**: 39104002 (Illness)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE188 (Severe acute illness)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 56717001 (Tuberculosis)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE190 (TB disease)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 169750002 (Mother currently breast-feeding)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE191 (Breastfeeding)
  * **Comment**: 
* **Source Code**: 67531005 (Spina bifida)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE192 (Spina bifida)
  * **Comment**: 
* **Source Code**: 204997000 (Exstrophy of urinary bladder NOS)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE193 (Bladder exstrophy)
  * **Comment**: 
* **Source Code**: 69776003 (Acute gastroenteritis)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE194 (Acute gastroenteritis)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 386661006 (Fever (finding))
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE195 (Moderate to severe fever)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 385660001 (Not done (qualifier value))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE4 (Not done)
  * **Comment**: 
* **Source Code**: 591000119102 (Vaccine refused by patient)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE9 (Client objection)
  * **Comment**: 
* **Source Code**: 370388006 (Patient immunocompromised)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE13 (Immunocompromised)
  * **Comment**: 
* **Source Code**: 39104002 (Illness)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE14 (Chronic illness or condition)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 39104002 (Illness)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE15 (Acute illness)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 4834000 (Typhoid fever)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE127 (Typhoid)
  * **Comment**: 
* **Source Code**: 6142004 (Influenza)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE128 (Influenza)
  * **Comment**: 
* **Source Code**: 14189004 (Measles)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE129 (Measles)
  * **Comment**: 
* **Source Code**: 27836007 (Pertussis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE133 (Pertussis)
  * **Comment**: 
* **Source Code**: 36989005 (Mumps)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE135 (Mumps)
  * **Comment**: 
* **Source Code**: 38907003 (Varicella)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE136 (Varicella)
  * **Comment**: 
* **Source Code**: 40468003 (Viral hepatitis, type A)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE137 (Viral hepatitis A)
  * **Comment**: 
* **Source Code**: 56717001 (Tuberculosis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE139 (Tuberculosis)
  * **Comment**: 
* **Source Code**: 66071002 (Type B viral hepatitis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE140 (Viral hepatitis B)
  * **Comment**: 
* **Source Code**: 70036007 (Haemophilus influenzae pneumonia)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE141 (Haemophilus influenzae type b)
  * **Comment**: 
* **Source Code**: 76902006 (Tetanus)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE142 (Tetanus)
  * **Comment**: 
* **Source Code**: 186150001 (Rotavirus enteritis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE143 (Rotavirus)
  * **Comment**: 
* **Source Code**: 240532009 (Human papilloma virus infection)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE144 (Human papillomavirus)
  * **Comment**: 
* **Source Code**: 52947006 (Japanese encephalitis virus disease)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE175 (Japanese encephalitis)
  * **Comment**: 
* **Source Code**: 398102009 (Acute poliomyelitis (disorder))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE146 (Poliomyelitis)
  * **Comment**: 
* **Source Code**: 397428000 (Diphtheria (disorder))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE176 (Diphtheria)
  * **Comment**: 
* **Source Code**: 16814004 (Pneumococcal infectious disease)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE177 (Pneumococcal disease)
  * **Comment**: 
* **Source Code**: 36653000 (Rubella)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE178 (Rubella)
  * **Comment**: 
* **Source Code**: 20927009 (Dengue hemorrhagic fever)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE179 (Dengue)
  * **Comment**: 
* **Source Code**: 14168008 (Rabies)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE180 (Rabies)
  * **Comment**: 
* **Source Code**: 7180009 (Meningitis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE181 (Meningococcal)
  * **Comment**: 
* **Source Code**: 63650001 (Cholera)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE182 (Cholera)
  * **Comment**: 
* **Source Code**: 712986001 (Tickborne encephalitis)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE183 (Tick-borne encephalitis)
  * **Comment**: 
* **Source Code**: 16541001 (Yellow fever)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE184 (Yellow fever)
  * **Comment**: 
* **Source Code**: 840539006 (Disease caused by 2019 novel coronavirus)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE148 (COVID-19)
  * **Comment**: 
* **Source Code**: 418799008 (Finding reported by subject or history provider (finding))
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE92 (Reaction reported)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 399166001 (Fatal (qualifier value))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE108 (Death)
  * **Comment**: 
* **Source Code**: 442452003 (Life threatening severity)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE109 (Life threatening)
  * **Comment**: 
* **Source Code**: 21134002 (Disability)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE110 (Disability)
  * **Comment**: 
* **Source Code**: 32485007 (Hospital admission)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE111 (Hospitalization)
  * **Comment**: 
* **Source Code**: 276654001 (Congenital malformation)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE112 (Congenital anomaly)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 293104008 (Adverse reaction to immunization)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: DE115 (Reaction outcome)
  * **Comment**: 
* **Source Code**: 185353001 (Appointment date)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE185 (Date/time of follow-up appointment)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 410671006 (Date (attribute))
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE186 (Recommended follow-up date)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 278977008 (HIV status)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE204 (HIV status)
  * **Comment**: 
* **Source Code**: 165816005 (HIV positive)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE205 (HIV-positive)
  * **Comment**: 
* **Source Code**: 165815009 (HIV negative)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE206 (HIV-negative)
  * **Comment**: 
* **Source Code**: 261665006 (Unknown)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE207 (Unknown)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 395507008 (Premature infant (finding))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE208 (Preterm birth)
  * **Comment**: 
* **Source Code**: 370388006 (Patient immunocompromised)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE209 (Immunocompromised)
  * **Comment**: 
* **Source Code**: 68311008 (Interferon assay)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE244 (IGRA)
  * **Comment**: 
* **Source Code**: 28163009 (Skin test for tuberculosis, Tine test)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE245 (TST)
  * **Comment**: 
* **Source Code**: 10828004 (Positive)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE247 (Positive)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 260385009 (Negative)
  * **Relationship**: [narrower](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#narrower)
  * **Target Code**: DE248 (Negative)
  * **Comment**: Per the Immunizations DAK
* **Source Code**: 871740006 (Inactivated whole Human poliovirus antigen only vaccine product)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: DE213 (IPV)
  * **Comment**: 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "IMMZ.D.ConceptMap",
  "url" : "http://smart.who.int/immunizations/ConceptMap/IMMZ.D.ConceptMap",
  "version" : "0.2.0",
  "name" : "IMMZ_D_ConceptMap",
  "title" : "ConceptMap to and from IMMZ.D DataElements",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-01-10",
  "publisher" : "WHO",
  "contact" : [
    {
      "name" : "WHO",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://who.int"
        }
      ]
    }
  ],
  "description" : "Mapping to and from IMMZ.D Data Dictionary to other codesystems.",
  "group" : [
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "target" : "http://hl7.org/fhir/event-status",
      "element" : [
        {
          "code" : "DE2",
          "target" : [
            {
              "code" : "completed",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE3",
          "target" : [
            {
              "code" : "entered-in-error",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE4",
          "target" : [
            {
              "code" : "not-done",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://hl7.org/fhir/event-status",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "element" : [
        {
          "code" : "completed",
          "target" : [
            {
              "code" : "DE2",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "entered-in-error",
          "target" : [
            {
              "code" : "DE3",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "not-done",
          "target" : [
            {
              "code" : "DE4",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "target" : "http://terminology.hl7.org/CodeSystem/adverse-event-outcome",
      "element" : [
        {
          "code" : "DE116",
          "target" : [
            {
              "code" : "fatal",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE117",
          "target" : [
            {
              "code" : "resolved",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE118",
          "target" : [
            {
              "code" : "resolvedWithSequelae",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE119",
          "target" : [
            {
              "code" : "recovering",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE120",
          "target" : [
            {
              "code" : "ongoing",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE121",
          "target" : [
            {
              "code" : "unknown",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://terminology.hl7.org/CodeSystem/adverse-event-outcome",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "element" : [
        {
          "code" : "fatal",
          "target" : [
            {
              "code" : "DE116",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "resolved",
          "target" : [
            {
              "code" : "DE117",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "resolvedWithSequelae",
          "target" : [
            {
              "code" : "DE118",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "recovering",
          "target" : [
            {
              "code" : "DE119",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "ongoing",
          "target" : [
            {
              "code" : "DE120",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "unknown",
          "target" : [
            {
              "code" : "DE121",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "target" : "http://id.who.int/icd/release/11/mms",
      "element" : [
        {
          "code" : "DE158",
          "target" : [
            {
              "code" : "QC06",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE159",
          "target" : [
            {
              "code" : "QC04.Z",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE162",
          "target" : [
            {
              "code" : "QA41",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE163",
          "target" : [
            {
              "code" : "4B4Z",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE200",
          "target" : [
            {
              "code" : "4B4Z",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE164",
          "target" : [
            {
              "code" : "PH48",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE165",
          "target" : [
            {
              "code" : "4B4Z",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE187",
          "target" : [
            {
              "code" : "4B4Z",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE166",
          "target" : [
            {
              "code" : "QC44.0",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE167",
          "target" : [
            {
              "code" : "QC44.2",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE168",
          "target" : [
            {
              "code" : "1C62.1",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE170",
          "target" : [
            {
              "code" : "QB98",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE188",
          "target" : [
            {
              "code" : "MG25",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE190",
          "target" : [
            {
              "code" : "1B1Z",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE191",
          "target" : [
            {
              "code" : "QA48.1",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE192",
          "target" : [
            {
              "code" : "LA02",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE193",
          "target" : [
            {
              "code" : "LB31.3",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE194",
          "target" : [
            {
              "code" : "1A40.Z",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE195",
          "target" : [
            {
              "code" : "MG26",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE86",
          "target" : [
            {
              "code" : "QA1Y",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE87",
          "target" : [
            {
              "code" : "QA1Y",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE88",
          "target" : [
            {
              "code" : "QA1Y",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE89",
          "target" : [
            {
              "code" : "QA1Y",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE90",
          "target" : [
            {
              "code" : "QA1Y",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE91",
          "target" : [
            {
              "code" : "QA1Y",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE5",
          "target" : [
            {
              "code" : "QC04",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE6",
          "target" : [
            {
              "code" : "QC04.Y",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE7",
          "target" : [
            {
              "code" : "QC04.Y",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE8",
          "target" : [
            {
              "code" : "QC04.7",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE9",
          "target" : [
            {
              "code" : "QC04.5",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE10",
          "target" : [
            {
              "code" : "QC04.6",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE11",
          "target" : [
            {
              "code" : "QC04.Z",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE12",
          "target" : [
            {
              "code" : "QC04.4",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE13",
          "target" : [
            {
              "code" : "QC04.3",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE14",
          "target" : [
            {
              "code" : "QC04.2",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE15",
          "target" : [
            {
              "code" : "QC04.1",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE16",
          "target" : [
            {
              "code" : "QC04.0",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE17",
          "target" : [
            {
              "code" : "QC04.Y",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE127",
          "target" : [
            {
              "code" : "1A07",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE128",
          "target" : [
            {
              "code" : "1E32",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE129",
          "target" : [
            {
              "code" : "1F03",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE133",
          "target" : [
            {
              "code" : "1C12",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE135",
          "target" : [
            {
              "code" : "1D80",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE136",
          "target" : [
            {
              "code" : "1E90",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE137",
          "target" : [
            {
              "code" : "1E50.0",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE139",
          "target" : [
            {
              "code" : "1B1Z",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE140",
          "target" : [
            {
              "code" : "1E50.1",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE141",
          "target" : [
            {
              "code" : "XN0FG",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE142",
          "target" : [
            {
              "code" : "1C13",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE143",
          "target" : [
            {
              "code" : "XN6N7",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE144",
          "target" : [
            {
              "code" : "XN8JY",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE175",
          "target" : [
            {
              "code" : "1C85",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE146",
          "target" : [
            {
              "code" : "1C81",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE176",
          "target" : [
            {
              "code" : "1C17",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE177",
          "target" : [
            {
              "code" : "CA40.07",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE178",
          "target" : [
            {
              "code" : "1F02",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE179",
          "target" : [
            {
              "code" : "1D2Z",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE180",
          "target" : [
            {
              "code" : "1C82",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE181",
          "target" : [
            {
              "code" : "1C1C",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE182",
          "target" : [
            {
              "code" : "1A00",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE183",
          "target" : [
            {
              "code" : "1C80",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE184",
          "target" : [
            {
              "code" : "1D47",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE148",
          "target" : [
            {
              "code" : "RA01",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE92",
          "target" : [
            {
              "code" : "PK81.7",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE95",
          "target" : [
            {
              "code" : "NE80.3",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE96",
          "target" : [
            {
              "code" : "EH77",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE98",
          "target" : [
            {
              "code" : "8A63.Y",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE99",
          "target" : [
            {
              "code" : "1B75.3",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE100",
          "target" : [
            {
              "code" : "1G40",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE101",
          "target" : [
            {
              "code" : "8E47",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE102",
          "target" : [
            {
              "code" : "1C45",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE103",
          "target" : [
            {
              "code" : "4A84",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE104",
          "target" : [
            {
              "code" : "MG26",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE105",
          "target" : [
            {
              "code" : "NE80.Y",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE109",
          "target" : [
            {
              "code" : "XS2R",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE110",
          "target" : [
            {
              "code" : "QF10",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE205",
          "target" : [
            {
              "code" : "1C62.Z",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE206",
          "target" : [
            {
              "code" : "QA02.Y",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE208",
          "target" : [
            {
              "code" : "KA21.4",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE209",
          "target" : [
            {
              "code" : "4B4Z",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE245",
          "target" : [
            {
              "code" : "XM0EK6",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE247",
          "target" : [
            {
              "code" : "1B1Z",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE248",
          "target" : [
            {
              "code" : "QA02.0",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE211",
          "target" : [
            {
              "code" : "KA21",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE212",
          "target" : [
            {
              "code" : "XM0N50",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE213",
          "target" : [
            {
              "code" : "XM5V19",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE214",
          "target" : [
            {
              "code" : "XM79H3",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE217",
          "target" : [
            {
              "code" : "XM0LB5",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE218",
          "target" : [
            {
              "code" : "XM47S0",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE221",
          "target" : [
            {
              "code" : "XM8MP6",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE222",
          "target" : [
            {
              "code" : "XM8MP6",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE223",
          "target" : [
            {
              "code" : "XM8MP6",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE224",
          "target" : [
            {
              "code" : "XM8MP6",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE226",
          "target" : [
            {
              "code" : "XM8BU8",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE227",
          "target" : [
            {
              "code" : "XM3SF6",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE228",
          "target" : [
            {
              "code" : "XM33K4",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE230",
          "target" : [
            {
              "code" : "XM3Z26",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE231",
          "target" : [
            {
              "code" : "XM29K4",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE233",
          "target" : [
            {
              "code" : "XM2280",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE234",
          "target" : [
            {
              "code" : "XM18Y8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE235",
          "target" : [
            {
              "code" : "XM2EH7",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE252",
          "target" : [
            {
              "code" : "XM92B2",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE238",
          "target" : [
            {
              "code" : "XM6LL6",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE239",
          "target" : [
            {
              "code" : "XM2A12",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE255",
          "target" : [
            {
              "code" : "XM9V38",
              "equivalence" : "relatedto"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://id.who.int/icd/release/11/mms",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "element" : [
        {
          "code" : "QC06",
          "target" : [
            {
              "code" : "DE158",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "QC04.Z",
          "target" : [
            {
              "code" : "DE159",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "QA41",
          "target" : [
            {
              "code" : "DE162",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "4B4Z",
          "target" : [
            {
              "code" : "DE163",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "4B4Z",
          "target" : [
            {
              "code" : "DE200",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "PH48",
          "target" : [
            {
              "code" : "DE164",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "4B4Z",
          "target" : [
            {
              "code" : "DE165",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "4B4Z",
          "target" : [
            {
              "code" : "DE187",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QC44.0",
          "target" : [
            {
              "code" : "DE166",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC44.2",
          "target" : [
            {
              "code" : "DE167",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "1C62.1",
          "target" : [
            {
              "code" : "DE168",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QB98",
          "target" : [
            {
              "code" : "DE170",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "MG25",
          "target" : [
            {
              "code" : "DE188",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "1B1Z",
          "target" : [
            {
              "code" : "DE190",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QA48.1",
          "target" : [
            {
              "code" : "DE191",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "LA02",
          "target" : [
            {
              "code" : "DE192",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "LB31.3",
          "target" : [
            {
              "code" : "DE193",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1A40.Z",
          "target" : [
            {
              "code" : "DE194",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "MG26",
          "target" : [
            {
              "code" : "DE195",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QA1Y",
          "target" : [
            {
              "code" : "DE86",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QA1Y",
          "target" : [
            {
              "code" : "DE87",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QA1Y",
          "target" : [
            {
              "code" : "DE88",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QA1Y",
          "target" : [
            {
              "code" : "DE89",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QA1Y",
          "target" : [
            {
              "code" : "DE90",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QA1Y",
          "target" : [
            {
              "code" : "DE91",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QC04",
          "target" : [
            {
              "code" : "DE5",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "QC04.Y",
          "target" : [
            {
              "code" : "DE6",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QC04.Y",
          "target" : [
            {
              "code" : "DE7",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QC04.7",
          "target" : [
            {
              "code" : "DE8",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "QC04.5",
          "target" : [
            {
              "code" : "DE9",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC04.6",
          "target" : [
            {
              "code" : "DE10",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC04.Z",
          "target" : [
            {
              "code" : "DE11",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC04.4",
          "target" : [
            {
              "code" : "DE12",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC04.3",
          "target" : [
            {
              "code" : "DE13",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC04.2",
          "target" : [
            {
              "code" : "DE14",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC04.1",
          "target" : [
            {
              "code" : "DE15",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC04.0",
          "target" : [
            {
              "code" : "DE16",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "QC04.Y",
          "target" : [
            {
              "code" : "DE17",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1A07",
          "target" : [
            {
              "code" : "DE127",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1E32",
          "target" : [
            {
              "code" : "DE128",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "1F03",
          "target" : [
            {
              "code" : "DE129",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1C12",
          "target" : [
            {
              "code" : "DE133",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1D80",
          "target" : [
            {
              "code" : "DE135",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1E90",
          "target" : [
            {
              "code" : "DE136",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1E50.0",
          "target" : [
            {
              "code" : "DE137",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "1B1Z",
          "target" : [
            {
              "code" : "DE139",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "1E50.1",
          "target" : [
            {
              "code" : "DE140",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "XN0FG",
          "target" : [
            {
              "code" : "DE141",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1C13",
          "target" : [
            {
              "code" : "DE142",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XN6N7",
          "target" : [
            {
              "code" : "DE143",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XN8JY",
          "target" : [
            {
              "code" : "DE144",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1C85",
          "target" : [
            {
              "code" : "DE175",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1C81",
          "target" : [
            {
              "code" : "DE146",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "1C17",
          "target" : [
            {
              "code" : "DE176",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "CA40.07",
          "target" : [
            {
              "code" : "DE177",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1F02",
          "target" : [
            {
              "code" : "DE178",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1D2Z",
          "target" : [
            {
              "code" : "DE179",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "1C82",
          "target" : [
            {
              "code" : "DE180",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1C1C",
          "target" : [
            {
              "code" : "DE181",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1A00",
          "target" : [
            {
              "code" : "DE182",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1C80",
          "target" : [
            {
              "code" : "DE183",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "1D47",
          "target" : [
            {
              "code" : "DE184",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "RA01",
          "target" : [
            {
              "code" : "DE148",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "PK81.7",
          "target" : [
            {
              "code" : "DE92",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "NE80.3",
          "target" : [
            {
              "code" : "DE95",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "EH77",
          "target" : [
            {
              "code" : "DE96",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "8A63.Y",
          "target" : [
            {
              "code" : "DE98",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "1B75.3",
          "target" : [
            {
              "code" : "DE99",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "1G40",
          "target" : [
            {
              "code" : "DE100",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "8E47",
          "target" : [
            {
              "code" : "DE101",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "1C45",
          "target" : [
            {
              "code" : "DE102",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "4A84",
          "target" : [
            {
              "code" : "DE103",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "MG26",
          "target" : [
            {
              "code" : "DE104",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "NE80.Y",
          "target" : [
            {
              "code" : "DE105",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "XS2R",
          "target" : [
            {
              "code" : "DE109",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "QF10",
          "target" : [
            {
              "code" : "DE110",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "1C62.Z",
          "target" : [
            {
              "code" : "DE205",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "QA02.Y",
          "target" : [
            {
              "code" : "DE206",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "KA21.4",
          "target" : [
            {
              "code" : "DE208",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "4B4Z",
          "target" : [
            {
              "code" : "DE209",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM0EK6",
          "target" : [
            {
              "code" : "DE245",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "1B1Z",
          "target" : [
            {
              "code" : "DE247",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "QA02.0",
          "target" : [
            {
              "code" : "DE248",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "KA21",
          "target" : [
            {
              "code" : "DE211",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "XM0N50",
          "target" : [
            {
              "code" : "DE212",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "XM5V19",
          "target" : [
            {
              "code" : "DE213",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XM79H3",
          "target" : [
            {
              "code" : "DE214",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XM0LB5",
          "target" : [
            {
              "code" : "DE217",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM47S0",
          "target" : [
            {
              "code" : "DE218",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XM8MP6",
          "target" : [
            {
              "code" : "DE221",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM8MP6",
          "target" : [
            {
              "code" : "DE222",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM8MP6",
          "target" : [
            {
              "code" : "DE223",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM8MP6",
          "target" : [
            {
              "code" : "DE224",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM8BU8",
          "target" : [
            {
              "code" : "DE226",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM3SF6",
          "target" : [
            {
              "code" : "DE227",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM33K4",
          "target" : [
            {
              "code" : "DE228",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM3Z26",
          "target" : [
            {
              "code" : "DE230",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XM29K4",
          "target" : [
            {
              "code" : "DE231",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM2280",
          "target" : [
            {
              "code" : "DE233",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XM18Y8",
          "target" : [
            {
              "code" : "DE234",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XM2EH7",
          "target" : [
            {
              "code" : "DE235",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XM92B2",
          "target" : [
            {
              "code" : "DE252",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "XM6LL6",
          "target" : [
            {
              "code" : "DE238",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "XM2A12",
          "target" : [
            {
              "code" : "DE239",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "XM9V38",
          "target" : [
            {
              "code" : "DE255",
              "equivalence" : "relatedto"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "target" : "http://loinc.org",
      "element" : [
        {
          "code" : "DE19",
          "target" : [
            {
              "code" : "39236-5",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE20",
          "target" : [
            {
              "code" : "30952-6",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE201",
          "target" : [
            {
              "code" : "21975-8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE202",
          "target" : [
            {
              "code" : "75612-2",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE162",
          "target" : [
            {
              "code" : "82810-3",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE163",
          "target" : [
            {
              "code" : "96381-9",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE200",
          "target" : [
            {
              "code" : "96381-9",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE165",
          "target" : [
            {
              "code" : "96381-9",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE187",
          "target" : [
            {
              "code" : "82757-6",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE168",
          "target" : [
            {
              "code" : "47244-9",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE170",
          "target" : [
            {
              "code" : "LL3859-7",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE191",
          "target" : [
            {
              "code" : "63895-7",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE22",
          "target" : [
            {
              "code" : "72060-7",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE23",
          "target" : [
            {
              "code" : "30957-5",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE24",
          "target" : [
            {
              "code" : "30959-1",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE26",
          "target" : [
            {
              "code" : "74066-2",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE34",
          "target" : [
            {
              "code" : "82745-1",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE93",
          "target" : [
            {
              "code" : "30953-4",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE186",
          "target" : [
            {
              "code" : "39289-4",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE204",
          "target" : [
            {
              "code" : "55277-8",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE205",
          "target" : [
            {
              "code" : "45683-0",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE208",
          "target" : [
            {
              "code" : "76517-2",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE209",
          "target" : [
            {
              "code" : "96381-9",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE244",
          "target" : [
            {
              "code" : "27415-9",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE245",
          "target" : [
            {
              "code" : "39263-9",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE247",
          "target" : [
            {
              "code" : "45241-7",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE211",
          "target" : [
            {
              "code" : "8339-4",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://loinc.org",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "element" : [
        {
          "code" : "39236-5",
          "target" : [
            {
              "code" : "DE19",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "30952-6",
          "target" : [
            {
              "code" : "DE20",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "21975-8",
          "target" : [
            {
              "code" : "DE201",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "75612-2",
          "target" : [
            {
              "code" : "DE202",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "82810-3",
          "target" : [
            {
              "code" : "DE162",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "96381-9",
          "target" : [
            {
              "code" : "DE163",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "96381-9",
          "target" : [
            {
              "code" : "DE200",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "96381-9",
          "target" : [
            {
              "code" : "DE165",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "82757-6",
          "target" : [
            {
              "code" : "DE187",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "47244-9",
          "target" : [
            {
              "code" : "DE168",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "LL3859-7",
          "target" : [
            {
              "code" : "DE170",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "63895-7",
          "target" : [
            {
              "code" : "DE191",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "72060-7",
          "target" : [
            {
              "code" : "DE22",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "30957-5",
          "target" : [
            {
              "code" : "DE23",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "30959-1",
          "target" : [
            {
              "code" : "DE24",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "74066-2",
          "target" : [
            {
              "code" : "DE26",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "82745-1",
          "target" : [
            {
              "code" : "DE34",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "30953-4",
          "target" : [
            {
              "code" : "DE93",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "39289-4",
          "target" : [
            {
              "code" : "DE186",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "55277-8",
          "target" : [
            {
              "code" : "DE204",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "45683-0",
          "target" : [
            {
              "code" : "DE205",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "76517-2",
          "target" : [
            {
              "code" : "DE208",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "96381-9",
          "target" : [
            {
              "code" : "DE209",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "27415-9",
          "target" : [
            {
              "code" : "DE244",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "39263-9",
          "target" : [
            {
              "code" : "DE245",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "45241-7",
          "target" : [
            {
              "code" : "DE247",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "8339-4",
          "target" : [
            {
              "code" : "DE211",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "target" : "http://snomed.info/sct",
      "element" : [
        {
          "code" : "DE19",
          "target" : [
            {
              "code" : "787859002",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE201",
          "target" : [
            {
              "code" : "406543005",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE202",
          "target" : [
            {
              "code" : "3401000175105",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE158",
          "target" : [
            {
              "code" : "722187008",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "DE162",
          "target" : [
            {
              "code" : "77386006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE163",
          "target" : [
            {
              "code" : "370388006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE200",
          "target" : [
            {
              "code" : "370388006",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE164",
          "target" : [
            {
              "code" : "86553008",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE165",
          "target" : [
            {
              "code" : "370388006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE187",
          "target" : [
            {
              "code" : "234532001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE166",
          "target" : [
            {
              "code" : "10839421000119100",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE167",
          "target" : [
            {
              "code" : "419076005",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE168",
          "target" : [
            {
              "code" : "86406008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE170",
          "target" : [
            {
              "code" : "116859006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE188",
          "target" : [
            {
              "code" : "39104002",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE190",
          "target" : [
            {
              "code" : "56717001",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE191",
          "target" : [
            {
              "code" : "169750002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE192",
          "target" : [
            {
              "code" : "67531005",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE193",
          "target" : [
            {
              "code" : "204997000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE194",
          "target" : [
            {
              "code" : "69776003",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE195",
          "target" : [
            {
              "code" : "386661006",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE4",
          "target" : [
            {
              "code" : "385660001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE9",
          "target" : [
            {
              "code" : "591000119102",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE13",
          "target" : [
            {
              "code" : "370388006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE14",
          "target" : [
            {
              "code" : "39104002",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE15",
          "target" : [
            {
              "code" : "39104002",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE127",
          "target" : [
            {
              "code" : "4834000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE128",
          "target" : [
            {
              "code" : "6142004",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE129",
          "target" : [
            {
              "code" : "14189004",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE133",
          "target" : [
            {
              "code" : "27836007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE135",
          "target" : [
            {
              "code" : "36989005",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE136",
          "target" : [
            {
              "code" : "38907003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE137",
          "target" : [
            {
              "code" : "40468003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE139",
          "target" : [
            {
              "code" : "56717001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE140",
          "target" : [
            {
              "code" : "66071002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE141",
          "target" : [
            {
              "code" : "70036007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE142",
          "target" : [
            {
              "code" : "76902006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE143",
          "target" : [
            {
              "code" : "186150001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE144",
          "target" : [
            {
              "code" : "240532009",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE175",
          "target" : [
            {
              "code" : "52947006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE146",
          "target" : [
            {
              "code" : "398102009",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE176",
          "target" : [
            {
              "code" : "397428000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE177",
          "target" : [
            {
              "code" : "16814004",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE178",
          "target" : [
            {
              "code" : "36653000",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE179",
          "target" : [
            {
              "code" : "20927009",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE180",
          "target" : [
            {
              "code" : "14168008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE181",
          "target" : [
            {
              "code" : "7180009",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE182",
          "target" : [
            {
              "code" : "63650001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE183",
          "target" : [
            {
              "code" : "712986001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE184",
          "target" : [
            {
              "code" : "16541001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE148",
          "target" : [
            {
              "code" : "840539006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE92",
          "target" : [
            {
              "code" : "418799008",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE108",
          "target" : [
            {
              "code" : "399166001",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE109",
          "target" : [
            {
              "code" : "442452003",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE110",
          "target" : [
            {
              "code" : "21134002",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE111",
          "target" : [
            {
              "code" : "32485007",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE112",
          "target" : [
            {
              "code" : "276654001",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE115",
          "target" : [
            {
              "code" : "293104008",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "DE185",
          "target" : [
            {
              "code" : "185353001",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE186",
          "target" : [
            {
              "code" : "410671006",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE204",
          "target" : [
            {
              "code" : "278977008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE205",
          "target" : [
            {
              "code" : "165816005",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE206",
          "target" : [
            {
              "code" : "165815009",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE207",
          "target" : [
            {
              "code" : "261665006",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE208",
          "target" : [
            {
              "code" : "395507008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE209",
          "target" : [
            {
              "code" : "370388006",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE244",
          "target" : [
            {
              "code" : "68311008",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE245",
          "target" : [
            {
              "code" : "28163009",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "DE247",
          "target" : [
            {
              "code" : "10828004",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE248",
          "target" : [
            {
              "code" : "260385009",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "DE213",
          "target" : [
            {
              "code" : "871740006",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    },
    {
      "source" : "http://snomed.info/sct",
      "target" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "element" : [
        {
          "code" : "787859002",
          "target" : [
            {
              "code" : "DE19",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "406543005",
          "target" : [
            {
              "code" : "DE201",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "3401000175105",
          "target" : [
            {
              "code" : "DE202",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "722187008",
          "target" : [
            {
              "code" : "DE158",
              "equivalence" : "relatedto"
            }
          ]
        },
        {
          "code" : "77386006",
          "target" : [
            {
              "code" : "DE162",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "370388006",
          "target" : [
            {
              "code" : "DE163",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "370388006",
          "target" : [
            {
              "code" : "DE200",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "86553008",
          "target" : [
            {
              "code" : "DE164",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "370388006",
          "target" : [
            {
              "code" : "DE165",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "234532001",
          "target" : [
            {
              "code" : "DE187",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "10839421000119100",
          "target" : [
            {
              "code" : "DE166",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "419076005",
          "target" : [
            {
              "code" : "DE167",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "86406008",
          "target" : [
            {
              "code" : "DE168",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "116859006",
          "target" : [
            {
              "code" : "DE170",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "39104002",
          "target" : [
            {
              "code" : "DE188",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "56717001",
          "target" : [
            {
              "code" : "DE190",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "169750002",
          "target" : [
            {
              "code" : "DE191",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "67531005",
          "target" : [
            {
              "code" : "DE192",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "204997000",
          "target" : [
            {
              "code" : "DE193",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "69776003",
          "target" : [
            {
              "code" : "DE194",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "386661006",
          "target" : [
            {
              "code" : "DE195",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "385660001",
          "target" : [
            {
              "code" : "DE4",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "591000119102",
          "target" : [
            {
              "code" : "DE9",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "370388006",
          "target" : [
            {
              "code" : "DE13",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "39104002",
          "target" : [
            {
              "code" : "DE14",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "39104002",
          "target" : [
            {
              "code" : "DE15",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "4834000",
          "target" : [
            {
              "code" : "DE127",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "6142004",
          "target" : [
            {
              "code" : "DE128",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "14189004",
          "target" : [
            {
              "code" : "DE129",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "27836007",
          "target" : [
            {
              "code" : "DE133",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "36989005",
          "target" : [
            {
              "code" : "DE135",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "38907003",
          "target" : [
            {
              "code" : "DE136",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "40468003",
          "target" : [
            {
              "code" : "DE137",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "56717001",
          "target" : [
            {
              "code" : "DE139",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "66071002",
          "target" : [
            {
              "code" : "DE140",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "70036007",
          "target" : [
            {
              "code" : "DE141",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "76902006",
          "target" : [
            {
              "code" : "DE142",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "186150001",
          "target" : [
            {
              "code" : "DE143",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "240532009",
          "target" : [
            {
              "code" : "DE144",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "52947006",
          "target" : [
            {
              "code" : "DE175",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "398102009",
          "target" : [
            {
              "code" : "DE146",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "397428000",
          "target" : [
            {
              "code" : "DE176",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "16814004",
          "target" : [
            {
              "code" : "DE177",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "36653000",
          "target" : [
            {
              "code" : "DE178",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "20927009",
          "target" : [
            {
              "code" : "DE179",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "14168008",
          "target" : [
            {
              "code" : "DE180",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "7180009",
          "target" : [
            {
              "code" : "DE181",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "63650001",
          "target" : [
            {
              "code" : "DE182",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "712986001",
          "target" : [
            {
              "code" : "DE183",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "16541001",
          "target" : [
            {
              "code" : "DE184",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "840539006",
          "target" : [
            {
              "code" : "DE148",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "418799008",
          "target" : [
            {
              "code" : "DE92",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "399166001",
          "target" : [
            {
              "code" : "DE108",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "442452003",
          "target" : [
            {
              "code" : "DE109",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "21134002",
          "target" : [
            {
              "code" : "DE110",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "32485007",
          "target" : [
            {
              "code" : "DE111",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "276654001",
          "target" : [
            {
              "code" : "DE112",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "293104008",
          "target" : [
            {
              "code" : "DE115",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "185353001",
          "target" : [
            {
              "code" : "DE185",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "410671006",
          "target" : [
            {
              "code" : "DE186",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "278977008",
          "target" : [
            {
              "code" : "DE204",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "165816005",
          "target" : [
            {
              "code" : "DE205",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "165815009",
          "target" : [
            {
              "code" : "DE206",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "261665006",
          "target" : [
            {
              "code" : "DE207",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "395507008",
          "target" : [
            {
              "code" : "DE208",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "370388006",
          "target" : [
            {
              "code" : "DE209",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "68311008",
          "target" : [
            {
              "code" : "DE244",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "28163009",
          "target" : [
            {
              "code" : "DE245",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "10828004",
          "target" : [
            {
              "code" : "DE247",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "260385009",
          "target" : [
            {
              "code" : "DE248",
              "equivalence" : "narrower",
              "comment" : "Per the Immunizations DAK"
            }
          ]
        },
        {
          "code" : "871740006",
          "target" : [
            {
              "code" : "DE213",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
