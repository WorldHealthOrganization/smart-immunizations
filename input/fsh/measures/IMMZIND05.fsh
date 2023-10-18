Instance: IMMZIND05
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cv-measure-cqfm
Title: "IMMZIND05"

* description = "IMMZ.IND.05 Measles indicator for first dose."
* url = "http://smart.who.int/ig/smart-immunizations/Measure/IMMZIND05"
* version = "0.1.0"
* status = #draft
* experimental = false
* date = "2023-10-05"
* name = "IMMZIND05"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZINDMeasles"
* scoring = $measure-scoring#continuous-variable "Continuous Variable"
* group[+]
  * population[initialPopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.05.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql
    * criteria.expression = "Initial Population 05"
  * population[measurePopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.05.MP"
    * description = "Measure Population"
    * code = $measure-population#measure-population "Measure Population"
    * criteria.language = #text/cql
    * criteria.expression = "Measure Population 05"
  * population[measureObservation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-criteriaReference].valueString = "measure-population"
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-aggregateMethod].valueCode = #count
    * id = "IMMZ.IND.05.MO"
    * description = "Measure Observation"
    * code = $measure-population#measure-observation
    * criteria.language = #text/cql
    * criteria.expression = "Measure Observation 05"
  * stratifier[+]
    * id = "IMMZ.IND.05.S"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification"