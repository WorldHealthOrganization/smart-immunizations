Instance: IMMZIND08Measles
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
Title: "IMMZIND08Measles"

* description = "IMMZ.IND.08 Measles indicator for second dose."
* url = "http://smart.who.int/ig/smart-immunizations/Measure/IMMZIND08Measles"
* version = "0.1.0"
* status = #draft
* experimental = false
* date = "2024-01-16"
* name = "IMMZIND08Measles"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZIND08Measles"
* scoring = $measure-scoring#proportion "Proportion"
* group[+]
  * population[initialPopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.08.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql
    * criteria.expression = "Initial Population"
  * population[denominator]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.08.D"
    * description = "Denominator"
    * code = $measure-population#denominator "Denominator"
    * criteria.language = #text/cql
    * criteria.expression = "Denominator"
  * population[numerator]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.08.N"
    * description = "Numerator"
    * code = $measure-population#numerator "Numerator"
    * criteria.language = #text/cql
    * criteria.expression = "Numerator"
  * stratifier[+]
    * id = "IMMZ.IND.08.S1"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification 1"
  * stratifier[+]
    * id = "IMMZ.IND.08.S2"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification 2"
  * stratifier[+]
    * id = "IMMZ.IND.08.S3"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification 3"
  * stratifier[+]
    * id = "IMMZ.IND.08.S4"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification 4"