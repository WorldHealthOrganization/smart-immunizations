Component 5 in the Digital Adaptation Kit outlines the minimum set of
data corresponding to different points of the workflow within the
identified business processes. This data set can be used on any software
system and lists the data elements relevant for service delivery and
executing decision-support logic, as well as for populating indicators
and performance metrics. Although this section provides a high-level
overview of the data elements, a more complete data dictionary in
spreadsheet form detailing the input options, validation checks and
concept dictionary codes is available in Web Annex A.


<div style=" width: 100%; height: 500px; overflow: scroll;">
                

<table border="1" class="dataframe table table-striped table-bordered">
  <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
    <tr style="text-align: right;">
      <th>Activity ID</th>
      <th>Data Element ID</th>
      <th>Data Element Label</th>
      <th>Description and Definition</th>
      <th>Multiple Choice Type  (if applicable)</th>
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
      <td>The reason this immunization event was not performed. This is genreally only used if the 'Status' field carried a status of 'Not Done'. The reason for performing the immunization event is captured in the 'Status' field.</td>
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
      <td>Z28.0  Immunization not carried out because of contraindication</td>
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
      <td>Z28.0  Immunization not carried out because of contraindication</td>
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
      <td>Z28.0  Immunization not carried out because of contraindication</td>
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
      <td>Z28.0  Immunization not carried out because of contraindication</td>
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
      <td>Z28.0  Immunization not carried out because of contraindication</td>
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
      <td>Z28.0  Immunization not carried out because of contraindication</td>
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
      <td>List of WHO ATC vaccine codes available in  IMMZ.Z Vaccine Library</td>
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
      <td>The individual is within the appropriate time window and requires immunity against  typhoid and paratyphoid</td>
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
      <td>Need for prophylactic vaccination and inoculation against  tuberculosis [BCG]</td>
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
      <td>Need for  course of hepatitis B vaccination (finding)</td>
      <td>The individual is within the appropriate time window and requires immunity against Hepatitis B</td>
      <td>Input Option</td>
      <td>Codes</td>
      <td>Need for  course of hepatitis B vaccination (finding)</td>
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
      <td>Need for prophylactic vaccination and inoculation against  measles-mumps-rubella [MMR]</td>
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
      <td>Need for prophylactic vaccination and inoculation against  other combinations of infectious diseases</td>
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
      <td>Need for prophylactic vaccination and inoculation against  unspecified combinations of infectious diseases</td>
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
      <td>QA1Y  Contact with health services for other specified counselling</td>
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
      <td>QA1Y  Contact with health services for other specified counselling</td>
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
      <td>QA1Y  Contact with health services for other specified counselling</td>
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
      <td>QA1Y  Contact with health services for other specified counselling</td>
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
      <td>QA1Y  Contact with health services for other specified counselling</td>
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
      <td>QA1Y  Contact with health services for other specified counselling</td>
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