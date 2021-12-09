# Overview
The over all workflow for immunizations is documented below. More details can be found in the [WHO Immunization Digital Accelerator Kit](). The FHIR resources in this implementation guide reflect the WHO Routine immunizations by antigen as described in the [PlanDefinition Index](plandefinitionindex.html)

## Immunization Workflow
1. Facility Registration
2. Plan Service Delivery 
3. Client Reminder Call 
4. Defaulter Tracing 
5. Register Client
6. Query Client Record 
7. Administer Vaccine 
8. Resolve Duplicate Client Records 
9. Resolve Duplicate Vaccine Events
10. Report generation

## Generic Personas 
* Health Worker
* Community Health Worker 
* Patient 

## PlanDefinitions
Each antigen in the [WHO recommendations for routine immunization - summary tables](https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables) has been represented as a FHIR PlanDefinition conformant to the FHIR Clinical Practice Guidelines Implementation guide [CPG-ComputablePlanDefinition](). For example, there is a PlanDefinition for Hepatitis A, Measles, etc. The intention behind this design is for each implementation to utilize only the antigens that are required for their national/local context, as many countries have national vaccine routines, which may leverage the WHO guidance. The aim of this content was to be adaptable for those contexts. 

These PlanDefinitions can be found in the [Artifact Index](artifacts.html)

## User Scenarios


## Business Process


## Data Elements 