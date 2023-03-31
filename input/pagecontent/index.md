This WHO Immunization Implementation Guide details how to use Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) for consistent digital representation of immunization services.

<div>
<p> This implementation guide and set of artifacts are still undergoing development. </p>
<p> Content is for demonstration purposes only. </p>
</div>{:.stu-note}


### Summary 
This implementation guide includes a machine-readable representation of WHO guidelines for immunization, as documented in the WHO Digital Adaptation Kit: SMART Guidelines for Immunizations (link forthcoming) and explicitly encodes computer-interoperable logic, including data models, terminologies, and logic expressions, in a computable language to support implementation of immunization use cases by WHO Member States.

The guide is part of the [WHO SMART Guidelines approach](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) to support countries to integrate WHO global health and data recommendations into digital systems accurately and consistently. It defines a series of FHIR Resources, Profiles, Extensions, and Terminology based on the WHO Immunization Digital Adaptation Kit (link forthcoming). 

Resources and guidance in this guide are provided to support application of the WHO recommendations on routine vaccinations:
[WHO Recommendations on Immunization](https://www.who.int/teams/immunization-vaccines-and-biologicals). The decision support artifacts specifically represent the content defined as part of routine immunizations: [WHO recommendations for routine immunization - summary tables](https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables).

Supporting guidance, recommendations, resources, and standards are included in the <a href="references.html">References</a> and <a href="dependencies.html">Dependencies</a>.

### About this implementation guide

This implementation guide is broken into the following levels of [knowledge representation](http://hl7.org/fhir/uv/cpg/2019Sep/documentation-approach.html):
- <a href="index.html">Home</a> - contains references to the guidance, guidelines, policies and recommendations underpinning this implementation guide.
- <a href="requirements.html">Business Requirements</a> - contains the requirements for this implementation guide including the definition of key concepts, use cases, and a data dictionary.      
- <a href="data_exchange.html">Data Models and Exchange</a> - contains the data models and data exchange protocols with actors and transactions defined.
- <a href="deployment.html">Deployment Guidance </a> - contains relevant technical specifications and guidance, testing resources, reference implementation materials, and supporting guidance for adaptation to local contexts.

This guide is prepared to facilitate digital implementation of WHO Immunization guidelines by providing FHIR-based computable representations of and implementation guidance for using the key components of the WHO Immunization digital adaptation kit (DAK):

* Health Interventions & Recommendations
* Generic Personas
* User Scenarios
* Business Processes & Workflows
* Core Data Elements
* Decision Support Logic
* Indicators & Monitoring
* Functional & Non-functional Requirements

This guide is a companion to the Digital Adaptation Kit (DAK) and should be used side-by-side with it. Implementers are strongly encouraged to make use of the Digital Adaptation Kit. The focus of this guide is on the explanation and use of the computable artifacts.

This guide assumes use of the following resources: 
* [IPS Patient](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* [IPS Immunization](http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips)
* [CPG ActivityDefinitions](https://hl7.org/fhir/uv/cpg/artifacts.html#activitydefinition-index)
* [CPG ImmunizationRecommendation](http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrecommendation)

- For a complete listing of the artifacts defined in this implementation guide, refer to the [Artifact Index](artifacts.html).
- A complete offline copy of this implementation guide can be found on the [Downloads](downloads.html) page.
- This guide utilizes the [International Patient Summary(IPS)](https://hl7.org/fhir/uv/ips/) as a base for defining immunizations and expects that most data captured will be presented in conformance with the resources defined as part of that implementation guide. 
- This Implementation Guide makes use of [Clinical Quality Language](https://cql.hl7.org/) for the decision support artifacts including the PlanDefinitions and Measures. They are used to express how a calculation should occur and can be used with a CQL engine in order to process the decision or indicator directly from the applicable FHIR resources. Links to this specification, the FHIR Clinical Practice Guidelines Speciciation, and other helpful resources can be found in the Support dropdown.

### Disclaimer
The specification herewith documented is a demo working specification and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency and the official publication supersedes this draft. No liability can be inferred from the use or misuse of this specification or its consequences.
