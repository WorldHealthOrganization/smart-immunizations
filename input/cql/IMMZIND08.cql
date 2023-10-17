/*
 * Library: IMMZ.IND.08
 * Immunization coverage for Measles containing vaccine (Estimated Denominator) 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4240 and 4260 )
 */
/* ============================================================================
 * Measle Dose 1
 * ============================================================================
 * Initial Patient Population =
 *     All patient
 *
 * Denominator =
 *     Demographic data from measure report
 *
 * Numerator =
 *     Patient with 1st Measle immunization in the reporting period
 *
 * Denominator Exceptions =
 *     None
 *
 * Disaggregation:
 *    Age Group (< 1 year or 1 year or > 2 years)
 *    Geographic Region
 *    Administrative Gender (or Biological Sex)
 * 
 * ============================================================================

 /* ============================================================================
 * Measle Dose 2
 * ============================================================================
 * Initial Patient Population =
 *     All patient
 *
 * Denominator =
 *     Demographic data from measure report
 *
 * Numerator =
 *     Patient with 2nd Measle immunization in the reporting period
 *
 * Denominator Exceptions =
 *     None
 *
 * Disaggregation:
 *    Age Group (< 1 year or 1 year or > 2 years)
 *    Geographic Region
 *    Administrative Gender (or Biological Sex)
 * 
 * ============================================================================
 */

library IMMZIND08 version '1.0.1'


using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

parameter "Measurement Period" Interval<Date>
parameter "canonical_demographic_measure_url" String default 'https://fhir.who.org/Measure/demographic-for-immunization'

valueset "Measles Vaccines": 'http://fhir.org/guides/who/smart-immunization/ValueSet/IMMZ.A1.DE'

// Age codes
codesystem "ISO-8601-Derived Periods": 'http://ohie.org/ValueSet/iso-8601-derived-periods' // { 'P0Y--P1Y', 'P1Y--P5Y', ... }
code "P0Y--P1Y": 'P0Y--P1Y' from "ISO-8601-Derived Periods" display '< 1 year'
code "P1Y--P2Y": 'P1Y--P2Y' from "ISO-8601-Derived Periods" display '1 year'
code "P2Y--P9999Y": 'P1Y--P9999Y' from "ISO-8601-Derived Periods" display '2+ years'


// Sex codes
codesystem "Administrative Gender Codes": 'http://hl7.org/fhir/administrative-gender'
code "Males" : 'male' from "Administrative Gender Codes" display 'Males'
code "Females" : 'female' from "Administrative Gender Codes" display 'Females'
code "Other" : 'other' from "Administrative Gender Codes" display 'Other/NA'

context Patient

define getPatientGeographicStr:
	First(Patient.address A where A.use in { 'home' }).district

define getPatientGeographicLocation:
    if getPatientGeographicStr is not null then
      First([Location] L where L.id = id { value: getPatientGeographicStr})
    else null


/*
All patient should be included 
*/
define InitialPopulation:
	true

/*
Denominator initiation population from population measure report on district, 
needs https://build.fhir.org/ig/HL7/cqf-measures/StructureDefinition-cqfm-aggregateMethod.html 
with https://terminology.hl7.org/5.2.0/CodeSystem-measure-aggregate-method.html#measure-aggregate-method-maximum
*/
define DenominatorPopulation:
	First(
		[MeasureReport] MR 
		where MR.subject.reference = 'Location/' + getPatientGeographicStr
		and MR.measure = FHIR.canonical {value:canonical_demographic_measure_url}
		and start of "Measurement Period" in MR.period ).group.first().stratifier.first().stratum.where(
			exists(component.where(code.coding.first().code ~ code { value: 'sex'} and  value.coding.first().code ~ "Administrative Gender Stratifier".code)) 
			and exists(component.where(code.coding.first().code ~ code { value: 'AgeGroup'}   and value.coding.first().code ~ "Age Group Stratifier".code))
		).first().population.first().count


define getdoses:
	[Immunization] I 
	where I.vaccineCode in "Measles Vaccines"
	sort by (occurrence as FHIR.dateTime).value desc



define FirstDose:
	Count(getdoses) = 1 and exists(getdoses.where(ToDate(occurrence) in "Measurement Period"))


define SecondDose:
	Count(getdoses) = 2 and exists(getdoses.where(ToDate(occurrence) in "Measurement Period"))


/**
 * @description Takes the date choice of a date/string choice (for Immunization date)
 */
define function ToDate(choice Choice<FHIR.date, FHIR.string>):
  case
	  when choice is FHIR.date then
    	choice as FHIR.date
    when  ConvertsToDate(choice) then
      ToDate(choice)
		else
      Message(null as FHIR.date, true, '1', 'Error', 'Cannot compute a date from a String value')
	end

// Stratifiers

// Age Group
define "Age Group Stratifier":
  case
    when AgeInYearsAt(start of "Measurement Period") in Interval[0, 1) then "P0Y--P1Y"
    when AgeInYearsAt(start of "Measurement Period") in Interval[1, 2) then "P1Y--P2Y"
    when AgeInYearsAt(start of "Measurement Period") >= 2 then "P2Y--P9999Y"
    else null
  end

// Sex
define "Sex": Patient.gender

/**
 * By Administrative Gender of Patient Stratifier
 */
define "Administrative Gender Stratifier":
    case 
        when Patient.gender = 'male' then "Males"
        when Patient.gender = 'female' then "Females"
        else "Other"
    end

/**
 * By Administrative Gender of Patient Stratifier
 */
define "Geographic Region Stratifier":
    System.Code {code: getPatientGeographicStr}

define "Age Group / Region / Sex Stratifier":
	code { value: ("Geographic Region Stratifier".code + '__' + "Administrative Gender Stratifier".code + '__' + "Age Group Stratifier".code)}