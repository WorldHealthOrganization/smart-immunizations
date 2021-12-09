### Introduction

This implementation guide provides implementation resources and guidance in support of applying the WHO recommendations on routine vaccinations:
[The World Health Organization's (WHO) Recommendations on Immunization](https://www.who.int/teams/immunization-vaccines-and-biologicals). The decision support artifacts specifically represent the content defined as part of routine immunizations: [WHO recommendations for routine immunization - summary tables](https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables)

The implementation guide is part of the [WHO SMART Guidelines approach]() to support countries to integrate WHO global data and health recommendations into digital systems accurately and consistently. It defines a series of FHIR Resources, Profiles, Extensions, and Terminology based on the [WHO Immunization Digital Accelerator Kit](). 

This guide utilizes the [International Patient Summary(IPS)]() as a base for defining immunizations and expects that most data captured will be presented in conformance with the resources defined as part of that implementation guide. 

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

This guide assumes use of the following resources: 
* [IPS Patient]()
* [IPS Immunization]()
* [CPG ActivityDefinitions]()
* [CPG ImmunizationRecommendation]()

For a complete listing of the artifacts defined in this implementation guide, refer to the [Artifact Index](artifacts.html).

Implementation content, as well as a complete offline copy of this implementation guide can be found on the [Downloads](downloads.html) page.

Note that the content of this implementation guide is draft material that has not yet been tested or validated for use in production environments.
