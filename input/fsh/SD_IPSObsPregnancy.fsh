Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $Observation-pregnancy-edd-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips
Alias: $pregnancy-status-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips

Profile: ObservationPregnancyStatusUvIps
Parent: Observation
Id: Observation-pregnancy-status-uv-ips
Title: "Observation (Pregnancy: status)"
Description: "This profile constrains the Observation resource to represent the pregnancy status."
* ^version = "1.0.0"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* . MS
* code 1..1 MS
* code only $CodeableConcept-uv-ips
* code = http://loinc.org#82810-3
* subject 1.. MS
* subject only Reference($Patient-uv-ips)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension ..1 MS
* effective[x].extension only $data-absent-reason
* effective[x].extension ^short = "effective[x] absence reason"
* effective[x].extension ^definition = "Provides a reason why the effectiveTime is missing."
* valueCodeableConcept only $CodeableConcept-uv-ips
* valueCodeableConcept MS
* valueCodeableConcept from $pregnancy-status-uv-ips (required)
* bodySite ..0
* bodySite ^mustSupport = false
* specimen ..0
* specimen ^mustSupport = false
* device ..0
* device ^mustSupport = false
* referenceRange ..0
* referenceRange ^mustSupport = false
* hasMember only Reference($Observation-pregnancy-edd-uv-ips)
* hasMember MS
* hasMember ^short = "Expected Delivery Date"
* hasMember ^definition = "A reference to the Expected Delivery Date Observation."
* hasMember.reference 1.. MS
* component ..0
* component ^mustSupport = false