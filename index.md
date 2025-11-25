# Home - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/ImplementationGuide/smart.who.int.immunizations | *Version*:0.2.0 |
| Draft as of 2024-12-06 | *Computable Name*:Immunizations |

This WHO Implementation Guide for Immunizations details how to use Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) for consistent digital representation of Immunization services.

 This implementation guide and set of artifacts are still undergoing development. 

 Content is for demonstration purposes only. 

### Summary

This implementation guide includes a machine-readable representation of WHO guidelines for Immunizations, as documented in the WHO Digital Adaptation Kit for Immunizations (link forthcoming) and explicitly encodes computer-interoperable logic, including data models, terminologies, and logic expressions, in a computable language to support implementation of Immunization use cases by WHO Member States.

The guide is part of the [WHO SMART Guidelines approach](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) to support countries to integrate WHO global health and data recommendations into digital systems accurately and consistently. It defines a series of FHIR Resources, Profiles, Extensions, and Terminology based on the [WHO Digital Adaptation Kit for Immunizations](https://www.who.int/publications/i/item/9789240099456).

Supporting guidance, recommendations, resources, and standards are included in the [References](references.md) and [Dependencies](dependencies.md).

### About this implementation guide

This implementation guide is broken into the following levels of [knowledge representation](https://hl7.org/fhir/uv/cpg/documentation-approach-06-01-levels-of-knowledge-representation.html):

* [Home](index.md) - contains references to the guidance, guidelines, policies and recommendations underpinning this implementation guide.
* [Business Requirements](business-requirements.md) - contains the requirements for this implementation guide including the definition of key concepts, use cases, and a data dictionary.
* [Data Models and Exchange](data-models-and-exchange.md) - contains the data models and data exchange protocols with actors and transactions defined.
* [Deployment Guidance](deployment.md) - contains relevant technical specifications and guidance, testing resources, reference implementation materials, and supporting guidance for adaptation to local contexts.

This guide is prepared to facilitate digital implementation of WHO Immunization guidelines by providing FHIR-based computable representations of and implementation guidance for using the key components of the WHO Digital adaptation kit (DAK) for immunizations:

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
* [CPG ActivityDefinitions](https://hl7.org/fhir/uv/cpg/artifacts.html#activitydefinition-index)
* For a complete listing of the artifacts defined in this implementation guide, refer to the [Artifact Index](artifacts.md).
* A complete offline copy of this implementation guide can be found on the [Downloads](downloads.md) page.
* This Implementation Guide makes use of [Clinical Quality Language](https://cql.hl7.org/) for the decision support artifacts including the PlanDefinitions and Measures. They are used to express how a calculation should occur and can be used with a CQL engine in order to process the decision or indicator directly from the applicable FHIR resources. Links to this specification, the FHIR Clinical Practice Guidelines Speciciation, and other helpful resources can be found in the Support dropdown.

### Disclaimer

The specification herewith documented is a demo working specification and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency and the official publication supersedes this draft. No liability can be inferred from the use or misuse of this specification or its consequences.

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.1.0/CodeSystem-ISO3166Part1.html): [IMMZCountryOfVaccination](StructureDefinition-IMMZCountryOfVaccination.md), [IMMZ_D13_Update_client_record](StructureDefinition-IMMZD13.md)...Show 4 more,[Questionnaire/QIMMZD13](Questionnaire-QIMMZD13.md),[QuestionnaireResponse/Example.IMMZ.D13.QuestionnaireResponse.BCG](QuestionnaireResponse-Example.IMMZ.D13.QuestionnaireResponse.BCG.md),[QuestionnaireResponse/Example.IMMZ.D13.QuestionnaireResponse.Measles](QuestionnaireResponse-Example.IMMZ.D13.QuestionnaireResponse.Measles.md)and[QuestionnaireResponse/Example.IMMZ.D13.QuestionnaireResponse.Measles.2](QuestionnaireResponse-Example.IMMZ.D13.QuestionnaireResponse.Measles.2.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-ucum.html): [QuestionnaireResponse/Example.IMMZ.D13.QuestionnaireResponse.BCG](QuestionnaireResponse-Example.IMMZ.D13.QuestionnaireResponse.BCG.md) and [QuestionnaireResponse/Example.IMMZ.D13.QuestionnaireResponse.Measles](QuestionnaireResponse-Example.IMMZ.D13.QuestionnaireResponse.Measles.md)


* The WHO grants a license for "commercial and non-commercial use" of ICD-11CC BY-ND 3.0 IGODetailed information can be found here: [[https://icd.who.int/en/docs/icd11-license.pdf](https://icd.who.int/en/docs/icd11-license.pdf)](https://icd.who.int/en/docs/icd11-license.pdf) Contact licensing@who.int to obtain further information.

* [International Classification of Diseases, 11th Revision Mortality and Morbidity Statistics (MMS)](http://terminology.hl7.org/6.1.0/CodeSystem-ICD11MMS.html): [IMMZ_D13_Update_client_record](StructureDefinition-IMMZD13.md), [IMMZ_D17_Report_AEFI](StructureDefinition-IMMZD17.md)...Show 40 more,[IMMZ_D1_Capture_or_update_client_history](StructureDefinition-IMMZD1.md),[IMMZ_D7_Counsel_client](StructureDefinition-IMMZD7.md),[IMMZ_Z_DE1](ValueSet-IMMZ.Z.DE1.md),[IMMZ_Z_DE10](ValueSet-IMMZ.Z.DE10.md),[IMMZ_Z_DE11](ValueSet-IMMZ.Z.DE11.md),[IMMZ_Z_DE12](ValueSet-IMMZ.Z.DE12.md),[IMMZ_Z_DE13](ValueSet-IMMZ.Z.DE13.md),[IMMZ_Z_DE14](ValueSet-IMMZ.Z.DE14.md),[IMMZ_Z_DE15](ValueSet-IMMZ.Z.DE15.md),[IMMZ_Z_DE16](ValueSet-IMMZ.Z.DE16.md),[IMMZ_Z_DE17](ValueSet-IMMZ.Z.DE17.md),[IMMZ_Z_DE18](ValueSet-IMMZ.Z.DE18.md),[IMMZ_Z_DE19](ValueSet-IMMZ.Z.DE19.md),[IMMZ_Z_DE2](ValueSet-IMMZ.Z.DE2.md),[IMMZ_Z_DE20](ValueSet-IMMZ.Z.DE20.md),[IMMZ_Z_DE21](ValueSet-IMMZ.Z.DE21.md),[IMMZ_Z_DE22](ValueSet-IMMZ.Z.DE22.md),[IMMZ_Z_DE23](ValueSet-IMMZ.Z.DE23.md),[IMMZ_Z_DE24](ValueSet-IMMZ.Z.DE24.md),[IMMZ_Z_DE25](ValueSet-IMMZ.Z.DE25.md),[IMMZ_Z_DE26](ValueSet-IMMZ.Z.DE26.md),[IMMZ_Z_DE28](ValueSet-IMMZ.Z.DE28.md),[IMMZ_Z_DE29](ValueSet-IMMZ.Z.DE29.md),[IMMZ_Z_DE3](ValueSet-IMMZ.Z.DE3.md),[IMMZ_Z_DE30](ValueSet-IMMZ.Z.DE30.md),[IMMZ_Z_DE31](ValueSet-IMMZ.Z.DE31.md),[IMMZ_Z_DE32](ValueSet-IMMZ.Z.DE32.md),[IMMZ_Z_DE33](ValueSet-IMMZ.Z.DE33.md),[IMMZ_Z_DE34](ValueSet-IMMZ.Z.DE34.md),[IMMZ_Z_DE4](ValueSet-IMMZ.Z.DE4.md),[IMMZ_Z_DE5](ValueSet-IMMZ.Z.DE5.md),[IMMZ_Z_DE6](ValueSet-IMMZ.Z.DE6.md),[IMMZ_Z_DE7](ValueSet-IMMZ.Z.DE7.md),[IMMZ_Z_DE8](ValueSet-IMMZ.Z.DE8.md),[IMMZ_Z_DE9](ValueSet-IMMZ.Z.DE9.md),[IMMZ_Z_LiveAttenuated](ValueSet-IMMZ.Z.LiveAttenuated.md),[Questionnaire/QIMMZD1](Questionnaire-QIMMZD1.md),[Questionnaire/QIMMZD13](Questionnaire-QIMMZD13.md),[Questionnaire/QIMMZD17](Questionnaire-QIMMZD17.md)and[Questionnaire/QIMMZD7](Questionnaire-QIMMZD7.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.1.0/CodeSystem-v3-loinc.html): [IMMZ_C4_Create_client_record](StructureDefinition-IMMZC4.md), [IMMZ_D13_Update_client_record](StructureDefinition-IMMZD13.md)...Show 15 more,[IMMZ_D17_Report_AEFI](StructureDefinition-IMMZD17.md),[IMMZ_D18_Determine_time_for_next_visit](StructureDefinition-IMMZD18.md),[IMMZ_D1_Capture_or_update_client_history](StructureDefinition-IMMZD1.md),[IMMZ_Z_DE11](ValueSet-IMMZ.Z.DE11.md),[IMMZ_Z_DE17](ValueSet-IMMZ.Z.DE17.md),[IMMZ_Z_DE3](ValueSet-IMMZ.Z.DE3.md),[IMMZ_Z_DE32](ValueSet-IMMZ.Z.DE32.md),[IMMZ_Z_DE4](ValueSet-IMMZ.Z.DE4.md),[IMMZ_Z_DE6](ValueSet-IMMZ.Z.DE6.md),[IMMZ_Z_DE9](ValueSet-IMMZ.Z.DE9.md),[Questionnaire/QIMMZC4](Questionnaire-QIMMZC4.md),[Questionnaire/QIMMZD1](Questionnaire-QIMMZD1.md),[Questionnaire/QIMMZD13](Questionnaire-QIMMZD13.md),[Questionnaire/QIMMZD17](Questionnaire-QIMMZD17.md)and[Questionnaire/QIMMZD18](Questionnaire-QIMMZD18.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [IMMZ_C4_Create_client_record](StructureDefinition-IMMZC4.md), [IMMZ_D13_Update_client_record](StructureDefinition-IMMZD13.md)...Show 32 more,[IMMZ_D17_Report_AEFI](StructureDefinition-IMMZD17.md),[IMMZ_D18_Determine_time_for_next_visit](StructureDefinition-IMMZD18.md),[IMMZ_D1_Capture_or_update_client_history](StructureDefinition-IMMZD1.md),[IMMZ_Z_DE1](ValueSet-IMMZ.Z.DE1.md),[IMMZ_Z_DE10](ValueSet-IMMZ.Z.DE10.md),[IMMZ_Z_DE11](ValueSet-IMMZ.Z.DE11.md),[IMMZ_Z_DE12](ValueSet-IMMZ.Z.DE12.md),[IMMZ_Z_DE13](ValueSet-IMMZ.Z.DE13.md),[IMMZ_Z_DE14](ValueSet-IMMZ.Z.DE14.md),[IMMZ_Z_DE15](ValueSet-IMMZ.Z.DE15.md),[IMMZ_Z_DE16](ValueSet-IMMZ.Z.DE16.md),[IMMZ_Z_DE17](ValueSet-IMMZ.Z.DE17.md),[IMMZ_Z_DE18](ValueSet-IMMZ.Z.DE18.md),[IMMZ_Z_DE2](ValueSet-IMMZ.Z.DE2.md),[IMMZ_Z_DE20](ValueSet-IMMZ.Z.DE20.md),[IMMZ_Z_DE22](ValueSet-IMMZ.Z.DE22.md),[IMMZ_Z_DE23](ValueSet-IMMZ.Z.DE23.md),[IMMZ_Z_DE24](ValueSet-IMMZ.Z.DE24.md),[IMMZ_Z_DE26](ValueSet-IMMZ.Z.DE26.md),[IMMZ_Z_DE3](ValueSet-IMMZ.Z.DE3.md),[IMMZ_Z_DE4](ValueSet-IMMZ.Z.DE4.md),[IMMZ_Z_DE5](ValueSet-IMMZ.Z.DE5.md),[IMMZ_Z_DE6](ValueSet-IMMZ.Z.DE6.md),[IMMZ_Z_DE7](ValueSet-IMMZ.Z.DE7.md),[IMMZ_Z_DE8](ValueSet-IMMZ.Z.DE8.md),[IMMZ_Z_DE9](ValueSet-IMMZ.Z.DE9.md),[IMMZ_Z_LiveAttenuated](ValueSet-IMMZ.Z.LiveAttenuated.md),[Questionnaire/QIMMZC4](Questionnaire-QIMMZC4.md),[Questionnaire/QIMMZD1](Questionnaire-QIMMZD1.md),[Questionnaire/QIMMZD13](Questionnaire-QIMMZD13.md),[Questionnaire/QIMMZD17](Questionnaire-QIMMZD17.md)and[Questionnaire/QIMMZD18](Questionnaire-QIMMZD18.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [ActionType](http://terminology.hl7.org/7.0.0/CodeSystem-action-type.html): [IMMZD5DTBCGContraindications](PlanDefinition-IMMZD5DTBCGContraindications.md), [IMMZD5DTDTPContraindications](PlanDefinition-IMMZD5DTDTPContraindications.md)...Show 11 more,[IMMZD5DTDengueContraindications](PlanDefinition-IMMZD5DTDengueContraindications.md),[IMMZD5DTHPVContraindications](PlanDefinition-IMMZD5DTHPVContraindications.md),[IMMZD5DTHepatitisAContraindications](PlanDefinition-IMMZD5DTHepatitisAContraindications.md),[IMMZD5DTMeaslesContraindications](PlanDefinition-IMMZD5DTMeaslesContraindications.md),[IMMZD5DTMumpsContraindications](PlanDefinition-IMMZD5DTMumpsContraindications.md),[IMMZD5DTPolioContraindications](PlanDefinition-IMMZD5DTPolioContraindications.md),[IMMZD5DTRotavirusContraindications](PlanDefinition-IMMZD5DTRotavirusContraindications.md),[IMMZD5DTRubellaContraindications](PlanDefinition-IMMZD5DTRubellaContraindications.md),[IMMZD5DTTyphoidContraindications](PlanDefinition-IMMZD5DTTyphoidContraindications.md),[IMMZD5DTVaricellaContraindications](PlanDefinition-IMMZD5DTVaricellaContraindications.md)and[IMMZD5DTYellowFeverContraindications](PlanDefinition-IMMZD5DTYellowFeverContraindications.md)
* [LibraryType](http://terminology.hl7.org/7.0.0/CodeSystem-library-type.html): [IMMZAgeConcepts](Library-IMMZAgeConcepts.md), [IMMZCommon](Library-IMMZCommon.md)...Show 277 more,[IMMZConcepts](Library-IMMZConcepts.md),[IMMZD18SBCGLogic](Library-IMMZD18SBCGLogic.md),[IMMZD18SCholeraWCRBSVaccine2DosesLogic](Library-IMMZD18SCholeraWCRBSVaccine2DosesLogic.md),[IMMZD18SCholeraWCRBSVaccine3DosesLogic](Library-IMMZD18SCholeraWCRBSVaccine3DosesLogic.md),[IMMZD18SCholeraWCVaccinesLogic](Library-IMMZD18SCholeraWCVaccinesLogic.md),[IMMZD18SDTPDelayedOrInterruptedSeriesLogic](Library-IMMZD18SDTPDelayedOrInterruptedSeriesLogic.md),[IMMZD18SDTPOnTimeStartLogic](Library-IMMZD18SDTPOnTimeStartLogic.md),[IMMZD18SDTPPregnancyStartingWith3DosesLogic](Library-IMMZD18SDTPPregnancyStartingWith3DosesLogic.md),[IMMZD18SDTPPregnancyStartingWith4DosesLogic](Library-IMMZD18SDTPPregnancyStartingWith4DosesLogic.md),[IMMZD18SDengue3DosesWithPreVaccinationScreeningLogic](Library-IMMZD18SDengue3DosesWithPreVaccinationScreeningLogic.md),[IMMZD18SHPV2DosesLogic](Library-IMMZD18SHPV2DosesLogic.md),[IMMZD18SHPVSingleDoseLogic](Library-IMMZD18SHPVSingleDoseLogic.md),[IMMZD18SHepatitisAInactivatedHAV1DoseLogic](Library-IMMZD18SHepatitisAInactivatedHAV1DoseLogic.md),[IMMZD18SHepatitisAInactivatedHAV2DosesLogic](Library-IMMZD18SHepatitisAInactivatedHAV2DosesLogic.md),[IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic](Library-IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic.md),[IMMZD18SHepatitisB3DosesLogic](Library-IMMZD18SHepatitisB3DosesLogic.md),[IMMZD18SHepatitisB4DosesLogic](Library-IMMZD18SHepatitisB4DosesLogic.md),[IMMZD18SHepatitisBBirthDoseLogic](Library-IMMZD18SHepatitisBBirthDoseLogic.md),[IMMZD18SHepatitisBDelayedStartLogic](Library-IMMZD18SHepatitisBDelayedStartLogic.md),[IMMZD18SHib2DosesWithBoosterDoseLogic](Library-IMMZD18SHib2DosesWithBoosterDoseLogic.md),[IMMZD18SHib3DosesLogic](Library-IMMZD18SHib3DosesLogic.md),[IMMZD18SHib3DosesWithBoosterDoseLogic](Library-IMMZD18SHib3DosesWithBoosterDoseLogic.md),[IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic](Library-IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic.md),[IMMZD18SJELiveAttenuatedVaccineLogic](Library-IMMZD18SJELiveAttenuatedVaccineLogic.md),[IMMZD18SJELiveRecombinantVaccineLogic](Library-IMMZD18SJELiveRecombinantVaccineLogic.md),[IMMZD18SMalariaLogic](Library-IMMZD18SMalariaLogic.md),[IMMZD18SMeaslesLowTransmissionLogic](Library-IMMZD18SMeaslesLowTransmissionLogic.md),[IMMZD18SMeaslesMCVDose0Logic](Library-IMMZD18SMeaslesMCVDose0Logic.md),[IMMZD18SMeaslesOngoingTransmissionLogic](Library-IMMZD18SMeaslesOngoingTransmissionLogic.md),[IMMZD18SMeaslesSupplementaryDoseLogic](Library-IMMZD18SMeaslesSupplementaryDoseLogic.md),[IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic](Library-IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic.md),[IMMZD18SMeningococcalMenAConjugateVaccine2DosesLogic](Library-IMMZD18SMeningococcalMenAConjugateVaccine2DosesLogic.md),[IMMZD18SMeningococcalMonovalentMenCConjugateVaccineLogic](Library-IMMZD18SMeningococcalMonovalentMenCConjugateVaccineLogic.md),[IMMZD18SMeningococcalPolysaccharideVaccinesLogic](Library-IMMZD18SMeningococcalPolysaccharideVaccinesLogic.md),[IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic](Library-IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic.md),[IMMZD18SMeningococcalQuadrivalentConjugateVaccines2DosesLogic](Library-IMMZD18SMeningococcalQuadrivalentConjugateVaccines2DosesLogic.md),[IMMZD18SMumpsLogic](Library-IMMZD18SMumpsLogic.md),[IMMZD18SPneumococcal2DosesWithBoosterDoseLogic](Library-IMMZD18SPneumococcal2DosesWithBoosterDoseLogic.md),[IMMZD18SPneumococcal3DosesLogic](Library-IMMZD18SPneumococcal3DosesLogic.md),[IMMZD18SPolioBOPVPlusIPVLogic](Library-IMMZD18SPolioBOPVPlusIPVLogic.md),[IMMZD18SPolioBirthDoseLogic](Library-IMMZD18SPolioBirthDoseLogic.md),[IMMZD18SPolioIPVOnlyLogic](Library-IMMZD18SPolioIPVOnlyLogic.md),[IMMZD18SPolioSequentialIPVbOPVLogic](Library-IMMZD18SPolioSequentialIPVbOPVLogic.md),[IMMZD18SRabiesLogic](Library-IMMZD18SRabiesLogic.md),[IMMZD18SRotavirusLogic](Library-IMMZD18SRotavirusLogic.md),[IMMZD18SRubellaHighIncidenceLogic](Library-IMMZD18SRubellaHighIncidenceLogic.md),[IMMZD18SRubellaLowIncidenceLogic](Library-IMMZD18SRubellaLowIncidenceLogic.md),[IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic](Library-IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic.md),[IMMZD18STBEEnceVirLogic](Library-IMMZD18STBEEnceVirLogic.md),[IMMZD18STBEEncepurLogic](Library-IMMZD18STBEEncepurLogic.md),[IMMZD18STBEFSMEImmunLogic](Library-IMMZD18STBEFSMEImmunLogic.md),[IMMZD18STBETBEMoscowLogic](Library-IMMZD18STBETBEMoscowLogic.md),[IMMZD18STyphoidTCVLogic](Library-IMMZD18STyphoidTCVLogic.md),[IMMZD18STyphoidTy21aLogic](Library-IMMZD18STyphoidTy21aLogic.md),[IMMZD18STyphoidViPSLogic](Library-IMMZD18STyphoidViPSLogic.md),[IMMZD18SVaricella1DoseLogic](Library-IMMZD18SVaricella1DoseLogic.md),[IMMZD18SVaricella2DosesLogic](Library-IMMZD18SVaricella2DosesLogic.md),[IMMZD18SYellowfeverYellowFeverLogic](Library-IMMZD18SYellowfeverYellowFeverLogic.md),[IMMZD2DTBCGElements](Library-IMMZD2DTBCGElements.md),[IMMZD2DTBCGEncounterElements](Library-IMMZD2DTBCGEncounterElements.md),[IMMZD2DTBCGLogic](Library-IMMZD2DTBCGLogic.md),[IMMZD2DTCholeraElements](Library-IMMZD2DTCholeraElements.md),[IMMZD2DTCholeraEncounterElements](Library-IMMZD2DTCholeraEncounterElements.md),[IMMZD2DTCholeraWCRBSVaccine2DosesLogic](Library-IMMZD2DTCholeraWCRBSVaccine2DosesLogic.md),[IMMZD2DTCholeraWCRBSVaccine3DosesLogic](Library-IMMZD2DTCholeraWCRBSVaccine3DosesLogic.md),[IMMZD2DTCholeraWCVaccinesLogic](Library-IMMZD2DTCholeraWCVaccinesLogic.md),[IMMZD2DTDTPDelayedOrInterruptedSeriesLogic](Library-IMMZD2DTDTPDelayedOrInterruptedSeriesLogic.md),[IMMZD2DTDTPElements](Library-IMMZD2DTDTPElements.md),[IMMZD2DTDTPEncounterElements](Library-IMMZD2DTDTPEncounterElements.md),[IMMZD2DTDTPOnTimeStartLogic](Library-IMMZD2DTDTPOnTimeStartLogic.md),[IMMZD2DTDTPPregnancyLogic](Library-IMMZD2DTDTPPregnancyLogic.md),[IMMZD2DTDTPPregnancyStartingWith3DosesLogic](Library-IMMZD2DTDTPPregnancyStartingWith3DosesLogic.md),[IMMZD2DTDTPPregnancyStartingWith4DosesLogic](Library-IMMZD2DTDTPPregnancyStartingWith4DosesLogic.md),[IMMZD2DTDengue3DosesWithPreVaccinationScreeningLogic](Library-IMMZD2DTDengue3DosesWithPreVaccinationScreeningLogic.md),[IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic](Library-IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic.md),[IMMZD2DTDengueElements](Library-IMMZD2DTDengueElements.md),[IMMZD2DTDengueEncounterElements](Library-IMMZD2DTDengueEncounterElements.md),[IMMZD2DTHPV2DosesLogic](Library-IMMZD2DTHPV2DosesLogic.md),[IMMZD2DTHPVElements](Library-IMMZD2DTHPVElements.md),[IMMZD2DTHPVEncounterElements](Library-IMMZD2DTHPVEncounterElements.md),[IMMZD2DTHPVSingleDoseLogic](Library-IMMZD2DTHPVSingleDoseLogic.md),[IMMZD2DTHepatitisAElements](Library-IMMZD2DTHepatitisAElements.md),[IMMZD2DTHepatitisAEncounterElements](Library-IMMZD2DTHepatitisAEncounterElements.md),[IMMZD2DTHepatitisAInactivatedHAV1DoseLogic](Library-IMMZD2DTHepatitisAInactivatedHAV1DoseLogic.md),[IMMZD2DTHepatitisAInactivatedHAV2DosesLogic](Library-IMMZD2DTHepatitisAInactivatedHAV2DosesLogic.md),[IMMZD2DTHepatitisALiveAttenuatedHAV1DoseLogic](Library-IMMZD2DTHepatitisALiveAttenuatedHAV1DoseLogic.md),[IMMZD2DTHepatitisB3DosesLogic](Library-IMMZD2DTHepatitisB3DosesLogic.md),[IMMZD2DTHepatitisB4DosesLogic](Library-IMMZD2DTHepatitisB4DosesLogic.md),[IMMZD2DTHepatitisBBirthDoseLogic](Library-IMMZD2DTHepatitisBBirthDoseLogic.md),[IMMZD2DTHepatitisBDelayedStartLogic](Library-IMMZD2DTHepatitisBDelayedStartLogic.md),[IMMZD2DTHepatitisBElements](Library-IMMZD2DTHepatitisBElements.md),[IMMZD2DTHepatitisBEncounterElements](Library-IMMZD2DTHepatitisBEncounterElements.md),[IMMZD2DTHib2DosesWithBoosterDoseLogic](Library-IMMZD2DTHib2DosesWithBoosterDoseLogic.md),[IMMZD2DTHib3DosesLogic](Library-IMMZD2DTHib3DosesLogic.md),[IMMZD2DTHib3DosesWithBoosterDoseLogic](Library-IMMZD2DTHib3DosesWithBoosterDoseLogic.md),[IMMZD2DTHibElements](Library-IMMZD2DTHibElements.md),[IMMZD2DTHibEncounterElements](Library-IMMZD2DTHibEncounterElements.md),[IMMZD2DTJEElements](Library-IMMZD2DTJEElements.md),[IMMZD2DTJEEncounterElements](Library-IMMZD2DTJEEncounterElements.md),[IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic](Library-IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic.md),[IMMZD2DTJELiveAttenuatedVaccineLogic](Library-IMMZD2DTJELiveAttenuatedVaccineLogic.md),[IMMZD2DTJELiveRecombinantVaccineLogic](Library-IMMZD2DTJELiveRecombinantVaccineLogic.md),[IMMZD2DTMalariaElements](Library-IMMZD2DTMalariaElements.md),[IMMZD2DTMalariaEncounterElements](Library-IMMZD2DTMalariaEncounterElements.md),[IMMZD2DTMalariaLogic](Library-IMMZD2DTMalariaLogic.md),[IMMZD2DTMeaslesElements](Library-IMMZD2DTMeaslesElements.md),[IMMZD2DTMeaslesEncounterElements](Library-IMMZD2DTMeaslesEncounterElements.md),[IMMZD2DTMeaslesLowTransmissionLogic](Library-IMMZD2DTMeaslesLowTransmissionLogic.md),[IMMZD2DTMeaslesMCVDose0Logic](Library-IMMZD2DTMeaslesMCVDose0Logic.md),[IMMZD2DTMeaslesOngoingTransmissionLogic](Library-IMMZD2DTMeaslesOngoingTransmissionLogic.md),[IMMZD2DTMeaslesSupplementaryDoseLogic](Library-IMMZD2DTMeaslesSupplementaryDoseLogic.md),[IMMZD2DTMeningococcalElements](Library-IMMZD2DTMeningococcalElements.md),[IMMZD2DTMeningococcalEncounterElements](Library-IMMZD2DTMeningococcalEncounterElements.md),[IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic](Library-IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic.md),[IMMZD2DTMeningococcalMenAConjugateVaccine2DosesLogic](Library-IMMZD2DTMeningococcalMenAConjugateVaccine2DosesLogic.md),[IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic](Library-IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic.md),[IMMZD2DTMeningococcalPolysaccharideVaccinesLogic](Library-IMMZD2DTMeningococcalPolysaccharideVaccinesLogic.md),[IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic](Library-IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic.md),[IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesLogic](Library-IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesLogic.md),[IMMZD2DTMumpsElements](Library-IMMZD2DTMumpsElements.md),[IMMZD2DTMumpsEncounterElements](Library-IMMZD2DTMumpsEncounterElements.md),[IMMZD2DTMumpsLogic](Library-IMMZD2DTMumpsLogic.md),[IMMZD2DTPneumococcal2DosesWithBoosterDoseLogic](Library-IMMZD2DTPneumococcal2DosesWithBoosterDoseLogic.md),[IMMZD2DTPneumococcal3DosesLogic](Library-IMMZD2DTPneumococcal3DosesLogic.md),[IMMZD2DTPneumococcalElements](Library-IMMZD2DTPneumococcalElements.md),[IMMZD2DTPneumococcalEncounterElements](Library-IMMZD2DTPneumococcalEncounterElements.md),[IMMZD2DTPolioBOPVPlusIPVLogic](Library-IMMZD2DTPolioBOPVPlusIPVLogic.md),[IMMZD2DTPolioBirthDoseLogic](Library-IMMZD2DTPolioBirthDoseLogic.md),[IMMZD2DTPolioElements](Library-IMMZD2DTPolioElements.md),[IMMZD2DTPolioEncounterElements](Library-IMMZD2DTPolioEncounterElements.md),[IMMZD2DTPolioIPVOnlyLogic](Library-IMMZD2DTPolioIPVOnlyLogic.md),[IMMZD2DTPolioSequentialIPVbOPVLogic](Library-IMMZD2DTPolioSequentialIPVbOPVLogic.md),[IMMZD2DTRabiesElements](Library-IMMZD2DTRabiesElements.md),[IMMZD2DTRabiesEncounterElements](Library-IMMZD2DTRabiesEncounterElements.md),[IMMZD2DTRabiesLogic](Library-IMMZD2DTRabiesLogic.md),[IMMZD2DTRotavirusElements](Library-IMMZD2DTRotavirusElements.md),[IMMZD2DTRotavirusEncounterElements](Library-IMMZD2DTRotavirusEncounterElements.md),[IMMZD2DTRotavirusLogic](Library-IMMZD2DTRotavirusLogic.md),[IMMZD2DTRubellaElements](Library-IMMZD2DTRubellaElements.md),[IMMZD2DTRubellaEncounterElements](Library-IMMZD2DTRubellaEncounterElements.md),[IMMZD2DTRubellaHighIncidenceLogic](Library-IMMZD2DTRubellaHighIncidenceLogic.md),[IMMZD2DTRubellaLowIncidenceLogic](Library-IMMZD2DTRubellaLowIncidenceLogic.md),[IMMZD2DTSeasonalinfluenzaElements](Library-IMMZD2DTSeasonalinfluenzaElements.md),[IMMZD2DTSeasonalinfluenzaEncounterElements](Library-IMMZD2DTSeasonalinfluenzaEncounterElements.md),[IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic](Library-IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic.md),[IMMZD2DTTBEElements](Library-IMMZD2DTTBEElements.md),[IMMZD2DTTBEEnceVirLogic](Library-IMMZD2DTTBEEnceVirLogic.md),[IMMZD2DTTBEEncepurLogic](Library-IMMZD2DTTBEEncepurLogic.md),[IMMZD2DTTBEEncounterElements](Library-IMMZD2DTTBEEncounterElements.md),[IMMZD2DTTBEFSMEImmunLogic](Library-IMMZD2DTTBEFSMEImmunLogic.md),[IMMZD2DTTBETBEMoscowLogic](Library-IMMZD2DTTBETBEMoscowLogic.md),[IMMZD2DTTyphoidElements](Library-IMMZD2DTTyphoidElements.md),[IMMZD2DTTyphoidEncounterElements](Library-IMMZD2DTTyphoidEncounterElements.md),[IMMZD2DTTyphoidTCVLogic](Library-IMMZD2DTTyphoidTCVLogic.md),[IMMZD2DTTyphoidTy21aLogic](Library-IMMZD2DTTyphoidTy21aLogic.md),[IMMZD2DTTyphoidViPSLogic](Library-IMMZD2DTTyphoidViPSLogic.md),[IMMZD2DTVaricella1DoseLogic](Library-IMMZD2DTVaricella1DoseLogic.md),[IMMZD2DTVaricella2DosesLogic](Library-IMMZD2DTVaricella2DosesLogic.md),[IMMZD2DTVaricellaElements](Library-IMMZD2DTVaricellaElements.md),[IMMZD2DTVaricellaEncounterElements](Library-IMMZD2DTVaricellaEncounterElements.md),[IMMZD2DTYellowfeverElements](Library-IMMZD2DTYellowfeverElements.md),[IMMZD2DTYellowfeverEncounterElements](Library-IMMZD2DTYellowfeverEncounterElements.md),[IMMZD2DTYellowfeverYellowFeverLogic](Library-IMMZD2DTYellowfeverYellowFeverLogic.md),[IMMZD5DTBCGContraindicationsLogic](Library-IMMZD5DTBCGContraindicationsLogic.md),[IMMZD5DTBCGElements](Library-IMMZD5DTBCGElements.md),[IMMZD5DTBCGEncounterElements](Library-IMMZD5DTBCGEncounterElements.md),[IMMZD5DTDTPContraindicationsLogic](Library-IMMZD5DTDTPContraindicationsLogic.md),[IMMZD5DTDTPElements](Library-IMMZD5DTDTPElements.md),[IMMZD5DTDTPEncounterElements](Library-IMMZD5DTDTPEncounterElements.md),[IMMZD5DTDengueContraindicationsLogic](Library-IMMZD5DTDengueContraindicationsLogic.md),[IMMZD5DTDengueElements](Library-IMMZD5DTDengueElements.md),[IMMZD5DTDengueEncounterElements](Library-IMMZD5DTDengueEncounterElements.md),[IMMZD5DTHPVContraindicationsLogic](Library-IMMZD5DTHPVContraindicationsLogic.md),[IMMZD5DTHPVElements](Library-IMMZD5DTHPVElements.md),[IMMZD5DTHPVEncounterElements](Library-IMMZD5DTHPVEncounterElements.md),[IMMZD5DTHepatitisAContraindicationsLogic](Library-IMMZD5DTHepatitisAContraindicationsLogic.md),[IMMZD5DTHepatitisAElements](Library-IMMZD5DTHepatitisAElements.md),[IMMZD5DTHepatitisAEncounterElements](Library-IMMZD5DTHepatitisAEncounterElements.md),[IMMZD5DTHepatitisBContraindicationsLogic](Library-IMMZD5DTHepatitisBContraindicationsLogic.md),[IMMZD5DTHepatitisBElements](Library-IMMZD5DTHepatitisBElements.md),[IMMZD5DTHepatitisBEncounterElements](Library-IMMZD5DTHepatitisBEncounterElements.md),[IMMZD5DTHibContraindicationsLogic](Library-IMMZD5DTHibContraindicationsLogic.md),[IMMZD5DTHibElements](Library-IMMZD5DTHibElements.md),[IMMZD5DTHibEncounterElements](Library-IMMZD5DTHibEncounterElements.md),[IMMZD5DTJEContraindicationsLogic](Library-IMMZD5DTJEContraindicationsLogic.md),[IMMZD5DTJEElements](Library-IMMZD5DTJEElements.md),[IMMZD5DTJEEncounterElements](Library-IMMZD5DTJEEncounterElements.md),[IMMZD5DTMalariaContraindicationsLogic](Library-IMMZD5DTMalariaContraindicationsLogic.md),[IMMZD5DTMalariaElements](Library-IMMZD5DTMalariaElements.md),[IMMZD5DTMalariaEncounterElements](Library-IMMZD5DTMalariaEncounterElements.md),[IMMZD5DTMeaslesContraindicationsLogic](Library-IMMZD5DTMeaslesContraindicationsLogic.md),[IMMZD5DTMeaslesElements](Library-IMMZD5DTMeaslesElements.md),[IMMZD5DTMeaslesEncounterElements](Library-IMMZD5DTMeaslesEncounterElements.md),[IMMZD5DTMeningococcalContraindicationsLogic](Library-IMMZD5DTMeningococcalContraindicationsLogic.md),[IMMZD5DTMeningococcalElements](Library-IMMZD5DTMeningococcalElements.md),[IMMZD5DTMeningococcalEncounterElements](Library-IMMZD5DTMeningococcalEncounterElements.md),[IMMZD5DTMumpsContraindicationsLogic](Library-IMMZD5DTMumpsContraindicationsLogic.md),[IMMZD5DTMumpsElements](Library-IMMZD5DTMumpsElements.md),[IMMZD5DTMumpsEncounterElements](Library-IMMZD5DTMumpsEncounterElements.md),[IMMZD5DTPneumococcalContraindicationsLogic](Library-IMMZD5DTPneumococcalContraindicationsLogic.md),[IMMZD5DTPneumococcalElements](Library-IMMZD5DTPneumococcalElements.md),[IMMZD5DTPneumococcalEncounterElements](Library-IMMZD5DTPneumococcalEncounterElements.md),[IMMZD5DTPolioContraindicationsLogic](Library-IMMZD5DTPolioContraindicationsLogic.md),[IMMZD5DTPolioElements](Library-IMMZD5DTPolioElements.md),[IMMZD5DTPolioEncounterElements](Library-IMMZD5DTPolioEncounterElements.md),[IMMZD5DTRabiesContraindicationsLogic](Library-IMMZD5DTRabiesContraindicationsLogic.md),[IMMZD5DTRabiesElements](Library-IMMZD5DTRabiesElements.md),[IMMZD5DTRabiesEncounterElements](Library-IMMZD5DTRabiesEncounterElements.md),[IMMZD5DTRotavirusContraindicationsLogic](Library-IMMZD5DTRotavirusContraindicationsLogic.md),[IMMZD5DTRotavirusElements](Library-IMMZD5DTRotavirusElements.md),[IMMZD5DTRotavirusEncounterElements](Library-IMMZD5DTRotavirusEncounterElements.md),[IMMZD5DTRubellaContraindicationsLogic](Library-IMMZD5DTRubellaContraindicationsLogic.md),[IMMZD5DTRubellaElements](Library-IMMZD5DTRubellaElements.md),[IMMZD5DTRubellaEncounterElements](Library-IMMZD5DTRubellaEncounterElements.md),[IMMZD5DTSeasonalInfluenzaContraindicationsLogic](Library-IMMZD5DTSeasonalInfluenzaContraindicationsLogic.md),[IMMZD5DTSeasonalinfluenzaElements](Library-IMMZD5DTSeasonalinfluenzaElements.md),[IMMZD5DTSeasonalinfluenzaEncounterElements](Library-IMMZD5DTSeasonalinfluenzaEncounterElements.md),[IMMZD5DTTBEContraindicationsLogic](Library-IMMZD5DTTBEContraindicationsLogic.md),[IMMZD5DTTBEElements](Library-IMMZD5DTTBEElements.md),[IMMZD5DTTBEEncounterElements](Library-IMMZD5DTTBEEncounterElements.md),[IMMZD5DTTyphoidContraindicationsLogic](Library-IMMZD5DTTyphoidContraindicationsLogic.md),[IMMZD5DTTyphoidElements](Library-IMMZD5DTTyphoidElements.md),[IMMZD5DTTyphoidEncounterElements](Library-IMMZD5DTTyphoidEncounterElements.md),[IMMZD5DTVaricellaContraindicationsLogic](Library-IMMZD5DTVaricellaContraindicationsLogic.md),[IMMZD5DTVaricellaElements](Library-IMMZD5DTVaricellaElements.md),[IMMZD5DTVaricellaEncounterElements](Library-IMMZD5DTVaricellaEncounterElements.md),[IMMZD5DTYellowFeverContraindicationsLogic](Library-IMMZD5DTYellowFeverContraindicationsLogic.md),[IMMZD5DTYellowfeverElements](Library-IMMZD5DTYellowfeverElements.md),[IMMZD5DTYellowfeverEncounterElements](Library-IMMZD5DTYellowfeverEncounterElements.md),[IMMZElements](Library-IMMZElements.md),[IMMZEncounterElements](Library-IMMZEncounterElements.md),[IMMZIND01Logic](Library-IMMZIND01Logic.md),[IMMZIND02Logic](Library-IMMZIND02Logic.md),[IMMZIND03Logic](Library-IMMZIND03Logic.md),[IMMZIND04Logic](Library-IMMZIND04Logic.md),[IMMZIND05Logic](Library-IMMZIND05Logic.md),[IMMZIND06Logic](Library-IMMZIND06Logic.md),[IMMZIND07Logic](Library-IMMZIND07Logic.md),[IMMZIND08Logic](Library-IMMZIND08Logic.md),[IMMZIND09Logic](Library-IMMZIND09Logic.md),[IMMZIND10Logic](Library-IMMZIND10Logic.md),[IMMZIND11Logic](Library-IMMZIND11Logic.md),[IMMZIND12Logic](Library-IMMZIND12Logic.md),[IMMZIND13Logic](Library-IMMZIND13Logic.md),[IMMZIND14Logic](Library-IMMZIND14Logic.md),[IMMZIND15Logic](Library-IMMZIND15Logic.md),[IMMZIND16Logic](Library-IMMZIND16Logic.md),[IMMZIND17Logic](Library-IMMZIND17Logic.md),[IMMZIND18Logic](Library-IMMZIND18Logic.md),[IMMZIND19Logic](Library-IMMZIND19Logic.md),[IMMZIND20Logic](Library-IMMZIND20Logic.md),[IMMZIND21Logic](Library-IMMZIND21Logic.md),[IMMZIND22Logic](Library-IMMZIND22Logic.md),[IMMZIND23Logic](Library-IMMZIND23Logic.md),[IMMZIND24Logic](Library-IMMZIND24Logic.md),[IMMZIND25Logic](Library-IMMZIND25Logic.md),[IMMZIND26Logic](Library-IMMZIND26Logic.md),[IMMZIND27Logic](Library-IMMZIND27Logic.md),[IMMZIND28Logic](Library-IMMZIND28Logic.md),[IMMZIND29Logic](Library-IMMZIND29Logic.md),[IMMZIND30Logic](Library-IMMZIND30Logic.md),[IMMZIND31Logic](Library-IMMZIND31Logic.md),[IMMZIND32Logic](Library-IMMZIND32Logic.md),[IMMZIND33Logic](Library-IMMZIND33Logic.md),[IMMZIND34Logic](Library-IMMZIND34Logic.md),[IMMZIND35Logic](Library-IMMZIND35Logic.md),[IMMZIND36Logic](Library-IMMZIND36Logic.md),[IMMZIND37Logic](Library-IMMZIND37Logic.md),[IMMZIND38Logic](Library-IMMZIND38Logic.md),[IMMZIND39Logic](Library-IMMZIND39Logic.md),[IMMZIND44Logic](Library-IMMZIND44Logic.md),[IMMZIND45Logic](Library-IMMZIND45Logic.md),[IMMZIndicatorElements](Library-IMMZIndicatorElements.md),[WHOCommon](Library-WHOCommon.md),[WHOConcepts](Library-WHOConcepts.md),[WHOElements](Library-WHOElements.md)and[WHOEncounterElements](Library-WHOEncounterElements.md)
* [Measure Population Type](http://terminology.hl7.org/7.0.0/CodeSystem-measure-population.html): [IMMZIND01](Measure-IMMZIND01.md), [IMMZIND02](Measure-IMMZIND02.md)...Show 39 more,[IMMZIND03](Measure-IMMZIND03.md),[IMMZIND04](Measure-IMMZIND04.md),[IMMZIND05](Measure-IMMZIND05.md),[IMMZIND06](Measure-IMMZIND06.md),[IMMZIND07](Measure-IMMZIND07.md),[IMMZIND08](Measure-IMMZIND08.md),[IMMZIND09](Measure-IMMZIND09.md),[IMMZIND10](Measure-IMMZIND10.md),[IMMZIND11](Measure-IMMZIND11.md),[IMMZIND12](Measure-IMMZIND12.md),[IMMZIND13](Measure-IMMZIND13.md),[IMMZIND14](Measure-IMMZIND14.md),[IMMZIND15](Measure-IMMZIND15.md),[IMMZIND16](Measure-IMMZIND16.md),[IMMZIND17](Measure-IMMZIND17.md),[IMMZIND18](Measure-IMMZIND18.md),[IMMZIND19](Measure-IMMZIND19.md),[IMMZIND20](Measure-IMMZIND20.md),[IMMZIND21](Measure-IMMZIND21.md),[IMMZIND22](Measure-IMMZIND22.md),[IMMZIND23](Measure-IMMZIND23.md),[IMMZIND24](Measure-IMMZIND24.md),[IMMZIND25](Measure-IMMZIND25.md),[IMMZIND26](Measure-IMMZIND26.md),[IMMZIND27](Measure-IMMZIND27.md),[IMMZIND28](Measure-IMMZIND28.md),[IMMZIND29](Measure-IMMZIND29.md),[IMMZIND30](Measure-IMMZIND30.md),[IMMZIND31](Measure-IMMZIND31.md),[IMMZIND32](Measure-IMMZIND32.md),[IMMZIND33](Measure-IMMZIND33.md),[IMMZIND34](Measure-IMMZIND34.md),[IMMZIND35](Measure-IMMZIND35.md),[IMMZIND36](Measure-IMMZIND36.md),[IMMZIND37](Measure-IMMZIND37.md),[IMMZIND38](Measure-IMMZIND38.md),[IMMZIND39](Measure-IMMZIND39.md),[IMMZIND44](Measure-IMMZIND44.md)and[IMMZIND45](Measure-IMMZIND45.md)
* [Measure Scoring](http://terminology.hl7.org/7.0.0/CodeSystem-measure-scoring.html): [IMMZIND01](Measure-IMMZIND01.md), [IMMZIND02](Measure-IMMZIND02.md)...Show 39 more,[IMMZIND03](Measure-IMMZIND03.md),[IMMZIND04](Measure-IMMZIND04.md),[IMMZIND05](Measure-IMMZIND05.md),[IMMZIND06](Measure-IMMZIND06.md),[IMMZIND07](Measure-IMMZIND07.md),[IMMZIND08](Measure-IMMZIND08.md),[IMMZIND09](Measure-IMMZIND09.md),[IMMZIND10](Measure-IMMZIND10.md),[IMMZIND11](Measure-IMMZIND11.md),[IMMZIND12](Measure-IMMZIND12.md),[IMMZIND13](Measure-IMMZIND13.md),[IMMZIND14](Measure-IMMZIND14.md),[IMMZIND15](Measure-IMMZIND15.md),[IMMZIND16](Measure-IMMZIND16.md),[IMMZIND17](Measure-IMMZIND17.md),[IMMZIND18](Measure-IMMZIND18.md),[IMMZIND19](Measure-IMMZIND19.md),[IMMZIND20](Measure-IMMZIND20.md),[IMMZIND21](Measure-IMMZIND21.md),[IMMZIND22](Measure-IMMZIND22.md),[IMMZIND23](Measure-IMMZIND23.md),[IMMZIND24](Measure-IMMZIND24.md),[IMMZIND25](Measure-IMMZIND25.md),[IMMZIND26](Measure-IMMZIND26.md),[IMMZIND27](Measure-IMMZIND27.md),[IMMZIND28](Measure-IMMZIND28.md),[IMMZIND29](Measure-IMMZIND29.md),[IMMZIND30](Measure-IMMZIND30.md),[IMMZIND31](Measure-IMMZIND31.md),[IMMZIND32](Measure-IMMZIND32.md),[IMMZIND33](Measure-IMMZIND33.md),[IMMZIND34](Measure-IMMZIND34.md),[IMMZIND35](Measure-IMMZIND35.md),[IMMZIND36](Measure-IMMZIND36.md),[IMMZIND37](Measure-IMMZIND37.md),[IMMZIND38](Measure-IMMZIND38.md),[IMMZIND39](Measure-IMMZIND39.md),[IMMZIND44](Measure-IMMZIND44.md)and[IMMZIND45](Measure-IMMZIND45.md)
* [PlanDefinitionType](http://terminology.hl7.org/7.0.0/CodeSystem-plan-definition-type.html): [IMMZD18SBCG](PlanDefinition-IMMZD18SBCG.md), [IMMZD18SCholeraWCRBSVaccine2Doses](PlanDefinition-IMMZD18SCholeraWCRBSVaccine2Doses.md)...Show 136 more,[IMMZD18SCholeraWCRBSVaccine3Doses](PlanDefinition-IMMZD18SCholeraWCRBSVaccine3Doses.md),[IMMZD18SCholeraWCVaccines](PlanDefinition-IMMZD18SCholeraWCVaccines.md),[IMMZD18SDTPDelayedOrInterruptedSeries](PlanDefinition-IMMZD18SDTPDelayedOrInterruptedSeries.md),[IMMZD18SDTPOnTimeStart](PlanDefinition-IMMZD18SDTPOnTimeStart.md),[IMMZD18SDTPPregnancyStartingWith3Doses](PlanDefinition-IMMZD18SDTPPregnancyStartingWith3Doses.md),[IMMZD18SDTPPregnancyStartingWith4Doses](PlanDefinition-IMMZD18SDTPPregnancyStartingWith4Doses.md),[IMMZD18SDengue3DosesWithPreVaccinationScreening](PlanDefinition-IMMZD18SDengue3DosesWithPreVaccinationScreening.md),[IMMZD18SHPV2Doses](PlanDefinition-IMMZD18SHPV2Doses.md),[IMMZD18SHPVSingleDose](PlanDefinition-IMMZD18SHPVSingleDose.md),[IMMZD18SHepatitisAInactivatedHAV1Dose](PlanDefinition-IMMZD18SHepatitisAInactivatedHAV1Dose.md),[IMMZD18SHepatitisAInactivatedHAV2Doses](PlanDefinition-IMMZD18SHepatitisAInactivatedHAV2Doses.md),[IMMZD18SHepatitisALiveAttenuatedHAV1Dose](PlanDefinition-IMMZD18SHepatitisALiveAttenuatedHAV1Dose.md),[IMMZD18SHepatitisB3Doses](PlanDefinition-IMMZD18SHepatitisB3Doses.md),[IMMZD18SHepatitisB4Doses](PlanDefinition-IMMZD18SHepatitisB4Doses.md),[IMMZD18SHepatitisBBirthDose](PlanDefinition-IMMZD18SHepatitisBBirthDose.md),[IMMZD18SHepatitisBDelayedStart](PlanDefinition-IMMZD18SHepatitisBDelayedStart.md),[IMMZD18SHib2DosesWithBoosterDose](PlanDefinition-IMMZD18SHib2DosesWithBoosterDose.md),[IMMZD18SHib3Doses](PlanDefinition-IMMZD18SHib3Doses.md),[IMMZD18SHib3DosesWithBoosterDose](PlanDefinition-IMMZD18SHib3DosesWithBoosterDose.md),[IMMZD18SJEInactivatedVeroCellDerivedVaccine](PlanDefinition-IMMZD18SJEInactivatedVeroCellDerivedVaccine.md),[IMMZD18SJELiveAttenuatedVaccine](PlanDefinition-IMMZD18SJELiveAttenuatedVaccine.md),[IMMZD18SJELiveRecombinantVaccine](PlanDefinition-IMMZD18SJELiveRecombinantVaccine.md),[IMMZD18SMalaria](PlanDefinition-IMMZD18SMalaria.md),[IMMZD18SMeaslesLowTransmission](PlanDefinition-IMMZD18SMeaslesLowTransmission.md),[IMMZD18SMeaslesMCVDose0](PlanDefinition-IMMZD18SMeaslesMCVDose0.md),[IMMZD18SMeaslesOngoingTransmission](PlanDefinition-IMMZD18SMeaslesOngoingTransmission.md),[IMMZD18SMeaslesSupplementaryDose](PlanDefinition-IMMZD18SMeaslesSupplementaryDose.md),[IMMZD18SMeningococcalMenAConjugateVaccine1Dose](PlanDefinition-IMMZD18SMeningococcalMenAConjugateVaccine1Dose.md),[IMMZD18SMeningococcalMenAConjugateVaccine2Doses](PlanDefinition-IMMZD18SMeningococcalMenAConjugateVaccine2Doses.md),[IMMZD18SMeningococcalMonovalentMenCConjugateVaccine](PlanDefinition-IMMZD18SMeningococcalMonovalentMenCConjugateVaccine.md),[IMMZD18SMeningococcalPolysaccharideVaccines](PlanDefinition-IMMZD18SMeningococcalPolysaccharideVaccines.md),[IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose](PlanDefinition-IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose.md),[IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses](PlanDefinition-IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses.md),[IMMZD18SMumps](PlanDefinition-IMMZD18SMumps.md),[IMMZD18SPneumococcal2DosesWithBoosterDose](PlanDefinition-IMMZD18SPneumococcal2DosesWithBoosterDose.md),[IMMZD18SPneumococcal3Doses](PlanDefinition-IMMZD18SPneumococcal3Doses.md),[IMMZD18SPolioBOPVPlusIPV](PlanDefinition-IMMZD18SPolioBOPVPlusIPV.md),[IMMZD18SPolioBirthDose](PlanDefinition-IMMZD18SPolioBirthDose.md),[IMMZD18SPolioIPVOnly](PlanDefinition-IMMZD18SPolioIPVOnly.md),[IMMZD18SPolioSequentialIPVbOPV](PlanDefinition-IMMZD18SPolioSequentialIPVbOPV.md),[IMMZD18SRabies](PlanDefinition-IMMZD18SRabies.md),[IMMZD18SRotavirus](PlanDefinition-IMMZD18SRotavirus.md),[IMMZD18SRubellaHighIncidence](PlanDefinition-IMMZD18SRubellaHighIncidence.md),[IMMZD18SRubellaLowIncidence](PlanDefinition-IMMZD18SRubellaLowIncidence.md),[IMMZD18SSeasonalinfluenzaSeasonalInfluenza](PlanDefinition-IMMZD18SSeasonalinfluenzaSeasonalInfluenza.md),[IMMZD18STBEEnceVir](PlanDefinition-IMMZD18STBEEnceVir.md),[IMMZD18STBEEncepur](PlanDefinition-IMMZD18STBEEncepur.md),[IMMZD18STBEFSMEImmun](PlanDefinition-IMMZD18STBEFSMEImmun.md),[IMMZD18STBETBEMoscow](PlanDefinition-IMMZD18STBETBEMoscow.md),[IMMZD18STyphoidTCV](PlanDefinition-IMMZD18STyphoidTCV.md),[IMMZD18STyphoidTy21a](PlanDefinition-IMMZD18STyphoidTy21a.md),[IMMZD18STyphoidViPS](PlanDefinition-IMMZD18STyphoidViPS.md),[IMMZD18SVaricella1Dose](PlanDefinition-IMMZD18SVaricella1Dose.md),[IMMZD18SVaricella2Doses](PlanDefinition-IMMZD18SVaricella2Doses.md),[IMMZD18SYellowfeverYellowFever](PlanDefinition-IMMZD18SYellowfeverYellowFever.md),[IMMZD2DTBCG](PlanDefinition-IMMZD2DTBCG.md),[IMMZD2DTCholeraWCRBSVaccine2Doses](PlanDefinition-IMMZD2DTCholeraWCRBSVaccine2Doses.md),[IMMZD2DTCholeraWCRBSVaccine3Doses](PlanDefinition-IMMZD2DTCholeraWCRBSVaccine3Doses.md),[IMMZD2DTCholeraWCVaccines](PlanDefinition-IMMZD2DTCholeraWCVaccines.md),[IMMZD2DTDTPDelayedOrInterruptedSeries](PlanDefinition-IMMZD2DTDTPDelayedOrInterruptedSeries.md),[IMMZD2DTDTPOnTimeStart](PlanDefinition-IMMZD2DTDTPOnTimeStart.md),[IMMZD2DTDTPPregnancy](PlanDefinition-IMMZD2DTDTPPregnancy.md),[IMMZD2DTDTPPregnancyStartingWith3Doses](PlanDefinition-IMMZD2DTDTPPregnancyStartingWith3Doses.md),[IMMZD2DTDTPPregnancyStartingWith4Doses](PlanDefinition-IMMZD2DTDTPPregnancyStartingWith4Doses.md),[IMMZD2DTDengue3DosesWithPreVaccinationScreening](PlanDefinition-IMMZD2DTDengue3DosesWithPreVaccinationScreening.md),[IMMZD2DTDengue3DosesWithoutPreVaccinationScreening](PlanDefinition-IMMZD2DTDengue3DosesWithoutPreVaccinationScreening.md),[IMMZD2DTHPV2Doses](PlanDefinition-IMMZD2DTHPV2Doses.md),[IMMZD2DTHPVSingleDose](PlanDefinition-IMMZD2DTHPVSingleDose.md),[IMMZD2DTHepatitisAInactivatedHAV1Dose](PlanDefinition-IMMZD2DTHepatitisAInactivatedHAV1Dose.md),[IMMZD2DTHepatitisAInactivatedHAV2Doses](PlanDefinition-IMMZD2DTHepatitisAInactivatedHAV2Doses.md),[IMMZD2DTHepatitisALiveAttenuatedHAV1Dose](PlanDefinition-IMMZD2DTHepatitisALiveAttenuatedHAV1Dose.md),[IMMZD2DTHepatitisB3Doses](PlanDefinition-IMMZD2DTHepatitisB3Doses.md),[IMMZD2DTHepatitisB4Doses](PlanDefinition-IMMZD2DTHepatitisB4Doses.md),[IMMZD2DTHepatitisBBirthDose](PlanDefinition-IMMZD2DTHepatitisBBirthDose.md),[IMMZD2DTHepatitisBDelayedStart](PlanDefinition-IMMZD2DTHepatitisBDelayedStart.md),[IMMZD2DTHib2DosesWithBoosterDose](PlanDefinition-IMMZD2DTHib2DosesWithBoosterDose.md),[IMMZD2DTHib3Doses](PlanDefinition-IMMZD2DTHib3Doses.md),[IMMZD2DTHib3DosesWithBoosterDose](PlanDefinition-IMMZD2DTHib3DosesWithBoosterDose.md),[IMMZD2DTJEInactivatedVeroCellDerivedVaccine](PlanDefinition-IMMZD2DTJEInactivatedVeroCellDerivedVaccine.md),[IMMZD2DTJELiveAttenuatedVaccine](PlanDefinition-IMMZD2DTJELiveAttenuatedVaccine.md),[IMMZD2DTJELiveRecombinantVaccine](PlanDefinition-IMMZD2DTJELiveRecombinantVaccine.md),[IMMZD2DTMalaria](PlanDefinition-IMMZD2DTMalaria.md),[IMMZD2DTMeaslesLowTransmission](PlanDefinition-IMMZD2DTMeaslesLowTransmission.md),[IMMZD2DTMeaslesMCVDose0](PlanDefinition-IMMZD2DTMeaslesMCVDose0.md),[IMMZD2DTMeaslesOngoingTransmission](PlanDefinition-IMMZD2DTMeaslesOngoingTransmission.md),[IMMZD2DTMeaslesSupplementaryDose](PlanDefinition-IMMZD2DTMeaslesSupplementaryDose.md),[IMMZD2DTMeningococcalMenAConjugateVaccine1Dose](PlanDefinition-IMMZD2DTMeningococcalMenAConjugateVaccine1Dose.md),[IMMZD2DTMeningococcalMenAConjugateVaccine2Doses](PlanDefinition-IMMZD2DTMeningococcalMenAConjugateVaccine2Doses.md),[IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine](PlanDefinition-IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine.md),[IMMZD2DTMeningococcalPolysaccharideVaccines](PlanDefinition-IMMZD2DTMeningococcalPolysaccharideVaccines.md),[IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose](PlanDefinition-IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose.md),[IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses](PlanDefinition-IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses.md),[IMMZD2DTMumps](PlanDefinition-IMMZD2DTMumps.md),[IMMZD2DTPneumococcal2DosesWithBoosterDose](PlanDefinition-IMMZD2DTPneumococcal2DosesWithBoosterDose.md),[IMMZD2DTPneumococcal3Doses](PlanDefinition-IMMZD2DTPneumococcal3Doses.md),[IMMZD2DTPolioBOPVPlusIPV](PlanDefinition-IMMZD2DTPolioBOPVPlusIPV.md),[IMMZD2DTPolioBirthDose](PlanDefinition-IMMZD2DTPolioBirthDose.md),[IMMZD2DTPolioIPVOnly](PlanDefinition-IMMZD2DTPolioIPVOnly.md),[IMMZD2DTPolioSequentialIPVbOPV](PlanDefinition-IMMZD2DTPolioSequentialIPVbOPV.md),[IMMZD2DTRabies](PlanDefinition-IMMZD2DTRabies.md),[IMMZD2DTRotavirus](PlanDefinition-IMMZD2DTRotavirus.md),[IMMZD2DTRubellaHighIncidence](PlanDefinition-IMMZD2DTRubellaHighIncidence.md),[IMMZD2DTRubellaLowIncidence](PlanDefinition-IMMZD2DTRubellaLowIncidence.md),[IMMZD2DTSeasonalinfluenzaSeasonalInfluenza](PlanDefinition-IMMZD2DTSeasonalinfluenzaSeasonalInfluenza.md),[IMMZD2DTTBEEnceVir](PlanDefinition-IMMZD2DTTBEEnceVir.md),[IMMZD2DTTBEEncepur](PlanDefinition-IMMZD2DTTBEEncepur.md),[IMMZD2DTTBEFSMEImmun](PlanDefinition-IMMZD2DTTBEFSMEImmun.md),[IMMZD2DTTBETBEMoscow](PlanDefinition-IMMZD2DTTBETBEMoscow.md),[IMMZD2DTTyphoidTCV](PlanDefinition-IMMZD2DTTyphoidTCV.md),[IMMZD2DTTyphoidTy21a](PlanDefinition-IMMZD2DTTyphoidTy21a.md),[IMMZD2DTTyphoidViPS](PlanDefinition-IMMZD2DTTyphoidViPS.md),[IMMZD2DTVaricella1Dose](PlanDefinition-IMMZD2DTVaricella1Dose.md),[IMMZD2DTVaricella2Doses](PlanDefinition-IMMZD2DTVaricella2Doses.md),[IMMZD2DTYellowfeverYellowFever](PlanDefinition-IMMZD2DTYellowfeverYellowFever.md),[IMMZD5DTBCGContraindications](PlanDefinition-IMMZD5DTBCGContraindications.md),[IMMZD5DTDTPContraindications](PlanDefinition-IMMZD5DTDTPContraindications.md),[IMMZD5DTDengueContraindications](PlanDefinition-IMMZD5DTDengueContraindications.md),[IMMZD5DTHPVContraindications](PlanDefinition-IMMZD5DTHPVContraindications.md),[IMMZD5DTHepatitisAContraindications](PlanDefinition-IMMZD5DTHepatitisAContraindications.md),[IMMZD5DTHepatitisBContraindications](PlanDefinition-IMMZD5DTHepatitisBContraindications.md),[IMMZD5DTHibContraindications](PlanDefinition-IMMZD5DTHibContraindications.md),[IMMZD5DTJEContraindications](PlanDefinition-IMMZD5DTJEContraindications.md),[IMMZD5DTMalariaContraindications](PlanDefinition-IMMZD5DTMalariaContraindications.md),[IMMZD5DTMeaslesContraindications](PlanDefinition-IMMZD5DTMeaslesContraindications.md),[IMMZD5DTMeningococcalContraindications](PlanDefinition-IMMZD5DTMeningococcalContraindications.md),[IMMZD5DTMumpsContraindications](PlanDefinition-IMMZD5DTMumpsContraindications.md),[IMMZD5DTPneumococcalContraindications](PlanDefinition-IMMZD5DTPneumococcalContraindications.md),[IMMZD5DTPolioContraindications](PlanDefinition-IMMZD5DTPolioContraindications.md),[IMMZD5DTRabiesContraindications](PlanDefinition-IMMZD5DTRabiesContraindications.md),[IMMZD5DTRotavirusContraindications](PlanDefinition-IMMZD5DTRotavirusContraindications.md),[IMMZD5DTRubellaContraindications](PlanDefinition-IMMZD5DTRubellaContraindications.md),[IMMZD5DTSeasonalInfluenzaContraindications](PlanDefinition-IMMZD5DTSeasonalInfluenzaContraindications.md),[IMMZD5DTTBEContraindications](PlanDefinition-IMMZD5DTTBEContraindications.md),[IMMZD5DTTyphoidContraindications](PlanDefinition-IMMZD5DTTyphoidContraindications.md),[IMMZD5DTVaricellaContraindications](PlanDefinition-IMMZD5DTVaricellaContraindications.md)and[IMMZD5DTYellowFeverContraindications](PlanDefinition-IMMZD5DTYellowFeverContraindications.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "smart.who.int.immunizations",
  "meta" : {
    "profile" : ["SMARTImplementationGuide"]
  },
  "url" : "http://smart.who.int/immunizations/ImplementationGuide/smart.who.int.immunizations",
  "version" : "0.2.0",
  "name" : "Immunizations",
  "title" : "WHO Immunization Implementation Guide",
  "status" : "draft",
  "date" : "2024-12-06",
  "publisher" : "WHO",
  "contact" : [
    {
      "name" : "WHO",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://who.int"
        }
      ]
    }
  ],
  "description" : "WHO Immunization Implementaiton Guide",
  "packageId" : "smart.who.int.immunizations",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.0"
    },
    {
      "id" : "smart_who_int_base",
      "uri" : "http://smart.who.int/base/ImplementationGuide/smart.who.int.base",
      "packageId" : "smart.who.int.base",
      "version" : "current"
    },
    {
      "id" : "hl7_fhir_uv_extensions_r4",
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.1.0"
    },
    {
      "id" : "hl7_fhir_uv_cql",
      "uri" : "http://hl7.org/fhir/uv/cql/ImplementationGuide/hl7.fhir.uv.cql",
      "packageId" : "hl7.fhir.uv.cql",
      "version" : "1.0.0"
    },
    {
      "id" : "hl7_fhir_uv_crmi",
      "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
      "packageId" : "hl7.fhir.uv.crmi",
      "version" : "1.0.0"
    },
    {
      "id" : "hl7_fhir_uv_sdc",
      "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
      "packageId" : "hl7.fhir.uv.sdc",
      "version" : "3.0.0"
    },
    {
      "id" : "hl7_fhir_uv_cpg",
      "uri" : "http://hl7.org/fhir/uv/cpg/ImplementationGuide/hl7.fhir.uv.cpg",
      "packageId" : "hl7.fhir.uv.cpg",
      "version" : "current"
    },
    {
      "id" : "hl7_fhir_us_cqfmeasures",
      "uri" : "http://hl7.org/fhir/us/cqfmeasures/ImplementationGuide/hl7.fhir.us.cqfmeasures",
      "packageId" : "hl7.fhir.us.cqfmeasures",
      "version" : "5.0.0"
    },
    {
      "id" : "fhir_cqf_common",
      "uri" : "http://fhir.org/guides/cqf/common/ImplementationGuide/fhir.cqf.common",
      "packageId" : "fhir.cqf.common",
      "version" : "4.0.1"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "produce-jekyll-data"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-binary"
          },
          {
            "url" : "value",
            "valueString" : "input/cql"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://id.who.int/icd/release/11/mms"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/ValueSet/immunization-status"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/ValueSet/country"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/base-clinical/Library/WHOCommon"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/base-clinical/Library/WHOConcepts"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/base-clinical/Library/WHOElements"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/base-clinical/Library/WHOEncounterElements"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/immunizations/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2023+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "produce-jekyll-data"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-binary"
          },
          {
            "url" : "value",
            "valueString" : "input/cql"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://id.who.int/icd/release/11/mms"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/ValueSet/immunization-status"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/ValueSet/country"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/base-clinical/Library/WHOCommon"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/base-clinical/Library/WHOConcepts"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/base-clinical/Library/WHOElements"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/base-clinical/Library/WHOEncounterElements"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://smart.who.int/immunizations/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/IMMZ.C.ConceptMap"
        },
        "name" : "ConceptMap to and from IMMZ.C DataElements",
        "description" : "Mapping to and from IMMZ.C Data Dictionary to other codesystems.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/IMMZ.D.ConceptMap"
        },
        "name" : "ConceptMap to and from IMMZ.D DataElements",
        "description" : "Mapping to and from IMMZ.D Data Dictionary to other codesystems.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/IMMZ.Z.ConceptMap"
        },
        "name" : "ConceptMap to and from IMMZ.Z DataElements",
        "description" : "Mapping to and from IMMZ.Z Data Dictionary to other codesystems.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.BCG"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for BCG",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving BCG vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Cholera"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Cholera",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Cholera vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.COVID"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for COVID",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving COVID vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Dengue"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Dengue",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Dengue vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Diphtheria"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Diphtheria",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Diphtheria vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.DTP"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for DTP",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving DTP vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Flu"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Flu",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Flu vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Hib"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Haemophilus influenzae type b",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Haemophilus influenzae type b vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.HepA"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Hepatitis A",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Hepatitis A vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.HepB"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Hepatitis B",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Hepatitis B vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.HPV"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for HPV",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving HPV vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.JE"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Japanese Encephalitis",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Japanese Encephalitis vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Malaria"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Malaris",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Malaris vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Measles"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Measles",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Measles vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Meningococcal"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Meningococcal",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Meningococcal vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Mumps"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Mumps",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Mumps vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Pertussis"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Pertussis",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Pertussis vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Pneumococcal"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Pneumococcal",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Pneumococcal vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Polio"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Polio",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Polio vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Rabies"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Rabies",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Rabies vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Rotavirus"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Rotavirus",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Rotavirus vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Rubella"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Rubella",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Rubella vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.TBE"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for TBE",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving TBE vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Tetanus"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Tetanus",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Tetanus vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Typhoid"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Typhoid",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Typhoid vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.Varicella"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Varicella",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Varicella vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D1.QuestionnaireResponse.YellowFever"
        },
        "name" : "Example QuestionnaireReponse for Capture Client History for Yellow Fever",
        "description" : "Example QuestionnaireReponse for IMMZ.D1.Capture or update client history.\nFor patient receiving Yellow Fever vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D5.QuestionnaireResponse.1"
        },
        "name" : "Example QuestionnaireReponse for Contraindications",
        "description" : "Example QuestionnaireReponse for IMMZ.D5.Determine vaccine(s) to be administered based on contraindications.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D17.QuestionnaireResponse.1"
        },
        "name" : "Example QuestionnaireReponse for Report AEFI",
        "description" : "Example QuestionnaireReponse for IMMZ.D17.Report AEFI.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D13.QuestionnaireResponse.BCG"
        },
        "name" : "Example QuestionnaireReponse for Update Client History for BCG",
        "description" : "Example QuestionnaireReponse for IMMZ.D13.Update client record.\nFor patient receiving BCG vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D13.QuestionnaireResponse.Measles.2"
        },
        "name" : "Example QuestionnaireReponse for Update Client History for Measles",
        "description" : "Example QuestionnaireReponse for IMMZ.D13.Update client record.\nFor patient receiving Measles vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.D13.QuestionnaireResponse.Measles"
        },
        "name" : "Example QuestionnaireReponse for Update Client History for Measles",
        "description" : "Example QuestionnaireReponse for IMMZ.D13.Update client record.\nFor patient receiving Measles vaccine.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/Example.IMMZ.C.QuestionnaireResponse.1"
        },
        "name" : "Example QuestionnaireResponse for Client Registration",
        "description" : "Example QuestionnaireResponse for\nIMMZ.C4.Create client record\nOR\nIMMZ.C5.3.Update client details",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZAdministrativeArea"
        },
        "name" : "Immunization Administrative Area",
        "description" : "The service delivery location (location name, city, municipality, town or village) where the vaccine administration occurred",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZCountryOfVaccination"
        },
        "name" : "Immunization Country of Vaccination",
        "description" : "The service delivery country where the vaccine administration occurred",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZDueDateOfNextDose"
        },
        "name" : "Immunization Due Date of Next Dose",
        "description" : "The service delivery location (location name, city, municipality, town or village) where the vaccine administration occurred",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZLiveVaccine"
        },
        "name" : "Immunization Live Vaccine",
        "description" : "Uses a living but weakened version of the virus or one that is very similar",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZMarketAuthorization"
        },
        "name" : "Immunization Market Authorization Holder",
        "description" : "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZOtherMedicalEvent"
        },
        "name" : "Immunization Other Important Medical Event",
        "description" : "There was another important reaction or medical event",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZTypeOfDose"
        },
        "name" : "Immunization Type of Dose",
        "description" : "The type of dose in a series that the client received",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZVaccineBrand"
        },
        "name" : "Immunization Vaccine Brand",
        "description" : "The brand or trade name used to refer to the vaccine received",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/IMMZ.C"
        },
        "name" : "IMMZ.C CodeSystem for Data Elements",
        "description" : "CodeSystem for IMMZ.C Data Elements",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.C.DE5"
        },
        "name" : "IMMZ.C.DE5 ValueSet for Sex",
        "description" : "ValueSet for Sex for IMMZ.C.DE5",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZC4"
        },
        "name" : "IMMZ.C4.Create client record",
        "description" : "Data elements for the IMMZ.C4.Create client record Data Dictionary Activity.  Identical to IMMZ.C5.3.Update client details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZC4"
        },
        "name" : "IMMZ.C4.Create client record",
        "description" : "Questionnaire for IMMZ.C4.Create client record",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/IMMZ.D"
        },
        "name" : "IMMZ.D CodeSystem for Data Elements",
        "description" : "CodeSystem for IMMZ.D Data Elements",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE1"
        },
        "name" : "IMMZ.D.DE1 ValueSet for Immunization event status",
        "description" : "ValueSet for Immunization event status for IMMZ.D.DE1",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE107"
        },
        "name" : "IMMZ.D.DE107 ValueSet for Type of reaction",
        "description" : "ValueSet for Type of reaction for IMMZ.D.DE107",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE115"
        },
        "name" : "IMMZ.D.DE115 ValueSet for Reaction outcome",
        "description" : "ValueSet for Reaction outcome for IMMZ.D.DE115",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE126"
        },
        "name" : "IMMZ.D.DE126 ValueSet for Disease targeted",
        "description" : "ValueSet for Disease targeted for IMMZ.D.DE126",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE156"
        },
        "name" : "IMMZ.D.DE156 ValueSet for Immunization recommendation status",
        "description" : "ValueSet for Immunization recommendation status for IMMZ.D.DE156",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE161"
        },
        "name" : "IMMZ.D.DE161 ValueSet for Potential contraindications",
        "description" : "ValueSet for Potential contraindications for IMMZ.D.DE161",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE18"
        },
        "name" : "IMMZ.D.DE18 ValueSet for Vaccine brand",
        "description" : "ValueSet for Vaccine brand for IMMZ.D.DE18",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE19"
        },
        "name" : "IMMZ.D.DE19 ValueSet for Vaccine type",
        "description" : "ValueSet for Vaccine type for IMMZ.D.DE19",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE204"
        },
        "name" : "IMMZ.D.DE204 ValueSet for HIV status",
        "description" : "ValueSet for HIV status for IMMZ.D.DE204",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE212"
        },
        "name" : "IMMZ.D.DE212 ValueSet for Type of poliovirus dose",
        "description" : "ValueSet for Type of poliovirus dose for IMMZ.D.DE212",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE216"
        },
        "name" : "IMMZ.D.DE216 ValueSet for Type of JE dose",
        "description" : "ValueSet for Type of JE dose for IMMZ.D.DE216",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE220"
        },
        "name" : "IMMZ.D.DE220 ValueSet for Type of TBE dose",
        "description" : "ValueSet for Type of TBE dose for IMMZ.D.DE220",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE225"
        },
        "name" : "IMMZ.D.DE225 ValueSet for Type of typhoid dose",
        "description" : "ValueSet for Type of typhoid dose for IMMZ.D.DE225",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE229"
        },
        "name" : "IMMZ.D.DE229 ValueSet for Type of cholera dose",
        "description" : "ValueSet for Type of cholera dose for IMMZ.D.DE229",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE23"
        },
        "name" : "IMMZ.D.DE23 ValueSet for Vaccine manufacturer",
        "description" : "ValueSet for Vaccine manufacturer for IMMZ.D.DE23",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE232"
        },
        "name" : "IMMZ.D.DE232 ValueSet for Type of meningococcal dose",
        "description" : "ValueSet for Type of meningococcal dose for IMMZ.D.DE232",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE237"
        },
        "name" : "IMMZ.D.DE237 ValueSet for Type of hepatitis A dose",
        "description" : "ValueSet for Type of hepatitis A dose for IMMZ.D.DE237",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE241"
        },
        "name" : "IMMZ.D.DE241 ValueSet for Dengue serostatus",
        "description" : "ValueSet for Dengue serostatus for IMMZ.D.DE241",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE243"
        },
        "name" : "IMMZ.D.DE243 ValueSet for Type of TB infection test performed",
        "description" : "ValueSet for Type of TB infection test performed for IMMZ.D.DE243",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE246"
        },
        "name" : "IMMZ.D.DE246 ValueSet for TB infection test result",
        "description" : "ValueSet for TB infection test result for IMMZ.D.DE246",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE25"
        },
        "name" : "IMMZ.D.DE25 ValueSet for Vaccine market authorization holder",
        "description" : "ValueSet for Vaccine market authorization holder for IMMZ.D.DE25",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE254"
        },
        "name" : "IMMZ.D.DE254 ValueSet for Type of hepatitis B dose",
        "description" : "ValueSet for Type of hepatitis B dose for IMMZ.D.DE254",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE258"
        },
        "name" : "IMMZ.D.DE258 ValueSet for Type of dose",
        "description" : "ValueSet for Type of dose for IMMZ.D.DE258",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE5"
        },
        "name" : "IMMZ.D.DE5 ValueSet for Reason vaccine was not administered",
        "description" : "ValueSet for Reason vaccine was not administered for IMMZ.D.DE5",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE86"
        },
        "name" : "IMMZ.D.DE86 ValueSet for Client education and counselling on immunization",
        "description" : "ValueSet for Client education and counselling on immunization for IMMZ.D.DE86",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.DE95"
        },
        "name" : "IMMZ.D.DE95 ValueSet for Reaction manifestation",
        "description" : "ValueSet for Reaction manifestation for IMMZ.D.DE95",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.D.Observation"
        },
        "name" : "IMMZ.D.Observation ValueSet for Sex",
        "description" : "ValueSet for Observation codes for IMMZ.D",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD1"
        },
        "name" : "IMMZ.D1.Capture or update client history",
        "description" : "Data elements for the IMMZ.D1.Capture or update client history Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD1"
        },
        "name" : "IMMZ.D1.Capture or update client history",
        "description" : "Questionnaire for IMMZ.D1.Capture or update client history",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD13"
        },
        "name" : "IMMZ.D13.Update client record",
        "description" : "Data elements for the IMMZ.D13.Update client record Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD13"
        },
        "name" : "IMMZ.D13.Update client record",
        "description" : "Questionnaire for IMMZ.D13.Update client record",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD17"
        },
        "name" : "IMMZ.D17.Report AEFI",
        "description" : "Data elements for the IMMZ.D17.Report AEFI Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD17"
        },
        "name" : "IMMZ.D17.Report AEFI",
        "description" : "Questionnaire for IMMZ.D17.Report AEFI",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD18"
        },
        "name" : "IMMZ.D18.Determine time for next visit",
        "description" : "Data elements for the IMMZ.D18.Determine time for next visit Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD18"
        },
        "name" : "IMMZ.D18.Determine time for next visit",
        "description" : "Questionnaire for IMMZ.D18.Determine time for next visit",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SBCG"
        },
        "name" : "IMMZ.D18.S.BCG schedule",
        "description" : "IMMZ.D18.S.BCG schedule\nIMMZ.D18.S.BCG schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SCholeraWCVaccines"
        },
        "name" : "IMMZ.D18.S.Cholera.WC vaccines schedule",
        "description" : "IMMZ.D18.S.Cholera.WC vaccines schedule\nWhole-cell (WC) vaccines (Shanchol, Euvchol and mORCVAX), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SCholeraWCRBSVaccine2Doses"
        },
        "name" : "IMMZ.D18.S.Cholera.WC-rBS vaccine 2-dose schedule",
        "description" : "IMMZ.D18.S.Cholera.WC-rBS vaccine 2-dose schedule\nWhole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 2-dose schedule for clients aged ≥ 6 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses"
        },
        "name" : "IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule",
        "description" : "IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule\nWhole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 3-dose schedule for clients aged 2–5 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening"
        },
        "name" : "IMMZ.D18.S.Dengue schedule",
        "description" : "IMMZ.D18.S.Dengue schedule\nCYD-TDV (Dengvaxia), 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries"
        },
        "name" : "IMMZ.D18.S.DTP.Delayed or interrupted schedule",
        "description" : "IMMZ.D18.S.DTP.Delayed or interrupted schedule\nDiphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SDTPOnTimeStart"
        },
        "name" : "IMMZ.D18.S.DTP.On-time start schedule",
        "description" : "IMMZ.D18.S.DTP.On-time start schedule\nDiphtheria–tetanus–pertussis (DTP) vaccination schedule, on-time start (at ≤ 12 months of age)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses"
        },
        "name" : "IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule",
        "description" : "IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule\nDiphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood diphtheria–tetanus–pertussis (DTP) doses",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SDTPPregnancyStartingWith4Doses"
        },
        "name" : "IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule",
        "description" : "IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule\nDiphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood diphtheria–tetanus–pertussis (DTP) doses",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHepatitisAInactivatedHAV1Dose"
        },
        "name" : "IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule",
        "description" : "IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule\nInactivated hepatitis A virus (HAV), 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHepatitisAInactivatedHAV2Doses"
        },
        "name" : "IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule",
        "description" : "IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule\nInactivated hepatitis A virus (HAV), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHepatitisALiveAttenuatedHAV1Dose"
        },
        "name" : "IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule",
        "description" : "IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule\nLive attenuated hepatitis A virus (HAV), 1 dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHepatitisB3Doses"
        },
        "name" : "IMMZ.D18.S.Hepatitis B.3-dose schedule",
        "description" : "IMMZ.D18.S.Hepatitis B.3-dose schedule\n3-dose schedule (birth dose + 2 primary series doses), on-time start",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHepatitisB4Doses"
        },
        "name" : "IMMZ.D18.S.Hepatitis B.4-dose schedule",
        "description" : "IMMZ.D18.S.Hepatitis B.4-dose schedule\n4-dose schedule (birth dose + 3 primary series doses), on-time start",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHepatitisBBirthDose"
        },
        "name" : "IMMZ.D18.S.Hepatitis B.Birth dose schedule",
        "description" : "IMMZ.D18.S.Hepatitis B.Birth dose schedule\nBirth dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHepatitisBDelayedStart"
        },
        "name" : "IMMZ.D18.S.Hepatitis B.Delayed start schedule",
        "description" : "IMMZ.D18.S.Hepatitis B.Delayed start schedule\n3-dose schedule (no birth dose + 3 doses), delayed start",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHib2DosesWithBoosterDose"
        },
        "name" : "IMMZ.D18.S.Hib.2 doses with booster dose schedule",
        "description" : "IMMZ.D18.S.Hib.2 doses with booster dose schedule\n2 primary doses with a booster dose (2p+1) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHib3Doses"
        },
        "name" : "IMMZ.D18.S.Hib.3 doses schedule",
        "description" : "IMMZ.D18.S.Hib.3 doses schedule\n3 primary doses without a booster dose (3p) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHib3DosesWithBoosterDose"
        },
        "name" : "IMMZ.D18.S.Hib.3 doses with booster dose schedule",
        "description" : "IMMZ.D18.S.Hib.3 doses with booster dose schedule\n3 primary doses with a booster dose (3p+1) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHPV2Doses"
        },
        "name" : "IMMZ.D18.S.HPV.2-dose schedule",
        "description" : "IMMZ.D18.S.HPV.2-dose schedule\n2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine"
        },
        "name" : "IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule",
        "description" : "IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule\nInactivated Vero cell-derived vaccination schedule (2-dose scheme)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SJELiveAttenuatedVaccine"
        },
        "name" : "IMMZ.D18.S.JE.Live attenuated vaccination schedule",
        "description" : "IMMZ.D18.S.JE.Live attenuated vaccination schedule\nLive attenuated vaccination schedule (1-dose scheme)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SJELiveRecombinantVaccine"
        },
        "name" : "IMMZ.D18.S.JE.Live recombinant vaccination schedule",
        "description" : "IMMZ.D18.S.JE.Live recombinant vaccination schedule\nLive recombinant vaccination schedule (1-dose scheme)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMalaria"
        },
        "name" : "IMMZ.D18.S.Malaria schedule",
        "description" : "IMMZ.D18.S.Malaria schedule\n4-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeaslesLowTransmission"
        },
        "name" : "IMMZ.D18.S.Measles.Low transmission schedule",
        "description" : "IMMZ.D18.S.Measles.Low transmission schedule\nSchedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeaslesMCVDose0"
        },
        "name" : "IMMZ.D18.S.Measles.MCV dose 0 schedule",
        "description" : "IMMZ.D18.S.Measles.MCV dose 0 schedule\nMeasles-containing vaccine dose 0 (MCV0) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeaslesOngoingTransmission"
        },
        "name" : "IMMZ.D18.S.Measles.Ongoing transmission schedule",
        "description" : "IMMZ.D18.S.Measles.Ongoing transmission schedule\nCountries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeaslesSupplementaryDose"
        },
        "name" : "IMMZ.D18.S.Measles.Supplementary dose schedule",
        "description" : "IMMZ.D18.S.Measles.Supplementary dose schedule\nMeasles supplementary dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine1Dose"
        },
        "name" : "IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule",
        "description" : "IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule\nMenA conjugate vaccine, 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine2Doses"
        },
        "name" : "IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule",
        "description" : "IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule\nMenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine"
        },
        "name" : "IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule",
        "description" : "IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule\nMonovalent MenC conjugate schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeningococcalPolysaccharideVaccines"
        },
        "name" : "IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule",
        "description" : "IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule\nPolysaccharide vaccines, 1-dose and booster dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose"
        },
        "name" : "IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule",
        "description" : "IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule\nQuadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses"
        },
        "name" : "IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 2-dose schedule",
        "description" : "IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 2-dose schedule\nQuadrivalent conjugate vaccine (A,C,W135,Y-D), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SMumps"
        },
        "name" : "IMMZ.D18.S.Mumps schedule",
        "description" : "IMMZ.D18.S.Mumps schedule\n2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SPneumococcal2DosesWithBoosterDose"
        },
        "name" : "IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule",
        "description" : "IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule\n2 primary doses with a booster dose (2p+1) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SPneumococcal3Doses"
        },
        "name" : "IMMZ.D18.S.Pneumococcal.3 doses schedule",
        "description" : "IMMZ.D18.S.Pneumococcal.3 doses schedule\n3 primary doses (3p+0) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SPolioBirthDose"
        },
        "name" : "IMMZ.D18.S.Polio.Birth dose schedule",
        "description" : "IMMZ.D18.S.Polio.Birth dose schedule\nBirth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SPolioBOPVPlusIPV"
        },
        "name" : "IMMZ.D18.S.Polio.bOPV plus IPV schedule",
        "description" : "IMMZ.D18.S.Polio.bOPV plus IPV schedule\nBivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SPolioIPVOnly"
        },
        "name" : "IMMZ.D18.S.Polio.IPV-only schedule",
        "description" : "IMMZ.D18.S.Polio.IPV-only schedule\nInactivated polio vaccine (IPV)-only schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SPolioSequentialIPVbOPV"
        },
        "name" : "IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule",
        "description" : "IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule\nSequential bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SRabies"
        },
        "name" : "IMMZ.D18.S.Rabies schedule",
        "description" : "IMMZ.D18.S.Rabies schedule\nRabies schedule (2-dose scheme)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SRotavirus"
        },
        "name" : "IMMZ.D18.S.Rotavirus schedule",
        "description" : "IMMZ.D18.S.Rotavirus schedule\nIMMZ.D18.S.Rotavirus schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SRubellaHighIncidence"
        },
        "name" : "IMMZ.D18.S.Rubella.High incidence schedule",
        "description" : "IMMZ.D18.S.Rubella.High incidence schedule\nSchedule for countries with high incidence and mortality from rubella",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SRubellaLowIncidence"
        },
        "name" : "IMMZ.D18.S.Rubella.Low incidence schedule",
        "description" : "IMMZ.D18.S.Rubella.Low incidence schedule\nSchedule for countries with low incidence of rubella",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SSeasonalinfluenzaSeasonalInfluenza"
        },
        "name" : "IMMZ.D18.S.Seasonal influenza schedule",
        "description" : "IMMZ.D18.S.Seasonal influenza schedule\nInactivated trivalent and quadrivalent vaccines, 2-dose schedule for children aged under 9 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SHPVSingleDose"
        },
        "name" : "IMMZ.D18.S.Single-dose schedule",
        "description" : "IMMZ.D18.S.Single-dose schedule\nAlternative single-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18STBEEncepur"
        },
        "name" : "IMMZ.D18.S.TBE.Encepur schedule",
        "description" : "IMMZ.D18.S.TBE.Encepur schedule\nEncepur, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18STBEEnceVir"
        },
        "name" : "IMMZ.D18.S.TBE.EnceVir schedule",
        "description" : "IMMZ.D18.S.TBE.EnceVir schedule\nEnceVir, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18STBEFSMEImmun"
        },
        "name" : "IMMZ.D18.S.TBE.FSME-Immun schedule",
        "description" : "IMMZ.D18.S.TBE.FSME-Immun schedule\nFSME-Immun, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18STBETBEMoscow"
        },
        "name" : "IMMZ.D18.S.TBE.TBE-Moscow schedule",
        "description" : "IMMZ.D18.S.TBE.TBE-Moscow schedule\nTBE-Moscow, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18STyphoidTCV"
        },
        "name" : "IMMZ.D18.S.Typhoid.TCV schedule",
        "description" : "IMMZ.D18.S.Typhoid.TCV schedule\nTyphoid conjugate vaccine (TCV), 1 dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18STyphoidTy21a"
        },
        "name" : "IMMZ.D18.S.Typhoid.Ty21a schedule",
        "description" : "IMMZ.D18.S.Typhoid.Ty21a schedule\nLive attenuated Ty21a vaccine, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18STyphoidViPS"
        },
        "name" : "IMMZ.D18.S.Typhoid.ViPS schedule",
        "description" : "IMMZ.D18.S.Typhoid.ViPS schedule\nUnconjugated Vi polysaccharide (ViPS), 1 dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SVaricella1Dose"
        },
        "name" : "IMMZ.D18.S.Varicella.1-dose schedule",
        "description" : "IMMZ.D18.S.Varicella.1-dose schedule\n1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SVaricella2Doses"
        },
        "name" : "IMMZ.D18.S.Varicella.2-dose schedule",
        "description" : "IMMZ.D18.S.Varicella.2-dose schedule\n2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD18SYellowfeverYellowFever"
        },
        "name" : "IMMZ.D18.S.Yellow fever schedule",
        "description" : "IMMZ.D18.S.Yellow fever schedule\nIMMZ.D18.S.Yellow fever schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD2"
        },
        "name" : "IMMZ.D2.Determine required vaccination(s)",
        "description" : "Data elements for the IMMZ.D2.Determine required vaccination(s) Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD2"
        },
        "name" : "IMMZ.D2.Determine required vaccination(s)",
        "description" : "Questionnaire for IMMZ.D2.Determine required vaccination(s)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTBCG"
        },
        "name" : "IMMZ.D2.DT.BCG",
        "description" : "IMMZ.D2.DT.BCG\nIMMZ.D2.DT.BCG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTCholeraWCVaccines"
        },
        "name" : "IMMZ.D2.DT.Cholera.WC vaccines",
        "description" : "IMMZ.D2.DT.Cholera.WC vaccines\nWhole-cell (WC) vaccines schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTCholeraWCRBSVaccine2Doses"
        },
        "name" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses",
        "description" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses\nWhole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses"
        },
        "name" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses",
        "description" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses\nWhole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ActivityDefinition"
          }
        ],
        "reference" : {
          "reference" : "ActivityDefinition/IMMZD2DTCR"
        },
        "name" : "IMMZ.D2.DT.CR",
        "description" : "Provide immunization communication",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening"
        },
        "name" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening",
        "description" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening\nCYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening"
        },
        "name" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening",
        "description" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening\nCYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTDTPDelayedOrInterruptedSeries"
        },
        "name" : "IMMZ.D2.DT.DTP.Delayed or interrupted series",
        "description" : "IMMZ.D2.DT.DTP.Delayed or interrupted series\nDTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTDTPOnTimeStart"
        },
        "name" : "IMMZ.D2.DT.DTP.On-time start",
        "description" : "IMMZ.D2.DT.DTP.On-time start\nDTP vaccination schedule, on-time start (at ≤ 12 months of age)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTDTPPregnancy"
        },
        "name" : "IMMZ.D2.DT.DTP.Pregnancy",
        "description" : "IMMZ.D2.DT.DTP.Pregnancy\nDetermine whether DTP-containing vaccines are needed for pregnant women",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTDTPPregnancyStartingWith3Doses"
        },
        "name" : "IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses",
        "description" : "IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses\nDiphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood DTP doses",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTDTPPregnancyStartingWith4Doses"
        },
        "name" : "IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses",
        "description" : "IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses\nDiphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV1Dose"
        },
        "name" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose",
        "description" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose\nInactivated hepatitis A virus (HAV), 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV2Doses"
        },
        "name" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses",
        "description" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses\nInactivated hepatitis A virus (HAV), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHepatitisALiveAttenuatedHAV1Dose"
        },
        "name" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose",
        "description" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose\nLive attenuated hepatitis A virus (HAV), 1 dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHepatitisB3Doses"
        },
        "name" : "IMMZ.D2.DT.Hepatitis B.3 doses",
        "description" : "IMMZ.D2.DT.Hepatitis B.3 doses\n3-dose schedule (birth dose + 2 primary series doses), on-time start",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHepatitisB4Doses"
        },
        "name" : "IMMZ.D2.DT.Hepatitis B.4 doses",
        "description" : "IMMZ.D2.DT.Hepatitis B.4 doses\n4-dose schedule (birth dose + 3 primary series doses), on-time start",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHepatitisBBirthDose"
        },
        "name" : "IMMZ.D2.DT.Hepatitis B.Birth dose",
        "description" : "IMMZ.D2.DT.Hepatitis B.Birth dose\nBirth dose administration",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHepatitisBDelayedStart"
        },
        "name" : "IMMZ.D2.DT.Hepatitis B.Delayed start",
        "description" : "IMMZ.D2.DT.Hepatitis B.Delayed start\n3-dose schedule (no birth dose + 3 doses), delayed start",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHib2DosesWithBoosterDose"
        },
        "name" : "IMMZ.D2.DT.Hib.2 doses with booster dose",
        "description" : "IMMZ.D2.DT.Hib.2 doses with booster dose\n2 primary doses with a booster dose (2p+1)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHib3Doses"
        },
        "name" : "IMMZ.D2.DT.Hib.3 doses",
        "description" : "IMMZ.D2.DT.Hib.3 doses\n3 primary doses without a booster dose (3p)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHib3DosesWithBoosterDose"
        },
        "name" : "IMMZ.D2.DT.Hib.3 doses with booster dose",
        "description" : "IMMZ.D2.DT.Hib.3 doses with booster dose\n3 primary doses with a booster dose (3p+1)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHPV2Doses"
        },
        "name" : "IMMZ.D2.DT.HPV.2 doses",
        "description" : "IMMZ.D2.DT.HPV.2 doses\n2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTHPVSingleDose"
        },
        "name" : "IMMZ.D2.DT.HPV.Single dose",
        "description" : "IMMZ.D2.DT.HPV.Single dose\nAlternative single-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine"
        },
        "name" : "IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine",
        "description" : "IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine\nInactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTJELiveAttenuatedVaccine"
        },
        "name" : "IMMZ.D2.DT.JE.Live attenuated vaccine",
        "description" : "IMMZ.D2.DT.JE.Live attenuated vaccine\nLive attenuated vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTJELiveRecombinantVaccine"
        },
        "name" : "IMMZ.D2.DT.JE.Live recombinant vaccine",
        "description" : "IMMZ.D2.DT.JE.Live recombinant vaccine\nLive recombinant vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMalaria"
        },
        "name" : "IMMZ.D2.DT.Malaria",
        "description" : "IMMZ.D2.DT.Malaria\n4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeaslesLowTransmission"
        },
        "name" : "IMMZ.D2.DT.Measles.Low transmission",
        "description" : "IMMZ.D2.DT.Measles.Low transmission\nCountries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeaslesMCVDose0"
        },
        "name" : "IMMZ.D2.DT.Measles.MCV dose 0",
        "description" : "IMMZ.D2.DT.Measles.MCV dose 0\nMeasles-containing vaccine dose 0 (MCV0) administration",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeaslesOngoingTransmission"
        },
        "name" : "IMMZ.D2.DT.Measles.Ongoing transmission",
        "description" : "IMMZ.D2.DT.Measles.Ongoing transmission\nCountries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeaslesSupplementaryDose"
        },
        "name" : "IMMZ.D2.DT.Measles.Supplementary dose",
        "description" : "IMMZ.D2.DT.Measles.Supplementary dose\nMeasles-containing vaccine (MCV) supplementary dose administration",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine1Dose"
        },
        "name" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose",
        "description" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose\nMenA conjugate vaccine, 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine2Doses"
        },
        "name" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses",
        "description" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses\nMenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine"
        },
        "name" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine",
        "description" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine\nMonovalent MenC conjugate vaccine schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeningococcalPolysaccharideVaccines"
        },
        "name" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines",
        "description" : "IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines\nPolysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose"
        },
        "name" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose",
        "description" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose\nQuadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses"
        },
        "name" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses",
        "description" : "IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses\nQuadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTMumps"
        },
        "name" : "IMMZ.D2.DT.Mumps",
        "description" : "IMMZ.D2.DT.Mumps\n2-dose schedule (countries with mumps in schedule and low transmission of measles)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose"
        },
        "name" : "IMMZ.D2.DT.Pneumococcal.2 doses with booster dose",
        "description" : "IMMZ.D2.DT.Pneumococcal.2 doses with booster dose\n2 primary doses with a booster dose (2p+1)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTPneumococcal3Doses"
        },
        "name" : "IMMZ.D2.DT.Pneumococcal.3 doses",
        "description" : "IMMZ.D2.DT.Pneumococcal.3 doses\n3 primary doses (3p+0)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTPolioBirthDose"
        },
        "name" : "IMMZ.D2.DT.Polio.Birth dose",
        "description" : "IMMZ.D2.DT.Polio.Birth dose\nBirth dose administration as part of \"bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTPolioBOPVPlusIPV"
        },
        "name" : "IMMZ.D2.DT.Polio.bOPV plus IPV",
        "description" : "IMMZ.D2.DT.Polio.bOPV plus IPV\n\"Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (applicable for all countries)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTPolioIPVOnly"
        },
        "name" : "IMMZ.D2.DT.Polio.IPV-only",
        "description" : "IMMZ.D2.DT.Polio.IPV-only\nInactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV"
        },
        "name" : "IMMZ.D2.DT.Polio.Sequential IPV–bOPV",
        "description" : "IMMZ.D2.DT.Polio.Sequential IPV–bOPV\nSequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTRabies"
        },
        "name" : "IMMZ.D2.DT.Rabies",
        "description" : "IMMZ.D2.DT.Rabies\nPre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTRotavirus"
        },
        "name" : "IMMZ.D2.DT.Rotavirus",
        "description" : "IMMZ.D2.DT.Rotavirus\nIMMZ.D2.DT.Rotavirus",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTRubellaHighIncidence"
        },
        "name" : "IMMZ.D2.DT.Rubella.High incidence",
        "description" : "IMMZ.D2.DT.Rubella.High incidence\nCountries with high incidence and mortality from rubella",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTRubellaLowIncidence"
        },
        "name" : "IMMZ.D2.DT.Rubella.Low incidence",
        "description" : "IMMZ.D2.DT.Rubella.Low incidence\nCountries with low incidence of rubella",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza"
        },
        "name" : "IMMZ.D2.DT.Seasonal influenza",
        "description" : "IMMZ.D2.DT.Seasonal influenza\nInactivated trivalent and quadrivalent vaccines, 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTTBEEncepur"
        },
        "name" : "IMMZ.D2.DT.TBE.Encepur",
        "description" : "IMMZ.D2.DT.TBE.Encepur\nEncepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTTBEEnceVir"
        },
        "name" : "IMMZ.D2.DT.TBE.EnceVir",
        "description" : "IMMZ.D2.DT.TBE.EnceVir\nEnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTTBEFSMEImmun"
        },
        "name" : "IMMZ.D2.DT.TBE.FSME-Immun",
        "description" : "IMMZ.D2.DT.TBE.FSME-Immun\nFSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTTBETBEMoscow"
        },
        "name" : "IMMZ.D2.DT.TBE.TBE-Moscow",
        "description" : "IMMZ.D2.DT.TBE.TBE-Moscow\nTBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTTyphoidTCV"
        },
        "name" : "IMMZ.D2.DT.Typhoid.TCV",
        "description" : "IMMZ.D2.DT.Typhoid.TCV\nTyphoid conjugate vaccine (TCV) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTTyphoidTy21a"
        },
        "name" : "IMMZ.D2.DT.Typhoid.Ty21a",
        "description" : "IMMZ.D2.DT.Typhoid.Ty21a\nLive attenuated Ty21a vaccine schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTTyphoidViPS"
        },
        "name" : "IMMZ.D2.DT.Typhoid.ViPS",
        "description" : "IMMZ.D2.DT.Typhoid.ViPS\nUnconjugated Vi polysaccharide (ViPS) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTVaricella1Dose"
        },
        "name" : "IMMZ.D2.DT.Varicella.1 dose",
        "description" : "IMMZ.D2.DT.Varicella.1 dose\nCountries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.\nThe number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTVaricella2Doses"
        },
        "name" : "IMMZ.D2.DT.Varicella.2 doses",
        "description" : "IMMZ.D2.DT.Varicella.2 doses\nCountries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.\nThe number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD2DTYellowfeverYellowFever"
        },
        "name" : "IMMZ.D2.DT.Yellow fever",
        "description" : "IMMZ.D2.DT.Yellow fever\nIMMZ.D2.DT.Yellow fever",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD20"
        },
        "name" : "IMMZ.D20.Does client require a verifiable digital certificate",
        "description" : "Data elements for the IMMZ.D20.Does client require a verifiable digital certificate Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD20"
        },
        "name" : "IMMZ.D20.Does client require a verifiable digital certificate",
        "description" : "Questionnaire for IMMZ.D20.Does client require a verifiable digital certificate",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD21"
        },
        "name" : "IMMZ.D21.Generate verifiable digital certificate",
        "description" : "Data elements for the IMMZ.D21.Generate verifiable digital certificate Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD21"
        },
        "name" : "IMMZ.D21.Generate verifiable digital certificate",
        "description" : "Questionnaire for IMMZ.D21.Generate verifiable digital certificate",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD5"
        },
        "name" : "IMMZ.D5.Determine vaccine(s) to be administered based on contraindications",
        "description" : "Data elements for the IMMZ.D5.Determine vaccine(s) to be administered based on contraindications Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD5"
        },
        "name" : "IMMZ.D5.Determine vaccine(s) to be administered based on contraindications",
        "description" : "Questionnaire for IMMZ.D5.Determine vaccine(s) to be administered based on contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTBCGContraindications"
        },
        "name" : "IMMZ.D5.DT.BCG contraindications",
        "description" : "IMMZ.D5.DT.BCG contraindications\nIMMZ.D5.DT.BCG contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTDengueContraindications"
        },
        "name" : "IMMZ.D5.DT.Dengue contraindications",
        "description" : "IMMZ.D5.DT.Dengue contraindications\nIMMZ.D5.DT.Dengue contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTDTPContraindications"
        },
        "name" : "IMMZ.D5.DT.DTP contraindications",
        "description" : "IMMZ.D5.DT.DTP contraindications\nIMMZ.D5.DT.DTP contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTHepatitisAContraindications"
        },
        "name" : "IMMZ.D5.DT.Hepatitis A contraindications",
        "description" : "IMMZ.D5.DT.Hepatitis A contraindications\nIMMZ.D5.DT.Hepatitis A contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTHepatitisBContraindications"
        },
        "name" : "IMMZ.D5.DT.Hepatitis B contraindications",
        "description" : "IMMZ.D5.DT.Hepatitis B contraindications\nIMMZ.D5.DT.Hepatitis B contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTHibContraindications"
        },
        "name" : "IMMZ.D5.DT.Hib contraindications",
        "description" : "IMMZ.D5.DT.Hib contraindications\nIMMZ.D5.DT.Hib contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTHPVContraindications"
        },
        "name" : "IMMZ.D5.DT.HPV contraindications",
        "description" : "IMMZ.D5.DT.HPV contraindications\nIMMZ.D5.DT.HPV contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTJEContraindications"
        },
        "name" : "IMMZ.D5.DT.JE contraindications",
        "description" : "IMMZ.D5.DT.JE contraindications\nIMMZ.D5.DT.JE contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTMalariaContraindications"
        },
        "name" : "IMMZ.D5.DT.Malaria contraindications",
        "description" : "IMMZ.D5.DT.Malaria contraindications\nIMMZ.D5.DT.Malaria contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTMeaslesContraindications"
        },
        "name" : "IMMZ.D5.DT.Measles contraindications",
        "description" : "IMMZ.D5.DT.Measles contraindications\nIMMZ.D5.DT.Measles contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTMeningococcalContraindications"
        },
        "name" : "IMMZ.D5.DT.Meningococcal contraindications",
        "description" : "IMMZ.D5.DT.Meningococcal contraindications\nIMMZ.D5.DT.Meningococcal contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTMumpsContraindications"
        },
        "name" : "IMMZ.D5.DT.Mumps contraindications",
        "description" : "IMMZ.D5.DT.Mumps contraindications\nIMMZ.D5.DT.Mumps contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTPneumococcalContraindications"
        },
        "name" : "IMMZ.D5.DT.Pneumococcal contraindications",
        "description" : "IMMZ.D5.DT.Pneumococcal contraindications\nIMMZ.D5.DT.Pneumococcal contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTPolioContraindications"
        },
        "name" : "IMMZ.D5.DT.Polio contraindications",
        "description" : "IMMZ.D5.DT.Polio contraindications\nIMMZ.D5.DT.Polio contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTRabiesContraindications"
        },
        "name" : "IMMZ.D5.DT.Rabies contraindications",
        "description" : "IMMZ.D5.DT.Rabies contraindications\nIMMZ.D5.DT.Rabies contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTRotavirusContraindications"
        },
        "name" : "IMMZ.D5.DT.Rotavirus contraindications",
        "description" : "IMMZ.D5.DT.Rotavirus contraindications\nIMMZ.D5.DT.Rotavirus contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTRubellaContraindications"
        },
        "name" : "IMMZ.D5.DT.Rubella contraindications",
        "description" : "IMMZ.D5.DT.Rubella contraindications\nIMMZ.D5.DT.Rubella contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTSeasonalInfluenzaContraindications"
        },
        "name" : "IMMZ.D5.DT.Seasonal influenza contraindications",
        "description" : "IMMZ.D5.DT.Seasonal influenza contraindications\nIMMZ.D5.DT.Seasonal influenza contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTTBEContraindications"
        },
        "name" : "IMMZ.D5.DT.TBE contraindications",
        "description" : "IMMZ.D5.DT.TBE contraindications\nIMMZ.D5.DT.TBE contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTTyphoidContraindications"
        },
        "name" : "IMMZ.D5.DT.Typhoid contraindications",
        "description" : "IMMZ.D5.DT.Typhoid contraindications\nIMMZ.D5.DT.Typhoid contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTVaricellaContraindications"
        },
        "name" : "IMMZ.D5.DT.Varicella contraindications",
        "description" : "IMMZ.D5.DT.Varicella contraindications\nIMMZ.D5.DT.Varicella contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/IMMZD5DTYellowFeverContraindications"
        },
        "name" : "IMMZ.D5.DT.Yellow fever contraindications",
        "description" : "IMMZ.D5.DT.Yellow fever contraindications\nIMMZ.D5.DT.Yellow fever contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZD7"
        },
        "name" : "IMMZ.D7.Counsel client",
        "description" : "Data elements for the IMMZ.D7.Counsel client Data Dictionary Activity.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/QIMMZD7"
        },
        "name" : "IMMZ.D7.Counsel client",
        "description" : "Questionnaire for IMMZ.D7.Counsel client",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/IMMZ.Ex"
        },
        "name" : "IMMZ.Ex CodeSystem for Example values for required data elements",
        "description" : "CodeSystem for IMMZ.Ex Examples",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/IMMZ.I"
        },
        "name" : "IMMZ.I CodeSystem for Data Elements",
        "description" : "CodeSystem for IMMZ.I Data Elements",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.I.DE30"
        },
        "name" : "IMMZ.I.DE30 ValueSet for Disaggregation group",
        "description" : "ValueSet for Disaggregation group for IMMZ.I.DE30",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.I.DE48"
        },
        "name" : "IMMZ.I.DE48 ValueSet for Closed stock discarded type",
        "description" : "ValueSet for Closed stock discarded type for IMMZ.I.DE48",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/IMMZ.Z"
        },
        "name" : "IMMZ.Z CodeSystem for Data Elements",
        "description" : "CodeSystem for IMMZ.Z Data Elements",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE1"
        },
        "name" : "IMMZ.Z.DE1 ValueSet for BCG vaccines",
        "description" : "ValueSet for BCG vaccines for IMMZ.Z.DE1",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE10"
        },
        "name" : "IMMZ.Z.DE10 ValueSet for Meningococcal vaccines",
        "description" : "ValueSet for Meningococcal vaccines for IMMZ.Z.DE10",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE11"
        },
        "name" : "IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines",
        "description" : "ValueSet for Mumps-containing vaccines for IMMZ.Z.DE11",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE12"
        },
        "name" : "IMMZ.Z.DE12 ValueSet for Pertussis-containing vaccines",
        "description" : "ValueSet for Pertussis-containing vaccines for IMMZ.Z.DE12",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE13"
        },
        "name" : "IMMZ.Z.DE13 ValueSet for Pneumococcal vaccines",
        "description" : "ValueSet for Pneumococcal vaccines for IMMZ.Z.DE13",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE14"
        },
        "name" : "IMMZ.Z.DE14 ValueSet for Poliovirus-containing vaccines",
        "description" : "ValueSet for Poliovirus-containing vaccines for IMMZ.Z.DE14",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE15"
        },
        "name" : "IMMZ.Z.DE15 ValueSet for Rabies vaccines",
        "description" : "ValueSet for Rabies vaccines for IMMZ.Z.DE15",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE16"
        },
        "name" : "IMMZ.Z.DE16 ValueSet for Rotavirus vaccines",
        "description" : "ValueSet for Rotavirus vaccines for IMMZ.Z.DE16",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE17"
        },
        "name" : "IMMZ.Z.DE17 ValueSet for Rubella-containing vaccines",
        "description" : "ValueSet for Rubella-containing vaccines for IMMZ.Z.DE17",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE18"
        },
        "name" : "IMMZ.Z.DE18 ValueSet for Seasonal influenza vaccines",
        "description" : "ValueSet for Seasonal influenza vaccines for IMMZ.Z.DE18",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE19"
        },
        "name" : "IMMZ.Z.DE19 ValueSet for Tetanus-containing vaccines",
        "description" : "ValueSet for Tetanus-containing vaccines for IMMZ.Z.DE19",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE2"
        },
        "name" : "IMMZ.Z.DE2 ValueSet for Cholera vaccines",
        "description" : "ValueSet for Cholera vaccines for IMMZ.Z.DE2",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE20"
        },
        "name" : "IMMZ.Z.DE20 ValueSet for TBE vaccines",
        "description" : "ValueSet for TBE vaccines for IMMZ.Z.DE20",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE21"
        },
        "name" : "IMMZ.Z.DE21 ValueSet for Typhoid vaccines",
        "description" : "ValueSet for Typhoid vaccines for IMMZ.Z.DE21",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE22"
        },
        "name" : "IMMZ.Z.DE22 ValueSet for Varicella-containing vaccines",
        "description" : "ValueSet for Varicella-containing vaccines for IMMZ.Z.DE22",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE23"
        },
        "name" : "IMMZ.Z.DE23 ValueSet for Yellow fever vaccines",
        "description" : "ValueSet for Yellow fever vaccines for IMMZ.Z.DE23",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE24"
        },
        "name" : "IMMZ.Z.DE24 ValueSet for DTP-containing vaccines",
        "description" : "ValueSet for DTP-containing vaccines for IMMZ.Z.DE24",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE25"
        },
        "name" : "IMMZ.Z.DE25 ValueSet for Dengue vaccines",
        "description" : "ValueSet for Dengue vaccines for IMMZ.Z.DE25",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE26"
        },
        "name" : "IMMZ.Z.DE26 ValueSet for COVID-19 vaccines",
        "description" : "ValueSet for COVID-19 vaccines for IMMZ.Z.DE26",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE27"
        },
        "name" : "IMMZ.Z.DE27 ValueSet for Malaria vaccines",
        "description" : "ValueSet for Malaria vaccines for IMMZ.Z.DE27",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE28"
        },
        "name" : "IMMZ.Z.DE28 ValueSet for Tetanus and diphtheria-containing vaccines",
        "description" : "ValueSet for Tetanus and diphtheria-containing vaccines for IMMZ.Z.DE28",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE29"
        },
        "name" : "IMMZ.Z.DE29 ValueSet for Pentavalent vaccines",
        "description" : "ValueSet for Pentavalent vaccines for IMMZ.Z.DE29",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE3"
        },
        "name" : "IMMZ.Z.DE3 ValueSet for Diphtheria-containing vaccines",
        "description" : "ValueSet for Diphtheria-containing vaccines for IMMZ.Z.DE3",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE30"
        },
        "name" : "IMMZ.Z.DE30 ValueSet for Oral polio vaccines",
        "description" : "ValueSet for Oral polio vaccines for IMMZ.Z.DE30",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE31"
        },
        "name" : "IMMZ.Z.DE31 ValueSet for Inactivated polio vaccines",
        "description" : "ValueSet for Inactivated polio vaccines for IMMZ.Z.DE31",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE32"
        },
        "name" : "IMMZ.Z.DE32 ValueSet for Measles and rubella-containing vaccines",
        "description" : "ValueSet for Measles and rubella-containing vaccines for IMMZ.Z.DE32",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE33"
        },
        "name" : "IMMZ.Z.DE33 ValueSet for Tetanus and diphtheria-containing vaccines (DT)",
        "description" : "ValueSet for Tetanus and diphtheria-containing vaccines (DT) for IMMZ.Z.DE33",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE34"
        },
        "name" : "IMMZ.Z.DE34 ValueSet for Tetanus and diphtheria-containing vaccines (Td)",
        "description" : "ValueSet for Tetanus and diphtheria-containing vaccines (Td) for IMMZ.Z.DE34",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE4"
        },
        "name" : "IMMZ.Z.DE4 ValueSet for Hib-containing vaccines",
        "description" : "ValueSet for Hib-containing vaccines for IMMZ.Z.DE4",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE5"
        },
        "name" : "IMMZ.Z.DE5 ValueSet for Hepatitis A-containing vaccines",
        "description" : "ValueSet for Hepatitis A-containing vaccines for IMMZ.Z.DE5",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE6"
        },
        "name" : "IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines",
        "description" : "ValueSet for Hepatitis B-containing vaccines for IMMZ.Z.DE6",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE7"
        },
        "name" : "IMMZ.Z.DE7 ValueSet for HPV vaccines",
        "description" : "ValueSet for HPV vaccines for IMMZ.Z.DE7",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE8"
        },
        "name" : "IMMZ.Z.DE8 ValueSet for JE vaccines",
        "description" : "ValueSet for JE vaccines for IMMZ.Z.DE8",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.DE9"
        },
        "name" : "IMMZ.Z.DE9 ValueSet for Measles-containing vaccines",
        "description" : "ValueSet for Measles-containing vaccines for IMMZ.Z.DE9",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.LiveAttenuated"
        },
        "name" : "IMMZ.Z.LiveAttenuated ValueSet for live attenuated vaccines",
        "description" : "ValueSet for live attenuated vaccine types for IMMZ.Z.LiveAttenuated",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZ.Z.VS"
        },
        "name" : "IMMZ.Z.VS ValueSet for vaccine types",
        "description" : "ValueSet for vaccine types for IMMZ.Z",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZAgeConcepts"
        },
        "name" : "IMMZAgeConcepts",
        "description" : "This library defines concepts for ages and age ranges used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZCommon"
        },
        "name" : "IMMZCommon",
        "description" : "This library defines common terminologies and functions used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZConcepts"
        },
        "name" : "IMMZConcepts",
        "description" : "This library defines concepts used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SBCGVS"
        },
        "name" : "IMMZD18SBCG ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SBCG for IMMZ.D18.S.BCG schedule.\nBusiness rule: Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: IMMZ.D18.S.BCG schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SBCGLogic"
        },
        "name" : "IMMZD18SBCGLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.BCG schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SCholeraWCRBSVaccine2DosesVS"
        },
        "name" : "IMMZD18SCholeraWCRBSVaccine2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SCholeraWCRBSVaccine2Doses for IMMZ.D18.S.Cholera.WC-rBS vaccine 2-dose schedule.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 2-dose schedule for clients aged ≥ 6 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SCholeraWCRBSVaccine2DosesLogic"
        },
        "name" : "IMMZD18SCholeraWCRBSVaccine2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Cholera.WC-rBS vaccine 2-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SCholeraWCRBSVaccine3DosesVS"
        },
        "name" : "IMMZD18SCholeraWCRBSVaccine3Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SCholeraWCRBSVaccine3Doses for IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 3-dose schedule for clients aged 2–5 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SCholeraWCRBSVaccine3DosesLogic"
        },
        "name" : "IMMZD18SCholeraWCRBSVaccine3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SCholeraWCVaccinesVS"
        },
        "name" : "IMMZD18SCholeraWCVaccines ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SCholeraWCVaccines for IMMZ.D18.S.Cholera.WC vaccines schedule.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole-cell (WC) vaccines (Shanchol, Euvchol and mORCVAX), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SCholeraWCVaccinesLogic"
        },
        "name" : "IMMZD18SCholeraWCVaccinesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Cholera.WC vaccines schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SDengue3DosesWithPreVaccinationScreeningVS"
        },
        "name" : "IMMZD18SDengue3DosesWithPreVaccinationScreening ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SDengue3DosesWithPreVaccinationScreening for IMMZ.D18.S.Dengue schedule.\nBusiness rule: Determine if the client is due for a dengue vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: CYD-TDV (Dengvaxia), 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SDengue3DosesWithPreVaccinationScreeningLogic"
        },
        "name" : "IMMZD18SDengue3DosesWithPreVaccinationScreeningLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Dengue schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SDTPDelayedOrInterruptedSeriesVS"
        },
        "name" : "IMMZD18SDTPDelayedOrInterruptedSeries ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SDTPDelayedOrInterruptedSeries for IMMZ.D18.S.DTP.Delayed or interrupted schedule.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Diphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
        },
        "name" : "IMMZD18SDTPDelayedOrInterruptedSeriesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.DTP.Delayed or interrupted schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SDTPOnTimeStartVS"
        },
        "name" : "IMMZD18SDTPOnTimeStart ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SDTPOnTimeStart for IMMZ.D18.S.DTP.On-time start schedule.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Diphtheria–tetanus–pertussis (DTP) vaccination schedule, on-time start (at ≤ 12 months of age)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SDTPOnTimeStartLogic"
        },
        "name" : "IMMZD18SDTPOnTimeStartLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.DTP.On-time start schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SDTPPregnancyStartingWith3DosesVS"
        },
        "name" : "IMMZD18SDTPPregnancyStartingWith3Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SDTPPregnancyStartingWith3Doses for IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood diphtheria–tetanus–pertussis (DTP) doses",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SDTPPregnancyStartingWith3DosesLogic"
        },
        "name" : "IMMZD18SDTPPregnancyStartingWith3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SDTPPregnancyStartingWith4DosesVS"
        },
        "name" : "IMMZD18SDTPPregnancyStartingWith4Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SDTPPregnancyStartingWith4Doses for IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood diphtheria–tetanus–pertussis (DTP) doses",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SDTPPregnancyStartingWith4DosesLogic"
        },
        "name" : "IMMZD18SDTPPregnancyStartingWith4DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SHepatitisAInactivatedHAV1DoseVS"
        },
        "name" : "IMMZD18SHepatitisAInactivatedHAV1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SHepatitisAInactivatedHAV1Dose for IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated hepatitis A virus (HAV), 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHepatitisAInactivatedHAV1DoseLogic"
        },
        "name" : "IMMZD18SHepatitisAInactivatedHAV1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SHepatitisAInactivatedHAV2DosesVS"
        },
        "name" : "IMMZD18SHepatitisAInactivatedHAV2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SHepatitisAInactivatedHAV2Doses for IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated hepatitis A virus (HAV), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHepatitisAInactivatedHAV2DosesLogic"
        },
        "name" : "IMMZD18SHepatitisAInactivatedHAV2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SHepatitisALiveAttenuatedHAV1DoseVS"
        },
        "name" : "IMMZD18SHepatitisALiveAttenuatedHAV1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SHepatitisALiveAttenuatedHAV1Dose for IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live attenuated hepatitis A virus (HAV), 1 dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic"
        },
        "name" : "IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHepatitisB3DosesLogic"
        },
        "name" : "IMMZD18SHepatitisB3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis B.3-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHepatitisB4DosesLogic"
        },
        "name" : "IMMZD18SHepatitisB4DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis B.4-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHepatitisBBirthDoseLogic"
        },
        "name" : "IMMZD18SHepatitisBBirthDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis B.Birth dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHepatitisBDelayedStartLogic"
        },
        "name" : "IMMZD18SHepatitisBDelayedStartLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis B.Delayed start schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SHib2DosesWithBoosterDoseVS"
        },
        "name" : "IMMZD18SHib2DosesWithBoosterDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SHib2DosesWithBoosterDose for IMMZ.D18.S.Hib.2 doses with booster dose schedule.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2 primary doses with a booster dose (2p+1) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHib2DosesWithBoosterDoseLogic"
        },
        "name" : "IMMZD18SHib2DosesWithBoosterDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hib.2 doses with booster dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SHib3DosesVS"
        },
        "name" : "IMMZD18SHib3Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SHib3Doses for IMMZ.D18.S.Hib.3 doses schedule.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses without a booster dose (3p) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHib3DosesLogic"
        },
        "name" : "IMMZD18SHib3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hib.3 doses schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SHib3DosesWithBoosterDoseVS"
        },
        "name" : "IMMZD18SHib3DosesWithBoosterDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SHib3DosesWithBoosterDose for IMMZ.D18.S.Hib.3 doses with booster dose schedule.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses with a booster dose (3p+1) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHib3DosesWithBoosterDoseLogic"
        },
        "name" : "IMMZD18SHib3DosesWithBoosterDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Hib.3 doses with booster dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SHPV2DosesVS"
        },
        "name" : "IMMZD18SHPV2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SHPV2Doses for IMMZ.D18.S.HPV.2-dose schedule.\nBusiness rule: Determine if the client is due for a human papillomavirus (HPV) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHPV2DosesLogic"
        },
        "name" : "IMMZD18SHPV2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.HPV.2-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SHPVSingleDoseVS"
        },
        "name" : "IMMZD18SHPVSingleDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SHPVSingleDose for IMMZ.D18.S.Single-dose schedule.\nBusiness rule: Determine if the client is due for a human papillomavirus (HPV) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Alternative single-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SHPVSingleDoseLogic"
        },
        "name" : "IMMZD18SHPVSingleDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Single-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SJEInactivatedVeroCellDerivedVaccineVS"
        },
        "name" : "IMMZD18SJEInactivatedVeroCellDerivedVaccine ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SJEInactivatedVeroCellDerivedVaccine for IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule.\nBusiness rule: Determine if the client is due for a Japanese encephalitis (JE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
        },
        "name" : "IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SJELiveAttenuatedVaccineVS"
        },
        "name" : "IMMZD18SJELiveAttenuatedVaccine ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SJELiveAttenuatedVaccine for IMMZ.D18.S.JE.Live attenuated vaccination schedule.\nBusiness rule: Determine if the client is due for a Japanese encephalitis (JE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live attenuated vaccination schedule (1-dose scheme)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SJELiveAttenuatedVaccineLogic"
        },
        "name" : "IMMZD18SJELiveAttenuatedVaccineLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.JE.Live attenuated vaccination schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SJELiveRecombinantVaccineVS"
        },
        "name" : "IMMZD18SJELiveRecombinantVaccine ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SJELiveRecombinantVaccine for IMMZ.D18.S.JE.Live recombinant vaccination schedule.\nBusiness rule: Determine if the client is due for a Japanese encephalitis (JE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live recombinant vaccination schedule (1-dose scheme)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SJELiveRecombinantVaccineLogic"
        },
        "name" : "IMMZD18SJELiveRecombinantVaccineLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.JE.Live recombinant vaccination schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMalariaVS"
        },
        "name" : "IMMZD18SMalaria ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMalaria for IMMZ.D18.S.Malaria schedule.\nBusiness rule: Determine if the client is due for a malaria vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 4-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMalariaLogic"
        },
        "name" : "IMMZD18SMalariaLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Malaria schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeaslesLowTransmissionVS"
        },
        "name" : "IMMZD18SMeaslesLowTransmission ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeaslesLowTransmission for IMMZ.D18.S.Measles.Low transmission schedule.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeaslesLowTransmissionLogic"
        },
        "name" : "IMMZD18SMeaslesLowTransmissionLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Measles.Low transmission schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeaslesMCVDose0VS"
        },
        "name" : "IMMZD18SMeaslesMCVDose0 ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeaslesMCVDose0 for IMMZ.D18.S.Measles.MCV dose 0 schedule.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Measles-containing vaccine dose 0 (MCV0) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeaslesMCVDose0Logic"
        },
        "name" : "IMMZD18SMeaslesMCVDose0Logic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Measles.MCV dose 0 schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeaslesOngoingTransmissionVS"
        },
        "name" : "IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeaslesOngoingTransmission for IMMZ.D18.S.Measles.Ongoing transmission schedule.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeaslesOngoingTransmissionLogic"
        },
        "name" : "IMMZD18SMeaslesOngoingTransmissionLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Measles.Ongoing transmission schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeaslesSupplementaryDoseVS"
        },
        "name" : "IMMZD18SMeaslesSupplementaryDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeaslesSupplementaryDose for IMMZ.D18.S.Measles.Supplementary dose schedule.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: Measles supplementary dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeaslesSupplementaryDoseLogic"
        },
        "name" : "IMMZD18SMeaslesSupplementaryDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Measles.Supplementary dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeningococcalMenAConjugateVaccine1DoseVS"
        },
        "name" : "IMMZD18SMeningococcalMenAConjugateVaccine1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeningococcalMenAConjugateVaccine1Dose for IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: MenA conjugate vaccine, 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic"
        },
        "name" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeningococcalMenAConjugateVaccine2DosesVS"
        },
        "name" : "IMMZD18SMeningococcalMenAConjugateVaccine2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeningococcalMenAConjugateVaccine2Doses for IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeningococcalMenAConjugateVaccine2DosesLogic"
        },
        "name" : "IMMZD18SMeningococcalMenAConjugateVaccine2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS"
        },
        "name" : "IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeningococcalMonovalentMenCConjugateVaccine for IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Monovalent MenC conjugate schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeningococcalMonovalentMenCConjugateVaccineLogic"
        },
        "name" : "IMMZD18SMeningococcalMonovalentMenCConjugateVaccineLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeningococcalPolysaccharideVaccinesVS"
        },
        "name" : "IMMZD18SMeningococcalPolysaccharideVaccines ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeningococcalPolysaccharideVaccines for IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Polysaccharide vaccines, 1-dose and booster dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeningococcalPolysaccharideVaccinesLogic"
        },
        "name" : "IMMZD18SMeningococcalPolysaccharideVaccinesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseVS"
        },
        "name" : "IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose for IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
        },
        "name" : "IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2DosesVS"
        },
        "name" : "IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses for IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 2-dose schedule.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Quadrivalent conjugate vaccine (A,C,W135,Y-D), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMeningococcalQuadrivalentConjugateVaccines2DosesLogic"
        },
        "name" : "IMMZD18SMeningococcalQuadrivalentConjugateVaccines2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 2-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SMumpsVS"
        },
        "name" : "IMMZD18SMumps ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SMumps for IMMZ.D18.S.Mumps schedule.\nBusiness rule: Determine if the client is due for a mumps vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SMumpsLogic"
        },
        "name" : "IMMZD18SMumpsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Mumps schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SPneumococcal2DosesWithBoosterDoseVS"
        },
        "name" : "IMMZD18SPneumococcal2DosesWithBoosterDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SPneumococcal2DosesWithBoosterDose for IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule.\nBusiness rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2 primary doses with a booster dose (2p+1) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SPneumococcal2DosesWithBoosterDoseLogic"
        },
        "name" : "IMMZD18SPneumococcal2DosesWithBoosterDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SPneumococcal3DosesVS"
        },
        "name" : "IMMZD18SPneumococcal3Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SPneumococcal3Doses for IMMZ.D18.S.Pneumococcal.3 doses schedule.\nBusiness rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses (3p+0) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SPneumococcal3DosesLogic"
        },
        "name" : "IMMZD18SPneumococcal3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Pneumococcal.3 doses schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SPolioBirthDoseVS"
        },
        "name" : "IMMZD18SPolioBirthDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SPolioBirthDose for IMMZ.D18.S.Polio.Birth dose schedule.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SPolioBirthDoseLogic"
        },
        "name" : "IMMZD18SPolioBirthDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Polio.Birth dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SPolioBOPVPlusIPVVS"
        },
        "name" : "IMMZD18SPolioBOPVPlusIPV ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SPolioBOPVPlusIPV for IMMZ.D18.S.Polio.bOPV plus IPV schedule.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SPolioBOPVPlusIPVLogic"
        },
        "name" : "IMMZD18SPolioBOPVPlusIPVLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Polio.bOPV plus IPV schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SPolioIPVOnlyVS"
        },
        "name" : "IMMZD18SPolioIPVOnly ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SPolioIPVOnly for IMMZ.D18.S.Polio.IPV-only schedule.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated polio vaccine (IPV)-only schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SPolioIPVOnlyLogic"
        },
        "name" : "IMMZD18SPolioIPVOnlyLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Polio.IPV-only schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SPolioSequentialIPVbOPVVS"
        },
        "name" : "IMMZD18SPolioSequentialIPVbOPV ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SPolioSequentialIPVbOPV for IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Sequential bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SPolioSequentialIPVbOPVLogic"
        },
        "name" : "IMMZD18SPolioSequentialIPVbOPVLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SRabiesVS"
        },
        "name" : "IMMZD18SRabies ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SRabies for IMMZ.D18.S.Rabies schedule.\nBusiness rule: Determine if the client is due for a rabies vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Rabies schedule (2-dose scheme)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SRabiesLogic"
        },
        "name" : "IMMZD18SRabiesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Rabies schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SRotavirusVS"
        },
        "name" : "IMMZD18SRotavirus ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SRotavirus for IMMZ.D18.S.Rotavirus schedule.\nBusiness rule: Determine if the client is due for a rotavirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: IMMZ.D18.S.Rotavirus schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SRotavirusLogic"
        },
        "name" : "IMMZD18SRotavirusLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Rotavirus schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SRubellaHighIncidenceVS"
        },
        "name" : "IMMZD18SRubellaHighIncidence ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SRubellaHighIncidence for IMMZ.D18.S.Rubella.High incidence schedule.\nBusiness rule: Determine if the client is due for a rubella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Schedule for countries with high incidence and mortality from rubella",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SRubellaHighIncidenceLogic"
        },
        "name" : "IMMZD18SRubellaHighIncidenceLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Rubella.High incidence schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SRubellaLowIncidenceVS"
        },
        "name" : "IMMZD18SRubellaLowIncidence ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SRubellaLowIncidence for IMMZ.D18.S.Rubella.Low incidence schedule.\nBusiness rule: Determine if the client is due for a rubella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Schedule for countries with low incidence of rubella",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SRubellaLowIncidenceLogic"
        },
        "name" : "IMMZD18SRubellaLowIncidenceLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Rubella.Low incidence schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic"
        },
        "name" : "IMMZD18SSeasonalinfluenzaSeasonalInfluenzaLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Seasonal influenza schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18STBEEncepurVS"
        },
        "name" : "IMMZD18STBEEncepur ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18STBEEncepur for IMMZ.D18.S.TBE.Encepur schedule.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Encepur, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18STBEEncepurLogic"
        },
        "name" : "IMMZD18STBEEncepurLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.TBE.Encepur schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18STBEEnceVirVS"
        },
        "name" : "IMMZD18STBEEnceVir ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18STBEEnceVir for IMMZ.D18.S.TBE.EnceVir schedule.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: EnceVir, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18STBEEnceVirLogic"
        },
        "name" : "IMMZD18STBEEnceVirLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.TBE.EnceVir schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18STBEFSMEImmunVS"
        },
        "name" : "IMMZD18STBEFSMEImmun ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18STBEFSMEImmun for IMMZ.D18.S.TBE.FSME-Immun schedule.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: FSME-Immun, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18STBEFSMEImmunLogic"
        },
        "name" : "IMMZD18STBEFSMEImmunLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.TBE.FSME-Immun schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18STBETBEMoscowVS"
        },
        "name" : "IMMZD18STBETBEMoscow ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18STBETBEMoscow for IMMZ.D18.S.TBE.TBE-Moscow schedule.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: TBE-Moscow, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18STBETBEMoscowLogic"
        },
        "name" : "IMMZD18STBETBEMoscowLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.TBE.TBE-Moscow schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18STyphoidTCVVS"
        },
        "name" : "IMMZD18STyphoidTCV ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18STyphoidTCV for IMMZ.D18.S.Typhoid.TCV schedule.\nBusiness rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Typhoid conjugate vaccine (TCV), 1 dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18STyphoidTCVLogic"
        },
        "name" : "IMMZD18STyphoidTCVLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Typhoid.TCV schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18STyphoidTy21aVS"
        },
        "name" : "IMMZD18STyphoidTy21a ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18STyphoidTy21a for IMMZ.D18.S.Typhoid.Ty21a schedule.\nBusiness rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live attenuated Ty21a vaccine, 3-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18STyphoidTy21aLogic"
        },
        "name" : "IMMZD18STyphoidTy21aLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Typhoid.Ty21a schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18STyphoidViPSVS"
        },
        "name" : "IMMZD18STyphoidViPS ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18STyphoidViPS for IMMZ.D18.S.Typhoid.ViPS schedule.\nBusiness rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Unconjugated Vi polysaccharide (ViPS), 1 dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18STyphoidViPSLogic"
        },
        "name" : "IMMZD18STyphoidViPSLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Typhoid.ViPS schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SVaricella1DoseVS"
        },
        "name" : "IMMZD18SVaricella1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SVaricella1Dose for IMMZ.D18.S.Varicella.1-dose schedule.\nBusiness rule: Determine if the client is due for a varicella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SVaricella1DoseLogic"
        },
        "name" : "IMMZD18SVaricella1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Varicella.1-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SVaricella2DosesVS"
        },
        "name" : "IMMZD18SVaricella2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SVaricella2Doses for IMMZ.D18.S.Varicella.2-dose schedule.\nBusiness rule: Determine if the client is due for a varicella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SVaricella2DosesLogic"
        },
        "name" : "IMMZD18SVaricella2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Varicella.2-dose schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD18SYellowfeverYellowFeverVS"
        },
        "name" : "IMMZD18SYellowfeverYellowFever ValueSet for Decision Table",
        "description" : "ValueSet IMMZD18SYellowfeverYellowFever for IMMZ.D18.S.Yellow fever schedule.\nBusiness rule: Determine if the client is due for a yellow fever vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) in any\nTable: IMMZ.D18.S.Yellow fever schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD18SYellowfeverYellowFeverLogic"
        },
        "name" : "IMMZD18SYellowfeverYellowFeverLogic",
        "description" : "This library defines decision support logic for the IMMZ.D18.S.Yellow fever schedule table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTBCGVS"
        },
        "name" : "IMMZD2DTBCG ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTBCG for IMMZ.D2.DT.BCG.\nBusiness rule: Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: IMMZ.D2.DT.BCG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTBCGElements"
        },
        "name" : "IMMZD2DTBCGElements",
        "description" : "This library defines context-independent elements for BCG used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTBCGEncounterElements"
        },
        "name" : "IMMZD2DTBCGEncounterElements",
        "description" : "This library defines encounter-based elements for BCG used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTBCGLogic"
        },
        "name" : "IMMZD2DTBCGLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.BCG decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTCholeraElements"
        },
        "name" : "IMMZD2DTCholeraElements",
        "description" : "This library defines context-independent elements for Cholera used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTCholeraEncounterElements"
        },
        "name" : "IMMZD2DTCholeraEncounterElements",
        "description" : "This library defines encounter-based elements for Cholera used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTCholeraWCRBSVaccine2DosesVS"
        },
        "name" : "IMMZD2DTCholeraWCRBSVaccine2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTCholeraWCRBSVaccine2Doses for IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTCholeraWCRBSVaccine2DosesLogic"
        },
        "name" : "IMMZD2DTCholeraWCRBSVaccine2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTCholeraWCRBSVaccine3DosesVS"
        },
        "name" : "IMMZD2DTCholeraWCRBSVaccine3Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTCholeraWCRBSVaccine3Doses for IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTCholeraWCRBSVaccine3DosesLogic"
        },
        "name" : "IMMZD2DTCholeraWCRBSVaccine3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTCholeraWCVaccinesVS"
        },
        "name" : "IMMZD2DTCholeraWCVaccines ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTCholeraWCVaccines for IMMZ.D2.DT.Cholera.WC vaccines.\nBusiness rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Whole-cell (WC) vaccines schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTCholeraWCVaccinesLogic"
        },
        "name" : "IMMZD2DTCholeraWCVaccinesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Cholera.WC vaccines decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningVS"
        },
        "name" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreening ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTDengue3DosesWithoutPreVaccinationScreening for IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening.\nBusiness rule: Determine if the client is due for a dengue vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
        },
        "name" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTDengue3DosesWithPreVaccinationScreeningVS"
        },
        "name" : "IMMZD2DTDengue3DosesWithPreVaccinationScreening ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTDengue3DosesWithPreVaccinationScreening for IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening.\nBusiness rule: Determine if the client is due for a dengue vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDengue3DosesWithPreVaccinationScreeningLogic"
        },
        "name" : "IMMZD2DTDengue3DosesWithPreVaccinationScreeningLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDengueElements"
        },
        "name" : "IMMZD2DTDengueElements",
        "description" : "This library defines context-independent elements for Dengue used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDengueEncounterElements"
        },
        "name" : "IMMZD2DTDengueEncounterElements",
        "description" : "This library defines encounter-based elements for Dengue used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTDTPDelayedOrInterruptedSeriesVS"
        },
        "name" : "IMMZD2DTDTPDelayedOrInterruptedSeries ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTDTPDelayedOrInterruptedSeries for IMMZ.D2.DT.DTP.Delayed or interrupted series.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: DTP vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDTPDelayedOrInterruptedSeriesLogic"
        },
        "name" : "IMMZD2DTDTPDelayedOrInterruptedSeriesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.DTP.Delayed or interrupted series decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDTPElements"
        },
        "name" : "IMMZD2DTDTPElements",
        "description" : "This library defines context-independent elements for DTP used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDTPEncounterElements"
        },
        "name" : "IMMZD2DTDTPEncounterElements",
        "description" : "This library defines encounter-based elements for DTP used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTDTPOnTimeStartVS"
        },
        "name" : "IMMZD2DTDTPOnTimeStart ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTDTPOnTimeStart for IMMZ.D2.DT.DTP.On-time start.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: DTP vaccination schedule, on-time start (at ≤ 12 months of age)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDTPOnTimeStartLogic"
        },
        "name" : "IMMZD2DTDTPOnTimeStartLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.DTP.On-time start decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTDTPPregnancyVS"
        },
        "name" : "IMMZD2DTDTPPregnancy ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTDTPPregnancy for IMMZ.D2.DT.DTP.Pregnancy.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Determine whether DTP-containing vaccines are needed for pregnant women",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDTPPregnancyLogic"
        },
        "name" : "IMMZD2DTDTPPregnancyLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.DTP.Pregnancy decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTDTPPregnancyStartingWith3DosesVS"
        },
        "name" : "IMMZD2DTDTPPregnancyStartingWith3Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTDTPPregnancyStartingWith3Doses for IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood DTP doses",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDTPPregnancyStartingWith3DosesLogic"
        },
        "name" : "IMMZD2DTDTPPregnancyStartingWith3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTDTPPregnancyStartingWith4DosesVS"
        },
        "name" : "IMMZD2DTDTPPregnancyStartingWith4Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTDTPPregnancyStartingWith4Doses for IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses.\nBusiness rule: Determine if the client is due for a diphtheria–tetanus–pertussis (DTP) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTDTPPregnancyStartingWith4DosesLogic"
        },
        "name" : "IMMZD2DTDTPPregnancyStartingWith4DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisAElements"
        },
        "name" : "IMMZD2DTHepatitisAElements",
        "description" : "This library defines context-independent elements for Hepatitis A used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisAEncounterElements"
        },
        "name" : "IMMZD2DTHepatitisAEncounterElements",
        "description" : "This library defines encounter-based elements for Hepatitis A used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTHepatitisAInactivatedHAV1DoseVS"
        },
        "name" : "IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTHepatitisAInactivatedHAV1Dose for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated hepatitis A virus (HAV), 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisAInactivatedHAV1DoseLogic"
        },
        "name" : "IMMZD2DTHepatitisAInactivatedHAV1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTHepatitisAInactivatedHAV2DosesVS"
        },
        "name" : "IMMZD2DTHepatitisAInactivatedHAV2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTHepatitisAInactivatedHAV2Doses for IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated hepatitis A virus (HAV), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisAInactivatedHAV2DosesLogic"
        },
        "name" : "IMMZD2DTHepatitisAInactivatedHAV2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTHepatitisALiveAttenuatedHAV1DoseVS"
        },
        "name" : "IMMZD2DTHepatitisALiveAttenuatedHAV1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTHepatitisALiveAttenuatedHAV1Dose for IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose.\nBusiness rule: Determine if the client is due for a hepatitis A vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live attenuated hepatitis A virus (HAV), 1 dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisALiveAttenuatedHAV1DoseLogic"
        },
        "name" : "IMMZD2DTHepatitisALiveAttenuatedHAV1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisB3DosesLogic"
        },
        "name" : "IMMZD2DTHepatitisB3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hepatitis B.3 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisB4DosesLogic"
        },
        "name" : "IMMZD2DTHepatitisB4DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hepatitis B.4 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisBBirthDoseLogic"
        },
        "name" : "IMMZD2DTHepatitisBBirthDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hepatitis B.Birth dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisBDelayedStartLogic"
        },
        "name" : "IMMZD2DTHepatitisBDelayedStartLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hepatitis B.Delayed start decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisBElements"
        },
        "name" : "IMMZD2DTHepatitisBElements",
        "description" : "This library defines context-independent elements for Hepatitis B used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHepatitisBEncounterElements"
        },
        "name" : "IMMZD2DTHepatitisBEncounterElements",
        "description" : "This library defines encounter-based elements for Hepatitis B used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTHib2DosesWithBoosterDoseVS"
        },
        "name" : "IMMZD2DTHib2DosesWithBoosterDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTHib2DosesWithBoosterDose for IMMZ.D2.DT.Hib.2 doses with booster dose.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2 primary doses with a booster dose (2p+1)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHib2DosesWithBoosterDoseLogic"
        },
        "name" : "IMMZD2DTHib2DosesWithBoosterDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hib.2 doses with booster dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTHib3DosesVS"
        },
        "name" : "IMMZD2DTHib3Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTHib3Doses for IMMZ.D2.DT.Hib.3 doses.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses without a booster dose (3p)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHib3DosesLogic"
        },
        "name" : "IMMZD2DTHib3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hib.3 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTHib3DosesWithBoosterDoseVS"
        },
        "name" : "IMMZD2DTHib3DosesWithBoosterDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTHib3DosesWithBoosterDose for IMMZ.D2.DT.Hib.3 doses with booster dose.\nBusiness rule: Determine if the client is due for a Haemophilus influenzae type b (Hib) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses with a booster dose (3p+1)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHib3DosesWithBoosterDoseLogic"
        },
        "name" : "IMMZD2DTHib3DosesWithBoosterDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Hib.3 doses with booster dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHibElements"
        },
        "name" : "IMMZD2DTHibElements",
        "description" : "This library defines context-independent elements for Hib used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHibEncounterElements"
        },
        "name" : "IMMZD2DTHibEncounterElements",
        "description" : "This library defines encounter-based elements for Hib used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTHPV2DosesVS"
        },
        "name" : "IMMZD2DTHPV2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTHPV2Doses for IMMZ.D2.DT.HPV.2 doses.\nBusiness rule: Determine if the client is due for a human papillomavirus (HPV) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHPV2DosesLogic"
        },
        "name" : "IMMZD2DTHPV2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.HPV.2 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHPVElements"
        },
        "name" : "IMMZD2DTHPVElements",
        "description" : "This library defines context-independent elements for HPV used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHPVEncounterElements"
        },
        "name" : "IMMZD2DTHPVEncounterElements",
        "description" : "This library defines encounter-based elements for HPV used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTHPVSingleDoseVS"
        },
        "name" : "IMMZD2DTHPVSingleDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTHPVSingleDose for IMMZ.D2.DT.HPV.Single dose.\nBusiness rule: Determine if the client is due for a human papillomavirus (HPV) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Alternative single-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTHPVSingleDoseLogic"
        },
        "name" : "IMMZD2DTHPVSingleDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.HPV.Single dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTJEElements"
        },
        "name" : "IMMZD2DTJEElements",
        "description" : "This library defines context-independent elements for JE used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTJEEncounterElements"
        },
        "name" : "IMMZD2DTJEEncounterElements",
        "description" : "This library defines encounter-based elements for JE used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTJEInactivatedVeroCellDerivedVaccineVS"
        },
        "name" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccine ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTJEInactivatedVeroCellDerivedVaccine for IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine.\nBusiness rule: Determine if the client is due for a Japanese encephalitis (JE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
        },
        "name" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTJELiveAttenuatedVaccineVS"
        },
        "name" : "IMMZD2DTJELiveAttenuatedVaccine ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTJELiveAttenuatedVaccine for IMMZ.D2.DT.JE.Live attenuated vaccine.\nBusiness rule: Determine if the client is due for a Japanese encephalitis (JE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live attenuated vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTJELiveAttenuatedVaccineLogic"
        },
        "name" : "IMMZD2DTJELiveAttenuatedVaccineLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.JE.Live attenuated vaccine decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTJELiveRecombinantVaccineVS"
        },
        "name" : "IMMZD2DTJELiveRecombinantVaccine ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTJELiveRecombinantVaccine for IMMZ.D2.DT.JE.Live recombinant vaccine.\nBusiness rule: Determine if the client is due for a Japanese encephalitis (JE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live recombinant vaccination schedule (1-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTJELiveRecombinantVaccineLogic"
        },
        "name" : "IMMZD2DTJELiveRecombinantVaccineLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.JE.Live recombinant vaccine decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMalariaVS"
        },
        "name" : "IMMZD2DTMalaria ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMalaria for IMMZ.D2.DT.Malaria.\nBusiness rule: Determine if the client is due for a malaria vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMalariaElements"
        },
        "name" : "IMMZD2DTMalariaElements",
        "description" : "This library defines context-independent elements for Malaria used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMalariaEncounterElements"
        },
        "name" : "IMMZD2DTMalariaEncounterElements",
        "description" : "This library defines encounter-based elements for Malaria used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMalariaLogic"
        },
        "name" : "IMMZD2DTMalariaLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Malaria decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeaslesElements"
        },
        "name" : "IMMZD2DTMeaslesElements",
        "description" : "This library defines context-independent elements for Measles used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeaslesEncounterElements"
        },
        "name" : "IMMZD2DTMeaslesEncounterElements",
        "description" : "This library defines encounter-based elements for Measles used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeaslesLowTransmissionVS"
        },
        "name" : "IMMZD2DTMeaslesLowTransmission ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeaslesLowTransmission for IMMZ.D2.DT.Measles.Low transmission.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeaslesLowTransmissionLogic"
        },
        "name" : "IMMZD2DTMeaslesLowTransmissionLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Measles.Low transmission decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeaslesMCVDose0VS"
        },
        "name" : "IMMZD2DTMeaslesMCVDose0 ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeaslesMCVDose0 for IMMZ.D2.DT.Measles.MCV dose 0.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Measles-containing vaccine dose 0 (MCV0) administration",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeaslesMCVDose0Logic"
        },
        "name" : "IMMZD2DTMeaslesMCVDose0Logic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Measles.MCV dose 0 decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeaslesOngoingTransmissionVS"
        },
        "name" : "IMMZD2DTMeaslesOngoingTransmission ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeaslesOngoingTransmission for IMMZ.D2.DT.Measles.Ongoing transmission.\nBusiness rule: Determine if the client is due for a measles vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeaslesOngoingTransmissionLogic"
        },
        "name" : "IMMZD2DTMeaslesOngoingTransmissionLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Measles.Ongoing transmission decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeaslesSupplementaryDoseVS"
        },
        "name" : "IMMZD2DTMeaslesSupplementaryDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeaslesSupplementaryDose for IMMZ.D2.DT.Measles.Supplementary dose.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D2.DT.Measles.Supplementary dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeaslesSupplementaryDoseLogic"
        },
        "name" : "IMMZD2DTMeaslesSupplementaryDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Measles.Supplementary dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeningococcalElements"
        },
        "name" : "IMMZD2DTMeningococcalElements",
        "description" : "This library defines context-independent elements for Meningococcal used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeningococcalEncounterElements"
        },
        "name" : "IMMZD2DTMeningococcalEncounterElements",
        "description" : "This library defines encounter-based elements for Meningococcal used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeningococcalMenAConjugateVaccine1DoseVS"
        },
        "name" : "IMMZD2DTMeningococcalMenAConjugateVaccine1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeningococcalMenAConjugateVaccine1Dose for IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: MenA conjugate vaccine, 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic"
        },
        "name" : "IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeningococcalMenAConjugateVaccine2DosesVS"
        },
        "name" : "IMMZD2DTMeningococcalMenAConjugateVaccine2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeningococcalMenAConjugateVaccine2Doses for IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeningococcalMenAConjugateVaccine2DosesLogic"
        },
        "name" : "IMMZD2DTMeningococcalMenAConjugateVaccine2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineVS"
        },
        "name" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine for IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Monovalent MenC conjugate vaccine schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
        },
        "name" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeningococcalPolysaccharideVaccinesVS"
        },
        "name" : "IMMZD2DTMeningococcalPolysaccharideVaccines ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeningococcalPolysaccharideVaccines for IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Polysaccharide vaccines schedule\n(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeningococcalPolysaccharideVaccinesLogic"
        },
        "name" : "IMMZD2DTMeningococcalPolysaccharideVaccinesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseVS"
        },
        "name" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose for IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Quadrivalent conjugate vaccines (A,C,W135,Y-CRM), 1-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic"
        },
        "name" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesVS"
        },
        "name" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses for IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses.\nBusiness rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Quadrivalent conjugate vaccines (A,C,W135,Y-D), 2-dose schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesLogic"
        },
        "name" : "IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ActivityDefinition"
          }
        ],
        "reference" : {
          "reference" : "ActivityDefinition/IMMZD2DTMR"
        },
        "name" : "IMMZD2DTMR",
        "description" : "Provide immunization",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTMumpsVS"
        },
        "name" : "IMMZD2DTMumps ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTMumps for IMMZ.D2.DT.Mumps.\nBusiness rule: Determine if the client is due for a mumps vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2-dose schedule (countries with mumps in schedule and low transmission of measles)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMumpsElements"
        },
        "name" : "IMMZD2DTMumpsElements",
        "description" : "This library defines context-independent elements for Mumps used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMumpsEncounterElements"
        },
        "name" : "IMMZD2DTMumpsEncounterElements",
        "description" : "This library defines encounter-based elements for Mumps used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTMumpsLogic"
        },
        "name" : "IMMZD2DTMumpsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Mumps decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTPneumococcal2DosesWithBoosterDoseVS"
        },
        "name" : "IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTPneumococcal2DosesWithBoosterDose for IMMZ.D2.DT.Pneumococcal.2 doses with booster dose.\nBusiness rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 2 primary doses with a booster dose (2p+1)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPneumococcal2DosesWithBoosterDoseLogic"
        },
        "name" : "IMMZD2DTPneumococcal2DosesWithBoosterDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Pneumococcal.2 doses with booster dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTPneumococcal3DosesVS"
        },
        "name" : "IMMZD2DTPneumococcal3Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTPneumococcal3Doses for IMMZ.D2.DT.Pneumococcal.3 doses.\nBusiness rule: Determine if the client is due for a pneumococcal vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: 3 primary doses (3p+0)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPneumococcal3DosesLogic"
        },
        "name" : "IMMZD2DTPneumococcal3DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Pneumococcal.3 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPneumococcalElements"
        },
        "name" : "IMMZD2DTPneumococcalElements",
        "description" : "This library defines context-independent elements for Pneumococcal used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPneumococcalEncounterElements"
        },
        "name" : "IMMZD2DTPneumococcalEncounterElements",
        "description" : "This library defines encounter-based elements for Pneumococcal used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTPolioBirthDoseVS"
        },
        "name" : "IMMZD2DTPolioBirthDose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTPolioBirthDose for IMMZ.D2.DT.Polio.Birth dose.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Birth dose administration as part of \"bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPolioBirthDoseLogic"
        },
        "name" : "IMMZD2DTPolioBirthDoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Polio.Birth dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTPolioBOPVPlusIPVVS"
        },
        "name" : "IMMZD2DTPolioBOPVPlusIPV ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTPolioBOPVPlusIPV for IMMZ.D2.DT.Polio.bOPV plus IPV.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: \"Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (applicable for all countries)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPolioBOPVPlusIPVLogic"
        },
        "name" : "IMMZD2DTPolioBOPVPlusIPVLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Polio.bOPV plus IPV decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPolioElements"
        },
        "name" : "IMMZD2DTPolioElements",
        "description" : "This library defines context-independent elements for Polio used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPolioEncounterElements"
        },
        "name" : "IMMZD2DTPolioEncounterElements",
        "description" : "This library defines encounter-based elements for Polio used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTPolioIPVOnlyVS"
        },
        "name" : "IMMZD2DTPolioIPVOnly ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTPolioIPVOnly for IMMZ.D2.DT.Polio.IPV-only.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPolioIPVOnlyLogic"
        },
        "name" : "IMMZD2DTPolioIPVOnlyLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Polio.IPV-only decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTPolioSequentialIPVbOPVVS"
        },
        "name" : "IMMZD2DTPolioSequentialIPVbOPV ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTPolioSequentialIPVbOPV for IMMZ.D2.DT.Polio.Sequential IPV–bOPV.\nBusiness rule: Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Sequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTPolioSequentialIPVbOPVLogic"
        },
        "name" : "IMMZD2DTPolioSequentialIPVbOPVLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Polio.Sequential IPV–bOPV decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTRabiesVS"
        },
        "name" : "IMMZD2DTRabies ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTRabies for IMMZ.D2.DT.Rabies.\nBusiness rule: Determine if the client is due for a rabies vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRabiesElements"
        },
        "name" : "IMMZD2DTRabiesElements",
        "description" : "This library defines context-independent elements for Rabies used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRabiesEncounterElements"
        },
        "name" : "IMMZD2DTRabiesEncounterElements",
        "description" : "This library defines encounter-based elements for Rabies used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRabiesLogic"
        },
        "name" : "IMMZD2DTRabiesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Rabies decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTRotavirusVS"
        },
        "name" : "IMMZD2DTRotavirus ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTRotavirus for IMMZ.D2.DT.Rotavirus.\nBusiness rule: Determine if the client is due for a rotavirus vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: IMMZ.D2.DT.Rotavirus",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRotavirusElements"
        },
        "name" : "IMMZD2DTRotavirusElements",
        "description" : "This library defines context-independent elements for Rotavirus used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRotavirusEncounterElements"
        },
        "name" : "IMMZD2DTRotavirusEncounterElements",
        "description" : "This library defines encounter-based elements for Rotavirus used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRotavirusLogic"
        },
        "name" : "IMMZD2DTRotavirusLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Rotavirus decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRubellaElements"
        },
        "name" : "IMMZD2DTRubellaElements",
        "description" : "This library defines context-independent elements for Rubella used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRubellaEncounterElements"
        },
        "name" : "IMMZD2DTRubellaEncounterElements",
        "description" : "This library defines encounter-based elements for Rubella used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTRubellaHighIncidenceVS"
        },
        "name" : "IMMZD2DTRubellaHighIncidence ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTRubellaHighIncidence for IMMZ.D2.DT.Rubella.High incidence.\nBusiness rule: Determine if the client is due for a rubella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries with high incidence and mortality from rubella",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRubellaHighIncidenceLogic"
        },
        "name" : "IMMZD2DTRubellaHighIncidenceLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Rubella.High incidence decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTRubellaLowIncidenceVS"
        },
        "name" : "IMMZD2DTRubellaLowIncidence ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTRubellaLowIncidence for IMMZ.D2.DT.Rubella.Low incidence.\nBusiness rule: Determine if the client is due for a rubella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries with low incidence of rubella",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTRubellaLowIncidenceLogic"
        },
        "name" : "IMMZD2DTRubellaLowIncidenceLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Rubella.Low incidence decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTSeasonalinfluenzaElements"
        },
        "name" : "IMMZD2DTSeasonalinfluenzaElements",
        "description" : "This library defines context-independent elements for Seasonal influenza used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTSeasonalinfluenzaEncounterElements"
        },
        "name" : "IMMZD2DTSeasonalinfluenzaEncounterElements",
        "description" : "This library defines encounter-based elements for Seasonal influenza used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic"
        },
        "name" : "IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Seasonal influenza decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTBEElements"
        },
        "name" : "IMMZD2DTTBEElements",
        "description" : "This library defines context-independent elements for TBE used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTTBEEncepurVS"
        },
        "name" : "IMMZD2DTTBEEncepur ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTTBEEncepur for IMMZ.D2.DT.TBE.Encepur.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Encepur schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTBEEncepurLogic"
        },
        "name" : "IMMZD2DTTBEEncepurLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.TBE.Encepur decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTTBEEnceVirVS"
        },
        "name" : "IMMZD2DTTBEEnceVir ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTTBEEnceVir for IMMZ.D2.DT.TBE.EnceVir.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: EnceVir schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t\t\t\t\t)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTBEEnceVirLogic"
        },
        "name" : "IMMZD2DTTBEEnceVirLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.TBE.EnceVir decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTBEEncounterElements"
        },
        "name" : "IMMZD2DTTBEEncounterElements",
        "description" : "This library defines encounter-based elements for TBE used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTTBEFSMEImmunVS"
        },
        "name" : "IMMZD2DTTBEFSMEImmun ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTTBEFSMEImmun for IMMZ.D2.DT.TBE.FSME-Immun.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: FSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTBEFSMEImmunLogic"
        },
        "name" : "IMMZD2DTTBEFSMEImmunLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.TBE.FSME-Immun decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTTBETBEMoscowVS"
        },
        "name" : "IMMZD2DTTBETBEMoscow ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTTBETBEMoscow for IMMZ.D2.DT.TBE.TBE-Moscow.\nBusiness rule: Determine if the client is due for a tick-borne encephalitis (TBE) vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: TBE-Moscow schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children\t)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTBETBEMoscowLogic"
        },
        "name" : "IMMZD2DTTBETBEMoscowLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.TBE.TBE-Moscow decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTyphoidElements"
        },
        "name" : "IMMZD2DTTyphoidElements",
        "description" : "This library defines context-independent elements for Typhoid used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTyphoidEncounterElements"
        },
        "name" : "IMMZD2DTTyphoidEncounterElements",
        "description" : "This library defines encounter-based elements for Typhoid used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTTyphoidTCVVS"
        },
        "name" : "IMMZD2DTTyphoidTCV ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTTyphoidTCV for IMMZ.D2.DT.Typhoid.TCV.\nBusiness rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Typhoid conjugate vaccine (TCV) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTyphoidTCVLogic"
        },
        "name" : "IMMZD2DTTyphoidTCVLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Typhoid.TCV decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTTyphoidTy21aVS"
        },
        "name" : "IMMZD2DTTyphoidTy21a ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTTyphoidTy21a for IMMZ.D2.DT.Typhoid.Ty21a.\nBusiness rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Live attenuated Ty21a vaccine schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTyphoidTy21aLogic"
        },
        "name" : "IMMZD2DTTyphoidTy21aLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Typhoid.Ty21a decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTTyphoidViPSVS"
        },
        "name" : "IMMZD2DTTyphoidViPS ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTTyphoidViPS for IMMZ.D2.DT.Typhoid.ViPS.\nBusiness rule: Determine if the client is due for a typhoid vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Unconjugated Vi polysaccharide (ViPS) schedule",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTTyphoidViPSLogic"
        },
        "name" : "IMMZD2DTTyphoidViPSLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Typhoid.ViPS decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTVaricella1DoseVS"
        },
        "name" : "IMMZD2DTVaricella1Dose ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTVaricella1Dose for IMMZ.D2.DT.Varicella.1 dose.\nBusiness rule: Determine if the client is due for a varicella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.\nThe number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTVaricella1DoseLogic"
        },
        "name" : "IMMZD2DTVaricella1DoseLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Varicella.1 dose decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTVaricella2DosesVS"
        },
        "name" : "IMMZD2DTVaricella2Doses ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTVaricella2Doses for IMMZ.D2.DT.Varicella.2 doses.\nBusiness rule: Determine if the client is due for a varicella vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) if any\nTable: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.\nThe number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTVaricella2DosesLogic"
        },
        "name" : "IMMZD2DTVaricella2DosesLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Varicella.2 doses decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTVaricellaElements"
        },
        "name" : "IMMZD2DTVaricellaElements",
        "description" : "This library defines context-independent elements for Varicella used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTVaricellaEncounterElements"
        },
        "name" : "IMMZD2DTVaricellaEncounterElements",
        "description" : "This library defines encounter-based elements for Varicella used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTYellowfeverElements"
        },
        "name" : "IMMZD2DTYellowfeverElements",
        "description" : "This library defines context-independent elements for Yellow fever used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTYellowfeverEncounterElements"
        },
        "name" : "IMMZD2DTYellowfeverEncounterElements",
        "description" : "This library defines encounter-based elements for Yellow fever used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD2DTYellowfeverYellowFeverVS"
        },
        "name" : "IMMZD2DTYellowfeverYellowFever ValueSet for Decision Table",
        "description" : "ValueSet IMMZD2DTYellowfeverYellowFever for IMMZ.D2.DT.Yellow fever.\nBusiness rule: Determine if the client is due for a yellow fever vaccination according to the national immunization schedule\nTrigger: IMMZ.D2 Determine required vaccination(s) in any\nTable: IMMZ.D2.DT.Yellow fever",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD2DTYellowfeverYellowFeverLogic"
        },
        "name" : "IMMZD2DTYellowfeverYellowFeverLogic",
        "description" : "This library defines decision support logic for the IMMZ.D2.DT.Yellow fever decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTBCGContraindicationsVS"
        },
        "name" : "IMMZD5DTBCGContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTBCGContraindications for IMMZ.D5.DT.BCG contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.BCG contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTBCGContraindicationsLogic"
        },
        "name" : "IMMZD5DTBCGContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.BCG contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTBCGElements"
        },
        "name" : "IMMZD5DTBCGElements",
        "description" : "This library defines context-independent elements for BCG used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTBCGEncounterElements"
        },
        "name" : "IMMZD5DTBCGEncounterElements",
        "description" : "This library defines encounter-based elements for BCG used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTDengueContraindicationsVS"
        },
        "name" : "IMMZD5DTDengueContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTDengueContraindications for IMMZ.D5.DT.Dengue contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Dengue contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTDengueContraindicationsLogic"
        },
        "name" : "IMMZD5DTDengueContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Dengue contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTDengueElements"
        },
        "name" : "IMMZD5DTDengueElements",
        "description" : "This library defines context-independent elements for Dengue used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTDengueEncounterElements"
        },
        "name" : "IMMZD5DTDengueEncounterElements",
        "description" : "This library defines encounter-based elements for Dengue used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTDTPContraindicationsVS"
        },
        "name" : "IMMZD5DTDTPContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTDTPContraindications for IMMZ.D5.DT.DTP contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.DTP contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTDTPContraindicationsLogic"
        },
        "name" : "IMMZD5DTDTPContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.DTP contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTDTPElements"
        },
        "name" : "IMMZD5DTDTPElements",
        "description" : "This library defines context-independent elements for DTP used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTDTPEncounterElements"
        },
        "name" : "IMMZD5DTDTPEncounterElements",
        "description" : "This library defines encounter-based elements for DTP used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTHepatitisAContraindicationsVS"
        },
        "name" : "IMMZD5DTHepatitisAContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTHepatitisAContraindications for IMMZ.D5.DT.Hepatitis A contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Hepatitis A contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHepatitisAContraindicationsLogic"
        },
        "name" : "IMMZD5DTHepatitisAContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Hepatitis A contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHepatitisAElements"
        },
        "name" : "IMMZD5DTHepatitisAElements",
        "description" : "This library defines context-independent elements for Hepatitis A used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHepatitisAEncounterElements"
        },
        "name" : "IMMZD5DTHepatitisAEncounterElements",
        "description" : "This library defines encounter-based elements for Hepatitis A used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHepatitisBContraindicationsLogic"
        },
        "name" : "IMMZD5DTHepatitisBContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Hepatitis B contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHepatitisBElements"
        },
        "name" : "IMMZD5DTHepatitisBElements",
        "description" : "This library defines context-independent elements for Hepatitis B used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHepatitisBEncounterElements"
        },
        "name" : "IMMZD5DTHepatitisBEncounterElements",
        "description" : "This library defines encounter-based elements for Hepatitis B used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTHibContraindicationsVS"
        },
        "name" : "IMMZD5DTHibContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTHibContraindications for IMMZ.D5.DT.Hib contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9)\nTable: IMMZ.D5.DT.Hib contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHibContraindicationsLogic"
        },
        "name" : "IMMZD5DTHibContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Hib contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHibElements"
        },
        "name" : "IMMZD5DTHibElements",
        "description" : "This library defines context-independent elements for Hib used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHibEncounterElements"
        },
        "name" : "IMMZD5DTHibEncounterElements",
        "description" : "This library defines encounter-based elements for Hib used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTHPVContraindicationsVS"
        },
        "name" : "IMMZD5DTHPVContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTHPVContraindications for IMMZ.D5.DT.HPV contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.HPV contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHPVContraindicationsLogic"
        },
        "name" : "IMMZD5DTHPVContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.HPV contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHPVElements"
        },
        "name" : "IMMZD5DTHPVElements",
        "description" : "This library defines context-independent elements for HPV used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTHPVEncounterElements"
        },
        "name" : "IMMZD5DTHPVEncounterElements",
        "description" : "This library defines encounter-based elements for HPV used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTJEContraindicationsVS"
        },
        "name" : "IMMZD5DTJEContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTJEContraindications for IMMZ.D5.DT.JE contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.JE contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTJEContraindicationsLogic"
        },
        "name" : "IMMZD5DTJEContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.JE contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTJEElements"
        },
        "name" : "IMMZD5DTJEElements",
        "description" : "This library defines context-independent elements for JE used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTJEEncounterElements"
        },
        "name" : "IMMZD5DTJEEncounterElements",
        "description" : "This library defines encounter-based elements for JE used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTMalariaContraindicationsVS"
        },
        "name" : "IMMZD5DTMalariaContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTMalariaContraindications for IMMZ.D5.DT.Malaria contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Malaria contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMalariaContraindicationsLogic"
        },
        "name" : "IMMZD5DTMalariaContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Malaria contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMalariaElements"
        },
        "name" : "IMMZD5DTMalariaElements",
        "description" : "This library defines context-independent elements for Malaria used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMalariaEncounterElements"
        },
        "name" : "IMMZD5DTMalariaEncounterElements",
        "description" : "This library defines encounter-based elements for Malaria used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTMeaslesContraindicationsVS"
        },
        "name" : "IMMZD5DTMeaslesContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTMeaslesContraindications for IMMZ.D5.DT.Measles contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Measles contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMeaslesContraindicationsLogic"
        },
        "name" : "IMMZD5DTMeaslesContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Measles contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMeaslesElements"
        },
        "name" : "IMMZD5DTMeaslesElements",
        "description" : "This library defines context-independent elements for Measles used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMeaslesEncounterElements"
        },
        "name" : "IMMZD5DTMeaslesEncounterElements",
        "description" : "This library defines encounter-based elements for Measles used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTMeningococcalContraindicationsVS"
        },
        "name" : "IMMZD5DTMeningococcalContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTMeningococcalContraindications for IMMZ.D5.DT.Meningococcal contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Meningococcal contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMeningococcalContraindicationsLogic"
        },
        "name" : "IMMZD5DTMeningococcalContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Meningococcal contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMeningococcalElements"
        },
        "name" : "IMMZD5DTMeningococcalElements",
        "description" : "This library defines context-independent elements for Meningococcal used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMeningococcalEncounterElements"
        },
        "name" : "IMMZD5DTMeningococcalEncounterElements",
        "description" : "This library defines encounter-based elements for Meningococcal used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ActivityDefinition"
          }
        ],
        "reference" : {
          "reference" : "ActivityDefinition/IMMZD5DTMR"
        },
        "name" : "IMMZD5DTMR",
        "description" : "Don't administer immunization due to contraindication",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTMumpsContraindicationsVS"
        },
        "name" : "IMMZD5DTMumpsContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTMumpsContraindications for IMMZ.D5.DT.Mumps contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Mumps contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMumpsContraindicationsLogic"
        },
        "name" : "IMMZD5DTMumpsContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Mumps contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMumpsElements"
        },
        "name" : "IMMZD5DTMumpsElements",
        "description" : "This library defines context-independent elements for Mumps used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTMumpsEncounterElements"
        },
        "name" : "IMMZD5DTMumpsEncounterElements",
        "description" : "This library defines encounter-based elements for Mumps used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTPneumococcalContraindicationsVS"
        },
        "name" : "IMMZD5DTPneumococcalContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTPneumococcalContraindications for IMMZ.D5.DT.Pneumococcal contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Pneumococcal contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTPneumococcalContraindicationsLogic"
        },
        "name" : "IMMZD5DTPneumococcalContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Pneumococcal contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTPneumococcalElements"
        },
        "name" : "IMMZD5DTPneumococcalElements",
        "description" : "This library defines context-independent elements for Pneumococcal used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTPneumococcalEncounterElements"
        },
        "name" : "IMMZD5DTPneumococcalEncounterElements",
        "description" : "This library defines encounter-based elements for Pneumococcal used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTPolioContraindicationsVS"
        },
        "name" : "IMMZD5DTPolioContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTPolioContraindications for IMMZ.D5.DT.Polio contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Polio contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTPolioContraindicationsLogic"
        },
        "name" : "IMMZD5DTPolioContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Polio contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTPolioElements"
        },
        "name" : "IMMZD5DTPolioElements",
        "description" : "This library defines context-independent elements for Polio used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTPolioEncounterElements"
        },
        "name" : "IMMZD5DTPolioEncounterElements",
        "description" : "This library defines encounter-based elements for Polio used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTRabiesContraindicationsVS"
        },
        "name" : "IMMZD5DTRabiesContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTRabiesContraindications for IMMZ.D5.DT.Rabies contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Rabies contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRabiesContraindicationsLogic"
        },
        "name" : "IMMZD5DTRabiesContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Rabies contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRabiesElements"
        },
        "name" : "IMMZD5DTRabiesElements",
        "description" : "This library defines context-independent elements for Rabies used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRabiesEncounterElements"
        },
        "name" : "IMMZD5DTRabiesEncounterElements",
        "description" : "This library defines encounter-based elements for Rabies used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTRotavirusContraindicationsVS"
        },
        "name" : "IMMZD5DTRotavirusContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTRotavirusContraindications for IMMZ.D5.DT.Rotavirus contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Rotavirus contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRotavirusContraindicationsLogic"
        },
        "name" : "IMMZD5DTRotavirusContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Rotavirus contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRotavirusElements"
        },
        "name" : "IMMZD5DTRotavirusElements",
        "description" : "This library defines context-independent elements for Rotavirus used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRotavirusEncounterElements"
        },
        "name" : "IMMZD5DTRotavirusEncounterElements",
        "description" : "This library defines encounter-based elements for Rotavirus used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTRubellaContraindicationsVS"
        },
        "name" : "IMMZD5DTRubellaContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTRubellaContraindications for IMMZ.D5.DT.Rubella contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Rubella contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRubellaContraindicationsLogic"
        },
        "name" : "IMMZD5DTRubellaContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Rubella contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRubellaElements"
        },
        "name" : "IMMZD5DTRubellaElements",
        "description" : "This library defines context-independent elements for Rubella used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTRubellaEncounterElements"
        },
        "name" : "IMMZD5DTRubellaEncounterElements",
        "description" : "This library defines encounter-based elements for Rubella used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTSeasonalInfluenzaContraindicationsLogic"
        },
        "name" : "IMMZD5DTSeasonalInfluenzaContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Seasonal influenza contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTSeasonalinfluenzaElements"
        },
        "name" : "IMMZD5DTSeasonalinfluenzaElements",
        "description" : "This library defines context-independent elements for Seasonal influenza used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTSeasonalinfluenzaEncounterElements"
        },
        "name" : "IMMZD5DTSeasonalinfluenzaEncounterElements",
        "description" : "This library defines encounter-based elements for Seasonal influenza used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTTBEContraindicationsVS"
        },
        "name" : "IMMZD5DTTBEContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTTBEContraindications for IMMZ.D5.DT.TBE contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.TBE contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTTBEContraindicationsLogic"
        },
        "name" : "IMMZD5DTTBEContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.TBE contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTTBEElements"
        },
        "name" : "IMMZD5DTTBEElements",
        "description" : "This library defines context-independent elements for TBE used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTTBEEncounterElements"
        },
        "name" : "IMMZD5DTTBEEncounterElements",
        "description" : "This library defines encounter-based elements for TBE used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTTyphoidContraindicationsVS"
        },
        "name" : "IMMZD5DTTyphoidContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTTyphoidContraindications for IMMZ.D5.DT.Typhoid contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Typhoid contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTTyphoidContraindicationsLogic"
        },
        "name" : "IMMZD5DTTyphoidContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Typhoid contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTTyphoidElements"
        },
        "name" : "IMMZD5DTTyphoidElements",
        "description" : "This library defines context-independent elements for Typhoid used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTTyphoidEncounterElements"
        },
        "name" : "IMMZD5DTTyphoidEncounterElements",
        "description" : "This library defines encounter-based elements for Typhoid used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTVaricellaContraindicationsVS"
        },
        "name" : "IMMZD5DTVaricellaContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTVaricellaContraindications for IMMZ.D5.DT.Varicella contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Varicella contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTVaricellaContraindicationsLogic"
        },
        "name" : "IMMZD5DTVaricellaContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Varicella contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTVaricellaElements"
        },
        "name" : "IMMZD5DTVaricellaElements",
        "description" : "This library defines context-independent elements for Varicella used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTVaricellaEncounterElements"
        },
        "name" : "IMMZD5DTVaricellaEncounterElements",
        "description" : "This library defines encounter-based elements for Varicella used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/IMMZD5DTYellowFeverContraindicationsVS"
        },
        "name" : "IMMZD5DTYellowFeverContraindications ValueSet for Decision Table",
        "description" : "ValueSet IMMZD5DTYellowFeverContraindications for IMMZ.D5.DT.Yellow fever contraindications.\nBusiness rule: Check for contraindications before administering the vaccine(s) due\nTrigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications\nTable: IMMZ.D5.DT.Yellow fever contraindications",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTYellowFeverContraindicationsLogic"
        },
        "name" : "IMMZD5DTYellowFeverContraindicationsLogic",
        "description" : "This library defines decision support logic for the IMMZ.D5.DT.Yellow fever contraindications decision table in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTYellowfeverElements"
        },
        "name" : "IMMZD5DTYellowfeverElements",
        "description" : "This library defines context-independent elements for Yellow fever used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZD5DTYellowfeverEncounterElements"
        },
        "name" : "IMMZD5DTYellowfeverEncounterElements",
        "description" : "This library defines encounter-based elements for Yellow fever used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/IMMZDAK"
        },
        "name" : "IMMZDAK CodeSystem for Decision Tables",
        "description" : "CodeSystem for Decision Tables for the Immunization DAK",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZElements"
        },
        "name" : "IMMZElements",
        "description" : "This library defines context-independent elements used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZEncounterElements"
        },
        "name" : "IMMZEncounterElements",
        "description" : "This library defines encounter-based elements used throughout the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND01"
        },
        "name" : "IMMZIND01",
        "description" : "IMMZ.IND.01 Immunization coverage for BCG vaccine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND01Logic"
        },
        "name" : "IMMZIND01Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.01 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND02"
        },
        "name" : "IMMZIND02",
        "description" : "IMMZ.IND.02 Immunization coverage for pentavalent vaccine, 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND02Logic"
        },
        "name" : "IMMZIND02Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.02 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND03"
        },
        "name" : "IMMZIND03",
        "description" : "IMMZ.IND.03 Immunization coverage for pentavalent vaccine, 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND03Logic"
        },
        "name" : "IMMZIND03Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.03 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND04"
        },
        "name" : "IMMZIND04",
        "description" : "IMMZ.IND.04 Immunization coverage for pentavalent vaccine, 3rd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND04Logic"
        },
        "name" : "IMMZIND04Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.04 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND05"
        },
        "name" : "IMMZIND05",
        "description" : "IMMZ.IND.05 Immunization coverage for hepatitis B-containing vaccines (birth dose)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND05Logic"
        },
        "name" : "IMMZIND05Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.05 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND06"
        },
        "name" : "IMMZIND06",
        "description" : "IMMZ.IND.06 Immunization coverage for oral polio vaccine (OPV), 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND06Logic"
        },
        "name" : "IMMZIND06Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.06 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND07"
        },
        "name" : "IMMZIND07",
        "description" : "IMMZ.IND.07 Immunization coverage for oral polio vaccine (OPV), 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND07Logic"
        },
        "name" : "IMMZIND07Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.07 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND08"
        },
        "name" : "IMMZIND08",
        "description" : "IMMZ.IND.08 Immunization coverage for oral polio vaccine (OPV), 3rd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND08Logic"
        },
        "name" : "IMMZIND08Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.08 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND09"
        },
        "name" : "IMMZIND09",
        "description" : "IMMZ.IND.09 Immunization coverage for inactivated polio vaccine (IPV), 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND09Logic"
        },
        "name" : "IMMZIND09Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.09 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND10"
        },
        "name" : "IMMZIND10",
        "description" : "IMMZ.IND.10 Immunization coverage for inactivated polio vaccine (IPV), 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND10Logic"
        },
        "name" : "IMMZIND10Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.10 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND11"
        },
        "name" : "IMMZIND11",
        "description" : "IMMZ.IND.11 Immunization coverage for inactivated polio vaccine (IPV), 3rd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND11Logic"
        },
        "name" : "IMMZIND11Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.11 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND12"
        },
        "name" : "IMMZIND12",
        "description" : "IMMZ.IND.12 Immunization coverage for measles and rubella-containing vaccine, 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND12Logic"
        },
        "name" : "IMMZIND12Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.12 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND13"
        },
        "name" : "IMMZIND13",
        "description" : "IMMZ.IND.13 Immunization coverage for measles and rubella-containing vaccine, 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND13Logic"
        },
        "name" : "IMMZIND13Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.13 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND14"
        },
        "name" : "IMMZIND14",
        "description" : "IMMZ.IND.14 Immunization coverage for HPV vaccine, 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND14Logic"
        },
        "name" : "IMMZIND14Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.14 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND15"
        },
        "name" : "IMMZIND15",
        "description" : "IMMZ.IND.15 Immunization coverage for HPV vaccine, 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND15Logic"
        },
        "name" : "IMMZIND15Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.15 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND16"
        },
        "name" : "IMMZIND16",
        "description" : "IMMZ.IND.16 Immunization coverage for meningococcal vaccine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND16Logic"
        },
        "name" : "IMMZIND16Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.16 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND17"
        },
        "name" : "IMMZIND17",
        "description" : "IMMZ.IND.17 Immunization coverage for pneumococcal conjugate vaccine, 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND17Logic"
        },
        "name" : "IMMZIND17Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.17 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND18"
        },
        "name" : "IMMZIND18",
        "description" : "IMMZ.IND.18 Immunization coverage for pneumococcal conjugate vaccine, 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND18Logic"
        },
        "name" : "IMMZIND18Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.18 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND19"
        },
        "name" : "IMMZIND19",
        "description" : "IMMZ.IND.19 Immunization coverage for pneumococcal conjugate vaccine, 3rd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND19Logic"
        },
        "name" : "IMMZIND19Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.19 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND20"
        },
        "name" : "IMMZIND20",
        "description" : "IMMZ.IND.20 Immunization coverage for rotavirus vaccines, 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND20Logic"
        },
        "name" : "IMMZIND20Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.20 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND21"
        },
        "name" : "IMMZIND21",
        "description" : "IMMZ.IND.21 Immunization coverage for rotavirus vaccines, 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND21Logic"
        },
        "name" : "IMMZIND21Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.21 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND22"
        },
        "name" : "IMMZIND22",
        "description" : "IMMZ.IND.22 Immunization coverage for rotavirus vaccines, 3rd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND22Logic"
        },
        "name" : "IMMZIND22Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.22 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND23"
        },
        "name" : "IMMZIND23",
        "description" : "IMMZ.IND.23 Immunization coverage for tetanus and diphtheria-containing vaccines (DT), 4th dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND23Logic"
        },
        "name" : "IMMZIND23Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.23 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND24"
        },
        "name" : "IMMZIND24",
        "description" : "IMMZ.IND.24 Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 5th dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND24Logic"
        },
        "name" : "IMMZIND24Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.24 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND25"
        },
        "name" : "IMMZIND25",
        "description" : "IMMZ.IND.25 Immunization coverage for tetanus and diphtheria-containing vaccines (Td), 6th dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND25Logic"
        },
        "name" : "IMMZIND25Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.25 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND26"
        },
        "name" : "IMMZIND26",
        "description" : "IMMZ.IND.26 Immunization coverage for yellow fever vaccine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND26Logic"
        },
        "name" : "IMMZIND26Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.26 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND27"
        },
        "name" : "IMMZIND27",
        "description" : "IMMZ.IND.27 Immunization coverage for JE vaccines",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND27Logic"
        },
        "name" : "IMMZIND27Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.27 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND28"
        },
        "name" : "IMMZIND28",
        "description" : "IMMZ.IND.28 Immunization coverage for typhoid vaccines",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND28Logic"
        },
        "name" : "IMMZIND28Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.28 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND29"
        },
        "name" : "IMMZIND29",
        "description" : "IMMZ.IND.29 Immunization coverage for seasonal influenza vaccines",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND29Logic"
        },
        "name" : "IMMZIND29Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.29 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND30"
        },
        "name" : "IMMZIND30",
        "description" : "IMMZ.IND.30 Immunization coverage for COVID-19 vaccines",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND30Logic"
        },
        "name" : "IMMZIND30Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.30 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND31"
        },
        "name" : "IMMZIND31",
        "description" : "IMMZ.IND.31 Immunization coverage for malaria vaccines, 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND31Logic"
        },
        "name" : "IMMZIND31Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.31 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND32"
        },
        "name" : "IMMZIND32",
        "description" : "IMMZ.IND.32 Immunization coverage for malaria vaccines, 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND32Logic"
        },
        "name" : "IMMZIND32Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.32 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND33"
        },
        "name" : "IMMZIND33",
        "description" : "IMMZ.IND.33 Immunization coverage for malaria vaccines, 3rd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND33Logic"
        },
        "name" : "IMMZIND33Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.33 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND34"
        },
        "name" : "IMMZIND34",
        "description" : "IMMZ.IND.34 Immunization coverage for malaria vaccines, 4th dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND34Logic"
        },
        "name" : "IMMZIND34Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.34 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND35"
        },
        "name" : "IMMZIND35",
        "description" : "IMMZ.IND.35 Drop-out rate of pentavalent vaccine 1st dose to pentavalent vaccine 3rd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND35Logic"
        },
        "name" : "IMMZIND35Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.35 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND36"
        },
        "name" : "IMMZIND36",
        "description" : "IMMZ.IND.36 Drop-out rate of BCG to measles and rubella-containing vaccine 1st dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND36Logic"
        },
        "name" : "IMMZIND36Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.36 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND37"
        },
        "name" : "IMMZIND37",
        "description" : "IMMZ.IND.37 Drop-out rate from the 1st dose of measles and rubella-containing vaccine to the 2nd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND37Logic"
        },
        "name" : "IMMZIND37Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.37 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND38"
        },
        "name" : "IMMZIND38",
        "description" : "IMMZ.IND.38 Drop-out rate from the 1st dose of malaria vaccines to the 3rd dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND38Logic"
        },
        "name" : "IMMZIND38Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.38 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND39"
        },
        "name" : "IMMZIND39",
        "description" : "IMMZ.IND.39 Drop-out rate from the 3rd dose of malaria vaccines to the 4th dose",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND39Logic"
        },
        "name" : "IMMZIND39Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.39 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND44"
        },
        "name" : "IMMZIND44",
        "description" : "IMMZ.IND.44 Adverse event following immunization (AEFI) cases",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND44Logic"
        },
        "name" : "IMMZIND44Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.44 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Measure"
          }
        ],
        "reference" : {
          "reference" : "Measure/IMMZIND45"
        },
        "name" : "IMMZIND45",
        "description" : "IMMZ.IND.45 Immunization session completion rate",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIND45Logic"
        },
        "name" : "IMMZIND45Logic",
        "description" : "This library defines population criteria logic for the IMMZ.IND.45 indicator in the Immunization CPG",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/IMMZIndicatorElements"
        },
        "name" : "IMMZIndicatorElements",
        "description" : "This library defines indicator-based elements and terminologies used throughout the Immunization CPG indicators",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZ.AdverseEvent"
        },
        "name" : "SMART Guidelines Immunizations AdverseEvent",
        "description" : "AdverseEvent Profile for the Immunizations SMART Guidelines.  From IMMZ.D17 Report AEFI",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZ.Caregiver"
        },
        "name" : "SMART Guidelines Immunizations Caregiver (RelatedPerson)",
        "description" : "Caregiver (RelatedPerson) Profile for the Immunizations SMART Guidelines.  From IMMZ.C Client Registration for IMMZ.C4.Create client record OR IMMZ.C5.3.Update client details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZ.Immunization"
        },
        "name" : "SMART Guidelines Immunizations Immunization",
        "description" : "Immunization Profile for the Immunizations SMART Guidelines.  From IMMZ.D Administer Vaccine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZ.Observation"
        },
        "name" : "SMART Guidelines Immunizations Observation",
        "description" : "Observation Profile for the Immunizations SMART Guidelines.  From IMMZ.D Administer Vaccine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IMMZ.Patient"
        },
        "name" : "SMART Guidelines Immunizations Patient",
        "description" : "Patient Profile for the Immunizations SMART Guidelines.  From IMMZ.C Client Registration for IMMZ.C4.Create client record OR IMMZ.C5.3.Update client details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/IMMZ.C.Patient.1"
        },
        "name" : "Thabo Mbulelo Mbeki",
        "description" : "Example of a patient: Thabo Mbulelo Mbeki.",
        "exampleCanonical" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/WHOCommon"
        },
        "name" : "WHOCommon",
        "description" : "This library defines common terminologies and functions used throughout WHO SMART Guidelines content",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/WHOConcepts"
        },
        "name" : "WHOConcepts",
        "description" : "This library defines common concepts used throughout WHO SMART Guidelines content",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/WHOElements"
        },
        "name" : "WHOElements",
        "description" : "This library defines context-independent elements used throughout WHO SMART Guidelines content",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Library"
          }
        ],
        "reference" : {
          "reference" : "Library/WHOEncounterElements"
        },
        "name" : "WHOEncounterElements",
        "description" : "This library defines encounter-based elements used throughout WHO SMART Guidelines content",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RelatedPerson"
          }
        ],
        "reference" : {
          "reference" : "RelatedPerson/IMMZ.C.Caregiver.1"
        },
        "name" : "Zanele Mbeki",
        "description" : "Example of a caregiver: Zanele Mbeki.",
        "exampleCanonical" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Caregiver"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/IMMZ.C.Patient.2"
        },
        "name" : "Zanele Mbeki",
        "description" : "Example of a patient: Zanele Mbeki.",
        "exampleCanonical" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.C4.LMToPatient"
        },
        "name" : "IMMZ.C4.LMToPatient",
        "description" : "Immunization Client Registry - Transform Logical Model to Patient resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.C4.QRToLM"
        },
        "name" : "IMMZ.C4.QRToLM",
        "description" : "Immunization Client Registry - Transform QuestionnaireResponse to Logical Model"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.C4.QRToPatient"
        },
        "name" : "IMMZ.C4.QRToPatient",
        "description" : "Immunization Client Registry - Transform QuestionnaireResponse to Patient resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D1.LMToBundle"
        },
        "name" : "IMMZ.D1.LMToBundle",
        "description" : "Immunization Administer Vaccine - Transform Logical Model to Immunization resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D1.QRToBundle"
        },
        "name" : "IMMZ.D1.QRToBundle",
        "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D1.QRToLM"
        },
        "name" : "IMMZ.D1.QRToLM",
        "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D13.LMToBundle"
        },
        "name" : "IMMZ.D13.LMToBundle",
        "description" : "Immunization Administer Vaccine - Transform Logical Model to Immunization resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D13.QRToBundle"
        },
        "name" : "IMMZ.D13.QRToBundle",
        "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D13.QRToLM"
        },
        "name" : "IMMZ.D13.QRToLM",
        "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D17.LMToBundle"
        },
        "name" : "IMMZ.D17.LMToBundle",
        "description" : "Immunization Administer Vaccine - Transform Logical Model to Immunization resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D17.QRToBundle"
        },
        "name" : "IMMZ.D17.QRToBundle",
        "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D17.QRToLM"
        },
        "name" : "IMMZ.D17.QRToLM",
        "description" : "Immunization Report AEFI - Transform QuestionnaireResponse to Logical Model"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D5.LMToBundle"
        },
        "name" : "IMMZ.D5.LMToBundle",
        "description" : "Immunization Administer Vaccine - Transform Logical Model to Immunization resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D5.QRToBundle"
        },
        "name" : "IMMZ.D5.QRToBundle",
        "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.D5.QRToLM"
        },
        "name" : "IMMZ.D5.QRToLM",
        "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureMap"
          }
        ],
        "reference" : {
          "reference" : "StructureMap/IMMZ.Helpers"
        },
        "name" : "IMMZ.Helpers",
        "description" : "Immunization - Transform QuestionnaireResponse to Logical Model Helper groups"
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Home",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "changes.html"
                }
              ],
              "nameUrl" : "changes.html",
              "title" : "Changes",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "dependencies.html"
                }
              ],
              "nameUrl" : "dependencies.html",
              "title" : "Dependencies",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "references.html"
                }
              ],
              "nameUrl" : "references.html",
              "title" : "References",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "adapting.html"
                }
              ],
              "nameUrl" : "adapting.html",
              "title" : "Adapting Guidelines for Country use",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "license.html"
                }
              ],
              "nameUrl" : "license.html",
              "title" : "License",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "business-requirements.html"
            }
          ],
          "nameUrl" : "business-requirements.html",
          "title" : "Business Requirements",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "concepts.html"
                }
              ],
              "nameUrl" : "concepts.html",
              "title" : "Concepts",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "personas.html"
                }
              ],
              "nameUrl" : "personas.html",
              "title" : "Generic Personas",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "scenarios.html"
                }
              ],
              "nameUrl" : "scenarios.html",
              "title" : "User Scenarios",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "business-processes.html"
                }
              ],
              "nameUrl" : "business-processes.html",
              "title" : "Business Processes",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "dictionary.html"
                }
              ],
              "nameUrl" : "dictionary.html",
              "title" : "Data Dictionary",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "decision-logic.html"
                }
              ],
              "nameUrl" : "decision-logic.html",
              "title" : "Decision-support logic",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "indicators.html"
                }
              ],
              "nameUrl" : "indicators.html",
              "title" : "Indicator and Performance Metrics",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "functional-requirements.html"
                }
              ],
              "nameUrl" : "functional-requirements.html",
              "title" : "Functional Requirements",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "non-functional-requirements.html"
                }
              ],
              "nameUrl" : "non-functional-requirements.html",
              "title" : "Non-functional Requirements",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "data-models-and-exchange.html"
            }
          ],
          "nameUrl" : "data-models-and-exchange.html",
          "title" : "Data Models and Exchange",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "system-actors.html"
                }
              ],
              "nameUrl" : "system-actors.html",
              "title" : "System Actors",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "sequence-diagrams.html"
                }
              ],
              "nameUrl" : "sequence-diagrams.html",
              "title" : "Sequence Diagrams",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "transactions.html"
                }
              ],
              "nameUrl" : "transactions.html",
              "title" : "Transactions",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "indicators-measures.html"
                }
              ],
              "nameUrl" : "indicators-measures.html",
              "title" : "Indicators and Measures",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "codings.html"
                }
              ],
              "nameUrl" : "codings.html",
              "title" : "Codings",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "deployment.html"
            }
          ],
          "nameUrl" : "deployment.html",
          "title" : "Deployment",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "security-privacy.html"
                }
              ],
              "nameUrl" : "security-privacy.html",
              "title" : "Security and Privacy Considerations",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "testing.html"
                }
              ],
              "nameUrl" : "testing.html",
              "title" : "Testing",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "test-data.html"
                }
              ],
              "nameUrl" : "test-data.html",
              "title" : "Test Data",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "reference-implementations.html"
                }
              ],
              "nameUrl" : "reference-implementations.html",
              "title" : "Reference Implementations",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "trust_domain.html"
                }
              ],
              "nameUrl" : "trust_domain.html",
              "title" : "Trust Domains",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "downloads.html"
                }
              ],
              "nameUrl" : "downloads.html",
              "title" : "Downloads",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "indices.html"
            }
          ],
          "nameUrl" : "indices.html",
          "title" : "Indices",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "artifacts.html"
                }
              ],
              "nameUrl" : "artifacts.html",
              "title" : "Artifact Index",
              "generation" : "html"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "maps.html"
                }
              ],
              "nameUrl" : "maps.html",
              "title" : "Mappings",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "dak-api.html"
            }
          ],
          "nameUrl" : "dak-api.html",
          "title" : "DAK API Documentation Hub",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/actors"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-pages",
        "value" : "input/cql"
      },
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
