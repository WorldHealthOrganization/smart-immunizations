Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $vaccines-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips
Alias: $vaccines-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/vaccines-gps-uv-ips
Alias: $whoatc-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips
Alias: $absent-or-unknown-immunizations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-immunizations-uv-ips
Alias: $target-site-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips
Alias: $medicine-route-of-administration = http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration
Alias: $targetDiseases-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/targetDiseases-uv-ips
Alias: $targetDiseases-gps-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/targetDiseases-gps-uv-ips

Profile: ImmunizationUvIps
Parent: Immunization
Id: Immunization-uv-ips
Title: "Immunization (IPS)"
Description: """This profile represents the constraints applied to the Immunization resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an immunization is represented in the patient summary as an instance of an Immunization resource constrained by this profile.

It describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party."""
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^purpose = "This profile constrains the representation of a record of a vaccination of the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* . MS
* . ^definition = "Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party and may include vaccine reaction information and what vaccination protocol was followed"
* status MS
* vaccineCode 1..1 MS
* vaccineCode only $CodeableConcept-uv-ips
* vaccineCode from $vaccines-uv-ips (preferred)
* vaccineCode ^slicing.discriminator.type = #pattern
* vaccineCode ^slicing.discriminator.path = "$this"
* vaccineCode ^slicing.description = "Discriminated by bound value set"
* vaccineCode ^slicing.rules = #open
* vaccineCode ^short = "Vaccine that was administered or was to be administered.Several kinds of vaccine product coding could be provided.\r\n\r\n     The IPS assumes that either the type of the vaccine for particular disease or diseases (e.g. MMR vaccine) against which the patient has been immunised is provided; or the known absent / unknown code.\r\n\r\n     Other coded information can be provided as well as: the IDMP Pharmaceutical Product Identifiers (PhPID), Medicinal Product Identifier (MPID), Packaged Medicinal Product Identifier (PCID), when available, or equivalent coded concepts; the WHO ATC codes; or any other kind of code that that identifies, classifies or cluster the administered product."
* vaccineCode ^definition = "Vaccine that was administered or was to be administered. Several kinds of vaccine product coding could be provided.\r\n\r\nThe IPS assumes that either the type of the vaccine for particular disease or diseases (e.g. MMR vaccine) against which the patient has been immunized is provided; or the known absent / unknown.\r\n\r\n    Other coded information can be provided as well as:\r\n\r\n    1. The IDMP Pharmaceutical Product Identifier (PhPID), Level 1, [Substance(s)]. Example: Amoxicillin and Clavulanate Potassium; or any other equivalent coded concept.\r\n    2. The IDMP Pharmaceutical Product Identifier (PhPID), Level 2 [Substance(s) + Strength + reference strength]. Example: Amoxicillin 875 mg and Clavulanate Potassium 125 mg; or any other equivalent coded concept.\r\n    3. The IDMP Pharmaceutical Product Identifier (PhPID), Level 3 [Substance(s) + administrable dose form]. Example: Amoxicillin and Clavulanate Potassium, Oral Tablet; or any other equivalent coded concept.\r\n    4. The IDMP Pharmaceutical Product Identifier (PhPID), Level 4 [Substance(s) + strength + reference strength + administrable dose form]. Example: Amoxicillin 875 mg and clavulanate potassium 125 mg, oral tablet; or any other equivalent coded concept.\r\n    5. The IDMP Medicinal Product Identifier (MPID) or any equivalent Medicinal Product Identifier. IDMP MPID uniquely identifies a Medicinal Product, reflecting (but not replacing) any other authorization numbers allocated by a regulator. MPID implies one (set of) PhPID.     The MPID shall use a common segment pattern related to a Medicinal Product, which, when each segment is valued shall define a specific MPID concept.\r\n    6. The IDMP Packaged Medicinal Product Identifier (PCID) or any equivalent Packaged Medicinal Product Identifier.     Uniquely identifies a Medicinal Product based on its packaging. This implies one MPID can be associated with more than one PCID, if the same Medicinal Product has more than one type of package.\r\n    7. Any other kind of code that that identifies, classifies or clusters the administered product (e.g. the medicinal product or the product class).\r\n\r\n    The value sets used for the PhPID, MPID and PCID identifiers are provisional and include only few equivalent concepts used for exemplification purposes, they will be updated with real IDMP identifiers when they will become available."
* vaccineCode ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised."
* vaccineCode contains
    vaccineGPSCode 0..1 MS and
    atcClass 0..1 MS and
    absentOrUnknownImmunization 0..1 MS
* vaccineCode[vaccineGPSCode] from $vaccines-gps-uv-ips (required)
* vaccineCode[vaccineGPSCode] ^short = "Code for vaccine from the SNOMED CT GPS code set"
* vaccineCode[vaccineGPSCode] ^definition = "Code for a vaccine that is selected from the SNOMED CT GPS code set."
* vaccineCode[vaccineGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode[vaccineGPSCode] ^binding.extension.valueString = "vaccineGPS"
* vaccineCode[atcClass] from $whoatc-uv-ips (required)
* vaccineCode[atcClass] ^short = "WHO ATC classification"
* vaccineCode[atcClass] ^definition = "WHO ATC classification"
* vaccineCode[atcClass] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode[atcClass] ^binding.extension.valueString = "WHO ATC"
* vaccineCode[absentOrUnknownImmunization] from $absent-or-unknown-immunizations-uv-ips (required)
* vaccineCode[absentOrUnknownImmunization] ^short = "Absent Unknown Immunization"
* vaccineCode[absentOrUnknownImmunization] ^definition = "A reference to a code indicating that there there are no known immunizations or that this information is unknown."
* vaccineCode[absentOrUnknownImmunization] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode[absentOrUnknownImmunization] ^binding.extension.valueString = "Absent Unknown Immunization"
* patient only Reference($Patient-uv-ips)
* patient MS
* patient.reference 1.. MS
* occurrence[x] 1..1 MS
* occurrence[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* occurrence[x].extension[data-absent-reason] ^short = "occurrence[x] absence reason"
* occurrence[x].extension[data-absent-reason] ^definition = "Provides a reason why the occurrence is missing."
* site only $CodeableConcept-uv-ips
* site from $target-site-uv-ips (preferred)
* route only $CodeableConcept-uv-ips
* route MS
* route from $medicine-route-of-administration (preferred)
* route ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* route ^binding.extension.valueString = "ImmunizationRoute"
* performer ..1 MS
* performer.actor MS
* protocolApplied.targetDisease from $targetDiseases-uv-ips (preferred)
* protocolApplied.targetDisease ^slicing.discriminator.type = #pattern
* protocolApplied.targetDisease ^slicing.discriminator.path = "$this"
* protocolApplied.targetDisease ^slicing.description = "Discriminated by bound value set"
* protocolApplied.targetDisease ^slicing.rules = #open
* protocolApplied.targetDisease contains targetDiseaseGPSCode 0..1 MS
* protocolApplied.targetDisease[targetDiseaseGPSCode] from $targetDiseases-gps-uv-ips (required)
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^short = "Code for a disease the vaccination is against from the SNOMED CT GPS code set."
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^definition = "Code for a disease the vaccination is against from the SNOMED CT GPS code set."
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^binding.extension.valueString = "TargetDiseasesGpsUvIps"