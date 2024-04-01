RuleSet: Stratifier( idprefix, count, code )
* stratifier[+]
  * id = "{idprefix}.S{count}"
  * code = {code}
  * criteria.language = #text/cql-identifier
  * criteria.expression = "Stratification {count}"

RuleSet: MeasureProportion( description, library, version, date, idprefix)
* description = "{description}"
* url = "http://smart.who.int/ig/smart-immunizations/Measure/{library}"
* version = "{version}"
* status = #draft
* experimental = false
* date = "{date}"
* name = "{library}"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/ig/smart-immunizations/Library/{library}"
* scoring = $measure-scoring#proportion "Proportion"
* group[+]
  * population[initialPopulation]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "{idprefix}.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Initial Population"
  * population[denominator]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "{idprefix}.D"
    * description = "Denominator"
    * code = $measure-population#denominator "Denominator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator"
  * population[numerator]
    * extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
    * id = "{idprefix}.N"
    * description = "Numerator"
    * code = $measure-population#numerator "Numerator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator"
  * insert Stratifier( {idprefix}, 1, IMMZ.I#DE32 "By-Administrative Area" )
  * insert Stratifier( {idprefix}, 2, IMMZ.I#DE31 "By-Sex" )
  * insert Stratifier( {idprefix}, 3, IMMZ.I#DE33 "By-Age group" )
  * insert Stratifier( {idprefix}, 4, IMMZ.I#DE33 "By-Age group" )