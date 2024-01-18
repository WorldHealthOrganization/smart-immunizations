Instance: IMMZIND07MeaslesLowTx
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
Title: "IMMZIND07MeaslesLowTx"

* description = "IMMZ.IND.07 Measles indicator for first dose in Low Transmission area."
* url = "http://smart.who.int/ig/smart-immunizations/Measure/IMMZIND07MeaslesLowTx"
* version = "0.1.0"
* status = #draft
* experimental = false
* date = "2024-01-16"
* name = "IMMZIND07MeaslesLowTx"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZIND07MeaslesLowTx"
* scoring = $measure-scoring#proportion "Proportion"
* group[+]
  * population[initialPopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.07.LTx.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql
    * criteria.expression = "Initial Population"
  * population[denominator]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.07.LTx.D"
    * description = "Denominator"
    * code = $measure-population#denominator "Denominator"
    * criteria.language = #text/cql
    * criteria.expression = "Denominator"
  * population[numerator]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "IMMZ.IND.07.LTx.N"
    * description = "Numerator"
    * code = $measure-population#numerator "Numerator"
    * criteria.language = #text/cql
    * criteria.expression = "Numerator"
  * stratifier[+]
    * id = "IMMZ.IND.07.LTx.S1"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification 1"
  * stratifier[+]
    * id = "IMMZ.IND.07.LTx.S2"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification 2"
  * stratifier[+]
    * id = "IMMZ.IND.07.LTx.S3"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification 3"
  * stratifier[+]
    * id = "IMMZ.IND.07.LTx.S4"
    * criteria.language = #text/cql
    * criteria.expression = "Stratification 4"