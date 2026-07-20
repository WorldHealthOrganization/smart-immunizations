
/*
 * Library: IMMZD5DTPolio (IMMZ.D5.DT.Polio contraindications)
 * Rule: "Check for contraindications before administering the vaccine(s) due	"
 * Decision Table: Potential contraindications				
 * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
 */
library IMMZD5DTPolio
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTPolioInput called input

// End Skeleton CQL
context Patient

/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case 
    when Patient.id = '87.allergic' then "Polio vaccination could be contraindicated. Clinical judgement required" and "Guidance" = 'Do not vaccinate client for IPV if client has had a previous severe reaction or known allergy to streptomycin, neomycin or polymyxin B.
Do not vaccinate client for OPV if client has had a allergic reaction to OPV or to the trace antibiotics contained.'
    when Patient.id = '88.immunocompromised' then "Polio vaccination with bOPV is contraindicated Case 1" and "Guidance" = 'For bOPV dose, do not vaccinate  client for bOPV dose as bOPV vaccination is contraindicated in severely immunocompromised clients. 

Check if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement.'
    when Patient.id = '89.immunodeficiency' then "Polio vaccination with bOPV is contraindicated Case 2" and "Guidance" = 'For bOPV dose, do not vaccinate  client for bOPV dose as bOPV vaccination is contraindicated in clients with immunodeficiency disorders.. 

Check if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement.'
    else 'No test case set'
  end

/*
@internal: Draft Medication Request for Polio bOPV dose
*/
define "Draft Medication Request for bOPV dose":
	[MedicationRequest: IMMZc."Polio Vaccine - bOPV"] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
@dynamicValue: Draft Medication Request ID for Polio bOPV dose
*/
define "Draft Medication Request ID for bOPV dose":
	First("Draft Medication Request for bOPV dose").id

/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Polio vaccination could be contraindicated. Clinical judgement required" then "Polio vaccination could be contraindicated. Clinical judgement required Guidance"
    when "Polio vaccination with bOPV is contraindicated" then "Polio vaccination with bOPV is contraindicated Guidance"
    else ''
  end

/*
@output: Polio vaccination could be contraindicated. Clinical judgement required
@pseudocode: "Immunization recommendation status" = 'Further evaluation needed'
*/
define "Polio vaccination could be contraindicated. Clinical judgement required":
  input."The client has history of severe allergic reactions"

/*
@output: Polio vaccination could be contraindicated. Clinical judgement required Guidance
@guidance: Do not vaccinate client for IPV if client has had a previous severe reaction or known allergy to streptomycin, neomycin or polymyxin B.
Do not vaccinate client for OPV if client has had a allergic reaction to OPV or to the trace antibiotics contained.
*/
define "Polio vaccination could be contraindicated. Clinical judgement required Guidance":
  'Do not vaccinate client for IPV if client has had a previous severe reaction or known allergy to streptomycin, neomycin or polymyxin B.
Do not vaccinate client for OPV if client has had a allergic reaction to OPV or to the trace antibiotics contained.'

/*
@output: Polio vaccination with bOPV is contraindicated Case 1
@pseudocode: "Immunization recommendation status" =  'Contraindicated' (where "Type of polio dose" = 'bOPV') AND "Immunization recommendation status" = 'Further evaluation needed' (where "Type of polio dose" = 'IPV')
*/
define "Polio vaccination with bOPV is contraindicated Case 1":
  input."The client is severely immunocompromised"

/*
@output: Polio vaccination with bOPV is contraindicated Case 2
@pseudocode: "Immunization recommendation status" =  'Contraindicated' (where "Type of polio dose" = 'bOPV') AND "Immunization recommendation status" = 'Further evaluation needed' (where "Type of polio dose" = 'IPV')

*/
define "Polio vaccination with bOPV is contraindicated Case 2":
  input."The client has immunodeficiency syndromes"

/*
@output: Polio vaccination with bOPV is contraindicated
@pseudocode: "Immunization recommendation status" =  'Contraindicated' (where "Type of polio dose" = 'bOPV') AND "Immunization recommendation status" = 'Further evaluation needed' (where "Type of polio dose" = 'IPV')
*/
define "Polio vaccination with bOPV is contraindicated":
  "Polio vaccination with bOPV is contraindicated Case 1"
    or "Polio vaccination with bOPV is contraindicated Case 2"

/*
@output: Polio vaccination with bOPV is contraindicated Guidance
@guidance: For bOPV dose, do not vaccinate  client for bOPV dose as bOPV vaccination is contraindicated in severely immunocompromised clients. 

Check if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement.
@guidance: For bOPV dose, do not vaccinate  client for bOPV dose as bOPV vaccination is contraindicated in clients with immunodeficiency disorders.. 

Check if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement.
*/
define "Polio vaccination with bOPV is contraindicated Guidance":
  case
    when "Polio vaccination with bOPV is contraindicated Case 1" then 'For bOPV dose, do not vaccinate  client for bOPV dose as bOPV vaccination is contraindicated in severely immunocompromised clients. 

Check if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement.'
    when "Polio vaccination with bOPV is contraindicated Case 2" then 'For bOPV dose, do not vaccinate  client for bOPV dose as bOPV vaccination is contraindicated in clients with immunodeficiency disorders.. 

Check if vaccination with IPV is appropriate for the client, consider risks of vaccination and make a clinical judgement.'
    else ''
  end

