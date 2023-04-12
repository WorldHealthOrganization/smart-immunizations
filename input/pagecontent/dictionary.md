Component 5 in the Digital Adaptation Kit (DAK): SMART Guidelines for Immunizations 
(link forthcoming) outlines the minimum set of data corresponding to different 
points of the workflow within the identified business processes. This data set 
can be used on any softwaresystem and lists the data elements relevant for 
service delivery and executing decision-support logic, as well as for populating 
indicators and performance metrics. 

See Web Annex A of the DAK for the complete data dictionary in
spreadsheet form detailing the input options, validation checks and
concept dictionary codes.


### IMMZ.C Register Client 
The following table includes data elements for the registration workflow.

<div style=" width: 100%; height: 500px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: right;">
        <th>Activity ID</th>
        <th>Data Element ID</th>
        <th>Data Element Label</th>
        <th>Description and Definition</th>
        <th>Multiple Choice Type (if applicable)</th>
        <th>Data Type</th>
        <th>Input Options</th>
        <th>Calculation</th>
        <th>Quantity Sub-Type</th>
        <th>Validation Condition</th>
        <th>Editable</th>
        <th>Required</th>
        <th>Skip Logic</th>
        <th>Linkages to Aggregate Indicators</th>
        <th>Notes</th>
        <th>ICD-11 Code</th>
        <th>ICD-11 URI</th>
        <th>ICD-11 Comments / Considerations</th>
        <th>ICD-11 Relationship</th>
        <th>ICD-10 Code</th>
        <th>ICD-10 Comments / Considerations</th>
        <th>ICD-10 Relationship</th>
        <th>ICD-9 Code</th>
        <th>ICD-9 Comments / Considerations</th>
        <th>ICD-9 Relationship</th>
        <th>LOINC version 2.68 Code</th>
        <th>LOINC version 2.68 Comments / Considerations</th>
        <th>LOINC version 2.68 Relationship</th>
        <th>ICHI (Beta 3) Code</th>
        <th>ICHI URI</th>
        <th>ICHI Comments / Considerations</th>
        <th>ICHI Relationship</th>
        <th>ICF Code</th>
        <th>ICF Comments / Considerations</th>
        <th>ICF Relationship</th>
        <th>SNOMED GPS Code</th>
        <th>SNOMED GPS Comments Considerations</th>
        <th>SNOMED GPS Relationship</th>
        <th>Snomed CT International Version Code</th>
        <th>Snomed CT International Version Comments / Considerations</th>
        <th>SNOMED CT Relationship</th>
        <th>HL7 FHIR R4 - Resource</th>
        <th>HL7 FHIR R4 - Values</th>
        <th>HL7 FHIR R4 Code</th>
        <th>HL7 FHIR R4 Relationship</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>IMMZ.C1 Register or Update Client</td>
        <td>IMMZ.C1.DE1</td>
        <td>Unique Identifier</td>
        <td>Unique identifier for the vaccinated person, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID).</td>
        <td>N/A</td>
        <td>ID</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Minimum and maximum number of characters based on local policy</td>
        <td>No</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>118522005</td>
        <td>Identifier (property) (qualifier value)</td>
        <td>Equivalent</td>
        <td>Patient.identifier</td>
        <td></td>
        <td></td>
        <td>Equivalent</td>
      </tr>
      <tr>
        <td>IMMZ.C1 Register or Update Client</td>
        <td>IMMZ.C1.DE2</td>
        <td>Name</td>
        <td>The full name of the vaccinated person.</td>
        <td>N/A</td>
        <td>String</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Only letters and special characters (period, dash) allowed.</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>54125-0</td>
        <td>Long common name: Patient name</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>371484003</td>
        <td>Patient name (observable entity)</td>
        <td>Equivalent</td>
        <td>371484003</td>
        <td>Patient name (observable entity)</td>
        <td>Equivalent</td>
        <td>Patient.name.text</td>
        <td></td>
        <td></td>
        <td>Equivalent</td>
      </tr>
      <tr>
        <td>IMMZ.C1 Register or Update Client</td>
        <td>IMMZ.C1.DE3</td>
        <td>Given Name</td>
        <td>Client's given name, or first name</td>
        <td>N/A</td>
        <td>String</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Only letters and special characters (period, dash) allowed.</td>
        <td>Yes</td>
        <td>O</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>45392-8</td>
        <td>Long common name: First name</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>184095009</td>
        <td>Patient forename (observable entity)</td>
        <td>Related to</td>
        <td>184095009</td>
        <td>Patient forename (observable entity)</td>
        <td>Related to</td>
        <td>Patient.name.given</td>
        <td></td>
        <td></td>
        <td>Related to</td>
      </tr>
      <tr>
        <td>IMMZ.C1 Register or Update Client</td>
        <td>IMMZ.C1.DE4</td>
        <td>Family Name</td>
        <td>Client's family name or last name</td>
        <td>N/A</td>
        <td>String</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Only letters and special characters (period, dash) allowed.</td>
        <td>Yes</td>
        <td>O</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>45394-4</td>
        <td>Long common name: Last name</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>184096005</td>
        <td>Patient surname (observable entity)</td>
        <td>Related to</td>
        <td>184096005</td>
        <td>Patient surname (observable entity)</td>
        <td>Related to</td>
        <td>Patient.name.family</td>
        <td></td>
        <td></td>
        <td>Related to</td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE5</td>
        <td>Sex</td>
        <td>Documentation of a specific instance of sex information for the vaccinated person.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>46098-0</td>
        <td>Long common name: Sex. Should also consider https://loinc.org/76691-5/</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>184100006</td>
        <td>Patient sex (observable entity)</td>
        <td>Equivalent</td>
        <td>184100006</td>
        <td>Patient sex (observable entity)</td>
        <td>Equivalent</td>
        <td>Patient.gender</td>
        <td></td>
        <td></td>
        <td>Equivalent</td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td></td>
        <td>Male</td>
        <td>Client's biological sex is male</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Male</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>XX2UQ8</td>
        <td>http://id.who.int/icd/entity/1591498088</td>
        <td>XX2UQ8 Male. Extension code, not used for primary tabulation</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>248153007</td>
        <td>Male (finding)</td>
        <td>Equivalent</td>
        <td>248153007</td>
        <td>Male (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td>Male</td>
        <td>male</td>
        <td>Equivalent</td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td></td>
        <td>Female</td>
        <td>Client's biological sex is female</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Female</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>XX2V25</td>
        <td>http://id.who.int/icd/entity/990378205</td>
        <td>XX2V25 Female. Extension code, not used for primary tabulation</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>248152002</td>
        <td>Female (finding)</td>
        <td>Equivalent</td>
        <td>248152002</td>
        <td>Female (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td>Female</td>
        <td>female</td>
        <td>Equivalent</td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td></td>
        <td>Biological Sex Not Specified</td>
        <td>Client's biological sex is not specified</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Other</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>XX2PX3</td>
        <td>http://id.who.int/icd/entity/16562053</td>
        <td>XX2PX3 Biological sex not specified. Extension code, not used for primary tabulation</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>772004004</td>
        <td>Non-binary gender (finding)</td>
        <td>Related to</td>
        <td>394743007</td>
        <td>Gender unknown (finding)</td>
        <td>Related to</td>
        <td></td>
        <td>Other</td>
        <td>other</td>
        <td>Related to</td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td></td>
        <td>Intersex</td>
        <td>Client's biological sex is intersex</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Intersex</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>XX45B7</td>
        <td>http://id.who.int/icd/entity/175182057</td>
        <td>XX45B7 Intersex. Extension code, not used for primary tabulation</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>15867007</td>
        <td>Intersexuality (finding)</td>
        <td>Equivalent</td>
        <td>15867007</td>
        <td>Intersexuality (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td>Unknown</td>
        <td>unknown</td>
        <td>Equivalent</td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE6</td>
        <td>Date of birth</td>
        <td>The vaccinated person's date of birth (DOB) if known. If unknown, use assigned DOB for administrative purposes.</td>
        <td>N/A</td>
        <td>Date</td>
        <td>Date</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Date</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td>IMMZ.IND.2 - IMMZ.IND.19&nbsp;&nbsp;, IMMZ.IND.29 - IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>21112-8</td>
        <td>Long common name: Birth date</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>184099003</td>
        <td>Date of birth (observable entity)</td>
        <td>Equivalent</td>
        <td>184099003</td>
        <td>Date of birth (observable entity)</td>
        <td>Equivalent</td>
        <td>Patient.birthDate</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE7</td>
        <td>Age In Weeks</td>
        <td>The client's calculated age (number of weeks) based on the date of birth and the visit date</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td>N/A</td>
        <td>('Visit Date' – 'Date of birth') / 7</td>
        <td>Duration</td>
        <td>None</td>
        <td>No</td>
        <td>C</td>
        <td>If Date of birth is entered, then Required.</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>63900-5</td>
        <td>Long common name: Current age or age at death</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>424144002</td>
        <td>Current chronological age (observable entity)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE8</td>
        <td>Age In Months</td>
        <td>The client's calculated age (number of months) based on the date of birth and the visit date</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td>N/A</td>
        <td>('Visit Date' – 'Date of birth') / 30</td>
        <td>Duration</td>
        <td>None</td>
        <td>No</td>
        <td>C</td>
        <td>If Date of birth is entered, then Required.</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>63900-5</td>
        <td>Long common name: Current age or age at death</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>424144002</td>
        <td>Current chronological age (observable entity)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE9</td>
        <td>Age In Years</td>
        <td>The client's calculated age (number of years) based on the date of birth and the visit date</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td>N/A</td>
        <td>('Visit Date' – 'Date of birth') / 365.25</td>
        <td>Duration</td>
        <td>None</td>
        <td>No</td>
        <td>C</td>
        <td>If Date of birth is entered, then Required.</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>63900-5</td>
        <td>Long common name: Current age or age at death</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>424144002</td>
        <td>Current chronological age (observable entity)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE10</td>
        <td>Multiple Birth</td>
        <td>Indicates whether the patient is part of a multiple birth (e.g. twins, triplets, etc.).</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td>Applies to Child. Need additional detail to classify- does this apply to mother or baby</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td>Applies to Child. Need additional detail to classify- does this apply to mother or baby</td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>722250005</td>
        <td>Multiple birth order (observable entity)</td>
        <td>Source is broader than target</td>
        <td>Patient.multipleBirth[x]</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE11</td>
        <td>Caregivers (multiple)</td>
        <td>The patient's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)</td>
        <td>N/A</td>
        <td>String</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>184140000</td>
        <td>Caregiver details (observable entity)</td>
        <td>Source is narrower than target</td>
        <td>133932002</td>
        <td>Caregiver (person)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE12</td>
        <td>Caregiver's Full Name</td>
        <td>The full name of the client's caregiver</td>
        <td>N/A</td>
        <td>String</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Only letters and special characters (period, dash) allowed</td>
        <td>Yes</td>
        <td>O</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>184140000</td>
        <td>Caregiver details (observable entity)</td>
        <td>Source is narrower than target</td>
        <td>184140000</td>
        <td>Caregiver details (observable entity)</td>
        <td>Source is narrower than target</td>
        <td>Patient.contact.name.text</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE13</td>
        <td>Caregiver's Given Name</td>
        <td>Given name or first name of the client's caregiver</td>
        <td>N/A</td>
        <td>String</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Only letters and special characters (period, dash) allowed</td>
        <td>Yes</td>
        <td>O</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td>Caregiver (person). Caregiver concept in SNOMED-CT dos not differentiate between family and given names, however the single concept should be used and can be represented in FHIR as a Patient.contact.relationship</td>
        <td></td>
        <td>Patient.contact.name.given</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE14</td>
        <td>Caregiver's Family Name</td>
        <td>Family name or last name of the client's caregiver</td>
        <td>N/A</td>
        <td>String</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Only letters and special characters (period, dash) allowed</td>
        <td>Yes</td>
        <td>O</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td>(See Above)</td>
        <td></td>
        <td>Patient.contact.name.family</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE15</td>
        <td>Contact Phone Number</td>
        <td>Client's phone number. Can be a landline or a mobile phone number</td>
        <td>N/A</td>
        <td>String</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td>None</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>42077-8</td>
        <td>Long common name: Patient Phone number</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>184103008</td>
        <td>Patient telephone number (observable entity)</td>
        <td>Equivalent</td>
        <td>734005006</td>
        <td>Telephone number (property) (qualifier value)</td>
        <td>Equivalent</td>
        <td>Patient.telecom</td>
        <td></td>
        <td></td>
        <td>Equivalent</td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE16</td>
        <td>Administrative Area</td>
        <td>The name of the city/municipality/town/village of where the client lives</td>
        <td>Select one</td>
        <td>Coding</td>
        <td>Context-specific list of administrative areas e.g. Facility list, District list, etc.</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Should be selected from list of local administrative areas</td>
        <td>Yes</td>
        <td>O</td>
        <td>None</td>
        <td></td>
        <td>Should be list of local areas, or potentially a string fill in field. List of Local areas is recommended since it will prevent data entry errors.</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>56799-0</td>
        <td>Long common name: Address</td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>184097001</td>
        <td>Patient address (observable entity)</td>
        <td>Source is broader than target</td>
        <td>758638001</td>
        <td>Geographical location (property) (qualifier value)</td>
        <td>Related to</td>
        <td>Patient.address.city</td>
        <td></td>
        <td></td>
        <td>Related to</td>
      </tr>
      <tr>
        <td>IMMZ.C1. Register or Update Client</td>
        <td>IMMZ.C1.DE17</td>
        <td>Occupation</td>
        <td>The client's primary occupation. This field is only relevant for clients who work within a healthcare environment. It is used mainly for reporting and indicators purposes.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td>A list of health worker occupations/roles commonly managed within a Health Worker Registry.</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Should be selected from list of healthcare worker (practitioner) roles</td>
        <td>Yes</td>
        <td>O</td>
        <td>Skip if patient is not a health worker</td>
        <td>IMMZ.IND.56, IMMZ.IND.57</td>
        <td>A list of healthcare worker roles is available in the FHIR Practitioner Role valueset: https://build.fhir.org/valueset-practitioner-role.html</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>85658-3</td>
        <td>Long common name: Occupation [Type]</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>14679004</td>
        <td>Occupation (occupation)</td>
        <td>Equivalent</td>
        <td>Observation.valueCodeableConcept[x].code</td>
        <td></td>
        <td></td>
        <td>Source is narrower than target</td>
      </tr>
    </tbody>
  </table>
</div> 
  

### IMMZ.G Pre-vaccination Data 
The following table includes data elements for vaccination history and data collected prior to administering vaccines.

<div style=" width: 100%; height: 500px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: right;">
        <th>Activity ID</th>
        <th>Data Element ID</th>
        <th>Data Element Label</th>
        <th>Description and Definition</th>
        <th>Multiple Choice Type (if applicable)</th>
        <th>Data Type</th>
        <th>Input Options</th>
        <th>Calculation</th>
        <th>Quantity Sub-Type</th>
        <th>Validation Condition</th>
        <th>Editable</th>
        <th>Required</th>
        <th>Skip Logic</th>
        <th>Linkages to Aggregate Indicators</th>
        <th>Notes</th>
        <th>ICD-11Code</th>
        <th>ICD-11URI</th>
        <th>ICD-11Comments / Considerations</th>
        <th>ICD-11 Relationship</th>
        <th>ICD-10Code</th>
        <th>ICD-10Comments / Considerations</th>
        <th>ICD-10 Relationship</th>
        <th>ICD-9Code</th>
        <th>ICD-9Comments / Considerations</th>
        <th>ICD-9 Relationship</th>
        <th>LOINC version 2.68Code</th>
        <th>LOINC version 2.68Comments / Considerations</th>
        <th>LOINC version 2.68 Relationship</th>
        <th>ICHI (Beta 3)Code</th>
        <th>ICHIURI</th>
        <th>ICHIComments / Considerations</th>
        <th>ICHI Relationship</th>
        <th>ICFCode</th>
        <th>ICFComments / Considerations</th>
        <th>ICF Relationship</th>
        <th>SNOMED GPS Code</th>
        <th>SNOMED GPS Code Comments Considerations</th>
        <th>SNOMED GPSRelationship</th>
        <th>SNOMED CT International VersionCode</th>
        <th>SNOMED CT International VersionComments / Considerations</th>
        <th>SNOMED CTRelationship</th>
        <th>HL7 FHIR R4 - Resource</th>
        <th>HL7 FHIR R4 - Values</th>
        <th>HL7 FHIR R4 Code</th>
        <th>HL7 FHIR R4Relationship</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Applies to all antigens</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE1</td>
        <td>Number of birth doses administered</td>
        <td>The number of vaccine product birth (dose sequence = zero) doses that were administered to the client to date (per product/antigen).</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE2</td>
        <td>Number of doses administered</td>
        <td>The number of vaccine product doses that were administered to the client to date (per product/antigen).</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30960-9</td>
        <td>Number of previous doses</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE3</td>
        <td>Date and time when last dose was administered</td>
        <td>The date and time when the last vaccine product dose was administered to the client (per product/antigen).</td>
        <td>N/A</td>
        <td>DateTime</td>
        <td></td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Must be a date and time value</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>Compatible with HL7 FHIR dateTime https://www.hl7.org/fhir/datatypes.html#dateTime (e.g. YYYY-MM-DDThh:mm:ss+zz:zz)</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30952-6</td>
        <td>Date and time of vaccination</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>7241000122103</td>
        <td>Date of vaccination (observable entity)</td>
        <td>Related to</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE4</td>
        <td>Number of days since last dose</td>
        <td>The number of days since the last vaccine product dose that was administered to the client (per product/antigen).</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>('Visit Date' – 'Date and time when last dose was administered')</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE5</td>
        <td>Number of weeks since last dose</td>
        <td>The number of weeks since the last vaccine product dose that was administered to the client (per product/antigen).</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>('Visit Date' – 'Date and time when last dose was administered') / 7</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE6</td>
        <td>Number of months since last dose</td>
        <td>The number of months since the last vaccine product dose that was administered to the client (per product/antigen).</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>('Visit Date' – 'Date and time when last dose was administered') / 30</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE7</td>
        <td>Number of years since last dose</td>
        <td>The number of years since the last vaccine product dose that was administered to the client (per product/antigen).</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>('Visit Date' – 'Date and time when last dose was administered') / 365.25</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE8</td>
        <td>Patient has completed vaccine primary series</td>
        <td>Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen.</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE9</td>
        <td>Patient is currently pregnant</td>
        <td>The client is currently pregnant.</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td>If the client cannot be determined to be reasonably pregnant/not pregnant, it is recommended that a pregnancy test be used to determine whether or not the client is pregnant before administering certain vaccines that should not be given to pregnant individuals.</td>
        <td>XT0S</td>
        <td>http://id.who.int/icd/entity/714822826</td>
        <td>Pregnancy</td>
        <td>Equivalent</td>
        <td>Z33</td>
        <td>Pregnant state, incidental</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>82810-3</td>
        <td>Pregnancy Status</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>77386006</td>
        <td>Pregnancy (finding)</td>
        <td>Equivalent</td>
        <td>77386006</td>
        <td>Pregnant (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE10</td>
        <td>HIV status</td>
        <td>The current HIV status of the client.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an HIV status</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>55277-8</td>
        <td>HIV Status</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>278977008</td>
        <td>Human immunodeficiency virus status (observable entity)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Positive</td>
        <td>The client is known to be HIV positive.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Positive</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1C62.Z</td>
        <td>http://id.who.int/icd/entity/1000704511</td>
        <td>Human immunodeficiency virus disease without mention of associated disease or condition, clinical stage unspecified</td>
        <td>Equivalent</td>
        <td>Z21</td>
        <td>Asymptomatic human immunodeficiency virus [HIV] infection status</td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>45683-0</td>
        <td>HIV infection [Minimum Data Set]</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>165816005</td>
        <td>Human immunodeficiency virus positive (finding)</td>
        <td>Equivalent</td>
        <td>165816005</td>
        <td>Human immunodeficiency virus positive (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Negative</td>
        <td>The client is known to be HIV negative.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Negative</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QA02.Y</td>
        <td>http://id.who.int/icd/entity/461464819</td>
        <td>Medical observation or evaluation for other suspected diseases or conditions, ruled out</td>
        <td>Related to</td>
        <td>Z03.8</td>
        <td>Observation for other suspected diseases and conditions</td>
        <td>Related to</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>45683-0</td>
        <td>HIV infection [Minimum Data Set]</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>260385009</td>
        <td>Negative (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td>165815009</td>
        <td>Human immunodeficiency virus negative (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Unknown</td>
        <td>The client's HIV status is unknown.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Unknown</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>45683-0</td>
        <td>HIV infection [Minimum Data Set]</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>261665006</td>
        <td>Unknown (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td>261665006</td>
        <td>Unknown (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE11</td>
        <td>CD4 count</td>
        <td>An indicator of immune function in patients living with HIV. It is the result of a test that measures how many CD4 cells a client has in their blood.</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>313660005</td>
        <td>Absolute CD4 count procedure (procedure)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE12</td>
        <td>Patient's birth outcome was preterm</td>
        <td>The client mother's pregnancy outcome for the client was preterm resulting in the client being a Premature infant. Preterm is defined as babies born alive before 37 weeks of pregnancy are completed.</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>KA21.4</td>
        <td>http://id.who.int/icd/entity/1726201225</td>
        <td>Preterm newborn</td>
        <td>Equivalent</td>
        <td>P07.3</td>
        <td>Other preterm infants</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>76517-2</td>
        <td>Premature infant</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>395507008</td>
        <td>Premature infant (finding)</td>
        <td>Equivalent</td>
        <td>395507008</td>
        <td>Premature infant (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE13</td>
        <td>Patient is immunocompromised</td>
        <td>The client is known to be immunocompromised or immunosuppressed. This means the client has a weakened immune system having a reduced ability to fight infections and other diseases.</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>96381-9</td>
        <td>Immune status</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>370388006</td>
        <td>Patient immunocompromised (finding)</td>
        <td>Equivalent</td>
        <td>370388006</td>
        <td>Patient immunocompromised (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE14</td>
        <td>Patient is currently receiving ART</td>
        <td>The client is currently receiving Antiretroviral Therapy (ART)</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to BCG</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE15</td>
        <td>TST Test Result</td>
        <td>Represents whether or not the Tuberculin Skin Test (TST) is considered positive or negative for the client. The TST test is a standard method to determine whether a person is infected with Mycobacterium Tuberculosis (MTB)</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an TST Test Result code</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>TST-Positive</td>
        <td>The client's TST test result is positive for TB infection</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>TST-Positive</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>MA14.10</td>
        <td>http://id.who.int/icd/entity/741356478</td>
        <td>Abnormal reaction to tuberculin test</td>
        <td>Source is narrower than target</td>
        <td>R76.1</td>
        <td>Abnormal reaction to tuberculin test</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>10828004</td>
        <td>Positive (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td>10828004</td>
        <td>Positive (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>TST-Negative</td>
        <td>The client's TST test result is negative for TB infection</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>TST-Negative</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>260385009</td>
        <td>Negative (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td>260385009</td>
        <td>Negative (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE16</td>
        <td>IGRA Test Result</td>
        <td>Represents whether or not the Interferon-Gamma Release Assays (IGRAs) test result is considered positive or negative for the client. The IGRA test is a standard whole-blood test that can aid in diagnosing a person who is infected with Mycobacterium Tuberculosis (MTB)</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an IGRA Test Result code</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>35140007</td>
        <td>Interferon gamma assay (procedure)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>IGRA-Positive</td>
        <td>The client's IGRA test result is positive for TB infection</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>IGRA-Positive</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>10828004</td>
        <td>Positive (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td>440662009</td>
        <td>Interferon gamma assay positive (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>IGRA-Negative</td>
        <td>The client's IGRA test result is negative for TB infection</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>IGRA-Negative</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>260385009</td>
        <td>Negative (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td>440661002</td>
        <td>Interferon gamma assay negative (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE17</td>
        <td>CD4 percentage</td>
        <td>Represents the client's CD4 percentage level. The CD4 percentage (CD%) is the percentage of white blood cells (lymphocytes) that are CD4 cells</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Decimal Quantity</td>
        <td>Must be positive decimal value greater than or equal to zero (&gt;=0.00)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE18</td>
        <td>Maternal HIV status</td>
        <td>The HIV status of the client's biological mother when the client was born.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an Maternal HIV status</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>75179-2</td>
        <td>Mother's HIV status during pregnancy [CDC.CS]</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Positive</td>
        <td>The client's biological mother was known to be HIV positive when the client was born.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Positive</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1C62.Z</td>
        <td>http://id.who.int/icd/entity/1000704511</td>
        <td>Human immunodeficiency virus disease without mention of associated disease or condition, clinical stage unspecified</td>
        <td>Related to</td>
        <td>Z21</td>
        <td>Asymptomatic human immunodeficiency virus [HIV] infection status</td>
        <td>Related to</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>45683-0</td>
        <td>HIV infection [Minimum Data Set]</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>165816005</td>
        <td>Human immunodeficiency virus positive (finding)</td>
        <td>Related to</td>
        <td>165816005</td>
        <td>Human immunodeficiency virus positive (finding)</td>
        <td>Related to</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Negative</td>
        <td>The client's biological mother was known to be HIV negative when the client was born.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Negative</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QA02.Y</td>
        <td>http://id.who.int/icd/entity/461464819</td>
        <td>Medical observation or evaluation for other suspected diseases or conditions, ruled out</td>
        <td>Related to</td>
        <td>Z03.8</td>
        <td>Observation for other suspected diseases and conditions</td>
        <td>Related to</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>45683-0</td>
        <td>HIV infection [Minimum Data Set]</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>260385009</td>
        <td>Negative (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td>165815009</td>
        <td>Human immunodeficiency virus negative (finding)</td>
        <td>Related to</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Unknown</td>
        <td>The client's biological mother's HIV status was unknown when the client was born.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Unknown</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>45683-0</td>
        <td>HIV infection [Minimum Data Set]</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>261665006</td>
        <td>Unknown (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td>261665006</td>
        <td>Unknown (qualifier value)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Hepatitis B</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE19</td>
        <td>Patient birth weight in grams</td>
        <td>Represents the client's birth weight value measures in grams.</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Decimal Quantity</td>
        <td>Must be positive decimal value greater than or equal to zero (&gt;=0.00)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>8339-4</td>
        <td>Birth weight Measured</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>47340003</td>
        <td>Birth weight finding (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Polio</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE20</td>
        <td>Date and time when last Polio (bOPV) dose was administered</td>
        <td>The date and time when the last dose of the Polio (bOPV) vaccine product was administered to the client.</td>
        <td>N/A</td>
        <td>DateTime</td>
        <td></td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Must be a date and time value</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>Compatible with HL7 FHIR dateTime https://www.hl7.org/fhir/datatypes.html#dateTime (e.g. YYYY-MM-DDThh:mm:ss+zz:zz)</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30952-6</td>
        <td>Date and time of vaccination</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>7241000122103</td>
        <td>Date of vaccination (observable entity)</td>
        <td>Related to</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE21</td>
        <td>Date and time when last Polio (IPV) dose was administered</td>
        <td>The date and time when the last dose of the Polio (IPV) vaccine product was administered to the client.</td>
        <td>N/A</td>
        <td>DateTime</td>
        <td></td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Must be a date and time value</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>Compatible with HL7 FHIR dateTime https://www.hl7.org/fhir/datatypes.html#dateTime (e.g. YYYY-MM-DDThh:mm:ss+zz:zz)</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30952-6</td>
        <td>Date and time of vaccination</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>7241000122103</td>
        <td>Date of vaccination (observable entity)</td>
        <td>Related to</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE22</td>
        <td>Number of weeks since last Polio (bOPV) dose</td>
        <td>The number of weeks since the last dose of the Polio (bOPV) vaccine product was administered to the client.</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>('Visit Date' – 'Date and time when last Polio (bOPV) dose was administered') / 7</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE23</td>
        <td>Number of months since last Polio (IPV) dose</td>
        <td>The number of months since the last dose of the Polio (IPV) vaccine product was administered to the client.</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>('Visit Date' – 'Date and time when last Polio (IPV) dose was administered') / 365.25</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE24</td>
        <td>Age in weeks when patient received first Polio (IPV) dose</td>
        <td>The client's age in weeks when they received their first Polio (IPV) dose.</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE25</td>
        <td>Type of last Polio dose</td>
        <td>The type of the last Polio vaccine dose administered to the client</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an Polio vaccine product type</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>IPV</td>
        <td>Represents the Inactivated Poliovirus Vaccine (IPV)</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>IPV</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM5V19</td>
        <td>http://id.who.int/icd/entity/1538819279</td>
        <td>Poliomyelitis, trivalent, inactivated, whole virus</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871740006</td>
        <td>Vaccine product containing only inactivated whole Human poliovirus antigen (medicinal product)</td>
        <td>Equivalent</td>
        <td>871740006</td>
        <td>Vaccine product containing only inactivated whole Human poliovirus antigen (medicinal product)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>bOPV</td>
        <td>Represents the bivalent Oral Poliovirus Vaccine (bOPV)</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>bOPV</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM79H3</td>
        <td>http://id.who.int/icd/entity/1851996153</td>
        <td>Poliomyelitis oral, bivalent, live attenuated</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to DTP</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE26</td>
        <td>Age in years when patient received first DTP dose</td>
        <td>The client's age in years when they received their first Diphtheria, Tetanus, and Pertussis (DTP) dose</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Hib</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE27</td>
        <td>Age in months when patient received first Hib dose</td>
        <td>The client's age in months when they received their first Haemophilus influenzae (Hib) dose</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Pneumococcal</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE28</td>
        <td>Patient has sickle-cell disease</td>
        <td>The client is known to have a sickle-cell disease</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>3A51</td>
        <td>http://id.who.int/icd/entity/975559344</td>
        <td>Sickle cell disorders or other haemoglobinopathies</td>
        <td>Equivalent</td>
        <td>D57.8</td>
        <td>Other sickle-cell disorders</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>417357006</td>
        <td>Sickling disorder due to hemoglobin S (disorder)</td>
        <td>Equivalent</td>
        <td>417357006</td>
        <td>Sickling disorder due to hemoglobin S (disorder)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE29</td>
        <td>Age in months when patient received third Pneumococcal dose</td>
        <td>The client's age in months when they received their third Pneumococcal dose</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Rotavirus</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE30</td>
        <td>Patient has no history of intussusception</td>
        <td>The client is known to have no history of intussusception</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE31</td>
        <td>All previous Rotavirus doses given with a 3 dose series product</td>
        <td>Indicates whether or not all of the client's previous Rotavirus doses were administered using a 3-dose series vaccine product</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE32</td>
        <td>All previous Rotavirus doses were not the same product</td>
        <td>Indicates whether or not all of the client's previous Rotavirus doses were administered using different vaccine products</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE33</td>
        <td>Any of the previous Rotavirus doses was administered with an unknown product</td>
        <td>Indicates whether or not any of the client's previous Rotavirus doses were administered using an unknown vaccine product</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Measles</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE34</td>
        <td>Immune reconstitution was achieved</td>
        <td>The client is known to have achieved immune reconstitution</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE35</td>
        <td>CD4+ T Lymphocyte monitoring is available</td>
        <td>The facility/site has the option to monitor/determine the client's CD4+ T Lymphocytes</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE36</td>
        <td>Number of months since HAART was initiated</td>
        <td>The number of months since the client has started their Highly Active Antiretroviral Therapy (HAART)</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE37</td>
        <td>Date started HAART</td>
        <td>The Date when the client has started their Highly Active Antiretroviral Therapy (HAART) session(s)</td>
        <td>N/A</td>
        <td>Date</td>
        <td></td>
        <td>N/A</td>
        <td>N/A</td>
        <td>Must be a date value</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to HPV</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE38</td>
        <td>Number of months between first and second HPV doses</td>
        <td>The number of months elapsed between the first and second doses of the HPV product administered to the client</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE39</td>
        <td>Number of months since initial HPV dose</td>
        <td>The number of months elapsed since the first dose of the HPV product was administered to the client</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Japanese Encephalitis (JE)</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE40</td>
        <td>Type of last JE dose</td>
        <td>The type of the last Japanese Encephalitis (JE) vaccine dose administered to the client</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an Japanese Encephalitis (JE) vaccine product type</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Inactivated Vero cell-derived</td>
        <td>Represents the inactivated very cell-derived Japanese Encephalitis vaccine type</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Inactivated Vero cell-derived</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>871725009</td>
        <td>Vaccine product containing only inactivated whole Japanese encephalitis virus antigen (medicinal product)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Live attenuated</td>
        <td>Represents the live attenuated Japanese Encephalitis vaccine type</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Live attenuated</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM47S0</td>
        <td>http://id.who.int/icd/entity/548455280</td>
        <td>Encephalitis, Japanese, live attenuated</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Live recombinant</td>
        <td>Represents the live recombinant Japanese Encephalitis vaccine type</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Live recombinant</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Tick-borne Encephalitis (TBE)</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE41</td>
        <td>Type of last TBE dose</td>
        <td>The type of the last Tick-borne Encephalitis (TBE) vaccine dose administered to the client</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an Tick-borne Encephalitis (TBE) vaccine product type</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>FSME-Immun</td>
        <td>Represents the FSME-IMMUN vaccine product, which is an inactivated whole-virus vaccine for TBE</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>FSME-Immun</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Encepur</td>
        <td>Represents the Encepur vaccine product, which is an inactivated viral vaccine for TBE</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Encepur</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>TBE-Moscow</td>
        <td>Represents the TBE-Moscow vaccine product, which is a vaccine for TBE</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>TBE-Moscow</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>EnceVir</td>
        <td>Represents the EnceVir vaccine product, which is a vaccine for TBE</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>EnceVir</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Typhoid</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE42</td>
        <td>Type of last Typhoid dose</td>
        <td>The type of the last Typhoid vaccine dose administered to the client</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an Typhoid vaccine product type</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>TCV</td>
        <td>Represents the TCV vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>TCV</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Y58.1</td>
        <td>Typhoid and paratyphoid vaccine</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>ViPS</td>
        <td>Represents the ViPS vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>ViPS</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM3SF6</td>
        <td>http://id.who.int/icd/entity/1046686076</td>
        <td>Typhoid, purified polysaccharide antigen vaccines</td>
        <td>Source is narrower than target</td>
        <td>Y58.1</td>
        <td>Typhoid and paratyphoid vaccine</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Ty21a</td>
        <td>Represents Ty21a vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Ty21a</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM33K4</td>
        <td>http://id.who.int/icd/entity/511681494</td>
        <td>Typhoid, oral, live attenuated vaccines</td>
        <td>Source is narrower than target</td>
        <td>Y58.1</td>
        <td>Typhoid and paratyphoid vaccine</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>8461000087109</td>
        <td>Antigen of live attenuated Salmonella enterica subspecies enterica serovar Typhi Ty21a strain (substance)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Cholera</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE43</td>
        <td>Type of last Cholera dose</td>
        <td>The type of the last Cholera vaccine dose administered to the client</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an Cholera vaccine product type</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>WC Vaccines</td>
        <td>Represents WC Vaccines, which is a type of vaccine products for Cholera</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>WC Vaccines</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>WC-rBS Vaccines</td>
        <td>Represents WC-rBS Vaccines, which is a type of vaccine products for Cholera</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>WC-rBS vaccines</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Meningococcal</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE44</td>
        <td>Type of last Meningococcal dose</td>
        <td>The type of the last Meningococcal vaccine dose administered to the client</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an Meningococcal vaccine product type</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>MenA conjugate vaccine (5µg)</td>
        <td>Represents the MenA conjugate vaccine (5µg) vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>MenA conjugate vaccine (5µg)</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM2280</td>
        <td>http://id.who.int/icd/entity/1397512280</td>
        <td>Meningococcus A, purified polysaccharides antigen conjugated vaccines</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>monovalent MenC conjugate</td>
        <td>Represents the monovalent MenC conjugate vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>monovalent MenC conjugate</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM18Y8</td>
        <td>http://id.who.int/icd/entity/1625813008</td>
        <td>Meningococcus C, purified polysaccharides antigen conjugated vaccines</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Quadrivalent conjugate</td>
        <td>Represents the Quadrivalent conjugate vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Quadrivalent conjugate</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE45</td>
        <td>Age in months when patient received first Meningococcal dose</td>
        <td>The age in months when client received their first Meningococcal dose</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Hepatitis A</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE46</td>
        <td>Type of last Hepatitis A dose</td>
        <td>The type of the last Hepatitis A vaccine dose administered to the client</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td>None</td>
        <td>N/A</td>
        <td>Must be an Hepatitis A vaccine product type</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Live Attenuated HAV</td>
        <td>Represents the Live Attenuated Hepatitis A vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Live Attenuated HAV</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td></td>
        <td>Inactivated HAV</td>
        <td>Represents the Inactivated Hepatitis A vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Inactivated HAV</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>91000221102</td>
        <td>Vaccine product containing only inactivated whole Hepatitis A virus antigen (medicinal product)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Rabies</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE47</td>
        <td>VNA levels</td>
        <td>Represents the Vaccine-induced neutralizingantibody level. It is a measured as a serum antibody concentration amount observed from the result of the concentrated, purified cell culture and embryonated egg-based rabies vaccines (CCEEV)</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Decimal Quantity</td>
        <td>Must be positive decimal value greater than or equal to zero (&gt;=0.00)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to Dengue</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE48</td>
        <td>Patient is Seronegative for Dengue</td>
        <td>The client is known to be seronegative for Dengue</td>
        <td>N/A</td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Applies to COVID-19</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE49</td>
        <td>Body temperature in Celsius</td>
        <td>The client's body temperature value measured in Celsius</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Decimal Quantity</td>
        <td>Must be positive decimal value greater than or equal to zero (&gt;=0.00)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>8310-5</td>
        <td>Body temperature</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>386725007</td>
        <td>Body temperature (observable entity)</td>
        <td>Equivalent</td>
        <td>386725007</td>
        <td>Body temperature (observable entity)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.E0. Prevaccination Data</td>
        <td>IMMZ.E0.DE50</td>
        <td>Number of months since last COVID-19 Negative lab test result</td>
        <td>The number of months elapsed since the first dose of the HPV product was administered to the client</td>
        <td>N/A</td>
        <td>Quantity</td>
        <td></td>
        <td>N/A</td>
        <td>Integer Quantity</td>
        <td>Must be positive integer value greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>
</div> 
  

### IMMZ.G Administer Vaccine 
The following table includes data elements for the administer vaccine workflow.	

<div style=" width: 100%; height: 500px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: right;">
        <th>Activity ID</th>
        <th>Data Element ID</th>
        <th>Data Element Label</th>
        <th>Description and Definition</th>
        <th>Multiple Choice Type (if applicable)</th>
        <th>Data Type</th>
        <th>Input Options</th>
        <th>Calculation</th>
        <th>Quantity Sub-Type</th>
        <th>Validation Condition</th>
        <th>Editable</th>
        <th>Required</th>
        <th>Skip Logic</th>
        <th>Linkages to Aggregate Indicators</th>
        <th>Notes</th>
        <th>ICD-11 Code</th>
        <th>ICD-11 URI</th>
        <th>ICD-11 Comments / Considerations</th>
        <th>ICD-11 Relationship</th>
        <th>ICD-10 Code</th>
        <th>ICD-10 Comments / Considerations</th>
        <th>ICD-10 Relationship</th>
        <th>ICD-9 Code</th>
        <th>ICD-9 Comments / Considerations</th>
        <th>ICD-9 Relationship</th>
        <th>LOINC version 2.68 Code</th>
        <th>LOINC version 2.68 Comments / Considerations</th>
        <th>LOINC version 2.69 Relationship</th>
        <th>ICHI (Beta 3) Code</th>
        <th>ICHI URI</th>
        <th>ICHI Comments / Considerations</th>
        <th>ICHI Relationship</th>
        <th>ICF Code</th>
        <th>ICF Comments / Considerations</th>
        <th>ICF Relationship</th>
        <th>SNOMED GPS Code</th>
        <th>SNOMED GPS Code Comments Considerations</th>
        <th>SNOMED GPS Relationship</th>
        <th>SNOMED CT International Version Code</th>
        <th>SNOMED CT International Version Comments / Considerations</th>
        <th>SNOMED CT Relationship</th>
        <th>HL7 FHIR R4 - Resource</th>
        <th>HL7 FHIR R4 - Values</th>
        <th>HL7 FHIR R4 Code</th>
        <th>HL7 FHIR R4 Relationship</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE1</td>
        <td>Status</td>
        <td>The current status of the immunization event</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a status code</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td>IMMZ.IND.1 - IMMZ.IND.22, IMMZ.IND.29 - IMMZ.IND.49 IMMZ.IND.56 - IMMZ.IND.63</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>263490005</td>
        <td>Status (attribute)</td>
        <td>Equivalent</td>
        <td>Immunization.status</td>
        <td>Completed, Entered in Error, Not Done</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Completed</td>
        <td>The event has now concluded.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Completed</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>182992009</td>
        <td>Treatment completed (situation)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Entered in Error</td>
        <td>This electronic record should never have existed, though it is possible that real-world decisions were based on it.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Entered in Error</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>723510000</td>
        <td>Entered in error (qualifier value)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Not Done</td>
        <td>The event was terminated prior to any activity beyond preparation.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Not Done</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>385660001</td>
        <td>Not done (qualifier value)</td>
        <td>Equivalent</td>
        <td>9.0351E+13</td>
        <td>Vaccination not done (situation)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE2</td>
        <td>Reason vaccine was not administered</td>
        <td>The reason this immunization event was not performed. This is generally only used if the 'Status' field carried a status of 'Not Done'. The reason for performing the immunization event is captured in the 'Status' field.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a status reason code</td>
        <td>Yes</td>
        <td>C</td>
        <td>Skip if status != "Not Done"</td>
        <td></td>
        <td></td>
        <td>QC04</td>
        <td></td>
        <td>See subcategory content below</td>
        <td></td>
        <td>Z28</td>
        <td>See subcategory content below</td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td>Any ICD-9 diagnosis may appear, but cannot be linked to this data element (i.e., the reason the immunization event was not performed)</td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>429684009</td>
        <td>Reason for nonvaccination (observable entity)</td>
        <td>Equivalent</td>
        <td>Immunization.statusreason</td>
        <td>immunity, medical precaution, product out of stock, patient objection</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Immunity</td>
        <td>Testing has shown that the patient already has immunity to the agent targeted by the immunization.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Immunity</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.Y Immunization not carried out for other reasons</td>
        <td>No URI for residuals</td>
        <td>Index term under .Y</td>
        <td>Source is narrower than target</td>
        <td>Z28.8 Immunization Not carried out for other reasons</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>191441008</td>
        <td>Acquired immunity, function (observable entity)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Medical precaution</td>
        <td>The patient currently has a medical condition for which the vaccine is contraindicated or for which precaution is warranted.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Medical precaution</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.Y Immunization not carried out for other reasons</td>
        <td>No URI for residuals</td>
        <td>Index term under .Y</td>
        <td>Source is narrower than target</td>
        <td>Z28.0 Immunization not carried out because of contraindication</td>
        <td></td>
        <td>Related to</td>
        <td>V640</td>
        <td>Vaccination not carried out because of contraindication</td>
        <td>Related to</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>103306004</td>
        <td>Contraindication to (contextual qualifier) (qualifier value)</td>
        <td>Source is broader than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Product out of stock</td>
        <td>There was no supply of the product on hand to perform the service.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Product out of stock</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.7 Immunization not carried out due to lack of availability</td>
        <td>http://id.who.int/icd/entity/300485628</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Z28.8 Immunization Not carried out for other reasons</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>182856006</td>
        <td>Drug not available - out of stock (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Patient objection</td>
        <td>The patient or their guardian objects to receiving the vaccine.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Patient objection</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.5 Immunization not carried out because of patient refusal</td>
        <td>http://id.who.int/icd/entity/583273619</td>
        <td>Patient refusal</td>
        <td>Equivalent</td>
        <td>Z28.2 Immunization not carried out because of patient's decision for other and unspecified reasons</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>V642</td>
        <td>Surgical or other procedure not carried out because of patient's decision</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>5.91E+11</td>
        <td>Vaccine refused by patient (situation)</td>
        <td>Equivalent</td>
        <td>5.91E+11</td>
        <td>Vaccine declined by patient (situation)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Caregiver Refusal</td>
        <td>The patient's caregiver refused the vaccine</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Caregiver Refusal</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.6 Immunization not carried out because of caregiver refusal</td>
        <td>http://id.who.int/icd/entity/118051153</td>
        <td>Caregiver refusal</td>
        <td>Equivalent</td>
        <td>Z28.8 Immunization Not carried out for other reasons</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>871879005</td>
        <td>Vaccination hesitancy by parent (situation)</td>
        <td>Related to</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Unspecified objection</td>
        <td>The immunization event was not carried out for an unspecified reason</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Unspecified objection</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.Z Immunization not carried out for unspecified reason</td>
        <td>No URI for residuals</td>
        <td>Unspecified reason</td>
        <td>Equivalent</td>
        <td>Z28.9 Immunization not carried out for unspecified reason</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Patient allergy to vaccine or component</td>
        <td>The immunization event was not carried out because of patient allergy to vaccine or component</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Patient allergy to vaccine or component</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.4 Immunization not carried out because of patient allergy to vaccine or component</td>
        <td>http://id.who.int/icd/entity/472002267</td>
        <td>patient allergy to vaccine or component</td>
        <td>Equivalent</td>
        <td>Z28.0 Immunization not carried out because of contraindication</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Patient is immuno-compromised</td>
        <td>The immunization event was not carried out because the patient is immuno-compromised</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Patient is immuno-compromised</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.3 Immunization not carried out because of immune-compromised state of patient</td>
        <td>http://id.who.int/icd/entity/1200706488</td>
        <td>immune-compromised state of patient</td>
        <td>Equivalent</td>
        <td>Z28.0 Immunization not carried out because of contraindication</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>370388006</td>
        <td>Patient immunocompromised (finding)</td>
        <td>Equivalent</td>
        <td>370388006</td>
        <td>Patient immunocompromised (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Chronic illness or condition</td>
        <td>The immunization event was not carried out due a chronic illness or condition of the patient</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Chronic illness or condition</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.2 Immunization not carried out because of chronic illness or condition of patient</td>
        <td>http://id.who.int/icd/entity/1650200188</td>
        <td>chronic illness or condition of patient</td>
        <td>Equivalent</td>
        <td>Z28.0 Immunization not carried out because of contraindication</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>39104002</td>
        <td>Illness (finding)</td>
        <td>Source is narrower than target</td>
        <td>39104002</td>
        <td>Illness (finding)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Acute illness</td>
        <td>The immunization event was not carried out due to an acute illness present in the patient</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Acute illness</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.1 Immunization not carried out because of acute illness</td>
        <td>http://id.who.int/icd/entity/679809409</td>
        <td>acute illness</td>
        <td>Equivalent</td>
        <td>Z28.0 Immunization not carried out because of contraindication</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>39104002</td>
        <td>Illness (finding)</td>
        <td>Source is narrower than target</td>
        <td>39104002</td>
        <td>Illness (finding)</td>
        <td>Source is narrower than target</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Patient acquired the disease</td>
        <td>The immunization event was not carried out due to the patient acquiring a disease</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Patient acquired the disease</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.0 Immunization not carried out due to patient having had the disease</td>
        <td>http://id.who.int/icd/entity/1498576014</td>
        <td>patient having had the disease</td>
        <td>Equivalent</td>
        <td>Z28.0 Immunization not carried out because of contraindication</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Immunization not carried out for other reasons</td>
        <td>The immunization event was not carried out for other reasons</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Immunization not carried out for other reasons</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC04.Y Immunization not carried out for other reasons</td>
        <td>No URI for residuals</td>
        <td>Index religious beliefs</td>
        <td>Equivalent</td>
        <td>Z28.1 Immunization not carried out because of patient's decision for reasons of belief or group pressure</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE3</td>
        <td>Vaccine brand</td>
        <td>The brand or trade name used to refer to the vaccine received.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td>As defined by Member State</td>
        <td>None</td>
        <td></td>
        <td>Must be a vaccine brand</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>This data element can be predetermined by a vaccine product registry. If vaccine registry is unavailable, we can capture this as a string.</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE4</td>
        <td>Vaccine Code</td>
        <td>Vaccine type/category that was administered or was to be administered. A SNOMED GPS, ATC, or Absent or Unknown code is required for the vaccine.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td>As defined in IMMZ.Z Vaccine Library</td>
        <td>None</td>
        <td></td>
        <td>Must be a vaccine code</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td>IMMZ.IND.1 - IMMZ.IND.22,IMMZ.IND.27, IMMZ.IND.29 - IMMZ.IND.49, IMMZ.IND.56 - IMMZ.IND.63</td>
        <td>A product code from GPS, ATC, or absent value must be entered</td>
        <td>Not classifiable in ICD-11</td>
        <td>http://id.who.int/icd/entity/164949870</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>39236-5</td>
        <td>Long common name: Vaccine code (CPT) CPHS</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>787859002</td>
        <td>Vaccine product (medicinal product)</td>
        <td>Source is broader than target</td>
        <td>787859002</td>
        <td>Vaccine product (medicinal product)</td>
        <td>Source is broader than target</td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>SNOMED GPS Code</td>
        <td>The SNOMED International Global Patient Set Product code</td>
        <td>Input Option</td>
        <td>Coding</td>
        <td>List of SNOMED GPS vaccine codes available in IMMZ.Z Vaccine Library</td>
        <td></td>
        <td></td>
        <td>Product code must be a SNOMED GPS Code</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode:vaccineGPSCode</td>
        <td>http://hl7.org/fhir/uv/ips/ValueSet/vaccines-gps-uv-ips</td>
        <td>http://hl7.org/fhir/uv/ips/ValueSet/vaccines-gps-uv-ips</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>ATC Class</td>
        <td>Anatomic Theraputic Chemical coding system</td>
        <td>Input Option</td>
        <td>Coding</td>
        <td>List of WHO ATC vaccine codes available in IMMZ.Z Vaccine Library</td>
        <td></td>
        <td></td>
        <td>Product code must be an ATC Code</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode.atcClass</td>
        <td>http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips</td>
        <td>http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Absent or Unknown Immunization</td>
        <td>A reference to a code indicating that there there are no known immunizations or that this information is unknown.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Absent or Unknown Immunization</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>2667000</td>
        <td>Absent (qualifier value)</td>
        <td>Source is broader than target</td>
        <td>2667000</td>
        <td>Absent (qualifier value)</td>
        <td>Source is broader than target</td>
        <td>Immunization.vaccineCode:absentOrUnknownImmunization</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE5</td>
        <td>Date and time of vaccination</td>
        <td>The date and time when the vaccine was administered to the patient.</td>
        <td></td>
        <td>DateTime</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a date and time value</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td>IMMZ.IND.1 - IMMZ.IND.22, IMMZ.IND.27, IMMZ.IND.29 - IMMZ.IND.49 IMMZ.IND.56 - IMMZ.IND.63</td>
        <td>Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#dateTime (e.g. YYYY-MM-DDThh:mm:ss+zz:zz)</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30952-6</td>
        <td>Long common name: Date and time of vaccination</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>7.241E+12</td>
        <td>Date of vaccination (observable entity)</td>
        <td>Equivalent</td>
        <td>Immunization.occurrence</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE6</td>
        <td>Vaccine administration location</td>
        <td>The service delivery location where the vaccine administration occurred. This references a physical location (country, facility, site, etc.) describing where the vaccination event occured</td>
        <td></td>
        <td>ID</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a reference to an existing location</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td>IMMZ.IND.1 - IMMZ.IND.22, IMMZ.IND.27, IMMZ.IND.29 - IMMZ.IND.49 IMMZ.IND.56 - IMMZ.IND.63</td>
        <td>This data element can also be predetermined by a Member State's health facility registry.</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>72060-7</td>
        <td>Long common name: Where was vaccine received</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>246267002</td>
        <td>Location (attribute)</td>
        <td>Source is narrower than target</td>
        <td>Immunization.location</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE7</td>
        <td>Vaccine manufacturer</td>
        <td>The manufacturer of the vaccine product</td>
        <td></td>
        <td>String</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a manufacturer</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td>IMMZ.IND.27</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30957-5</td>
        <td>Long common name: Manufacturer name [Identifier] Vaccine</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.manufacturer</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE8</td>
        <td>Vaccine batch number</td>
        <td>Batch number or lot number of vaccine.</td>
        <td></td>
        <td>String</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a manufacturer's lot number</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td>IMMZ.IND.27</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30959-1</td>
        <td>Long common name: Lot number [Identifier] Vaccine</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.lotNumber</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE9</td>
        <td>Vaccine market authorization holder</td>
        <td>Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a market authorization holder</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>As defined by Member State</td>
        <td>Not classifiable in ICD-12</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE10</td>
        <td>Expiration date</td>
        <td>The expiration date of the vaccine</td>
        <td></td>
        <td>Date</td>
        <td></td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>74066-2</td>
        <td>Long common name: Expiration Date of Medication [AHRQ]</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427416004</td>
        <td>Therapeutic substance expiration date (observable entity)</td>
        <td>Equivalent</td>
        <td>Immunization.expirationDate</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE11</td>
        <td>Site administered</td>
        <td>The body site where vaccine was administered.</td>
        <td></td>
        <td>String</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a body site</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>31034-2</td>
        <td>Long common name: Vaccination body site</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td>Depends on route, could add extension code. See sepcific anatomic details in ICHI extension codes</td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>39801007</td>
        <td>Application site (body structure)</td>
        <td>Equivalent</td>
        <td>Immunization.site</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE12</td>
        <td>Route of administration</td>
        <td>The route of delivery of the vaccine into the body</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a route code</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30958-3</td>
        <td>Long common name: Route [Identifier] Vaccine administered</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>410675002</td>
        <td>Route of administration (attribute)</td>
        <td>Equivalent</td>
        <td>410675002</td>
        <td>Route of administration (attribute)</td>
        <td>Equivalent</td>
        <td>Immunization.route</td>
        <td>https://www.hl7.org/fhir/valueset-immunization-route.html</td>
        <td>http://hl7.org/fhir/ValueSet/immunization-route</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Percutaneous</td>
        <td>Administered by scarring or scratching the skin</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Percutaneous</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>DTB.DB.AE Percutaneous administration of immunological agent, not elsewhere classified</td>
        <td>http://id.who.int/ichi/entity/1216934574</td>
        <td>Percutaneous</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Oral</td>
        <td>Administered orally, by mouth</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Oral</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>DTB.DB.AC Oral administration of immunological</td>
        <td>http://id.who.int/ichi/entity/1490896210</td>
        <td>Oral</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Intravenous</td>
        <td>Administered directly into a vein</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Intravenous</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>DTB.DB.AF Intravenous administration of immunological agent</td>
        <td>http://id.who.int/ichi/entity/221792245</td>
        <td>Intravenous</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Topical</td>
        <td>Administered topically, applied to the skin</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Topical</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>DTB.DB.AH Topical application of immunological agent</td>
        <td>http://id.who.int/ichi/entity/562675117</td>
        <td>Topical</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Intravesical</td>
        <td>Administered directly inot the bladder via a catheter</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Intravesical</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>DTB.DB.AD Intravesical administration of immunological agent</td>
        <td>http://id.who.int/ichi/entity/2135901673</td>
        <td>Intravesical</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE13</td>
        <td>Dose Quantity</td>
        <td>The quantity of vaccine product that was administered.</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Decimal Quantity</td>
        <td>Must be positive decimal value greater than zero (&gt;0.00)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>82745-1</td>
        <td>Long common name: Doses of vaccine given [#]--per symptom onset</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>398232005</td>
        <td>Drug dose (finding)</td>
        <td>Equivalent</td>
        <td>Immunization.doseQuantity</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE14</td>
        <td>Performer</td>
        <td>The person, organization, or role of the entity that performed the act of giving the vaccine to the patient. The implementing system can choose to populate this field using data from a Health Worker Registry or Health Facility Registry.</td>
        <td></td>
        <td>ID</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Minimum and maximum number of characters based on local policy</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td>This field could be a reference to the Practitioner record</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>420158005</td>
        <td>Performer of method (person)</td>
        <td>Equivalent</td>
        <td>Immunization.performer.actor</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE15</td>
        <td>Reason for vaccination</td>
        <td>Reasons why the vaccine was administered.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a reason code</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00-QC03</td>
        <td></td>
        <td>Mulitple codes options to capture this detail, would be broken into subcategories</td>
        <td></td>
        <td>Z23-Z27 Codes</td>
        <td>Mulitple codes options to capture this detail, would be broken into subcategories</td>
        <td></td>
        <td>V03-V06</td>
        <td>Mulitple codes options to capture this detail, would be broken into subcategories</td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>410665000</td>
        <td>Indication for (attribute)</td>
        <td>Equivalent</td>
        <td>Immunization.reasonCode</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>In need of vaccination</td>
        <td>The individual is within the appropriate time window and requires immunity against the disease for which there is a vaccine available</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>In need of vaccination</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC02.Z Need for immunization against certain specified single infectious diseases, unspecified</td>
        <td>No URI for residuals</td>
        <td>Z residual includes "Need for immunization NOS". Codes are specific to bacterial, viral, infectious or combination of those diseases. There isn't a need for unspecified vaccination code.</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>1.22541E+14</td>
        <td>Vaccination needed (situation)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Requires vaccination</td>
        <td>The individual is within the appropriate time window and requires immunity against the disease for which there is a vaccine available</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Requires vaccination</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC02.Z Need for immunization against certain specified single infectious diseases, unspecified</td>
        <td>No URI for residuals</td>
        <td>Z residual includes "Need for immunization NOS". Codes are specific to bacterial, viral, infectious or combination of those diseases. There isn't a need for unspecified vaccination code.</td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>723620004</td>
        <td>Requires vaccination (finding)</td>
        <td>Equivalent</td>
        <td>723620004</td>
        <td>Requires vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against cholera alone</td>
        <td>The individual is within the appropriate time window and requires immunity againstcholera alone</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against cholera alone</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.0 Need for immunization against cholera alone</td>
        <td>http://id.who.int/icd/entity/1119330136</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.0 Need for immunization against cholera alone</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.0</td>
        <td>Need for prophylactic vaccination and inoculation against cholera alone</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>170547009</td>
        <td>Requires a course of cholera vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against typhoid-paratyphoid alone</td>
        <td>The individual is within the appropriate time window and requires immunity against typhoid-paratyphoid alone</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against typhoid-paratyphoid alone</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.1 Need for immunization against typhoid-paratyphoid alone</td>
        <td>http://id.who.int/icd/entity/847921176</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.1 Need for immunization against typhoid-paratyphoid alone [TAB]</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.1</td>
        <td>Need for prophylactic vaccination and inoculation against typhoid-paratyphoid alone [TAB]</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>170540006</td>
        <td>Requires typhoid vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for vaccination against typhoid and paratyphoid (finding)</td>
        <td>The individual is within the appropriate time window and requires immunity against typhoid and paratyphoid</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for vaccination against typhoid and paratyphoid (finding)</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.1 Need for immunization against typhoid-paratyphoid alone</td>
        <td>http://id.who.int/icd/entity/847921176</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789034003</td>
        <td>Requires vaccination against typhoid and paratyphoid (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against tuberculosis</td>
        <td>The individual is within the appropriate time window and requires immunity against tuberculosis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against tuberculosis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.2 Need for immunization against tuberculosis</td>
        <td>http://id.who.int/icd/entity/1176965351</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.2 Need for immunization against tuberculosis [BCG]</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.2</td>
        <td>Need for prophylactic vaccination and inoculation against tuberculosis [BCG]</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>429069001</td>
        <td>Requires Bacillus Calmette-Guerin vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against plague</td>
        <td>The individual is within the appropriate time window and requires immunity against plague</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against plague</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.3 Need for immunization against plague</td>
        <td>http://id.who.int/icd/entity/594337139</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.3 Need for immunization against plague</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.3</td>
        <td>Need for prophylactic vaccination and inoculation against plague</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789032004</td>
        <td>Requires vaccination against plague (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against tularaemia</td>
        <td>The individual is within the appropriate time window and requires immunity against tularaemia</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against tularaemia</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.4 Need for immunization against tularaemia</td>
        <td>http://id.who.int/icd/entity/1350717159</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.4 Need for immunization against tularaemia</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.4</td>
        <td>Need for prophylactic vaccination and inoculation against tularaemia</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789033009</td>
        <td>Requires vaccination against tularemia (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against tetanus alone</td>
        <td>The individual is within the appropriate time window and requires immunity against tetanus alone</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against tetanus alone</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.5 Need for immunization against tetanus alone</td>
        <td>http://id.who.int/icd/entity/902398835</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.5 Need for immunization against tetanus alone</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.7</td>
        <td>Need for prophylactic vaccination and inoculation against tetanus toxoid alone</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>170538001</td>
        <td>Requires full course of tetanus vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against diphtheria alone</td>
        <td>The individual is within the appropriate time window and requires immunity against diphtheria alone</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against diphtheria alone</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.6 Need for immunization against diphtheria alone</td>
        <td>http://id.who.int/icd/entity/1097126796</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.6 Need for immunization against diphtheria alone</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.5</td>
        <td>Need for prophylactic vaccination and inoculation against diphtheria alone</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789025008</td>
        <td>Requires vaccination against diphtheria (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for vaccination against typhoid and paratyphoid (finding)</td>
        <td>The individual is within the appropriate time window and requires immunity against typhoid and paratyphoid</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for vaccination against typhoid and paratyphoid (finding)</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.1 Need for immunization against typhoid-paratyphoid alone</td>
        <td>http://id.who.int/icd/entity/847921176</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>703345002</td>
        <td>Requires vaccination against typhoid and paratyphoid (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against pertussis alone</td>
        <td>The individual is within the appropriate time window and requires immunity against pertussis alone</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against pertussis alone</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.7 Need for immunization against pertussis alone</td>
        <td>http://id.who.int/icd/entity/607067674</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.7 Need for immunization against pertussis alone</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.6</td>
        <td>Need for prophylactic vaccination and inoculation against pertussis alone</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789031006</td>
        <td>Requires vaccination against pertussis (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Other specified need for immunization against single bacterial diseases</td>
        <td>The individual is within the appropriate time window and requires immunity against single bacterial diseases</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Other specified need for immunization against single bacterial diseases</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.Y Other specified need for immunization against single bacterial diseases</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z23.8 Need for immunization against other single bacterial diseases</td>
        <td></td>
        <td>Equivalent</td>
        <td>V03.8</td>
        <td>Need for prophylactic vaccination and inoculation against single bacterial diseases</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against single bacterial diseases, unspecified</td>
        <td>The individual is within the appropriate time window and requires immunity against single bacterial diseases, unspecified</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against single bacterial diseases, unspecified</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC00.Z Need for immunization against single bacterial diseases, unspecified</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V03.9</td>
        <td>Need for prophylactic vaccination and inoculation, unspecified</td>
        <td>Related to</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against poliomyelitis</td>
        <td>The individual is within the appropriate time window and requires immunity against poliomyelitis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against poliomyelitis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.0 Need for immunization against poliomyelitis</td>
        <td>http://id.who.int/icd/entity/1824062668</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z24.0 Need for immunization against poliomyelitis</td>
        <td></td>
        <td>Equivalent</td>
        <td>V04.0</td>
        <td>Need for prophylactic vaccination and inoculation against poliomyelitis</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>170539009</td>
        <td>Requires polio vaccination (finding)</td>
        <td>Equivalent</td>
        <td>170539009</td>
        <td>Requires polio vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for prophylactic vaccination and inoculation against smallpox</td>
        <td>The individual is within the appropriate time window and requires immunity against smallpox</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for prophylactic vaccination and inoculation against smallpox</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.Y Other specified need for immunization against certain single viral diseases</td>
        <td>No URI for residuals</td>
        <td>The ICD-11 code isn't specific to "smallpox".</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V04.1</td>
        <td>Need for prophylactic vaccination and inoculation against smallpox</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against arthropod-borne viral encephalitis</td>
        <td>The individual is within the appropriate time window and requires immunity against arthropod-borne viral encephalitis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against arthropod-borne viral encephalitis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.1 Need for immunization against arthropod-borne viral encephalitis</td>
        <td>http://id.who.int/icd/entity/166932826</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z24.1 Need for immunization against arthropod-borne viral encephalitis</td>
        <td></td>
        <td>Equivalent</td>
        <td>V05.0</td>
        <td>Need for prophylactic vaccination and inoculation against arthropod-borned viral encephalitis</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789023001</td>
        <td>Requires vaccination against arthropod-borne viral encephalitis (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for prophylactic vaccination and inoculation against rabies</td>
        <td>The individual is within the appropriate time window and requires immunity against rabies</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for prophylactic vaccination and inoculation against rabies</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.2 Need for immunization against rabies</td>
        <td>http://id.who.int/icd/entity/2103337383</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V05.1</td>
        <td>Need for prophylactic vaccination and inoculation against other arthropod-borned viral diseases</td>
        <td>Related to</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against rabies</td>
        <td>The individual is within the appropriate time window and requires immunity against rabies</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against rabies</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.2 Need for immunization against rabies</td>
        <td>http://id.who.int/icd/entity/2103337383</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z24.2 Need for immunization against rabies</td>
        <td></td>
        <td>Equivalent</td>
        <td>V04.5</td>
        <td>Need for prophylactic vaccination and inoculation against rabies</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>170543008</td>
        <td>Requires rabies vaccination course (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against yellow fever</td>
        <td>The individual is within the appropriate time window and requires immunity against yellow fever</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against yellow fever</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.3 Need for immunization against yellow fever</td>
        <td>http://id.who.int/icd/entity/404073523</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z24.3 Need for immunization against yellow fever</td>
        <td></td>
        <td>Equivalent</td>
        <td>V04.4</td>
        <td>Need for prophylactic vaccination and inoculation against yellow fever</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>170545001</td>
        <td>Requires a yellow fever vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against measles alone</td>
        <td>The individual is within the appropriate time window and requires immunity against measles alone</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against measles alone</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.4 Need for immunization against measles alone</td>
        <td>http://id.who.int/icd/entity/1811627943</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z24.4 Need for immunization against measles alone</td>
        <td></td>
        <td>Equivalent</td>
        <td>V04.2</td>
        <td>Need for prophylactic vaccination and inoculation against measles alone</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789029002</td>
        <td>Requires vaccination against measles (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against rubella alone</td>
        <td>The individual is within the appropriate time window and requires immunity against rubella alone</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against rubella alone</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.5 Need for immunization against rubella alone</td>
        <td>http://id.who.int/icd/entity/246477363</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z24.5 Need for immunization against rubella alone</td>
        <td></td>
        <td>Equivalent</td>
        <td>V04.3</td>
        <td>Need for prophylactic vaccination and inoculation against rubella alone</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>700419006</td>
        <td>Requires rubella vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for vaccination against viral hepatitis (finding)</td>
        <td>The individual is within the appropriate time window and requires immunity against hepatitis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for vaccination against viral hepatitis (finding)</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.6 Need for immunization against viral hepatitis</td>
        <td>http://id.who.int/icd/entity/2048762574</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z24.6 Need for immunization against viral hepatitis</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789035002</td>
        <td>Requires vaccination against viral hepatitis (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for a hepatitis A vaccination (finding)</td>
        <td>The individual is within the appropriate time window and requires immunity against hepatitis A</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for a hepatitis A vaccination (finding)</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.6 Need for immunization against viral hepatitis</td>
        <td>http://id.who.int/icd/entity/2048762574</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>170541005</td>
        <td>Requires a hepatitis A vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for course of hepatitis B vaccination (finding)</td>
        <td>The individual is within the appropriate time window and requires immunity against Hepatitis B</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for course of hepatitis B vaccination (finding)</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.6 Need for immunization against viral hepatitis</td>
        <td>http://id.who.int/icd/entity/2048762574</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>170542003</td>
        <td>Requires course of hepatitis B vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for prophylactic vaccination and inoculation against common cold</td>
        <td>The individual is within the appropriate time window and requires immunity against the common cold</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for prophylactic vaccination and inoculation against common cold</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.Y Other specified need for immunization against certain single viral diseases</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V04.7</td>
        <td>Need for prophylactic vaccination and inoculation against common cold</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against mumps alone</td>
        <td>The individual is within the appropriate time window and requires immunity against mumps alone</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against mumps alone</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.7 Need for immunization against mumps alone</td>
        <td>http://id.who.int/icd/entity/1883255885</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z25.0 Need for immunization against mumps alone</td>
        <td></td>
        <td>Equivalent</td>
        <td>V04.6</td>
        <td>Need for prophylactic vaccination and inoculation against mumps alone</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789030007</td>
        <td>Requires vaccination against mumps (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against influenza</td>
        <td>The individual is within the appropriate time window and requires immunity against influenza</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against influenza</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.8 Need for immunization against influenza</td>
        <td>http://id.who.int/icd/entity/353106393</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z25.1 Need for immunization against influenza</td>
        <td></td>
        <td>Equivalent</td>
        <td>V04.8</td>
        <td>Need for prophylactic vaccination and inoculation against influenza</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>698353005</td>
        <td>Requires influenza virus vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Other specified need for immunization against certain single viral diseases</td>
        <td>see comment</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Other specified need for immunization against certain single viral diseases</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.Y Other specified need for immunization against certain single viral diseases</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z25.8 Need for immunization against other specified single viral diseases</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against leishmaniasis</td>
        <td>The individual is within the appropriate time window and requires immunity against leishmaniasis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against leishmaniasis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC02.0 Need for immunization against leishmaniasis</td>
        <td>http://id.who.int/icd/entity/1908905075</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z26.0 Need for immunization against leishmaniasis</td>
        <td></td>
        <td>Equivalent</td>
        <td>V05.2</td>
        <td>Need for prophylactic vaccination and inoculation against leishmaniasis</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789028005</td>
        <td>Requires vaccination against leishmaniasis (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against certain single viral diseases, unspecified</td>
        <td>The individual is within the appropriate time window and requires immunity against a viral disease that was not specified</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against certain single viral diseases, unspecified</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.Z Need for immunization against certain single viral diseases, unspecified</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z26.8 Need for immunization against other specified single infectious diseases</td>
        <td></td>
        <td>Equivalent</td>
        <td>V05.8</td>
        <td>Need for prophylactic vaccination and inoculation against other specified disease</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Other specified need for immunization against certain specified single infectious diseases</td>
        <td>The individual needs immunity against one or more single infectious diseases</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Other specified need for immunization against certain specified single infectious diseases</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC02.Y Other specified need for immunization against certain specified single infectious diseases</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against certain specified single infectious diseases, unspecified</td>
        <td>The individual is within the appropriate time window and requires immunity against an infectious disease not specified</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against certain specified single infectious diseases, unspecified</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC02.Z Need for immunization against certain specified single infectious diseases, unspecified</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z26.9 Need for immunization against unspecified infectious disease</td>
        <td></td>
        <td>Equivalent</td>
        <td>V05.9</td>
        <td>Need for prophylactic vaccination and inoculation against unspecified disease</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against cholera with typhoid-paratyphoid</td>
        <td>The individual is within the appropriate time window and requires immunity against cholera with typhoid-paratyphoid</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against cholera with typhoid-paratyphoid</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC03.0 Need for immunization against cholera with typhoid-paratyphoid</td>
        <td>http://id.who.int/icd/entity/1832869108</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z27.0 Need for immunization against cholera with typhoid-paratyphoid [cholera + TAB]</td>
        <td></td>
        <td>Equivalent</td>
        <td>V06.0</td>
        <td>Need for prophylactic vaccination and inoculation against cholera with typhoid-paratyphoid [cholera + TAB]</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789024007</td>
        <td>Requires vaccination against cholera with typhoid-paratyphoid (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against diphtheria-tetanus-pertussis, combined</td>
        <td>The individual is within the appropriate time window and requires immunity against diphtheria-tetanus-pertussis, combined</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against diphtheria-tetanus-pertussis, combined</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC03.1 Need for immunization against diphtheria-tetanus-pertussis, combined</td>
        <td>http://id.who.int/icd/entity/141857126</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z27.1 Need for immunization against diphtheria-tetanus-pertussis, combined [DTP]</td>
        <td></td>
        <td>Equivalent</td>
        <td>V06.1</td>
        <td>Need for prophylactic vaccination and inoculation against diphtheria-tetanus-pertussis, combined [DTP]</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>703337007</td>
        <td>Requires diphtheria, tetanus and pertussis vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against diphtheria-tetanus-pertussis with typhoid-paratyphoid</td>
        <td>The individual is within the appropriate time window and requires immunity against diphtheria-tetanus-pertussis with typhoid-paratyphoid</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against diphtheria-tetanus-pertussis with typhoid-paratyphoid</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC03.2 Need for immunization against diphtheria-tetanus-pertussis with typhoid-paratyphoid</td>
        <td>http://id.who.int/icd/entity/2094645657</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z27.2 Need for immunization against diphtheria-tetanus-pertussis with typhoid-paratyphoid [DTP + TAB]</td>
        <td></td>
        <td>Equivalent</td>
        <td>V06.2</td>
        <td>Need for prophylactic vaccination and inoculation against diphtheria-tetanus-pertussis with typhoid-paratyphoid [DTP + TAB]</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789027000</td>
        <td>Requires vaccination against diphtheria-tetanus-pertussis with typhoid-paratyphoid (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against diphtheria-tetanus-pertussis with poliomyelitis</td>
        <td>The individual is within the appropriate time window and requires immunity against diphtheria-tetanus-pertussis with poliomyelitis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against diphtheria-tetanus-pertussis with poliomyelitis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC03.3 Need for immunization against diphtheria-tetanus-pertussis with poliomyelitis</td>
        <td>http://id.who.int/icd/entity/429001741</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z27.3 Need for immunization against diphtheria-tetanus-pertussis with poliomyelitis [DTP + polio]</td>
        <td></td>
        <td>Equivalent</td>
        <td>V06.3</td>
        <td>Need for prophylactic vaccination and inoculation against diphtheria-tetanus-pertussis with poliomyelitis [DTP + polio]</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>789026009</td>
        <td>Requires vaccination against diphtheria-tetanus-pertussis with poliomyelitis (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against measles-mumps-rubella</td>
        <td>The individual is within the appropriate time window and requires immunity against measles-mumps-rubella</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against measles-mumps-rubella</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC03.4 Need for immunization against measles-mumps-rubella</td>
        <td>http://id.who.int/icd/entity/1786552217</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z27.4 Need for immunization against measles-mumps-rubella [MMR]</td>
        <td></td>
        <td>Equivalent</td>
        <td>V06.4</td>
        <td>Need for prophylactic vaccination and inoculation against measles-mumps-rubella [MMR]</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>703347005</td>
        <td>Requires measles, mumps and rubella vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Other specified need for immunization against combinations of infectious diseases</td>
        <td>The individual needs immunity against more than one infectious disease</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Other specified need for immunization against combinations of infectious diseases</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC03.Y Other specified need for immunization against combinations of infectious diseases</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z27.8 Need for immunization against other combinations of infectious diseases</td>
        <td></td>
        <td>Equivalent</td>
        <td>V06.8</td>
        <td>Need for prophylactic vaccination and inoculation against other combinations of infectious diseases</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for immunization against combinations of infectious diseases, unspecified</td>
        <td>The individual is within the appropriate time window and requires immunity against more than one infectious disease</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for immunization against combinations of infectious diseases, unspecified</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC03.Z Need for immunization against combinations of infectious diseases, unspecified</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Equivalent</td>
        <td>Z27.9 Need for immunization against unspecified combinations of infectious diseases</td>
        <td></td>
        <td>Equivalent</td>
        <td>V06.9</td>
        <td>Need for prophylactic vaccination and inoculation against unspecified combinations of infectious diseases</td>
        <td>Equivalent</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for varicella vaccination</td>
        <td>The individual is within the appropriate time window and requires immunity against varicella</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for varicella vaccination</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC01.Y Other specified need for immunization against certain single viral diseases</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>703344003</td>
        <td>Requires varicella vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Need for a meningitis vaccination</td>
        <td>The individual is within the appropriate time window and requires immunity against meningitis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Need for a meningitis vaccination</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QC02.Y Other specified need for immunization against certain specified single infectious diseases</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>170544002</td>
        <td>Requires a meningitis vaccination (finding)</td>
        <td>Equivalent</td>
        <td>170544002</td>
        <td>Requires a meningitis vaccination (finding)</td>
        <td>Equivalent</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE16</td>
        <td>Reason Reference ID</td>
        <td>A reference to the resource (Condition, Observation, or DiagnosticReport) highlighting why the immunization occurred. The existence of this referenced resource would justify this immunization.</td>
        <td></td>
        <td>ID</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Minimum and maximum number of characters based on local policy</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td>This is a reference to another structured data object (Condition, Observation, or DiagnosticReport).</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>410666004</td>
        <td>Reason for (attribute)</td>
        <td>Equivalent</td>
        <td>Immunization.reasonReference</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE17</td>
        <td>Subpotency</td>
        <td>Indicates if a dose is considered to be subpotent. By default, a dose should be considered to be potent. If the dose is not subpotent, a Subpotent Reason should be given.</td>
        <td></td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.isSubpotent</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE18</td>
        <td>Subpotent Reason</td>
        <td>The reason the antigen is consdered sub potent (VVM reading, expired, not properly absorbed etc)</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a subpotent reason code</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>410666004</td>
        <td>Reason for (attribute)</td>
        <td>Source is narrower than target</td>
        <td>Immunization.subpotentReason</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Partial Dose</td>
        <td>The full volume of the dose was not administered to the patient.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Partial Dose</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Cold Chain Break</td>
        <td>The vaccine experienced a cold chain break.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Cold Chain Break</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Manufacturer Recall</td>
        <td>The vaccine was recalled by the manufacturer.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Manufacturer Recall</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE19</td>
        <td>Education</td>
        <td>Educational material presented to patient</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a code for educational material presented to patient</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QA1Y Contact with health services for other specified counselling</td>
        <td>No URI for residuals</td>
        <td>Contact with health services for other specified counselling. Health Education</td>
        <td>Equivalent</td>
        <td>Z71.8 Other specified counselling</td>
        <td>Other specified counselling</td>
        <td>Source is narrower than target</td>
        <td>V654</td>
        <td>Other counselling, not elsewhere classified</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>DTB.PM.ZZ Education about functions of the immunological system</td>
        <td>http://id.who.int/ichi/entity/90239689</td>
        <td>Providing information to improve knowledge about functions of the immunological system (functions of immunity)</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>171044003</td>
        <td>Immunization education (procedure)</td>
        <td>Equivalent</td>
        <td>Immunization.Education</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Counselling on functions of the immunological system</td>
        <td>Explaining to the patient or caregiver how the vaccines work by triggering the body to produce an immune response</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Counselling on functions of the immunological system</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QA1Y Contact with health services for other specified counselling</td>
        <td>No URI for residuals</td>
        <td>Z71.8 Other specified counselling</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V655</td>
        <td>Other counselling, not elsewhere classified</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>DTB.PP.ZZ - Counselling for functions of the immunological system</td>
        <td>http://id.who.int/ichi/entity/1632570873</td>
        <td>Providing therapeutic and/or supportive communication in relation to functions of the immunological system (functions of immunity)</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Advising about functions of the immunological system</td>
        <td>Explaining to the patient or caregiver how the vaccines work by triggering the body to produce an immune response</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Advising about functions of the immunological system</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QA1Y Contact with health services for other specified counselling</td>
        <td>No URI for residuals</td>
        <td>Z71.8 Other specified counselling</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V656</td>
        <td>Other counselling, not elsewhere classified</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>DTB.PN.ZZ Advising about functions of the immunological system</td>
        <td>http://id.who.int/ichi/entity/322441189</td>
        <td>Providing advice to encourage a change of or to maintain functions of the immunological system (functions of immunity) in relation to health (or risks)</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Education to influence immunisation behaviours</td>
        <td>Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Education to influence immunisation behaviours</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QA1Y Contact with health services for other specified counselling</td>
        <td>No URI for residuals</td>
        <td>Z71.8 Other specified counselling</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V657</td>
        <td>Other counselling, not elsewhere classified</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>VDA.PM.ZZ Education to influence immunisation behaviours</td>
        <td>http://id.who.int/ichi/entity/2070681686</td>
        <td>Providing information to improve knowledge in order to influence behaviour concerning patterns of use of immunisation services</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Advising about immunisation behaviours</td>
        <td>Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Advising about immunisation behaviours</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QA1Y Contact with health services for other specified counselling</td>
        <td>No URI for residuals</td>
        <td>Z71.8 Other specified counselling</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V658</td>
        <td>Other counselling, not elsewhere classified</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>VDA.PN.ZZ Advising about immunisation behaviours</td>
        <td>http://id.who.int/ichi/entity/1798942634</td>
        <td>Providing advice to encourage a change of behaviour concerning patterns of use of immunisation services</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Awareness raising to influence immunisation behaviours</td>
        <td>Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Awareness raising to influence immunisation behaviours</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>QA1Y Contact with health services for other specified counselling</td>
        <td>No URI for residuals</td>
        <td>Z71.8 Other specified counselling</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>V659</td>
        <td>Other counselling, not elsewhere classified</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>VDA.VB.ZZ Awareness raising to influence immunisation behaviours</td>
        <td>http://id.who.int/ichi/entity/1378425215</td>
        <td>Promoting messages to raise awareness about or to influence behaviour concerning patterns of use of immunisation services</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE20</td>
        <td>Reaction Date</td>
        <td>When reaction started</td>
        <td></td>
        <td>Date</td>
        <td></td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30953-4</td>
        <td>Long common name: Date and time of onset of vaccination adverse event</td>
        <td>Equivalent</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>439771001</td>
        <td>Date of event (observable entity)</td>
        <td>Source is narrower than target</td>
        <td>Immunization.reaction.date</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE21</td>
        <td>Reaction Observation ID</td>
        <td>A reference to the observation that contains the details about adverse event/reaction.</td>
        <td></td>
        <td>ID</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Minimum and maximum number of characters based on local policy</td>
        <td>Yes</td>
        <td>C</td>
        <td>Skip if Reaction Detail not provided</td>
        <td>IMMZ.IND.27</td>
        <td>This is a reference to another structured data object. Note: The FHIR paths under this data element may change as AdverseEvent</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>E9496</td>
        <td>Adverse effects in therapeutic use, other and unspecified viral and rickettsial vaccines</td>
        <td>Related to</td>
        <td>30971-6</td>
        <td>Long common name: Adverse event VAERS</td>
        <td>Related to</td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>263851003</td>
        <td>Reaction (qualifier value)</td>
        <td>Related to</td>
        <td>Immunization.reaction.detail</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE22</td>
        <td>Reaction Manifestation</td>
        <td>The manifestation of the reaction (for example: infected abscess, swelling, rash, GBS, hives, diarrhea, etc.) which was observed after administering the vaccine.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td>A list of reactions is available in http://hl7.org/fhir/valueset-adverse-event-type.html</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td>Skip if Reaction Detail not provided</td>
        <td>IMMZ.IND.27</td>
        <td>Example value set: http://hl7.org/fhir/valueset-adverse-event-type.html</td>
        <td>NE80.3 Other serum reactions</td>
        <td>http://id.who.int/icd/entity/186956137</td>
        <td>This code is includes "Complications of vaccination, serum reaction". A more specific code may be selected based on the documented reaction/manifestation.</td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Observation.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Severe local reaction</td>
        <td>The patient's reaction manifested in severe local reaction</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Severe local reaction</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Seizures</td>
        <td>The patient's reaction manifested in seizures</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Seizures</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Abscess</td>
        <td>The patient's reaction manifested in abscess</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Abscess</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Sepsis</td>
        <td>The patient's reaction manifested in sepsis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Sepsis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Encephalopathy</td>
        <td>The patient's reaction manifested in Encephalopathy</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Encephalopathy</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Toxic shock syndrome</td>
        <td>The patient's reaction manifested in Toxic shock syndrome</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Toxic shock syndrome</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Anaphylaxis</td>
        <td>The patient's reaction manifested in anaphylaxis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Anaphylaxis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Fever</td>
        <td>The patient's reaction manifested in fever</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Fever</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>MG26</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Other</td>
        <td>The patient's reaction manifested in another way</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Other</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE23</td>
        <td>Reaction Duration</td>
        <td>The duration (length) of the reaction.</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Duration</td>
        <td>Must be positive value greater than zero (&gt;0)</td>
        <td>Yes</td>
        <td>C</td>
        <td>Skip if Reaction Detail not provided</td>
        <td>IMMZ.IND.27</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>103335007</td>
        <td>Duration (attribute)</td>
        <td>Source is narrower than target</td>
        <td>103335007</td>
        <td>Duration (attribute)</td>
        <td>Source is narrower than target</td>
        <td>Observation.effectivePeriod</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE24</td>
        <td>Reaction Severity</td>
        <td>The severity of the reaction which was observed.</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a reaction severity code</td>
        <td>Yes</td>
        <td>C</td>
        <td>Skip if Reaction Detail not provided</td>
        <td>IMMZ.IND.27</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>246112005</td>
        <td>Severity (attribute)</td>
        <td>Source is narrower than target</td>
        <td>246112005</td>
        <td>Severity (attribute)</td>
        <td>Source is narrower than target</td>
        <td>Observation.component.code</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Fatal</td>
        <td>The patient died as a result of the reaction</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Fatal</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>399166001</td>
        <td>Fatal (qualifier value)</td>
        <td>Equivalent</td>
        <td>399166001</td>
        <td>Fatal (qualifier value)</td>
        <td>Equivalent</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Life Threatening</td>
        <td>The patient had a life-threatening reaction to the administered vaccine.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Life Threatening</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XS2R Profound</td>
        <td>http://id.who.int/icd/entity/1355303673</td>
        <td>There is no extension code specific to "Life Threatening".</td>
        <td>Related to</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>442452003</td>
        <td>Life threatening severity (qualifier value)</td>
        <td>Equivalent</td>
        <td>442452003</td>
        <td>Life threatening severity (qualifier value)</td>
        <td>Equivalent</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Mild</td>
        <td>Local reaction at the injection site or minor systemic reaction such as fever or malaise, that occurs over a short period of time and pose little danger</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Mild</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XS5W Mild</td>
        <td>http://id.who.int/icd/entity/562478860</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>255604002</td>
        <td>Mild (qualifier value)</td>
        <td>Equivalent</td>
        <td>255604002</td>
        <td>Mild (qualifier value)</td>
        <td>Equivalent</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Mild to Moderate</td>
        <td>Local or systemic reactions (fever, mailase, muscle pain headache) resolving after a short period of time, causing more discomfort than a mild reaction but less than moderate</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Mild to Moderate</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XS5W Mild XS0T Moderate</td>
        <td>http://id.who.int/icd/entity/562478860 http://id.who.int/icd/entity/1663264387</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>371923003</td>
        <td>Mild to moderate (qualifier value)</td>
        <td>Equivalent</td>
        <td>371923003</td>
        <td>Mild to moderate (qualifier value)</td>
        <td>Equivalent</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Moderate</td>
        <td>Local or systemic reactions more severe than mild and of longer duration</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Moderate</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XS0T Moderate</td>
        <td>http://id.who.int/icd/entity/1663264387</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>6736007</td>
        <td>Moderate (severity modifier)</td>
        <td>Equivalent</td>
        <td>6736007</td>
        <td>Moderate (severity modifier)</td>
        <td>Equivalent</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Moderate to Severe</td>
        <td>More severe local or systemic reactions that are not life threatening and but could include minor seizures or high fever less series than severe.</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Moderate to Severe</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XS0T Moderate XS25 Severe</td>
        <td>http://id.who.int/icd/entity/1663264387 http://id.who.int/icd/entity/1201187093</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>371924009</td>
        <td>Moderate to severe (qualifier value)</td>
        <td>Equivalent</td>
        <td>371924009</td>
        <td>Moderate to severe (qualifier value)</td>
        <td>Equivalent</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Severe</td>
        <td>Severe and potentially (rarely) life threatening reactions including seizures and anaphlactic reactions</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Severe</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XS25 Severe</td>
        <td>http://id.who.int/icd/entity/1201187093</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>24484000</td>
        <td>Severe (qualifier value)</td>
        <td>Equivalent</td>
        <td>24484000</td>
        <td>Severe (qualifier value)</td>
        <td>Equivalent</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE25</td>
        <td>Reaction outcome</td>
        <td>The outcome of the reaction (death, hospitalization, recovered, disabled)</td>
        <td>Select one</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be an outcome code</td>
        <td>Yes</td>
        <td>C</td>
        <td>Answer if a patient has had an adverse reaction</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>293104008</td>
        <td>Adverse reaction to component of vaccine product (disorder)</td>
        <td>Source is broader than target</td>
        <td>405533003</td>
        <td>Adverse incident outcome categories (finding)</td>
        <td>Equivalent</td>
        <td>Observation.component.code</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Death</td>
        <td>The adverse event resulted in the patient's death</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Death</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>405535005</td>
        <td>Adverse incident resulting in death (finding)</td>
        <td>Equivalent</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Recovered</td>
        <td>The patient fully recovered</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Recovered</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>398056004</td>
        <td>Transient abnormality with full recovery (finding)</td>
        <td>Related to</td>
        <td>Observation.component.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Recovered with sequelae</td>
        <td>The patient is recovered with sequelae as a consequence of the reaction/vaccination</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Recovered with sequelae</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Recovering</td>
        <td>The patient is recovering</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Recovering</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Not Recovered</td>
        <td>The patient has not recovered</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Not Recovered</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Unknown</td>
        <td>The patient's reaction outcome is unknown</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Unknown</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE26</td>
        <td>Reaction Reported</td>
        <td>Indicates self-reported reaction</td>
        <td></td>
        <td>Boolean</td>
        <td>Yes/No</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>418799008</td>
        <td>Finding reported by subject or history provider (finding)</td>
        <td>Source is narrower than target</td>
        <td>418799008</td>
        <td>Finding reported by subject or history provider (finding)</td>
        <td>Source is narrower than target</td>
        <td>Immunization.reaction.reported</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE27</td>
        <td>Protocol Series</td>
        <td>Name of vaccine series. This patient-specific element is auto-populated by the decision support embedded in the electronic immunization system to describe the name of the vaccine protocol series that patient has been given.</td>
        <td></td>
        <td>String</td>
        <td></td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>13039001</td>
        <td>Series (qualifier value)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.series</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE28</td>
        <td>Protocol Authority</td>
        <td>The health authority that is responsible for publishing the protocol recommendations. This patient-specific element is auto-populated by the electronic immunization system describing which health authority determined the vaccine protocol series.</td>
        <td></td>
        <td>String</td>
        <td></td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td>This may also be a reference to an organization who created the protocol</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.protocolApplied.authority</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE29</td>
        <td>Dose number</td>
        <td>Vaccine dose number within series</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Integer</td>
        <td>Must be an integer greater than or equal to zero (&gt;=0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td>This field can also be calculated as defined by member states</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.protocolApplied.doseNumber</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE30</td>
        <td>Total doses in series</td>
        <td>The recommended number of doses for immunity according to the national protocol</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Integer</td>
        <td>Must be positive integer greater than zero (&gt;0)</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td>This data element can also be predetermined by a vaccine product registry.</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.protocolApplied.seriesDose</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE31</td>
        <td>Disease targeted</td>
        <td>Vaccine preventable disease being targeted.</td>
        <td>Select all that apply</td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Must be a target disease code</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td>Any ICD-9 diagnosis may appear, but cannot be linked to this data element (i.e., the target disease)</td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.protocolApplied.targetDisease</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Typhoid fever</td>
        <td>The client is receiving vaccination to prevent against Typhoid fever</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Typhoid fever</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1A07 Typhoid fever</td>
        <td>http://id.who.int/icd/entity/1528414070</td>
        <td></td>
        <td>Equivalent</td>
        <td>A01.0 Typhoid fever</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>4834000</td>
        <td>Typhoid fever (disorder)</td>
        <td>Equivalent</td>
        <td>4834000</td>
        <td>Typhoid fever (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Influenza</td>
        <td>The client is receiving vaccination to prevent against Influenza</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Influenza</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1E32 Influenza, virus not identified</td>
        <td>http://id.who.int/icd/entity/145723401</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>J10 Influenza due to identified seasonal influenza virus</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>6142004</td>
        <td>Influenza (disorder)</td>
        <td>Equivalent</td>
        <td>6142004</td>
        <td>Influenza (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Measles</td>
        <td>The client is receiving vaccination to prevent against Measles</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Measles</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1F03 Measles</td>
        <td>http://id.who.int/icd/entity/1826431497</td>
        <td></td>
        <td>Equivalent</td>
        <td>B05 Measles</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>14189004</td>
        <td>Measles (disorder)</td>
        <td>Equivalent</td>
        <td>14189004</td>
        <td>Measles (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Lyme disease</td>
        <td>The client is receiving vaccination to prevent against Lyme disease</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Lyme disease</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1C1G Lyme borreliosis</td>
        <td>http://id.who.int/icd/entity/1600014919</td>
        <td></td>
        <td>Equivalent</td>
        <td>A69.2 Lyme disease</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>23502006</td>
        <td>Lyme disease (disorder)</td>
        <td>Equivalent</td>
        <td>23502006</td>
        <td>Lyme disease (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Influenza due to Influenza B virus</td>
        <td>The client is receiving vaccination to prevent against Influenza due to Influenza B virus</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Influenza due to Influenza B virus</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1E32 Influenza, virus not identified</td>
        <td>http://id.who.int/icd/entity/734892846</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>J11 Influenza, virus not identified</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>24662006</td>
        <td>Influenza caused by Influenza B virus (disorder)</td>
        <td>Equivalent</td>
        <td>24662006</td>
        <td>Influenza caused by Influenza B virus (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Disease due to Adenovirus</td>
        <td>The client is receiving vaccination to prevent against Disease due to Adenovirus</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Disease due to Adenovirus</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XN000 Adenovirus</td>
        <td>http://id.who.int/icd/entity/1075681120</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>B97.0 Adenovirus as the cause of diseases classified to other chapters</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>25225006</td>
        <td>Disease caused by Adenovirus (disorder)</td>
        <td>Equivalent</td>
        <td>25225006</td>
        <td>Disease caused by Adenovirus (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Pertussis</td>
        <td>The client is receiving vaccination to prevent against Pertussis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Pertussis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1C12.Z Whooping cough, unspecified</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>A37.9 Whooping cough, unspecified</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>27836007</td>
        <td>Pertussis (disorder)</td>
        <td>Equivalent</td>
        <td>27836007</td>
        <td>Pertussis (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Bronchitis</td>
        <td>The client is receiving vaccination to prevent against Bronchitis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Bronchitis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>CA20 Bronchitis</td>
        <td>http://id.who.int/icd/entity/11753425</td>
        <td></td>
        <td>Equivalent</td>
        <td>J40 Bronchitis, not specified as acute or chronic</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>32398004</td>
        <td>Bronchitis (disorder)</td>
        <td>Equivalent</td>
        <td>32398004</td>
        <td>Bronchitis (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Mumps</td>
        <td>The client is receiving vaccination to prevent against Mumps</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Mumps</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1D80 Mumps</td>
        <td>http://id.who.int/icd/entity/1208294714</td>
        <td></td>
        <td>Equivalent</td>
        <td>B26 Mumps</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>36989005</td>
        <td>Mumps (disorder)</td>
        <td>Equivalent</td>
        <td>36989005</td>
        <td>Mumps (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Varicella</td>
        <td>The client is receiving vaccination to prevent against Varicella</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Varicella</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1E90 Varicella</td>
        <td>http://id.who.int/icd/entity/1805574500</td>
        <td></td>
        <td>Equivalent</td>
        <td>B01 Varicella [chickenpox]</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>38907003</td>
        <td>Varicella (disorder)</td>
        <td>Equivalent</td>
        <td>38907003</td>
        <td>Varicella (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Viral hepatitis, type A</td>
        <td>The client is receiving vaccination to prevent against Viral hepatitis, type A</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Viral hepatitis, type A</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1E50.0 Acute hepatitis A</td>
        <td>http://id.who.int/icd/entity/991455762</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>B15 Acute hepatitis A</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>40468003</td>
        <td>Viral hepatitis, type A (disorder)</td>
        <td>Equivalent</td>
        <td>40468003</td>
        <td>Viral hepatitis, type A (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Viral hepatitis C</td>
        <td>The client is receiving vaccination to prevent against Viral hepatitis C</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Viral hepatitis C</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1E50.2 Acute hepatitis C</td>
        <td>http://id.who.int/icd/entity/1517862018</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>B17.1 Acute hepatitis C</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>50711007</td>
        <td>Viral hepatitis type C (disorder)</td>
        <td>Equivalent</td>
        <td>50711007</td>
        <td>Viral hepatitis type C (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Tuberculosis</td>
        <td>The client is receiving vaccination to prevent against Tuberculosis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Tuberculosis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1B1Z Tuberculosis, unspecified</td>
        <td>No URI for residuals</td>
        <td></td>
        <td>Related to</td>
        <td>A16 Respiratory tuberculosis, not confirmed bacteriologically or histologically</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>56717001</td>
        <td>Tuberculosis (disorder)</td>
        <td>Equivalent</td>
        <td>56717001</td>
        <td>Tuberculosis (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Type B viral hepatitis</td>
        <td>The client is receiving vaccination to prevent against Type B viral hepatitis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Type B viral hepatitis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1E50.1 Acute hepatitis B</td>
        <td>http://id.who.int/icd/entity/1337277167</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>B16 Acute hepatitis B</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>66071002</td>
        <td>Viral hepatitis type B (disorder)</td>
        <td>Equivalent</td>
        <td>66071002</td>
        <td>Viral hepatitis type B (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Haemophilus influenzae pneumonia</td>
        <td>The client is receiving vaccination to prevent against Haemophilus influenzae pneumonia</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Haemophilus influenzae pneumonia</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>CA40.02 Pneumonia due to Haemophilus influenzae</td>
        <td>http://id.who.int/icd/entity/732824952</td>
        <td></td>
        <td>Equivalent</td>
        <td>J14 Pneumonia due to Haemophilus influenzae</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>70036007</td>
        <td>Haemophilus influenzae pneumonia (disorder)</td>
        <td>Equivalent</td>
        <td>70036007</td>
        <td>Haemophilus influenzae pneumonia (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Tetanus</td>
        <td>Tetanus</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Tetanus</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1C13 Tetanus</td>
        <td>http://id.who.int/icd/entity/1793762788</td>
        <td></td>
        <td>Equivalent</td>
        <td>A35 Other tetanus</td>
        <td></td>
        <td>Source is broader than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>76902006</td>
        <td>Tetanus (disorder)</td>
        <td>Equivalent</td>
        <td>76902006</td>
        <td>Tetanus (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Enteritis due to rotavirus</td>
        <td>The client is receiving vaccination to prevent against Enteritis due to rotavirus</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Enteritis due to rotavirus</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1A22 Gastroenteritis due to Rotavirus</td>
        <td>http://id.who.int/icd/entity/840750347</td>
        <td></td>
        <td>Equivalent</td>
        <td>A08.0 Rotaviral enteritis</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>186150001</td>
        <td>Enteritis caused by rotavirus (disorder)</td>
        <td>Equivalent</td>
        <td>186150001</td>
        <td>Enteritis caused by rotavirus (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Human papilloma virus infection</td>
        <td>Human papilloma virus infection</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Human papilloma virus infection</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XN8JY Human papillomavirus</td>
        <td>http://id.who.int/icd/entity/871564532</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>240532009</td>
        <td>Human papillomavirus infection (disorder)</td>
        <td>Equivalent</td>
        <td>240532009</td>
        <td>Human papillomavirus infection (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Malignant melanoma</td>
        <td>The client is receiving vaccination to prevent against Malignant melanoma</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Malignant melanoma</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>XH4846 Malignant melanoma, NOS</td>
        <td>http://id.who.int/icd/entity/625791806</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>372244006</td>
        <td>Malignant melanoma (disorder)</td>
        <td>Equivalent</td>
        <td>372244006</td>
        <td>Malignant melanoma (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Acute poliomyelitis</td>
        <td>The client is receiving vaccination to prevent against Acute poliomyelitis</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Acute poliomyelitis</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1C81 Acute poliomyelitis</td>
        <td>http://id.who.int/icd/entity/588527933</td>
        <td></td>
        <td>Equivalent</td>
        <td>A80 Acute poliomyelitis</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>398102009</td>
        <td>Acute poliomyelitis (disorder)</td>
        <td>Equivalent</td>
        <td>398102009</td>
        <td>Acute poliomyelitis (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>Influenza due to Influenza A virus</td>
        <td>The client is receiving vaccination to prevent against Influenza due to Influenza A virus</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>Influenza due to Influenza A virus</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>1E32 Influenza, virus not identified</td>
        <td>http://id.who.int/icd/entity/1730556128</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>J11 Influenza, virus not identified</td>
        <td></td>
        <td>Source is narrower than target</td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>442438000</td>
        <td>Influenza caused by Influenza A virus (disorder)</td>
        <td>Equivalent</td>
        <td>442438000</td>
        <td>Influenza caused by Influenza A virus (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td></td>
        <td>COVID-19</td>
        <td>The client is receiving vaccination to prevent against COVID-19</td>
        <td>Input Option</td>
        <td>Codes</td>
        <td>COVID-19</td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>RA01 COVID-19</td>
        <td>http://id.who.int/icd/entity/1730556128</td>
        <td></td>
        <td>Equivalent</td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>840539006</td>
        <td>Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)</td>
        <td>Equivalent</td>
        <td>840539006</td>
        <td>Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)</td>
        <td>Equivalent</td>
        <td>Immunization.protocolApplied.targetDisease.valueCodeableConcept</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.G1.Administer Vaccine</td>
        <td>IMMZ.G1.DE32</td>
        <td>Due date of next dose</td>
        <td>Date on which the next vaccination should be administered, if a next dose is required.</td>
        <td></td>
        <td>Date</td>
        <td></td>
        <td></td>
        <td></td>
        <td>None</td>
        <td>Yes</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td>Compatible with HL7 FHIR date https://www.hl7.org/fhir/datatypes.html#date (e.g. YYYY-MM-DD)</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>
</div> 
  

### IMMZ.J Generate Reports 
The following table includes data elements for the reporting workflow.	

<div style=" width: 100%; height: 450px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: right;">
        <th>Activity ID</th>
        <th>Data Element ID</th>
        <th>Data Element Label</th>
        <th>Description and Definition</th>
        <th>Multiple Choice Type (if applicable)</th>
        <th>Data Type</th>
        <th>Input Options</th>
        <th>Calculation</th>
        <th>Quantity Sub-Type</th>
        <th>Validation Condition</th>
        <th>Editable</th>
        <th>Required</th>
        <th>Skip Logic</th>
        <th>Linkages to Aggregate Indicators</th>
        <th>Notes</th>
        <th>ICD-11Code</th>
        <th>ICD-11URI</th>
        <th>ICD-11Comments / Considerations</th>
        <th>ICD-11 Relationship</th>
        <th>ICD-10Code</th>
        <th>ICD-10Comments / Considerations</th>
        <th>ICD-10 Relationship</th>
        <th>ICD-9Code</th>
        <th>ICD-9Comments / Considerations</th>
        <th>ICD-9 Relationship</th>
        <th>LOINC version 2.68Code</th>
        <th>LOINC version 2.68Comments / Considerations</th>
        <th>LOINC version 2.69 Relationship</th>
        <th>ICHI (Beta 3)Code</th>
        <th>ICHIURI</th>
        <th>ICHIComments / Considerations</th>
        <th>ICHI Relationship</th>
        <th>ICFCode</th>
        <th>ICFComments / Considerations</th>
        <th>ICF Relationship</th>
        <th>SNOMED GPS Code</th>
        <th>SNOMED GPS Code Comments Considerations</th>
        <th>SNOMED GPSRelationship</th>
        <th>Snomed CT International VersionCode</th>
        <th>Snomed CT International VersionComments / Considerations</th>
        <th>SNOMED CTRelationship</th>
        <th>HL7 FHIR R4 - Resource</th>
        <th>HL7 FHIR R4 - Values</th>
        <th>HL7 FHIR R4 Code</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE1</td>
        <td>Report Identification</td>
        <td>A unique identifier for the instance of the report that has been generated</td>
        <td></td>
        <td>ID</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>118522005</td>
        <td>Identifier (Property)</td>
        <td>Equivalent</td>
        <td>MeasureReport.identifier</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE2</td>
        <td>Report Status</td>
        <td>The status of the report (for example, initial, complete, etc.)</td>
        <td></td>
        <td>Codes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td>Report codes found only related to an observation not a measure definition</td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>308552006</td>
        <td>Report Status (Finding)</td>
        <td>Equivalent</td>
        <td>MeasureReport.status</td>
        <td>MeasureReportStatus</td>
        <td>complete | pending | error</td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE3</td>
        <td>Report Type</td>
        <td>The type of report which has been generated (i.e. is the report a list of individuals, a summary, etc.)</td>
        <td></td>
        <td>Codes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td>Report codes found only related to an observation not a measure definition</td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>444677008</td>
        <td>Report Type (Record Artifact)</td>
        <td>Equivalent</td>
        <td>MeasureReport.type</td>
        <td>MeasureReportType</td>
        <td>summary</td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE4</td>
        <td>Report Indicator Code</td>
        <td>The indicator or measure definition which is being reported on (for example: Dropout rate, defaulters, etc.)</td>
        <td></td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>See: Indicators table for list of applicable values</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.measure</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE5</td>
        <td>Report Subject Area</td>
        <td>Location (facility or place) for which the data in the report is being represented.</td>
        <td></td>
        <td>ID</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.subject</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE6</td>
        <td>Report Generation Date</td>
        <td>The date on which the report was generated.</td>
        <td></td>
        <td>DateTime</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>399651003</td>
        <td>Date Of Report (Observable Entity)</td>
        <td>Equivalent</td>
        <td>MeasureReport.date</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE7</td>
        <td>Reporting Period</td>
        <td>The period for which data in the report has been included (for example: From 2021-01-01 until 2021-02-01)</td>
        <td></td>
        <td>DateTime</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.period</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE8</td>
        <td>Improvement Indicator</td>
        <td>Indicates to the receiver how to interpret the data (i.e. what constitutes an improvement or deterioration)</td>
        <td></td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.improvementNotation</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td></td>
        <td>Increase is Improvement</td>
        <td>Indicates that when the measure scores increase, the data can be interpreted as an improvement (used for Coverage indicator)</td>
        <td></td>
        <td>Codes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>increase</td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td></td>
        <td>Decrease is Improvement</td>
        <td>Indicates that when measure scores decrease, the data can be interpreted as an improvement (used for dropout, wastage, AEFI indicators)</td>
        <td></td>
        <td>Codes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>decrease</td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE9</td>
        <td>Report Generator / Author</td>
        <td>Indicates the organization, or location which is generating or producing the report</td>
        <td></td>
        <td>ID</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.reporter</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE10</td>
        <td>Report Measures</td>
        <td>Grouping of information related to the values of a measure for each population group in the report.</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>This grouping follows the named components of the indicators in annex C</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td></td>
        <td>Measure Identifier / Meaning</td>
        <td>Codifies the meaning of the group / measure. For example, if the report indicator is "Coverage"" each antigen / vaccine would have a measure (i.e. BCG Coverage or BCG Target)"</td>
        <td></td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.code</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td></td>
        <td>Measure Population</td>
        <td>Information related to the population of the reported measure/score in this group. For example, if the indicator being reported is "BCG Coverage"" it would represent the population for that grouping"</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.population</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE11</td>
        <td>Measure Numerator</td>
        <td>The count of individual objects (persons, doses, etc.) which was used as the numerator to calculate the measure score.</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Decimal Quantity</td>
        <td></td>
        <td>No</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td>Alternate representation to row 23, 24, 25, 26</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.population.count</td>
        <td></td>
        <td>numerator</td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE12</td>
        <td>Measure Denominator</td>
        <td>The count of individual objects (persons, doses, etc.) which was used as the denominator to calculate the measure score.</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Decimal Quantity</td>
        <td></td>
        <td>No</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.population.count</td>
        <td></td>
        <td>denominator</td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE13</td>
        <td>Measured Score</td>
        <td>The calculated score of the measure / indicator which is being reported on.</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Decimal Quantity</td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td>The element is the score of the numerator over denominator</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.measureScore</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td></td>
        <td>Dissagregations</td>
        <td>The stratification values within the group - each will track the Disaggregation of each indicator (column I of Annex C)</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>C</td>
        <td></td>
        <td></td>
        <td>This element will track the disaggregations for each named indicator in Annex C</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.stratifier</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE14</td>
        <td>Disaggregation Group Meaning</td>
        <td>Indicates the overall strata or disaggregation which is being represented in the report (for example:by gender, by region, by age group, etc.)</td>
        <td></td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.stratifier.code</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td></td>
        <td>Disaggregation Measures</td>
        <td>An individual grouping of population and measures for the specified stratification. For example, if the stratifier is “By-Sex” then there would be a “Male”, “Female”, “Intersex” stratum</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.stratifier.stratum</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE15</td>
        <td>Disaggregation Measure Identifier / Meaning</td>
        <td>The type or value of this stratum represents (male , female, region 1, dose 3, etc.)</td>
        <td></td>
        <td>Coding</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.stratifier.stratum.value</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td></td>
        <td>Disaggregation Measure Population</td>
        <td>A description of the population which makes up this stratifier</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>No</td>
        <td>O</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.stratifier.stratum.population</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE16</td>
        <td>Disaggregation Numerator</td>
        <td>The count of individual objects (persons, doses, etc.) which were used as the numerator for the disaggregation score.</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Decimal Quantity</td>
        <td></td>
        <td>No</td>
        <td></td>
        <td></td>
        <td></td>
        <td>This element will track the numerator computation of the each indicator in Annex C</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.stratifier.stratum.population.codeMeasureReport.group.stratifier.stratum.population.count</td>
        <td></td>
        <td>numerator</td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE17</td>
        <td>Disaggregation Denominator</td>
        <td>The count of individual objects (persons, doses, etc.) which were used as the denominator for disaggregation score</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Decimal Quantity</td>
        <td></td>
        <td>No</td>
        <td></td>
        <td></td>
        <td></td>
        <td>This element will track the numerator computation of the each indicator in Annex C</td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.stratifier.stratum.population.codeMeasureReport.group.stratifier.stratum.population.count</td>
        <td></td>
        <td>numerator</td>
      </tr>
      <tr>
        <td>IMMZ.J1. Generate Reports</td>
        <td>IMMZ.J1.DE18</td>
        <td>Disaggregated Score</td>
        <td>The computed score for this disaggregation, which is the numerator divided by the denominator for this collection (i.e. population) of records.For example - Report Indicator: CoverageMeasure: BCG Vaccination CoveragePopulation Numerator: All BCG doses given for periodPopulation Denominator: Population of Surviving InfantsDisaggregation Grouping: By-GenderDisaggregation Measure Meaning: MaleDisaggregation Population Numerator: # of males given BCGDisaggregation Population Denominator: # of surviving infant MalesDisaggregation Score: # of males given BCG / # of surviving infant Males</td>
        <td></td>
        <td>Quantity</td>
        <td></td>
        <td></td>
        <td>Decimal Quantity</td>
        <td></td>
        <td>No</td>
        <td>R</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>MeasureReport.group.stratifier.stratum.measureScore</td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>
</div> 
  

### IMMZ.Z Vaccine Library 
The following table includes data elements for the Vaccine Library, used to reference and group vaccine terminology.

<div style=" width: 100%; height: 400px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: right;">
        <th>Activity ID</th>
        <th>Data Element ID</th>
        <th>Data Element Label</th>
        <th>Description and Definition</th>
        <th>Multiple Choice Type (if applicable)</th>
        <th>Data Type</th>
        <th>Input Options</th>
        <th>Calculation</th>
        <th>Quantity Sub-Type</th>
        <th>Validation Condition</th>
        <th>Editable</th>
        <th>Required</th>
        <th>Skip Logic</th>
        <th>Linkages to Aggregate Indicators</th>
        <th>Notes</th>
        <th>ICD-11Code</th>
        <th>ICD-11 Description</th>
        <th>ICD-11URI</th>
        <th>ICD-11Comments / Considerations</th>
        <th>ICD-11 Relationship</th>
        <th>ICD-10Code</th>
        <th>ICD-10Comments / Considerations</th>
        <th></th>
        <th>ICD-9Code</th>
        <th>ICD-9Comments / Considerations</th>
        <th></th>
        <th>LOINC version 2.68Code</th>
        <th>LOINC version 2.68Comments / Considerations</th>
        <th></th>
        <th>ICHI (Beta 3)Code</th>
        <th>ICHIURI</th>
        <th>ICHIComments / Considerations</th>
        <th></th>
        <th>ICFCode</th>
        <th>ICFComments / Considerations</th>
        <th></th>
        <th>Snomed GPS Code</th>
        <th>Snomed GPS CodeComments / Considerations</th>
        <th></th>
        <th>Snomed CT International VersionCode</th>
        <th>Snomed CT International VersionComments / Considerations</th>
        <th></th>
        <th>HL7 FHIR R4 - Resource</th>
        <th>HL7 FHIR R4 - Values</th>
        <th>HL7 FHIR R4 Code</th>
        <th></th>
        <th>WHO ATC Code</th>
        <th>WHO ATC Name</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Activity ID</td>
        <td>Data Element ID</td>
        <td>Data Element Label</td>
        <td>Description and Definition</td>
        <td>Multiple Choice Type (if applicable)</td>
        <td>Data Type</td>
        <td>Input Options</td>
        <td>Calculation</td>
        <td>Quantity Sub-Type</td>
        <td>Validation Condition</td>
        <td>Editable</td>
        <td>Required</td>
        <td>Skip Logic</td>
        <td>Linkages to Aggregate Indicators</td>
        <td>Notes</td>
        <td>ICD-11 Code</td>
        <td></td>
        <td>ICD-11 URI</td>
        <td>ICD-11 Comments / Considerations</td>
        <td>ICD-11 Relationship</td>
        <td>ICD-10 Code</td>
        <td>ICD-10 Comments / Considerations</td>
        <td>ICD-10 Relationship</td>
        <td>ICD-9 Code</td>
        <td>ICD-9 Comments / Considerations</td>
        <td>ICD-9 Relationship</td>
        <td>LOINC version 2.68 Code</td>
        <td>LOINC version 2.68 Comments / Considerations</td>
        <td>LOINC version 2.68 Relationship</td>
        <td>ICHI (Beta 3) Code</td>
        <td>ICHI URI</td>
        <td>ICHI Comments / Considerations</td>
        <td>ICHI Relationship</td>
        <td>ICF Code</td>
        <td>ICF Comments / Considerations</td>
        <td>ICF Relationship</td>
        <td>SNOMED GPS Code</td>
        <td>SNOMED GPS Comments Considerations</td>
        <td>SNOMED GPS Relationship</td>
        <td>Snomed CT International Version Code</td>
        <td>Snomed CT International Version Comments / Considerations</td>
        <td>SNOMED CT Relationship</td>
        <td>HL7 FHIR R4 - Resource</td>
        <td>HL7 FHIR R4 - Values</td>
        <td>HL7 FHIR R4 Code</td>
        <td>HL7 FHIR R4 Relationship</td>
        <td>WHO ATC Code</td>
        <td>WHO ATC Name</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE1</td>
        <td>BCG Vaccines</td>
        <td>Vaccine terminology codes for Bacillus Calmette–Guérin (BCG)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.1, IMMZ.IND.29</td>
        <td></td>
        <td>XM8142</td>
        <td>Tuberculosis, live attenuated</td>
        <td>http://id.who.int/icd/entity/1773165662</td>
        <td>Index Term: BCG vaccineExtension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>418268006</td>
        <td>Product containing antigen of live attenuated Mycobacterium bovis (medicinal product) Bacillus Calmette-Guerin antigen-containing product</td>
        <td></td>
        <td>418268006</td>
        <td>Product containing attenuated Bacillus Calmette Guerin (medicinal product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>L03AX03</td>
        <td>BCG Vaccine</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE1</td>
        <td>BCG Vaccines</td>
        <td>Vaccine terminology codes for Bacillus Calmette–Guérin (BCG)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.1, IMMZ.IND.29</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>774702006</td>
        <td>Product containing only antigen of live attenuated Mycobacterium bovis (medicinal product) Bacillus Calmette-Guerin antigen only product</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE2</td>
        <td>Cholera Vaccines</td>
        <td>Vaccine terminology codes for Cholera</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM29K4</td>
        <td>Cholera vaccines</td>
        <td>http://id.who.int/icd/entity/1471383174</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836383009</td>
        <td>Vaccine product containing Vibrio cholerae antigen (medicinal product)</td>
        <td></td>
        <td>35736007</td>
        <td>Cholera vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AE</td>
        <td>Cholera vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE2</td>
        <td>Cholera Vaccines</td>
        <td>Vaccine terminology codes for Cholera</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>409579003</td>
        <td>Inactivated whole-cell/recombinant-B-subunit cholera vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE2</td>
        <td>Cholera Vaccines</td>
        <td>Vaccine terminology codes for Cholera</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>409580000</td>
        <td>CVD 103-HgR live attenuated oral cholera vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE2</td>
        <td>Cholera Vaccines</td>
        <td>Vaccine terminology codes for Cholera</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1001000221103</td>
        <td>Vaccine product containing only inactivated whole Vibrio cholerae antigen in oral dose form (medicinal product form)</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AE01</td>
        <td>cholera, inactivated, whole cell</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE2</td>
        <td>Cholera Vaccines</td>
        <td>Vaccine terminology codes for Cholera</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1011000221100</td>
        <td>Vaccine product containing only live attenuated Vibrio cholerae antigen in oral dose form (medicinal product form)</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AE02</td>
        <td>cholera, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE2</td>
        <td>Cholera Vaccines</td>
        <td>Vaccine terminology codes for Cholera</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AE51</td>
        <td>cholera, combinations with typhoid vaccine, inactivated, whole cell</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>XM8AW3</td>
        <td>Diphtheria vaccines</td>
        <td>http://id.who.int/icd/entity/111418983</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836381006</td>
        <td>Vaccine product containing Corynebacterium diphtheriae antigen (medicinal product)</td>
        <td></td>
        <td>412373007</td>
        <td>Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>48028008</td>
        <td>Haemophilus b polysaccharide conjugate (diphtheria toxoid conjugate) vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>68113000</td>
        <td>Haemophilus b oligosaccharide conjugate(diphtheria CRM&gt;197&lt; protein conjugate) vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333691006</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial+prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333693009</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333696001</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>346402006</td>
        <td>Diphtheria single antigen vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>775641005</td>
        <td>Vaccine product containing only Clostridium tetani toxoid adsorbed and Corynebacterium diphtheriae toxoid antigens (medicinal product)</td>
        <td></td>
        <td>350327004</td>
        <td>Diphtheria + tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>396457007</td>
        <td>Diphtheria, acellular pertussis, hepatitis B and inactivated polio vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414002009</td>
        <td>Diphtheria + tetanus + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414003004</td>
        <td>Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414004005</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414005006</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414006007</td>
        <td>Diphtheria + tetanus + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA01</td>
        <td>diphtheria-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>421245007</td>
        <td>Diphtheria + pertussis + tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426081003</td>
        <td>Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426361005</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426842004</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus + recombinant haemophilus influenzae type B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427048007</td>
        <td>Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427542001</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427682002</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis toxoid 25micrograms injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427806004</td>
        <td>Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>428214002</td>
        <td>Diphtheria vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AF</td>
        <td>Diphtheria vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AF01</td>
        <td>diphtheria toxoid</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA06</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA09</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA11</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA13</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA05</td>
        <td>diphtheria-hepatitis B-pertussis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA07</td>
        <td>diphtheria-hepatitis B-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA02</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA12</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA03</td>
        <td>diphtheria-rubella-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AM51</td>
        <td>tetanus toxoid, combinations with diphtheria toxoid</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE3</td>
        <td>Diphtheria Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.42</td>
        <td></td>
        <td>XM31Q8</td>
        <td>Tetanus, diptheria, acellular pertussis</td>
        <td>http://id.who.int/icd/entity/1436712068</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30936-9</td>
        <td>Corynebacterium diphtheriae+Clostridium tetani+Bordetella pertussis dose count in combination vaccine</td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>412373007</td>
        <td>Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427806004</td>
        <td>Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426842004</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus + recombinant haemophilus influenzae type B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333693009</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333696001</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333691006</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial+prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426971004</td>
        <td>Haemophilus influenzae Type b + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>425555004</td>
        <td>Haemophilus influenzae Type b + tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>XM11V3</td>
        <td>Haemophilus influenzae B vaccines</td>
        <td>http://id.who.int/icd/entity/425304593</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836380007</td>
        <td>Vaccine product containing Haemophilus influenzae type B antigen (medicinal product)</td>
        <td></td>
        <td>333680004</td>
        <td>Haemophilus influenzae Type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AG</td>
        <td>Haemophilus influenzae B vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>347647005</td>
        <td>Haemophilus influenzae Type b vaccine injection (pdr for recon)+diluent (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836500008</td>
        <td>Vaccine product containing only Haemophilus influenzae type B and Neisseria meningitidis serogroup C antigens (medicinal product)</td>
        <td></td>
        <td>423912009</td>
        <td>Haemophilus influenzae type b + Meningococcal group C vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427048007</td>
        <td>Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427514003</td>
        <td>Haemophilus influenzae type b 7.5micrograms/recombinant hepatitis B virus surface antigen 5micrograms injection solution 0.5mL vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA06</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA09</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA11</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA13</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA08</td>
        <td>haemophilus influenzae B and hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA04</td>
        <td>haemophilus influenzae B and poliomyelitis</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AG53</td>
        <td>haemophilus influenzae B, combinations with meningococcus C, conjugated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AG52</td>
        <td>haemophilus influenzae B, combinations with pertussis and toxoids</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AG51</td>
        <td>haemophilus influenzae B, combinations with toxoids</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AG01</td>
        <td>haemophilus influenzae B, purified antigen conjugated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AL52</td>
        <td>pneumococcus purified polysaccharides antigen and haemophilus influenzae, conjugated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE4</td>
        <td>Haemophilus influenzae B Vaccines</td>
        <td>Vaccine terminology codes for Haemophilus influenzae B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.9, IMMZ.IND.37</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30938-5</td>
        <td>Haemophilus influenzae B dose count in combination vaccine</td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE5</td>
        <td>Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333708002</td>
        <td>Hepatitis A 1440u//typhoid 25mcg vaccine injection solution 1mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE5</td>
        <td>Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>406324009</td>
        <td>Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE5</td>
        <td>Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>406325005</td>
        <td>Hepatitis A vaccine injection suspension 1 mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE5</td>
        <td>Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>348045000</td>
        <td>Hepatitis A vaccine injection suspension prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE5</td>
        <td>Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM2A12</td>
        <td>Hepatitis A, inactivated, whole virus</td>
        <td>http://id.who.int/icd/entity/732930532</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836375003</td>
        <td>Vaccine product containing Hepatitis A virus antigen (medicinal product)</td>
        <td></td>
        <td>14745005</td>
        <td>Hepatitis A virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BC02</td>
        <td>hepatitis A, inactivated, whole virus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE5</td>
        <td>Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871803007</td>
        <td>Vaccine product containing only Hepatitis A and Hepatitis B virus antigens (medicinal product)Hepatitis A and Hepatitis B virus antigens only vaccine product</td>
        <td></td>
        <td>333702001</td>
        <td>Hepatitis A+B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE5</td>
        <td>Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333707007</td>
        <td>Hepatitis A+typhoid vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA10</td>
        <td>typhoid-hepatitis A</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30937-7</td>
        <td>Hepatitis B virus dose count in combination vaccine</td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426842004</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus + recombinant haemophilus influenzae type B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427542001</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426081003</td>
        <td>Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426361005</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>396457007</td>
        <td>Diphtheria, acellular pertussis, hepatitis B and inactivated polio vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871806004</td>
        <td>Vaccine product containing only Haemophilus influenzae type B and Hepatitis B virus antigens (medicinal product)Haemophilus influenzae type B and Hepatitis B virus antigens only vaccine product</td>
        <td></td>
        <td>426971004</td>
        <td>Haemophilus influenzae Type b + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>698026000</td>
        <td>Haemophilus influenzae b (Ross strain) capsular polysaccharide Meningococcal Protein Conjugate Vaccine/Hepatitis B Surface Antigen Vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427048007</td>
        <td>Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427514003</td>
        <td>Haemophilus influenzae type b 7.5micrograms/recombinant hepatitis B virus surface antigen 5micrograms injection solution 0.5mL vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333569009</td>
        <td>Hepatitis B vaccine 10micrograms/mL injection suspension 1mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333568001</td>
        <td>Hepatitis B vaccine 10micrograms/mL injection suspension 1mL vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333573007</td>
        <td>Hepatitis B vaccine 40micrograms/mL injection suspension 1ml vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>412403009</td>
        <td>Hepatitis B virus recombinant vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>XM9V38</td>
        <td>Hepatitis B, purified antigen</td>
        <td>http://id.who.int/icd/entity/1843933938</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836374004</td>
        <td>Vaccine product containing Hepatitis B virus antigen (medicinal product)</td>
        <td></td>
        <td>34689006</td>
        <td>Hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>425638005</td>
        <td>Recombinant hepatitis B virus surface antigen 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms injection solution 0.5mL prefilled syringe (product</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333702001</td>
        <td>Hepatitis A+B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA09</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA11</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA13</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA05</td>
        <td>diphtheria-hepatitis B-pertussis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA07</td>
        <td>diphtheria-hepatitis B-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA12</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA08</td>
        <td>haemophilus influenzae B and hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE6</td>
        <td>Hepatitis B Vaccines</td>
        <td>Vaccine terminology codes for Hepatitis B</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.3, IMMZ.IND.31</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BC01</td>
        <td>hepatitis B, purified antigen</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE7</td>
        <td>HPV Vaccines</td>
        <td>Vaccine terminology codes for Human Papillomavirus (HPV)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.6, IMMZ.IND.34</td>
        <td></td>
        <td>XM9QP0</td>
        <td>Human Papillomarvirus vaccine</td>
        <td>http://id.who.int/icd/entity/1143858830</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836379009</td>
        <td>Vaccine product containing Human papillomavirus antigen (medicinal product)</td>
        <td></td>
        <td>424519000</td>
        <td>Human papillomavirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BM</td>
        <td>Papillomavirus vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE7</td>
        <td>HPV Vaccines</td>
        <td>Vaccine terminology codes for Human Papillomavirus (HPV)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.6, IMMZ.IND.34</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BM02</td>
        <td>papillomavirus (human types 16, 18)</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE7</td>
        <td>HPV Vaccines</td>
        <td>Vaccine terminology codes for Human Papillomavirus (HPV)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.6, IMMZ.IND.34</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BM01</td>
        <td>papillomavirus (human types 6, 11, 16, 18)</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE7</td>
        <td>HPV Vaccines</td>
        <td>Vaccine terminology codes for Human Papillomavirus (HPV)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.6, IMMZ.IND.34</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BM03</td>
        <td>papillomavirus (human types 6, 11, 16, 18, 31, 33, 45, 52, 58)</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE8</td>
        <td>Japanese Encephalitis Vaccines</td>
        <td>Vaccine terminology codes for Japanese Encephalitis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.17, IMMZ.IND.45</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333698000</td>
        <td>Japanese B encephalitis vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE8</td>
        <td>Japanese Encephalitis Vaccines</td>
        <td>Vaccine terminology codes for Japanese Encephalitis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.17, IMMZ.IND.45</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836378001</td>
        <td>Vaccine product containing Japanese encephalitis virus antigen (medicinal product)</td>
        <td></td>
        <td>333697005</td>
        <td>Japanese B encephalitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE8</td>
        <td>Japanese Encephalitis Vaccines</td>
        <td>Vaccine terminology codes for Japanese Encephalitis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.17, IMMZ.IND.45</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BA02</td>
        <td>encephalitis, Japanese, inactivated, whole virus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE8</td>
        <td>Japanese Encephalitis Vaccines</td>
        <td>Vaccine terminology codes for Japanese Encephalitis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.17, IMMZ.IND.45</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BA03</td>
        <td>encephalitis, Japanese, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>440075005</td>
        <td>Live measles + rubella vaccine injection dose form (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD53</td>
        <td>measles, combinations with rubella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>419550004</td>
        <td>Measles + mumps + rubella + varicella vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD54</td>
        <td>measles, combinations with mumps, rubella and varicella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>XM28X5</td>
        <td>Measles vaccines</td>
        <td>http://id.who.int/icd/entity/1165620955</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836382004</td>
        <td>Vaccine product containing Measles morbillivirus antigen (medicinal product)</td>
        <td></td>
        <td>386012008</td>
        <td>Measles vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD</td>
        <td>Measles vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>400449000</td>
        <td>Measles virus vaccine, live, 0.5mL/vial powder for injection (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30940-1</td>
        <td>Measles virus+Mumps virus+Rubella virus dose count in combination vaccine</td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>61153008</td>
        <td>Measles, mumps and rubella vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD52</td>
        <td>measles, combinations with mumps and rubella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>347649008</td>
        <td>Measles/mumps/rubella vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>419771007</td>
        <td>Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD01</td>
        <td>measles, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE9</td>
        <td>Measles Vaccines</td>
        <td>Vaccine terminology codes for Measles</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.5, IMMZ.IND.33</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD51</td>
        <td>measles, combinations with mumps, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>XM2WV4</td>
        <td>Meningococcal vaccines</td>
        <td>http://id.who.int/icd/entity/1716231214</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836401009</td>
        <td>Vaccine product containing Neisseria meningitidis antigen (medicinal product)</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AH</td>
        <td>Meningococcal vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871871008</td>
        <td>Vaccine product containing only Neisseria meningitidis serogroup A and C antigens (medicinal product)</td>
        <td></td>
        <td>421281005</td>
        <td>Meningococcal A+C vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>359068008</td>
        <td>Meningococcal C conjugate vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333668007</td>
        <td>Meningococcal C conjugate vaccine injection solution prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333670003</td>
        <td>Meningococcal C conjugate vaccine injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333669004</td>
        <td>Meningococcal C conjugate vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871866001</td>
        <td>Vaccine product containing only Neisseria meningitidis serogroup C antigen (medicinal product)</td>
        <td></td>
        <td>422069000</td>
        <td>Meningococcal group C vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871873006</td>
        <td>Vaccine product containing only Neisseria meningitidis serogroup A, C, W135 and Y antigens (medicinal product)</td>
        <td></td>
        <td>420261000</td>
        <td>Meningococcal groups A+C+W135+Y vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>347659009</td>
        <td>Meningococcal polysaccharide vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>698026000</td>
        <td>Haemophilus influenzae b (Ross strain) capsular polysaccharide Meningococcal Protein Conjugate Vaccine/Hepatitis B Surface Antigen Vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>423912009</td>
        <td>Haemophilus influenzae type b + Meningococcal group C vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AH02</td>
        <td>other meningococcal monovalent purified polysaccharides antigen</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE10</td>
        <td>Meningococcal Vaccines</td>
        <td>Vaccine terminology codes for Meningococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.7, IMMZ.IND.35</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AH05</td>
        <td>other meningococcal polyvalent purified polysaccharides antigen</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM28X5</td>
        <td>Measles vaccines</td>
        <td>http://id.who.int/icd/entity/1165620955</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>419550004</td>
        <td>Measles + mumps + rubella + varicella vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD54</td>
        <td>measles, combinations with mumps, rubella and varicella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30940-1</td>
        <td>Measles virus+Mumps virus+Rubella virus dose count in combination vaccine</td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>61153008</td>
        <td>Measles, mumps and rubella vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD52</td>
        <td>measles, combinations with mumps and rubella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>347649008</td>
        <td>Measles/mumps/rubella vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>419771007</td>
        <td>Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM1131</td>
        <td>Mumps vaccine</td>
        <td>http://id.who.int/icd/entity/210635131</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836498007</td>
        <td>Vaccine product containing Mumps orthorubulavirus antigen (medicinal product)</td>
        <td></td>
        <td>90043005</td>
        <td>Mumps live virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>376997008</td>
        <td>Mumps virus vaccine live injection solution 0.5mL vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BE</td>
        <td>Mumps vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD51</td>
        <td>measles, combinations with mumps, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BJ51</td>
        <td>rubella, combinations with mumps, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE11</td>
        <td>Mumps Vaccines</td>
        <td>Vaccine terminology codes for Mumps</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BE01</td>
        <td>mumps, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>XM43M9</td>
        <td>Pertussis vaccines</td>
        <td>http://id.who.int/icd/entity/1326557479</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>449019003</td>
        <td>Acellular pertussis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>449240007</td>
        <td>Diphtheria + acellular pertussis adsorbed + inactivated polio + tetanus toxoids vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>412373007</td>
        <td>Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871875004</td>
        <td>Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens (medicinal product)</td>
        <td></td>
        <td>421245007</td>
        <td>Diphtheria + pertussis + tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414003004</td>
        <td>Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414004005</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426842004</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus + recombinant haemophilus influenzae type B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427542001</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414005006</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426081003</td>
        <td>Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426361005</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427682002</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis toxoid 25micrograms injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871889009</td>
        <td>Vaccine product containing only acellular Bordetella pertussis and Corynebacterium diphtheriae and Hepatitis B virus and inactivated whole Human poliovirus antigens (medicinal product)</td>
        <td></td>
        <td>396457007</td>
        <td>Diphtheria, acellular pertussis, hepatitis B and inactivated polio vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333693009</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333696001</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333691006</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial+prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427048007</td>
        <td>Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>61602008</td>
        <td>Pertussis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AJ</td>
        <td>Pertussis vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>425638005</td>
        <td>Recombinant hepatitis B virus surface antigen 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA06</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA09</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA11</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA13</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA05</td>
        <td>diphtheria-hepatitis B-pertussis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA02</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA12</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AG52</td>
        <td>haemophilus influenzae B, combinations with pertussis and toxoids</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AJ01</td>
        <td>pertussis, inactivated, whole cell</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AJ51</td>
        <td>pertussis, inactivated, whole cell, combinations with toxoids</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AJ02</td>
        <td>pertussis, purified antigen</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AJ52</td>
        <td>pertussis, purified antigen, combinations with toxoids</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE12</td>
        <td>Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Pertussis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.14, IMMZ.IND.42</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE13</td>
        <td>Pneumococcal Vaccines</td>
        <td>Vaccine terminology codes for Pneumococcal</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.8, IMMZ.IND.36</td>
        <td></td>
        <td>XM9EM7</td>
        <td>Pneumococcal vaccines</td>
        <td>http://id.who.int/icd/entity/201368617</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836398006</td>
        <td>Vaccine product containing Streptococcus pneumoniae antigen (medicinal product)</td>
        <td></td>
        <td>333598008</td>
        <td>Pneumococcal vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AL</td>
        <td>Pneumococcal vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>449240007</td>
        <td>Diphtheria + acellular pertussis adsorbed + inactivated polio + tetanus toxoids vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414002009</td>
        <td>Diphtheria + tetanus + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414003004</td>
        <td>Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414004005</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426842004</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus + recombinant haemophilus influenzae type B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427542001</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414005006</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414006007</td>
        <td>Diphtheria + tetanus + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426361005</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>396457007</td>
        <td>Diphtheria, acellular pertussis, hepatitis B and inactivated polio vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427048007</td>
        <td>Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>125688000</td>
        <td>Inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>125690004</td>
        <td>Live poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333603000</td>
        <td>Poliomyelitis inactivated vaccine injection (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>XM0N50</td>
        <td>Poliomyelitis vaccines</td>
        <td>http://id.who.int/icd/entity/1943937130</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1031000221108</td>
        <td>Vaccine product containing Human poliovirus antigen (medicinal product)</td>
        <td></td>
        <td>111164008</td>
        <td>Poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF</td>
        <td>Poliomyelitis vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA06</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA09</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA02</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA12</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA01</td>
        <td>diphtheria-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA04</td>
        <td>haemophilus influenzae B and poliomyelitis</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF04</td>
        <td>poliomyelitis oral, bivalent, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF01</td>
        <td>poliomyelitis oral, monovalent, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF02</td>
        <td>poliomyelitis oral, trivalent, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE14</td>
        <td>Polio Vaccines</td>
        <td>Vaccine terminology codes for Polio</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.4, IMMZ.IND.32</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF03</td>
        <td>poliomyelitis, trivalent, inactivated, whole virus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE15</td>
        <td>Rabies Vaccines</td>
        <td>Vaccine terminology codes for Rabies</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333607004</td>
        <td>Rabies inactivated vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE15</td>
        <td>Rabies Vaccines</td>
        <td>Vaccine terminology codes for Rabies</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM6T09</td>
        <td>Rabies vaccine</td>
        <td>http://id.who.int/icd/entity/647091749</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836393002</td>
        <td>Vaccine product containing Rabies lyssavirus antigen (medicinal product)</td>
        <td></td>
        <td>333606008</td>
        <td>Rabies vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BG</td>
        <td>Rabies vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE15</td>
        <td>Rabies Vaccines</td>
        <td>Vaccine terminology codes for Rabies</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>125715001</td>
        <td>Rabies vaccine, adsorbed (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE15</td>
        <td>Rabies Vaccines</td>
        <td>Vaccine terminology codes for Rabies</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>3526007</td>
        <td>Rabies vaccine, human (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE15</td>
        <td>Rabies Vaccines</td>
        <td>Vaccine terminology codes for Rabies</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1131000221109</td>
        <td>Vaccine product containing only inactivated whole Rabies lyssavirus antigen (medicinal product)</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BG01</td>
        <td>rabies, inactivated, whole virus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE16</td>
        <td>Rotavirus Vaccines</td>
        <td>Vaccine terminology codes for Rotavirus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.10, IMMZ.IND.38</td>
        <td></td>
        <td>XM1CE0</td>
        <td>Rotavirus diarrhoea vaccines</td>
        <td>http://id.who.int/icd/entity/1132895780</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836387005</td>
        <td>Vaccine product containing Rotavirus antigen (medicinal product) Rotavirus antigen-containing vaccine product</td>
        <td></td>
        <td>116077000</td>
        <td>Rotavirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE16</td>
        <td>Rotavirus Vaccines</td>
        <td>Vaccine terminology codes for Rotavirus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.10, IMMZ.IND.38</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1081000221109</td>
        <td>Vaccine product containing only live attenuated Rotavirus antigen (medicinal product)</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BH01</td>
        <td>ROTA VIRUS, LIVE ATTENUATED</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE16</td>
        <td>Rotavirus Vaccines</td>
        <td>Vaccine terminology codes for Rotavirus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.10, IMMZ.IND.38</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BH02</td>
        <td>ROTAVIRUS,PENTAVALENT,LIVE,REASSORTED</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>440075005</td>
        <td>Live measles + rubella vaccine injection dose form (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD53</td>
        <td>measles, combinations with rubella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>419550004</td>
        <td>Measles + mumps + rubella + varicella vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD54</td>
        <td>measles, combinations with mumps, rubella and varicella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>30940-1</td>
        <td>Measles virus+Mumps virus+Rubella virus dose count in combination vaccine</td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>61153008</td>
        <td>Measles, mumps and rubella vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD52</td>
        <td>measles, combinations with mumps and rubella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>347649008</td>
        <td>Measles/mumps/rubella vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>419771007</td>
        <td>Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>347653005</td>
        <td>Rubella live vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>XM7PP1</td>
        <td>Rubella vaccine</td>
        <td>http://id.who.int/icd/entity/164703371</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836388000</td>
        <td>Vaccine product containing Rubella virus antigen (medicinal product) Rubella virus antigen-containing vaccine product</td>
        <td></td>
        <td>386013003</td>
        <td>Rubella vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BJ</td>
        <td>Rubella vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA03</td>
        <td>diphtheria-rubella-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BJ51</td>
        <td>rubella, combinations with mumps, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE17</td>
        <td>Rubella Vaccines</td>
        <td>Vaccine terminology codes for Rubella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.11, IMMZ.IND.39</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BJ01</td>
        <td>rubella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>XM1LR5</td>
        <td>Influenza vaccines</td>
        <td>http://id.who.int/icd/entity/751881015</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836377006</td>
        <td>Vaccine product containing Influenza virus antigen (medicinal product)</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1181000221105</td>
        <td>Vaccine product containing only Influenza virus antigen (medicinal product)Influenza virus antigen only vaccine product</td>
        <td></td>
        <td>346525009</td>
        <td>Inactivated Influenza surface antigen sub-unit vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>348047008</td>
        <td>Inactivated Influenza surface antigen sub-unit vaccine prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>419562000</td>
        <td>Inactivated Influenza surface antigen virosome vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>418707004</td>
        <td>Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>408752008</td>
        <td>Inactivated influenza split virion vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BB02</td>
        <td>influenza, inactivated, split virus or surface antigen</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>348046004</td>
        <td>Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>400788004</td>
        <td>Influenza virus vaccine triv 45mcg/0.5mL injection solution 0.5mL syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>400564003</td>
        <td>Influenza virus vaccine trivalent 45mcg/0.5mL injection solution 5mL vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>409269001</td>
        <td>Intranasal influenza live virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>430410002</td>
        <td>Product containing Influenza virus vaccine in nasal dose form (medicinal product form)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871768005</td>
        <td>Vaccine product containing only Influenza virus antigen in nasal dose form (medicinal product form)Influenza virus antigen only vaccine product in nasal dose form</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BB</td>
        <td>Influenza vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>XM8857</td>
        <td>Influenza vaccine, inactivated, whole virus</td>
        <td>http://id.who.int/icd/entity/1901715257</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BB01</td>
        <td>influenza, inactivated, whole virus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BB03</td>
        <td>influenza, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE18</td>
        <td>Seasonal Influenza Vaccines</td>
        <td>Vaccine terminology codes for Seasonal influenza</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.19</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BB04</td>
        <td>influenza, virus like particles</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>XM5L44</td>
        <td>Tetanus vaccines</td>
        <td>http://id.who.int/icd/entity/1063237844</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333549004</td>
        <td>Adsorbed diphtheria+tetanus vaccine injection suspension 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>347664008</td>
        <td>Adsorbed tetanus vaccine injection solution ampule (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333641007</td>
        <td>Adsorbed tetanus vaccine injection solution prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>449240007</td>
        <td>Diphtheria + acellular pertussis adsorbed + inactivated polio + tetanus toxoids vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>412373007</td>
        <td>Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>421245007</td>
        <td>Diphtheria + pertussis + tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427806004</td>
        <td>Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414002009</td>
        <td>Diphtheria + tetanus + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414003004</td>
        <td>Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414004005</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426842004</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus + recombinant haemophilus influenzae type B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427542001</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414005006</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426081003</td>
        <td>Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414006007</td>
        <td>Diphtheria + tetanus + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>350327004</td>
        <td>Diphtheria + tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426361005</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427682002</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis toxoid 25micrograms injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>766203003</td>
        <td>Haemophilus b polysaccharide 10micrograms/tetanus toxoid 30micrograms powder for conventional release solution for injection vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333693009</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333696001</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333691006</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial+prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>425555004</td>
        <td>Haemophilus influenzae Type b + tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427048007</td>
        <td>Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>425638005</td>
        <td>Recombinant hepatitis B virus surface antigen 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>375054005</td>
        <td>Tetanus toxoid, adsorbed 20u/mL 0.5mL injection solution ampule (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333621002</td>
        <td>Tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AM</td>
        <td>Tetanus vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA06</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA09</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA11</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA13</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA05</td>
        <td>diphtheria-hepatitis B-pertussis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA07</td>
        <td>diphtheria-hepatitis B-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA02</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA12</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA01</td>
        <td>diphtheria-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA03</td>
        <td>diphtheria-rubella-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AM01</td>
        <td>tetanus toxoid</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AM51</td>
        <td>tetanus toxoid, combinations with diphtheria toxoid</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AM52</td>
        <td>tetanus toxoid, combinations with tetanus immunoglobulin</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE19</td>
        <td>Tetanus Vaccines</td>
        <td>Vaccine terminology codes for Tetanus</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.15, IMMZ.IND.43</td>
        <td></td>
        <td>XM31Q8</td>
        <td>Tetanus, diptheria, acellular pertussis</td>
        <td>http://id.who.int/icd/entity/1436712068</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE20</td>
        <td>Tick-Borne Encephalitis Vaccines</td>
        <td>Vaccine terminology codes for Tick-Borne Encephalitis</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM8MP6</td>
        <td>Encephalitis, tick borne, inactivated, whole virus</td>
        <td>http://id.who.int/icd/entity/1955820655</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836403007</td>
        <td>Vaccine product containing Tick-borne encephalitis virus antigen (medicinal product) Tick-borne encephalitis virus antigen-containing vaccine product</td>
        <td></td>
        <td>333699008</td>
        <td>Tick-borne encephalitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BA01</td>
        <td>encephalitis, tick borne, inactivated, whole virus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333708002</td>
        <td>Hepatitis A 1440u//typhoid 25mcg vaccine injection solution 1mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333707007</td>
        <td>Hepatitis A+typhoid vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA10</td>
        <td>typhoid-hepatitis A</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>412324003</td>
        <td>Typhoid VI polysaccharide vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>346696005</td>
        <td>Typhoid live oral vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>346639000</td>
        <td>Typhoid polysaccharide vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>348070000</td>
        <td>Typhoid polysaccharide vaccine 25micrograms injection suspension 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>XM8BU8</td>
        <td>Typhoid vaccines</td>
        <td>http://id.who.int/icd/entity/715198108</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>89428009</td>
        <td>Typhoid vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AP</td>
        <td>Typhoid vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>346697001</td>
        <td>Typhoid whole cell vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>52628005</td>
        <td>Typhoid-paratyphoid vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AE51</td>
        <td>cholera, combinations with typhoid vaccine, inactivated, whole cell</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AP10</td>
        <td>typhoid, combinations with paratyphi types</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AP02</td>
        <td>typhoid, inactivated, whole cell</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AP01</td>
        <td>typhoid, oral, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE21</td>
        <td>Typhoid Vaccines</td>
        <td>Vaccine terminology codes for Typhoid</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.18, IMMZ.IND.46</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AP03</td>
        <td>typhoid, purified polysaccharide antigen</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE22</td>
        <td>Varicella Vaccines</td>
        <td>Vaccine terminology codes for Varicella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.40</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871908002</td>
        <td>Vaccine product containing only Human alphaherpesvirus 3 and Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens (medicinal product)</td>
        <td></td>
        <td>419550004</td>
        <td>Measles + mumps + rubella + varicella vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BD54</td>
        <td>measles, combinations with mumps, rubella and varicella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE22</td>
        <td>Varicella Vaccines</td>
        <td>Vaccine terminology codes for Varicella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.40</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>419771007</td>
        <td>Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE22</td>
        <td>Varicella Vaccines</td>
        <td>Vaccine terminology codes for Varicella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.40</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>412530002</td>
        <td>Varicella virus live vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE22</td>
        <td>Varicella Vaccines</td>
        <td>Vaccine terminology codes for Varicella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.40</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>108729007</td>
        <td>Varicella virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE22</td>
        <td>Varicella Vaccines</td>
        <td>Vaccine terminology codes for Varicella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.40</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>2221000221107</td>
        <td>Vaccine product containing only live attenuated Human alphaherpesvirus 3 antigen (medicinal product)</td>
        <td></td>
        <td>407746005</td>
        <td>Varicella-zoster live attenuated vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE22</td>
        <td>Varicella Vaccines</td>
        <td>Vaccine terminology codes for Varicella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.40</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>407933006</td>
        <td>Varicella-zoster live attenuated vaccine injection (pdr for recon)+solvent (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE22</td>
        <td>Varicella Vaccines</td>
        <td>Vaccine terminology codes for Varicella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.40</td>
        <td></td>
        <td>XM8DG3</td>
        <td>Varicella zoster vaccines</td>
        <td>http://id.who.int/icd/entity/643642263</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836495005</td>
        <td>Vaccine product containing Human alphaherpesvirus 3 antigen (medicinal product)</td>
        <td></td>
        <td>407737004</td>
        <td>Varicella-zoster vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BK</td>
        <td>Varicella zoster vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE22</td>
        <td>Varicella Vaccines</td>
        <td>Vaccine terminology codes for Varicella</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.12, IMMZ.IND.40</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BK01</td>
        <td>varicella, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE23</td>
        <td>Yellow Fever Vaccines</td>
        <td>Vaccine terminology codes for Yellow Fever</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.16, IMMZ.IND.44</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333652001</td>
        <td>Yellow fever live vaccine injection solution vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE23</td>
        <td>Yellow Fever Vaccines</td>
        <td>Vaccine terminology codes for Yellow Fever</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.16, IMMZ.IND.44</td>
        <td></td>
        <td>XM0N24</td>
        <td>Yellow fever vaccine</td>
        <td>http://id.who.int/icd/entity/187973104</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>836385002</td>
        <td>Vaccine product containing Yellow fever virus antigen (medicinal product) Yellow fever virus antigen-containing vaccine product</td>
        <td></td>
        <td>56844000</td>
        <td>Yellow fever vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BL</td>
        <td>Yellow fever vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE23</td>
        <td>Yellow Fever Vaccines</td>
        <td>Vaccine terminology codes for Yellow Fever</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.16, IMMZ.IND.44</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1121000221106</td>
        <td>Vaccine product containing only live attenuated Yellow fever virus antigen (medicinal product)</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BL01</td>
        <td>yellow fever, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>412373007</td>
        <td>Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333691006</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial+prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333693009</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333696001</td>
        <td>Haemophilus influenzae Type b (Hib)/diphtheria/tetanus/pertussis vaccine vial (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>396457007</td>
        <td>Diphtheria, acellular pertussis, hepatitis B and inactivated polio vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414002009</td>
        <td>Diphtheria + tetanus + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414003004</td>
        <td>Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414004005</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414005006</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414006007</td>
        <td>Diphtheria + tetanus + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA01</td>
        <td>diphtheria-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>774618008</td>
        <td>Vaccine product containing only whole cell Bordetella pertussis and Clostridium tetani toxoid adsorbed and Corynebacterium diphtheriae toxoid antigens (medicinal product)</td>
        <td></td>
        <td>421245007</td>
        <td>Diphtheria + pertussis + tetanus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426081003</td>
        <td>Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426361005</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426842004</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus + recombinant haemophilus influenzae type B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427542001</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427682002</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis toxoid 25micrograms injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427806004</td>
        <td>Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA06</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA09</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA11</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA13</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B-meningococcus A + C</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA05</td>
        <td>diphtheria-hepatitis B-pertussis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA02</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA12</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE24</td>
        <td>Diphtheria + Tetanus + Pertussis Vaccines</td>
        <td>Vaccine terminology codes for Diphtheria, Tetanus and Pertussis (DTP)</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td>IMMZ.IND.2, IMMZ.IND.30</td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07AM51</td>
        <td>tetanus toxoid, combinations with diphtheria toxoid</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>449240007</td>
        <td>Diphtheria + acellular pertussis adsorbed + inactivated polio + tetanus toxoids vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414002009</td>
        <td>Diphtheria + tetanus + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414003004</td>
        <td>Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414004005</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426842004</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus + recombinant haemophilus influenzae type B vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427542001</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis + recombinant hepatitis B virus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414005006</td>
        <td>Diphtheria + tetanus + pertussis + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>414006007</td>
        <td>Diphtheria + tetanus + poliomyelitis vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>426361005</td>
        <td>Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>396457007</td>
        <td>Diphtheria, acellular pertussis, hepatitis B and inactivated polio vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>427048007</td>
        <td>Haemophilus influenzae type b 10micrograms/diphtheria toxoid 30 iu/tetanus toxoid 40 iu/pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>871740006</td>
        <td>Vaccine product containing only inactivated whole Human poliovirus antigen (medicinal product) Inactivated whole Human poliovirus antigen only vaccine product</td>
        <td></td>
        <td>125688000</td>
        <td>Inactivated poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>333603000</td>
        <td>Poliomyelitis inactivated vaccine injection (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA06</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA09</td>
        <td>diphtheria-haemophilus influenzae B-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA02</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA12</td>
        <td>diphtheria-pertussis-poliomyelitis-tetanus-hepatitis B</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA01</td>
        <td>diphtheria-poliomyelitis-tetanus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07CA04</td>
        <td>haemophilus influenzae B and poliomyelitis</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE25</td>
        <td>Inactivated Polio Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF03</td>
        <td>poliomyelitis, trivalent, inactivated, whole virus</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE26</td>
        <td>Oral Polio Vaccines</td>
        <td>Vaccine terminology codes for Oral Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>125690004</td>
        <td>Live poliovirus vaccine (product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE26</td>
        <td>Oral Polio Vaccines</td>
        <td>Vaccine terminology codes for Oral Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF04</td>
        <td>poliomyelitis oral, bivalent, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE26</td>
        <td>Oral Polio Vaccines</td>
        <td>Vaccine terminology codes for Oral Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF01</td>
        <td>poliomyelitis oral, monovalent, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE26</td>
        <td>Oral Polio Vaccines</td>
        <td>Vaccine terminology codes for Oral Polio Vaccines</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BF02</td>
        <td>poliomyelitis oral, trivalent, live attenuated</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE27</td>
        <td>Dengue Vaccines</td>
        <td>Vaccine terminology codes for Dengue</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM38G7</td>
        <td>Dengue vaccine</td>
        <td>http://id.who.int/icd/entity/1589421967</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>871720004</td>
        <td>Vaccine product containing only Dengue virus antigen (medicinal product) SCTID: 871720004</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE28</td>
        <td>Inactivated Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Inactivated Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM2A12</td>
        <td>Hepatitis A, inactivated, whole virus</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>91000221102</td>
        <td>Vaccine product containing only inactivated whole Hepatitis A virus antigen (medicinal product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE29</td>
        <td>Live attenuated Hepatitis A Vaccines</td>
        <td>Vaccine terminology codes for Live attenuated Hepatitis A</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>871751006</td>
        <td>Vaccine product containing only Hepatitis A virus antigen (medicinal product)</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM68M6</td>
        <td>COVID-19 vaccines</td>
        <td>http://id.who.int/icd/entity/1589421972</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>28531000087107</td>
        <td>Vaccine product against severe acute respiratory syndrome coronavirus 2 (medicinal product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>J07BX03</td>
        <td>covid-19 vaccines</td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM0GQ8</td>
        <td>COVID-19 vaccine, RNA based</td>
        <td>http://id.who.int/icd/entity/873941688</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1119349007</td>
        <td>Vaccine product containing only Severe acute respiratory syndrome coronavirus 2 messenger ribonucleic acid (medicinal product)SARS-CoV-2 mRNA vaccine</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1119305005</td>
        <td>Vaccine product containing only Severe acute respiratory syndrome coronavirus 2 antigen (medicinal product)SARS-CoV-2 antigen vaccine</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM1NL1</td>
        <td>COVID-19 vaccine, inactivated virus</td>
        <td>http://id.who.int/icd/entity/1104808441</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1157024006</td>
        <td>Vaccine product containing only inactivated whole Severe acute respiratory syndrome coronavirus 2 antigen (medicinal product)Inactivated whole SARS-CoV-2 antigen vaccine</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM1J92</td>
        <td>COVID-19 vaccine, virus like particle</td>
        <td>http://id.who.int/icd/entity/729916172</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>30141000087107</td>
        <td>Vaccine product containing only severe acute respiratory syndrome coronavirus 2 virus-like particle antigen (medicinal product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM9QW8</td>
        <td>COVID-19 vaccine, non-replicating viral vector</td>
        <td>http://id.who.int/icd/entity/264142908</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>29061000087103</td>
        <td>Vaccine product containing only recombinant non-replicating viral vector encoding Severe acute respiratory syndrome coronavirus 2 spike protein (medicinal product)COVID-19 non-replicating viral vector vaccine</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>1162643001</td>
        <td>Vaccine product containing only Severe acute respiratory syndrome coronavirus 2 recombinant spike protein antigen (medicinal product)SARS-CoV-2 recombinant spike protein antigen vaccine</td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-11</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>1187593009</td>
        <td>Vaccine product containing only severe acute respiratory syndrome coronavirus 2 deoxyribonucleic acid plasmid encoding spike protein (medicinal product)</td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM8NQ0</td>
        <td>Comirnaty®</td>
        <td>http://id.who.int/icd/entity/667112200</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM3DT5</td>
        <td>Vaccine Moderna</td>
        <td>http://id.who.int/icd/entity/1211296175</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM6AT1</td>
        <td>COVID-19 vaccine, DNA based</td>
        <td>http://id.who.int/icd/entity/1316179031</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM52P3</td>
        <td>ZyCov-D</td>
        <td>http://id.who.int/icd/entity/9306713</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM5JC5</td>
        <td>COVID-19 vaccine, virus protein subunit</td>
        <td>http://id.who.int/icd/entity/1368305645</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM3CT4</td>
        <td>Recombinant SARS-CoV-2 vaccine</td>
        <td>http://id.who.int/icd/entity/1959459034</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM3PG0</td>
        <td>Soberana-02</td>
        <td>http://id.who.int/icd/entity/893746259</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM4EC8</td>
        <td>MVC-COV1901</td>
        <td>http://id.who.int/icd/entity/2065823128</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM6SZ8</td>
        <td>EpiVacCorona</td>
        <td>http://id.who.int/icd/entity/1343234938</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM0RV9</td>
        <td>Soberana Plus</td>
        <td>http://id.who.int/icd/entity/772101199</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM3SK8</td>
        <td>EpiVacCorona-N</td>
        <td>http://id.who.int/icd/entity/612954915</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM9P21</td>
        <td>SpikoGen</td>
        <td>http://id.who.int/icd/entity/1281075481</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM9T65</td>
        <td>Novavax COVID-19 vaccine</td>
        <td>http://id.who.int/icd/entity/833936085</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM9N08</td>
        <td>Razi COV PARS</td>
        <td>http://id.who.int/icd/entity/1806130328</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM0CX4</td>
        <td>COVID-19 vaccine, replicating viral vector</td>
        <td>http://id.who.int/icd/entity/877986394</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM4YL8</td>
        <td>COVID-19 Vaccine AstraZeneca</td>
        <td>http://id.who.int/icd/entity/473439328</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM97T2</td>
        <td>Covishield®</td>
        <td>http://id.who.int/icd/entity/381008692</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM6QV1</td>
        <td>COVID-19 Vaccine Janssen</td>
        <td>http://id.who.int/icd/entity/1838464611</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM1AG7</td>
        <td>Convidecia</td>
        <td>http://id.who.int/icd/entity/613966727</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM5ZJ4</td>
        <td>Gam-Covid-Vac</td>
        <td>http://id.who.int/icd/entity/1802851204</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM5QM6</td>
        <td>Sputnik-Light</td>
        <td>http://id.who.int/icd/entity/1261146576</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM5DF6</td>
        <td>COVID-19 vaccine, live attenuated virus</td>
        <td>http://id.who.int/icd/entity/993066376</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM7HT3</td>
        <td>CoronaVac®</td>
        <td>http://id.who.int/icd/entity/1117129773</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM8866</td>
        <td>BBIBP-CorV</td>
        <td>http://id.who.int/icd/entity/467581665</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM9TQ1</td>
        <td>KCONVAC</td>
        <td>http://id.who.int/icd/entity/793823061</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM1G90</td>
        <td>Covaxin</td>
        <td>http://id.who.int/icd/entity/1859096290</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM85P5</td>
        <td>Covi-Vac</td>
        <td>http://id.who.int/icd/entity/830680415</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM9FQ7</td>
        <td>Hayat-Vax</td>
        <td>http://id.who.int/icd/entity/556954587</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM97N6</td>
        <td>QazVac</td>
        <td>http://id.who.int/icd/entity/1364533446</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM2YG8</td>
        <td>COVIran Barakat</td>
        <td>http://id.who.int/icd/entity/2053436968</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM0K39</td>
        <td>Covidful</td>
        <td>http://id.who.int/icd/entity/572804499</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.Z1 Vaccine Library</td>
        <td>IMMZ.Z1.DE30</td>
        <td>COVID-19 Vaccines</td>
        <td>Vaccine terminology codes for COVID-19</td>
        <td>N/A</td>
        <td>Codes</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>N/A</td>
        <td>None</td>
        <td>Yes</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>XM1AU2</td>
        <td>Sinopharm WIBP-CorV</td>
        <td>http://id.who.int/icd/entity/1920709242</td>
        <td>Extension codes are not used in primary tabulation.</td>
        <td></td>
        <td>Not classifiable in ICD-10</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICD-9</td>
        <td></td>
        <td></td>
        <td>Not classifiable in LOINC</td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICHI</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Not classifiable in ICF</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-GPS</td>
        <td></td>
        <td></td>
        <td>Not classifiable in SNOMED-CT</td>
        <td></td>
        <td></td>
        <td>Immunization.vaccineCode</td>
        <td></td>
        <td>Not classifiable in HL7 FHIR</td>
        <td></td>
        <td>Not classifiable in WHO ATC</td>
        <td></td>
      </tr>
    </tbody>
  </table>
</div>

### Column definitions

The following table describes how to read the data dictionary, including keys and colour coding. For full notes, see the Web Annex of the DAK. 
  
<div style=" width: 100%; height: 500px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: left;">
        <th>Data dictionary column</th>
        <th>Constrained input options (if relevant)</th>
        <th>Description of what to include for each unique data element</th>
      </tr>
    </thead>
    <tbody style="text-align: left; vertical-align: top">
      <tr>
        <td>Activity ID</td>
        <td></td>
        <td>Include the activity ID under which that data will first be collected. It is important that key data are collected only once. Even if that specific piece of data will be needed again in a later activity, it will be important to note when that data is actually first provided to the provider.</td>
      </tr>
      <tr>
        <td>Data Element Label</td>
        <td></td>
        <td>The label of the data element written in a way that end-users can easily understand – e.g. “education level”, “weight”, “height”, “reason(s) for coming into facility”, “which medication(s) is the client taking?” The data element label in this column is what will be used in the digital form: the digital register should not simply replace the paper registers, but it should also streamline processes and link duplicated data elements.</td>
      </tr>
      <tr>
        <td>Description and Definition</td>
        <td></td>
        <td>The description and definition of the data element, including any units that define the field (e.g. weight in kilograms [kg]). Provide a clear explanation of what this data field is requesting.</td>
      </tr>
      <tr>
        <td rowspan="4">Multiple Choice</td>
        <td></td>
        <td>If the data element is indicative of a multiple choice question (e.g. symptoms), then indicate the type of multiple choice question here. The types would be:</td>
      </tr>
      <tr>
        <td>Select one</td>
        <td>Select one – only one input can be chosen</td>
      </tr>
      <tr>
        <td>Select all that apply</td>
        <td>Select all that apply – more than one input option can be chosen</td>
      </tr>
      <tr>
        <td>Input Option</td>
        <td>Each individual answer option should be listed in the Input Options column and be classified with one of the data types listed below</td>
      </tr>
      <tr>
        <td rowspan="13">Data Type</td>
        <td></td>
        <td>The data types are as follows:</td>
      </tr>
      <tr>
        <td>Boolean</td>
        <td>Boolean (i.e. True/False, Yes/No)</td>
      </tr>
      <tr>
        <td>String</td>
        <td>String (i.e. a sequence of Unicode characters – e.g. name)</td>
      </tr>
      <tr>
        <td>Date</td>
        <td>Date (e.g. date of birth) – used for when only the date is recorded</td>
      </tr>
      <tr>
        <td>Time</td>
        <td>Time (e.g. time of delivery) – used for when only the time is recorded</td>
      </tr>
      <tr>
        <td>DateTime</td>
        <td>DateTime (e.g. appointment) – used for when you need to record the date and the time</td>
      </tr>
      <tr>
        <td>ID</td>
        <td>ID (e.g. unique identifier assigned to the client)</td>
      </tr>
      <tr>
        <td>Quantity</td>
        <td>Quantity – a number that is associated with a unit of measure outlined in the standard for Unified Code for Units of Measure (UCUM). Quantities include any number that is associated with a unit, such as “number of past pregnancies”, where “past pregnancies” is the unit of measure (1). <br>– If the data type is a “Quantity” there should be an associated sub-type listed in the “Quantity sub-type” column. </td>
      </tr>
      <tr>
        <td>Signature</td>
        <td>Signature (e.g. supervisor’s approval) – an electronic representation of a signature that is either cryptographic or a graphical image that represents a signature or a signature process</td>
      </tr>
      <tr>
        <td>Attachment</td>
        <td>Attachment (e.g. image) – additional data content defined in other formats</td>
      </tr>
      <tr>
        <td>Coding</td>
        <td>Coding (e.g. symptoms, reason for coming to the facility, danger signs) – multiple-choice data elements for which the input options are Codes.</td>
      </tr>
      <tr>
        <td>Codes</td>
        <td>Codes (e.g. pregnant, HIV positive, combined pill) – data elements that are input options to multiple-choice data elements, which are none of the above data types.</td>
      </tr>
      <tr>
        <td colspan="2">Although the list above should be sufficient to relay this information to a health informaticist or technology vendor, there are many more data codes that can be applied to achieve a more precise classification – for other possible data types, please refer to the HL7 FHIR guide on Data Types (2)</td>
      </tr>
      <tr>
        <td>Input Options</td>
        <td></td>
        <td>For multiple-choice fields only – for other fields, leave this column blank. Write the list of responses from which the health worker may select. Each of these options should be labelled with a Data Type as indicated above.</td>
      </tr>
      <tr>
        <td>Calculation</td>
        <td></td>
        <td>If a calculation is needed to define the data element, write the formula here. Leave this column blank if no calculation is needed. Write the formula using standard mathematical symbols and the Data Element Label included in the formula (e.g. for the body mass index calculation (BMI), “Weight/(Height^2)”).</td>
      </tr>
      <tr>
        <td rowspan="4">Quantity Sub-type</td>
        <td>N/A</td>
        <td>Quantity data types can include any number that is associated with a unit of measure. However, there are many sub-types of Quantity that should be listed here:</td>
      </tr>
      <tr>
        <td>Integer quantity</td>
        <td>Integer quantity – a whole number (e.g. number of past pregnancies, pulse, systolic blood pressure, diastolic blood pressure)</td>
      </tr>
      <tr>
        <td>Decimal quantity</td>
        <td>Decimal quantity – rational numbers that have a decimal representation (e.g. exact weight in kilograms, exact height in centimetres, location coordinates, percentages, temperature)</td>
      </tr>
      <tr>
        <td>Duration</td>
        <td>Duration – duration of time associated with time units (e.g. number of minutes, number of hours, number of days)</td>
      </tr>
      <tr>
        <td>Validation Condition</td>
        <td></td>
        <td>With digital systems, it is possible to incorporate “data entry validation” to ensure that the data entered into that field is accurate at the time of data entry. <br>For example, if a health worker accidentally enters the height of an individual as 1650 cm instead of 165 cm, the system should notify the health worker that an erroneous height has been entered. This feature will help increase the fidelity of data entry. <br>This should contain the range of acceptable responses, if validation is required (e.g. for a phone number, only 10 digits allowed; for a birthday, only past dates allowed). </td>
      </tr>
      <tr>
        <td>Editable</td>
        <td></td>
        <td>Indicate whether the end-user, or health worker, would be able to edit the field after it has been input to the system: “Yes” or “No”</td>
      </tr>
      <tr>
        <td rowspan="4">Required</td>
        <td></td>
        <td>Note whether or not this field is:</td>
      </tr>
      <tr>
        <td>R</td>
        <td>Required – R</td>
      </tr>
      <tr>
        <td>O</td>
        <td>Optional – O</td>
      </tr>
      <tr>
        <td>C</td>
        <td>Conditional on answers from other data fields – C</td>
      </tr>
      <tr>
        <td>Skip Logic</td>
        <td></td>
        <td>If the field is Conditional on answers from other data fields (C), denote what the skip logic is here. This is common for data elements that are a part of follow-up questions. For example, if the input of one data element field has a value lower than a certain threshold, then some data inputs can be skipped. Those input data elements will have skip logic that is defined by a preset threshold. Skip logic can also sometimes be referred to as “Relevance”, as the logic described in this field sometimes determines whether or not that specific data element is “relevant”.</td>
      </tr>
      <tr>
        <td>Linkages to aggregate indicators</td>
        <td></td>
        <td>List the indicators here, if applicable</td>
      </tr>
      <tr>
        <td>Notes</td>
        <td> This column should be used for any other notes, annotations or communication messages within the team</td>
        <td></td>
      </tr>
      <tr>
        <td>Mapping to code systems (standardized terminologies and classifications)</td>
        <td></td>
        <td>Depending on which systems the digital system is planned to interoperate with, other columns will need to be added to map to code systems for standardized terminologies/classifications used in the other systems (e.g. ICD-11, SNOMED, LOINC). One column should be used for each type of code system</td>
      </tr>
      <tr>
        <td>Mapping to code systems, Considerations/comments</td>
        <td></td>
        <td>This column should be used for any other notes, annotations related to the concept maps.</td>
      </tr>
      <tr>
        <td rowspan="6">Mapping to code systems, Relationship</td>
        <td></td>
        <td>For data elements that can be mapped, this column should be used to identify the relationship between the original intent of the data element (i.e. “source concept”) with the terminology mapping available in existing code systems (i.e. “target concept”) (3). The field should indicate:</td>
      </tr>
      <tr>
        <td>Related to</td>
        <td>The concepts are related to each other, but the exact relationship is not known.</td>
      </tr>
      <tr>
        <td>Equivalent</td>
        <td>The definitions of the concepts mean the same thing.</td>
      </tr>
      <tr>
        <td>Source is narrower than target</td>
        <td>The source concept is narrower in meaning than the target concept.</td>
      </tr>
      <tr>
        <td>Source is broader than target</td>
        <td>The source concept is broader in meaning than the target concept.</td>
      </tr>
      <tr>
        <td>Not related to</td>
        <td>This is an explicit assertion that the target concept is not related to the source concept.</td>
      </tr>
    </tbody>
  </table>
</div>
