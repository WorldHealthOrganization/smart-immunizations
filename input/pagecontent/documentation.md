### Documentation
The documentation below details how to use this IG to execute the decision logic and the resources required to do so including PlanDefinitions, ActivityDefinitions, ValueSets, and Libraries.

#### PlanDefinitions
Each antigen in the [WHO recommendations for routine immunization - summary tables](https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables) has been represented as a FHIR PlanDefinition conformant to the FHIR Clinical Practice Guidelines Implementation guide [CPG-ComputablePlanDefinition](http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computableplandefinition). For example, there is a PlanDefinition for Hepatitis A, Measles, etc. The intention behind this design is for each implementation to utilize only the antigens that are required for their national/local context, as many countries have national vaccine routines, which may leverage the WHO guidance. The aim of this content was to be adaptable for those contexts. 

These PlanDefinitions can be found in the [Artifact Index](artifacts.html)

#### ActivityDefinitions
To represent the activities that need to be carried out, this implementation guide follows the workflow patterns established by the base FHIR specification. Each antigen represented as a PlanDefinition will be processed to produce ActivityDefnitions conform to the FHIR Clinical Practice Guidelines Implementation guide [CPG-ActivityProfiles](http://hl7.org/fhir/uv/cpg/profiles.html#activity-profiles).

In particular, processing the PlanDefinition  with the $apply operation [FHIR-Workflow](https://www.hl7.org/fhir/workflow.html) will result in the creation of an [CPG-ImmunizationActivity](http://hl7.org/fhir/uv/cpg/StructureDefinition-cpg-immunizationactivity.html)

![BCG-ImmunizationActivity](./ActivityDefinition_BCG_Example1.png)

As part of the implementation the country specific EIR (Electronic Immunization Registry) will need to fill in the ActivityDefinition.product[x]. It is not possible for this IG to recommend a specific product. There are limitations of supply chain, country specific needs, and other issues which cannot be captured and generalized to accomodate all specific use cases. 

For example, Cholera has 3 SNOMED Codes and 4 ATC Codes.

![Cholera-SNOMEDCT/ACT Codes](./Cholera_SNOMED_ATC_Example.png)

#### FHIR Library
The FHIR Library contains a base64 encoded CQL library which represents the decision logic as a series of boolean clauses. Each PlanDefinition and Measure will reference a Library from which each decision point can be made and specify which expression from the CQL is used to trigger a decision in PlanDefinition or where to retrieve data to create the MeasureReport in the Measure, repsectively.

#### ValueSets
Many of the ValueSets used in this IG are  from [CPG on FHIR](https://hl7.org/fhir/uv/cpg/) and the [IPS](https://hl7.org/fhir/uv/ips/). There are a number of generated ValueSets based on the user scenarios detailed in this IG.

There is one exception to that format which is the vaccine libraries, which map the codes between a variety of different systems including SNOMED GPS and WHO ATC in order to allow implementers to search for any vaccine which might be applicable to their user. More details on this approach is provided below. 

##### Vaccine Library
The ValueSets include a vaccine list of many codes which may be found in a patient record to see if the patient has been vaccinated with a particular antigen. For example Diptheria is often paired with Tetanus and Pertussis, it can also be paired with influenza or polio. Therefore a patient record may have an Immunization event recorded where they received a combo vaccine, which covers multiple antigens. To run decision support on a specific antigen the vaccine library contains a selection of products which might cover Diptheria. In the CQL these are used akin to an array of potential codes which may be present in the Immunization resource when calculating an indicator or decision support event. 

## Indicators
Indicators have their own structure using the FHIR Measure and MeasureReport structure. More information on these resources and how they are used in this IG can be found in the [Indicators](indicators.html)
