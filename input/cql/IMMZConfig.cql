library IMMZConfig
using FHIR version '4.0.1'
include IMMZConcepts called IMMZc

context Patient 

define "High incidence of TB and/or high leprosy burden": true
define "Polio-endemic country with high risk of spread": true
/*
define "Combined bOPV and IPV Schedule": true
define "Sequential IPV-OPV Schedule": true
*/
/*
 * Possible Polio dose schemes are 'combined', 'sequential', or 'ipv'
 */
define "Polio dose scheme": 'combined'
define "Country has a high risk of exposure to polio": true
define "High Coverage of Polio and Risk of Wild Importation": true

define "In a country where the peak burden of severe Hib disease occurs in young infants":true
define "In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine": true
define "Hib dose scheme": '1p'
define "Hepatitis A endemic country": true

define "Japanese Encephalitis dose scheme": 'attenuated'
/*
define "Country is administering Live recombinant JE antigen":true
define "Country is administering Live attentuated JE antigen": true
define "Country is administering Inactivated Vero cell-derived JE antigen": true
*/
define "Country recognizes JE as a health priority": true

/*
define "Country is following a 2 dose scheme for Pneumococcal": true
define "Country is following a 3 dose scheme for Pneumococcal": true
*/
define "Pneumococcal dose scheme": '2p+1'
define "Country is not highly endemic for Hepatitis A":true
define "Country is administering a Live attenuated HAV vaccine": true
define "In a setting with a high disease burden and mortality": true

define "Region recommends Meningococcal vaccination": true
define "Region recommends Cholera vaccination": true
define "Region recommends Typhoid vaccination": true
define "Country is administering the TCV vaccine": true
define "Country is administering ViPS vaccine": true
define "Country is administering an Inactivated HAV vaccine": true
define "In a setting where the risk of measles among infants < 9 months of age remains high": false
define "Country currently has a measles outbreak": false
define "Population is in conflict zones internally displaced populations and refugees": false
define "In a setting where there is high transmission of Measles":false
define "In a setting where there is low transmission of Measles":false

define "Country has Yellow Fever Endemic": true
define "Country recognizes TBE as a priority": true

define "There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old": true
define "Country recognizes Varicella an important public health burden": true
define "Country recognizes MUMPS reduction as a public health priority": true
define "Country is using a 3 dose series ROTA product": true
// TODO: 
//define "bOPV and IPV Schedule":
//	'combined'
	//'sequential';


