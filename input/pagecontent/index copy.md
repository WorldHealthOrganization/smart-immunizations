### Introduction

This implementation guide provides implementation resources and guidance in support of applying the WHO recommendations on routine vaccinations:
[The World Health Organization's (WHO) Recommendations on Immunization](https://www.who.int/teams/immunization-vaccines-and-biologicals). The decision support artifacts specifically represent the content defined as part of routine immunizations: [WHO recommendations for routine immunization - summary tables](https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables)

The implementation guide is part of the [WHO SMART Guidelines approach](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) to support countries to integrate WHO global data and health recommendations into digital systems accurately and consistently. It defines a series of FHIR Resources, Profiles, Extensions, and Terminology based on the [WHO Immunization Digital Adaptation Kit](). 

This guide utilizes the [International Patient Summary(IPS)](https://hl7.org/fhir/uv/ips/) as a base for defining immunizations and expects that most data captured will be presented in conformance with the resources defined as part of that implementation guide. 

This guide is prepared to facilitate digital implementation of WHO Immunization guidelines by providing FHIR-based computable representations of and implementation guidance for using the key components of the WHO Immunization digital adaptation kit (DAK):

* Health Interventions & Recommendations
* Generic Personas
* User Scenarios
* Business Processes & Workflows
* Core Data Elements
* Decision Support Logic
* Indicators & Monitoring
* Functional & Non-functional Requirements

This guide is a companion to the Digital Adaptation Kit (DAK) and should be used side-by-side with it. Implementers are strongly encouraged to make use of the Digital Adaptation Kit as it contains a wealth of context and guidance that is intentionally not duplicated here. The focus of this guide is on the explanation and use of the computable artifacts.

The DAKs content used in this implementation guide and their content are referenced in the follows pages: 

|Page|Description|
|----|----|
|[Documentation](documentation.html)| Describes make up of the resources in this implementation guide, with focus on the decision logic|
|[Workflows](workflows.html)|Describes some of the workflows and business processes used in this immunization IG|
|[Indicators](indicators.html)|Describes how to implement indicators in this IG|


This guide assumes use of the following resources: 
* [IPS Patient](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* [IPS Immunization](http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips)
* [CPG ActivityDefinitions](https://hl7.org/fhir/uv/cpg/artifacts.html#activitydefinition-index)
* [CPG ImmunizationRecommendation](http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrecommendation)

For a complete listing of the artifacts defined in this implementation guide, refer to the [Artifact Index](artifacts.html).

Implementation content, as well as a complete offline copy of this implementation guide can be found on the [Downloads](downloads.html) page.

Note that the content of this implementation guide is draft material that has not yet been tested or validated for use in production environments.

#### Clinial Quality Language
This Implementation Guide makes use of [Clinical Quality Language](https://cql.hl7.org/) for the decision support artifacts including the PlanDefinitions and Measures. They are used to express how a calculation should occur and can be used with a CQL engine in order to process the decision or indicator directly from the applicable FHIR resources. Links to this specification, the FHIR Clinical Practice Guidelines Speciciation, and other helpful resources can be found in the Support dropdown.