### Overview
The over all workflow for immunizations is documented below. More details can be found in the [WHO Immunization Digital Accelerator Kit](). The FHIR resources in this implementation guide reflect the WHO Routine immunizations by antigen as described in the [PlanDefinition Index](plandefinitionindex.html)

#### Immunization Workflow
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

#### Generic Personas 
* Health Worker
* Community Health Worker 
* Patient 

#### PlanDefinitions
Each antigen in the [WHO recommendations for routine immunization - summary tables](https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables) has been represented as a FHIR PlanDefinition conformant to the FHIR Clinical Practice Guidelines Implementation guide [CPG-ComputablePlanDefinition](). For example, there is a PlanDefinition for Hepatitis A, Measles, etc. The intention behind this design is for each implementation to utilize only the antigens that are required for their national/local context, as many countries have national vaccine routines, which may leverage the WHO guidance. The aim of this content was to be adaptable for those contexts. 

These PlanDefinitions can be found in the [Artifact Index](artifacts.html)

#### ActivityDefinitions
<!--As part of the implementation the country specific EIR will need to fill in the ActivityDefinition.product[x] it is not possible for this IG to recommend a specific product. There are limitations of supply chain, country specific needs, and other issues which cannot be captured and generalized to accomodate all specific use cases. Provide example like Cholera has 3 SNOMED Codes and 4 ATC codes - we can't assume which code an implementer might use or write reasonable logic to determine which code might be used due to our -->
#### ValueSet

##### Vaccine Library
The value sets include a vaccine list of many codes which may be found in a patient record to see if the patient has been vaccinated with a particular antigen. 
<!--add example of something that is often in a comobo vaccine  -->

#### User Scenarios


#### Business Process


#### Data Elements 