# WHO Immunization Implementation Guide (FHIR R4 (4.0.1))

This implementation guide defines core data element profiles for use for the World Health Organization (WHO) Immunization computable guideline content.

The current draft of the implementation guide is available [here](https://build.fhir.org/ig/WorldHealthOrganization/smart-immunizations/branches/main).

The guide is published under a Creative Commons [license](LICENSE.md).

## Change Management

Feedback and issues can be submitted via the [issues](issues) page, and will be incorporated into subsequent releases as time and resources allow.

## Roadmap
### Completed

* PlanDefinitions
* ActivityDefinitions
* Measures
* CQL libraries for Indicators
* CQL libraries for Decision Support  

### ToDo

* Examples

## Repository and Build Information

This repository contains the source for the WHO Core Implementation Guide, and uses the [FHIR Implementation Guide publisher](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation) to produce a FHIR Implementation Guide.

Commits to this repository will automatically trigger a new build of the implementation guide, which will then be published to the following location:

[https://build.fhir.org/ig/WorldHealthOrganization/smart-immunizations/branches/main](https://build.fhir.org/ig/WorldHealthOrganization/smart-immunizations/branches/main)

Build log is available here:

[http://build.fhir.org.s3-website-us-east-1.amazonaws.com/logs/WorldHealthOrganization/smart-immunization](http://build.fhir.org.s3-website-us-east-1.amazonaws.com/logs/WorldHealthOrganization/smart-immunization)

Debugging information is available here:

[http://build.fhir.org/ig/WorldHealthOrganization/smart-immunization/debug.tgz](https://build.fhir.org/ig/WorldHealthOrganization/smart-immunizations/debug.tgz)

### Local Build

The HL7 IG Publisher can be downloaded locally to make building as easy as possible. To build locally, download the publisher tooling locally using the _updatePublisher script:

    _updatePublisher

Once the publication tooling is cached locally, use the _genOnce script to build locally:

    _genOnce

The output will be available in the `output` folder.

### Refreshing CQL

The CQF tooling can be installed or updated using the _updateCQFTooling script:

    _updateCQFTooling

Once that has been updated the _refresh script can be used to generate the CQL Libraries and create test bundles for the applicable PlanDefinitions. 

    _refresh

### Organizing Tests

The tests were generated using [BulkFSH repo](https://github.com/PuraJuniper/bulk-fsh)).

Use the _testMagick.sh scrip to sort the tests into the appropriate folders to execute the CQL tests.

### Executing CQL Tests

Using a CQL plugin in Atom or [VSCode](https://github.com/PuraJuniper/bulk-fsh), right click on your CQL file and click "Execute Tests"

After running the _testMagick.sh script this should produce an output file with the results of how each CQL file executed against your test patients.

