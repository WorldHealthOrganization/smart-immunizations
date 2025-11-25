# IMMZ.D CodeSystem for Data Elements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D CodeSystem for Data Elements**

## CodeSystem: IMMZ.D CodeSystem for Data Elements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/CodeSystem/IMMZ.D | *Version*:0.2.0 |
| Active as of 2025-11-25 | *Computable Name*:IMMZ_D |

 
CodeSystem for IMMZ.D Data Elements 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IMMZ_D_DE1](ValueSet-IMMZ.D.DE1.md)
* [IMMZ_D_DE107](ValueSet-IMMZ.D.DE107.md)
* [IMMZ_D_DE115](ValueSet-IMMZ.D.DE115.md)
* [IMMZ_D_DE126](ValueSet-IMMZ.D.DE126.md)
* [IMMZ_D_DE156](ValueSet-IMMZ.D.DE156.md)
* [IMMZ_D_DE161](ValueSet-IMMZ.D.DE161.md)
* [IMMZ_D_DE204](ValueSet-IMMZ.D.DE204.md)
* [IMMZ_D_DE212](ValueSet-IMMZ.D.DE212.md)
* [IMMZ_D_DE216](ValueSet-IMMZ.D.DE216.md)
* [IMMZ_D_DE220](ValueSet-IMMZ.D.DE220.md)
* [IMMZ_D_DE225](ValueSet-IMMZ.D.DE225.md)
* [IMMZ_D_DE229](ValueSet-IMMZ.D.DE229.md)
* [IMMZ_D_DE232](ValueSet-IMMZ.D.DE232.md)
* [IMMZ_D_DE237](ValueSet-IMMZ.D.DE237.md)
* [IMMZ_D_DE241](ValueSet-IMMZ.D.DE241.md)
* [IMMZ_D_DE243](ValueSet-IMMZ.D.DE243.md)
* [IMMZ_D_DE246](ValueSet-IMMZ.D.DE246.md)
* [IMMZ_D_DE254](ValueSet-IMMZ.D.DE254.md)
* [IMMZ_D_DE258](ValueSet-IMMZ.D.DE258.md)
* [IMMZ_D_DE5](ValueSet-IMMZ.D.DE5.md)
* [IMMZ_D_DE86](ValueSet-IMMZ.D.DE86.md)
* [IMMZ_D_DE95](ValueSet-IMMZ.D.DE95.md)
* [IMMZ_D_Observation](ValueSet-IMMZ.D.Observation.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IMMZ.D",
  "url" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
  "version" : "0.2.0",
  "name" : "IMMZ_D",
  "title" : "IMMZ.D CodeSystem for Data Elements",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-25T19:41:02+00:00",
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
  "description" : "CodeSystem for IMMZ.D Data Elements",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 194,
  "concept" : [
    {
      "code" : "DE19",
      "display" : "Vaccine type",
      "definition" : "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine library list of codes applies in this data element"
    },
    {
      "code" : "DE20",
      "display" : "Date and time of vaccination",
      "definition" : "Represents the visit/encounter date, which is the date and time when each vaccine was administered to the client"
    },
    {
      "code" : "DE201",
      "display" : "Contact date",
      "definition" : "The date and time of the client's contact"
    },
    {
      "code" : "DE202",
      "display" : "ANC contact number",
      "definition" : "The antenatal care (ANC) contact or visit number"
    },
    {
      "code" : "DE124",
      "display" : "Dose number",
      "definition" : "Vaccine dose number including dose number within series"
    },
    {
      "code" : "DE156",
      "display" : "Immunization recommendation status",
      "definition" : "The current status or recommendation for a specific immunization for an client"
    },
    {
      "code" : "DE157",
      "display" : "Not due",
      "definition" : "The client is not currently eligible or scheduled for the specified immunization"
    },
    {
      "code" : "DE158",
      "display" : "Due",
      "definition" : "The client is currently eligible and should receive the specified immunization based on the recommended schedule"
    },
    {
      "code" : "DE189",
      "display" : "Complete",
      "definition" : "The client has received the specified immunization(s) based on the recommended schedule"
    },
    {
      "code" : "DE159",
      "display" : "Contraindicated",
      "definition" : "The specified immunization is not recommended for the client due to contraindications"
    },
    {
      "code" : "DE160",
      "display" : "Further evaluation needed",
      "definition" : "Additional assessment is necessary before making a recommendation regarding the specified immunization"
    },
    {
      "code" : "DE161",
      "display" : "Potential contraindications",
      "definition" : "Specific situations or medical conditions for which it is advised or recommended to avoid or delay administering a particular vaccine"
    },
    {
      "code" : "DE162",
      "display" : "Currently pregnant",
      "definition" : "The client is currently pregnant"
    },
    {
      "code" : "DE163",
      "display" : "Immunocompromised",
      "definition" : "The client is known to be immunocompromised"
    },
    {
      "code" : "DE200",
      "display" : "Severely immunocompromised",
      "definition" : "The client is known to be severely immunocompromised"
    },
    {
      "code" : "DE164",
      "display" : "Exposed to immunosuppressive treatment",
      "definition" : "The client is undergoing immunosuppressive treatment or was exposed to immunosuppressive treatment in utero or via breastfeeding."
    },
    {
      "code" : "DE165",
      "display" : "Severely immunosuppressed",
      "definition" : "The client is known to be severely immunosuppressed"
    },
    {
      "code" : "DE187",
      "display" : "Immunodeficiency syndromes",
      "definition" : "The client has  immunodeficiency syndromes (e.g. HIV/AIDS, known or suspected congenital immunodeficiency, leukaemia, lymphoma or other malignant disease)"
    },
    {
      "code" : "DE166",
      "display" : "History of anaphylactic reactions",
      "definition" : "The client is known to have history of anaphylaxis in the past"
    },
    {
      "code" : "DE167",
      "display" : "Severe allergic reactions",
      "definition" : "The client is known to have severe allergic reaction"
    },
    {
      "code" : "DE168",
      "display" : "Symptomatic HIV infection",
      "definition" : "The client is experiencing HIV-related symptoms"
    },
    {
      "code" : "DE169",
      "display" : "Planning to get pregnant in the next month",
      "definition" : "The client's intention or desire is to become pregnant in the next month"
    },
    {
      "code" : "DE170",
      "display" : "Receiving blood products",
      "definition" : "The client is receiving blood or blood-related products as part of a medical treatment."
    },
    {
      "code" : "DE188",
      "display" : "Severe acute illness",
      "definition" : "The client has a severe acute illness"
    },
    {
      "code" : "DE190",
      "display" : "TB disease",
      "definition" : "The client has been diagnosed with tuberculosis (TB)"
    },
    {
      "code" : "DE191",
      "display" : "Breastfeeding",
      "definition" : "The client is currently breastfeeding"
    },
    {
      "code" : "DE192",
      "display" : "Spina bifida",
      "definition" : "The client has spina bifida"
    },
    {
      "code" : "DE193",
      "display" : "Bladder exstrophy",
      "definition" : "The client has exstrophy of urinary bladder"
    },
    {
      "code" : "DE194",
      "display" : "Acute gastroenteritis",
      "definition" : "The client has acute gastroenteritis"
    },
    {
      "code" : "DE195",
      "display" : "Moderate to severe fever",
      "definition" : "The client has moderate to severe fever"
    },
    {
      "code" : "DE196",
      "display" : "Prior history of intussusception",
      "definition" : "The client has prior history of intussusception"
    },
    {
      "code" : "DE197",
      "display" : "Altered immunocompetence",
      "definition" : "The client's immune system is not functioning at its typical capacity"
    },
    {
      "code" : "DE198",
      "display" : "Hypersensitivity to vaccine components",
      "definition" : "The client has heightened sensitivity or allergic reactions to specific components found in vaccines"
    },
    {
      "code" : "DE199",
      "display" : "Taking antibiotics",
      "definition" : "The client is currently taking antibiotics to treat certain infections"
    },
    {
      "code" : "DE86",
      "display" : "Client education and counselling on immunization",
      "definition" : "Providing information, guidance and support to client or caretakers (such as parents or legal guardians) regarding immunization practices"
    },
    {
      "code" : "DE87",
      "display" : "Counselling on functions of the immunological system",
      "definition" : "Explaining to the client or caregiver how the vaccines work by triggering the body to produce an immune response"
    },
    {
      "code" : "DE88",
      "display" : "Advising about functions of the immunological system",
      "definition" : "Explaining to the client or caregiver how the vaccines work by triggering the body to produce an immune response"
    },
    {
      "code" : "DE89",
      "display" : "Education to influence immunization behaviours",
      "definition" : "Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases"
    },
    {
      "code" : "DE90",
      "display" : "Advising about immunization behaviours",
      "definition" : "Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases"
    },
    {
      "code" : "DE91",
      "display" : "Awareness raising to influence immunization behaviours",
      "definition" : "Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases"
    },
    {
      "code" : "DE1",
      "display" : "Immunization event status",
      "definition" : "The current status of the individual immunization event"
    },
    {
      "code" : "DE2",
      "display" : "Completed",
      "definition" : "The immunization event was successfully carried out as intended"
    },
    {
      "code" : "DE3",
      "display" : "Entered in error",
      "definition" : "Immunization event record has been mistakenly created or entered into the system. Recorded information is incorrect or should not have been documented, though it is possible that real-world decisions were based on it"
    },
    {
      "code" : "DE4",
      "display" : "Not done",
      "definition" : "Planned immunization event was not carried out for some reason"
    },
    {
      "code" : "DE5",
      "display" : "Reason vaccine was not administered",
      "definition" : "The reason this immunization event was not performed"
    },
    {
      "code" : "DE6",
      "display" : "Immunity",
      "definition" : "Testing has shown that the client already has immunity to the agent targeted by the immunization"
    },
    {
      "code" : "DE7",
      "display" : "Medical precaution",
      "definition" : "The client currently has a medical condition for which the vaccine is contraindicated or for which precaution is warranted"
    },
    {
      "code" : "DE8",
      "display" : "Product out of stock",
      "definition" : "There was no supply of the product on hand to perform the service"
    },
    {
      "code" : "DE9",
      "display" : "Client objection",
      "definition" : "The client or their guardian objects to receiving the vaccine"
    },
    {
      "code" : "DE10",
      "display" : "Caregiver refusal",
      "definition" : "The client's caregiver refused the vaccine"
    },
    {
      "code" : "DE11",
      "display" : "Unspecified reason",
      "definition" : "The immunization event was not carried out for an unspecified reason"
    },
    {
      "code" : "DE12",
      "display" : "Client allergy to vaccine or component",
      "definition" : "The immunization event was not carried out because of client allergy to vaccine or component"
    },
    {
      "code" : "DE13",
      "display" : "Immunocompromised",
      "definition" : "The immunization event was not carried out because the client is immunocompromised"
    },
    {
      "code" : "DE14",
      "display" : "Chronic illness or condition",
      "definition" : "The immunization event was not carried out due a chronic illness or condition of the client"
    },
    {
      "code" : "DE15",
      "display" : "Acute illness",
      "definition" : "The immunization event was not carried out due to an acute illness present in the client"
    },
    {
      "code" : "DE16",
      "display" : "Had the disease",
      "definition" : "The immunization event was not carried out due to the client having had the disease"
    },
    {
      "code" : "DE17",
      "display" : "Immunization not carried out for other reasons",
      "definition" : "The immunization event was not carried out for other reasons"
    },
    {
      "code" : "DE18",
      "display" : "Vaccine brand",
      "definition" : "The brand or trade name used to refer to the vaccine received"
    },
    {
      "code" : "DE173",
      "display" : "Live vaccine",
      "definition" : "Uses a living but weakened version of the virus or one that is very similar"
    },
    {
      "code" : "DE21",
      "display" : "Country of vaccination",
      "definition" : "The service delivery country where the vaccine administration occurred"
    },
    {
      "code" : "DE22",
      "display" : "Administrative area",
      "definition" : "The service delivery location (location name, city, municipality, town or village) where the vaccine administration occurred"
    },
    {
      "code" : "DE23",
      "display" : "Vaccine manufacturer",
      "definition" : "The manufacturer of the vaccine product"
    },
    {
      "code" : "DE24",
      "display" : "Vaccine batch number",
      "definition" : "Batch number or lot number of vaccine"
    },
    {
      "code" : "DE25",
      "display" : "Vaccine market authorization holder",
      "definition" : "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED"
    },
    {
      "code" : "DE26",
      "display" : "Expiration date",
      "definition" : "The expiration date of the vaccine"
    },
    {
      "code" : "DE34",
      "display" : "Dose quantity",
      "definition" : "The quantity of vaccine product that was administered"
    },
    {
      "code" : "DE35",
      "display" : "Health worker identifier",
      "definition" : "The person, organization or role of the entity that performed the act of giving the vaccine to the client. The implementing system can choose to populate this field using data from a health worker registry or health-care facility registry"
    },
    {
      "code" : "DE125",
      "display" : "Total doses in series",
      "definition" : "The recommended number of doses for immunity according to the national immunization schedule (which may be based on product, age, etc.)"
    },
    {
      "code" : "DE126",
      "display" : "Disease targeted",
      "definition" : "Vaccine-preventable disease being targeted"
    },
    {
      "code" : "DE127",
      "display" : "Typhoid",
      "definition" : "The vaccine-preventable disease being targeted is typhoid"
    },
    {
      "code" : "DE128",
      "display" : "Influenza",
      "definition" : "The vaccine-preventable disease being targeted is  influenza"
    },
    {
      "code" : "DE129",
      "display" : "Measles",
      "definition" : "The vaccine-preventable disease being targeted is measles"
    },
    {
      "code" : "DE133",
      "display" : "Pertussis",
      "definition" : "The vaccine-preventable disease being targeted is pertussis"
    },
    {
      "code" : "DE135",
      "display" : "Mumps",
      "definition" : "The vaccine-preventable disease being targeted is mumps"
    },
    {
      "code" : "DE136",
      "display" : "Varicella",
      "definition" : "The vaccine-preventable disease being targeted is varicella"
    },
    {
      "code" : "DE137",
      "display" : "Viral hepatitis A",
      "definition" : "The vaccine-preventable disease being targeted is viral hepatitis A"
    },
    {
      "code" : "DE139",
      "display" : "Tuberculosis",
      "definition" : "The vaccine-preventable disease being targeted is TB"
    },
    {
      "code" : "DE140",
      "display" : "Viral hepatitis B",
      "definition" : "The vaccine-preventable disease being targeted is viral hepatitis B"
    },
    {
      "code" : "DE141",
      "display" : "Haemophilus influenzae type b",
      "definition" : "The vaccine-preventable disease being targeted is Haemophilus influenzae type b (Hib)"
    },
    {
      "code" : "DE142",
      "display" : "Tetanus",
      "definition" : "The vaccine-preventable disease being targeted is tetanus"
    },
    {
      "code" : "DE143",
      "display" : "Rotavirus",
      "definition" : "The vaccine-preventable disease being targeted is rotavirus"
    },
    {
      "code" : "DE144",
      "display" : "Human papillomavirus",
      "definition" : "The vaccine-preventable disease being targeted is human papillomavirus (HPV) infection"
    },
    {
      "code" : "DE175",
      "display" : "Japanese encephalitis",
      "definition" : "The vaccine-preventable disease being targeted is Japanese encephalitis (JE)"
    },
    {
      "code" : "DE146",
      "display" : "Poliomyelitis",
      "definition" : "The vaccine-preventable disease being targeted is poliomyelitis (polio)"
    },
    {
      "code" : "DE176",
      "display" : "Diphtheria",
      "definition" : "The vaccine-preventable disease being targeted is diphtheria"
    },
    {
      "code" : "DE177",
      "display" : "Pneumococcal disease",
      "definition" : "The vaccine-preventable disease being targeted is pneumococcal"
    },
    {
      "code" : "DE178",
      "display" : "Rubella",
      "definition" : "The vaccine-preventable disease being targeted is rubella"
    },
    {
      "code" : "DE179",
      "display" : "Dengue",
      "definition" : "The vaccine-preventable disease being targeted is dengue"
    },
    {
      "code" : "DE180",
      "display" : "Rabies",
      "definition" : "The vaccine-preventable disease being targeted is rabies"
    },
    {
      "code" : "DE181",
      "display" : "Meningococcal",
      "definition" : "The vaccine-preventable disease being targeted is meningococcal"
    },
    {
      "code" : "DE182",
      "display" : "Cholera",
      "definition" : "The vaccine-preventable disease being targeted is cholera"
    },
    {
      "code" : "DE183",
      "display" : "Tick-borne encephalitis",
      "definition" : "The vaccine-preventable disease being targeted is tick-borne encephalitis (TBE)"
    },
    {
      "code" : "DE184",
      "display" : "Yellow fever",
      "definition" : "The vaccine-preventable disease being targeted is yellow fever"
    },
    {
      "code" : "DE148",
      "display" : "COVID-19",
      "definition" : "The vaccine-preventable disease being targeted is coronovirus disease (COVID-19)"
    },
    {
      "code" : "DE149",
      "display" : "Due date of next dose",
      "definition" : "Date on which the next vaccination should be administered, if a next dose is required"
    },
    {
      "code" : "DE92",
      "display" : "Reaction reported",
      "definition" : "Indicates observation of an adverse event/reaction"
    },
    {
      "code" : "DE93",
      "display" : "Reaction date",
      "definition" : "When adverse event/reaction started"
    },
    {
      "code" : "DE95",
      "display" : "Reaction manifestation",
      "definition" : "The manifestation of the reaction (e.g. infected abscess, swelling, rash, hives, diarrhoea, etc.) observed after administering the vaccine"
    },
    {
      "code" : "DE96",
      "display" : "Severe local reaction",
      "definition" : "The client's reaction manifested in severe local reaction"
    },
    {
      "code" : "DE98",
      "display" : "Seizures",
      "definition" : "The client's reaction manifested in seizures"
    },
    {
      "code" : "DE99",
      "display" : "Abscess",
      "definition" : "The client's reaction manifested in an abscess"
    },
    {
      "code" : "DE100",
      "display" : "Sepsis",
      "definition" : "The client's reaction manifested in sepsis"
    },
    {
      "code" : "DE101",
      "display" : "Encephalopathy",
      "definition" : "The client's reaction manifested in encephalopathy"
    },
    {
      "code" : "DE102",
      "display" : "Toxic shock syndrome",
      "definition" : "The client's reaction manifested in toxic shock syndrome"
    },
    {
      "code" : "DE103",
      "display" : "Anaphylaxis",
      "definition" : "The client's reaction manifested in anaphylaxis"
    },
    {
      "code" : "DE104",
      "display" : "Fever",
      "definition" : "The client's reaction manifested as a fever"
    },
    {
      "code" : "DE105",
      "display" : "Other",
      "definition" : "The client's reaction manifested in another way"
    },
    {
      "code" : "DE107",
      "display" : "Type of reaction",
      "definition" : "If the event resulted in a reaction, what is the type of reaction"
    },
    {
      "code" : "DE174",
      "display" : "Non serious",
      "definition" : "The reaction resulted in a mild or minor response and did not pose a significant threat to client's health"
    },
    {
      "code" : "DE108",
      "display" : "Death",
      "definition" : "The reaction resulted in the client's death"
    },
    {
      "code" : "DE109",
      "display" : "Life threatening",
      "definition" : "The reaction threatened the client's life"
    },
    {
      "code" : "DE110",
      "display" : "Disability",
      "definition" : "The reaction resulted in a disability"
    },
    {
      "code" : "DE111",
      "display" : "Hospitalization",
      "definition" : "The reaction resulted in a hospitalization"
    },
    {
      "code" : "DE112",
      "display" : "Congenital anomaly",
      "definition" : "The reaction was a congenital anomaly or birth defect"
    },
    {
      "code" : "DE113",
      "display" : "Other important medical event (specify)",
      "definition" : "There was another important reaction or medical event"
    },
    {
      "code" : "DE115",
      "display" : "Reaction outcome",
      "definition" : "The outcome of the reaction (e.g. death, recovered, recovering)"
    },
    {
      "code" : "DE116",
      "display" : "Died",
      "definition" : "The adverse event resulted in the client's death"
    },
    {
      "code" : "DE117",
      "display" : "Recovered",
      "definition" : "The client fully recovered"
    },
    {
      "code" : "DE118",
      "display" : "Recovered with sequelae",
      "definition" : "The client has recovered with sequelae as a consequence of the reaction/vaccination"
    },
    {
      "code" : "DE119",
      "display" : "Recovering",
      "definition" : "The client is recovering"
    },
    {
      "code" : "DE120",
      "display" : "Not recovered",
      "definition" : "The client has not recovered"
    },
    {
      "code" : "DE121",
      "display" : "Unknown",
      "definition" : "The client's reaction outcome is unknown"
    },
    {
      "code" : "DE185",
      "display" : "Date/time of follow-up appointment",
      "definition" : "Date the client is to return for next vaccination"
    },
    {
      "code" : "DE186",
      "display" : "Recommended follow-up date",
      "definition" : "Date when follow-up is recommended based on vaccination schedule"
    },
    {
      "code" : "DE150",
      "display" : "Digital certificate needed",
      "definition" : "Indicates if a digital certificate is required"
    },
    {
      "code" : "DE151",
      "display" : "Certificate issuer",
      "definition" : "The authority or authorized organization that issued the vaccination certificate"
    },
    {
      "code" : "DE152",
      "display" : "Health Certificate Identifier (HCID)",
      "definition" : "Unique identifier used to associate the immunization event represented in a paper vaccination card to its digital representation(s)"
    },
    {
      "code" : "DE153",
      "display" : "Certificate valid from",
      "definition" : "Date in which the certificate for an immunization event became valid.  No health or clinical inferences should be made from this date"
    },
    {
      "code" : "DE154",
      "display" : "Certificate valid until",
      "definition" : "Last date in which the certificate for an immunization event is valid. No health or clinical inferences should be made from this date"
    },
    {
      "code" : "DE155",
      "display" : "Certificate schema version",
      "definition" : "Version of the core data set and HL7 Fast Health Interoperability Resources (FHIR) implementation guide that the certificate is using"
    },
    {
      "code" : "DE263",
      "display" : "Birth dose",
      "definition" : "Indicates if the client received a dose within 24 hours of birth. Whether a birth dose is counted as part of the primary series will depend on the antigen"
    },
    {
      "code" : "DE258",
      "display" : "Type of dose",
      "definition" : "The type of dose in a series that the client received"
    },
    {
      "code" : "DE259",
      "display" : "Primary series",
      "definition" : "Indicates that the client received the primary vaccination series of a product/antigen. This is also applicable for antigens with one dose"
    },
    {
      "code" : "DE260",
      "display" : "Dose 0",
      "definition" : "Indicates that the client received a dose of a product/ antigen that is not a part of the primary vaccination series and is administered before the primary vaccination series is provided"
    },
    {
      "code" : "DE261",
      "display" : "Supplementary dose",
      "definition" : "Indicates that the client received a supplementary dose of a product/antigen"
    },
    {
      "code" : "DE262",
      "display" : "Booster dose",
      "definition" : "Indicates that the client received booster dose of a product/antigen"
    },
    {
      "code" : "DE203",
      "display" : "Completed the primary vaccination series",
      "definition" : "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen"
    },
    {
      "code" : "DE257",
      "display" : "Completed the booster series",
      "definition" : "Indicates if the client has completed the booster series of a product/antigen"
    },
    {
      "code" : "DE242",
      "display" : "Date when primary vaccination series was completed",
      "definition" : "The date when the client completed the primary vaccination series (per product/antigen)"
    },
    {
      "code" : "DE204",
      "display" : "HIV status",
      "definition" : "The current HIV status of the client"
    },
    {
      "code" : "DE205",
      "display" : "HIV-positive",
      "definition" : "The client is known to be HIV-positive"
    },
    {
      "code" : "DE206",
      "display" : "HIV-negative",
      "definition" : "The client is known to be HIV-negative"
    },
    {
      "code" : "DE207",
      "display" : "Unknown",
      "definition" : "The client's HIV status is unknown"
    },
    {
      "code" : "DE208",
      "display" : "Preterm birth",
      "definition" : "The infant was preterm; the mother gave birth to the infant when gestational age was less than 37 weeks"
    },
    {
      "code" : "DE209",
      "display" : "Immunocompromised",
      "definition" : "The client is known to be immunocompromised. This means the client has a weakened immune system and having a reduced ability to fight infections and other diseases"
    },
    {
      "code" : "DE210",
      "display" : "Currently on ART",
      "definition" : "The client is currently receiving antiretroviral therapy (ART)"
    },
    {
      "code" : "DE243",
      "display" : "Type of TB infection test performed",
      "definition" : "The type of tuberculosis (TB) infection test performed"
    },
    {
      "code" : "DE244",
      "display" : "IGRA",
      "definition" : "Interferon-gamma release assay (IGRA)"
    },
    {
      "code" : "DE245",
      "display" : "TST",
      "definition" : "Tuberculin skin test (TST)"
    },
    {
      "code" : "DE246",
      "display" : "TB infection test result",
      "definition" : "Records the result of the TB infection test"
    },
    {
      "code" : "DE247",
      "display" : "Positive",
      "definition" : "Test result was positive"
    },
    {
      "code" : "DE248",
      "display" : "Negative",
      "definition" : "Test result was negative"
    },
    {
      "code" : "DE249",
      "display" : "Immunologically stable",
      "definition" : "The client is living with HIV and is immunologically stable with CD4 count or percentage above a minimum as defined in the HIV guidelines"
    },
    {
      "code" : "DE250",
      "display" : "Clinically well",
      "definition" : "The client is living with HIV and is clinically well, as defined in HIV guidelines and WHO clinical staging"
    },
    {
      "code" : "DE211",
      "display" : "Birth weight in grams",
      "definition" : "Represents the client's birth weight value measures in grams"
    },
    {
      "code" : "DE212",
      "display" : "Type of poliovirus dose",
      "definition" : "The type of the poliovirus vaccine dose administered to the client"
    },
    {
      "code" : "DE213",
      "display" : "IPV",
      "definition" : "Inactivated polio vaccine (IPV)"
    },
    {
      "code" : "DE214",
      "display" : "bOPV",
      "definition" : "Bivalent oral polio vaccine (bOPV)"
    },
    {
      "code" : "DE215",
      "display" : "ART start date",
      "definition" : "The date on which the client started or restarted ART"
    },
    {
      "code" : "DE251",
      "display" : "High risk of pneumococcal infection",
      "definition" : "The client is at high risk for pneumococcal infection because of underlying medical conditions (i.e. HIV infection or sickle-cell disease)"
    },
    {
      "code" : "DE216",
      "display" : "Type of JE dose",
      "definition" : "The type of Japanese encephalitis (JE) vaccine dose administered to the client"
    },
    {
      "code" : "DE217",
      "display" : "Inactivated Vero cell-derived vaccine",
      "definition" : "Inactivated Vero cell-derived JE vaccine type"
    },
    {
      "code" : "DE218",
      "display" : "Live attenuated vaccine",
      "definition" : "Live attenuated JE vaccine type"
    },
    {
      "code" : "DE219",
      "display" : "Live recombinant vaccine",
      "definition" : "Live recombinant JE vaccine type"
    },
    {
      "code" : "DE220",
      "display" : "Type of TBE dose",
      "definition" : "The type of tick-borne encephalitis (TBE) vaccine dose administered"
    },
    {
      "code" : "DE221",
      "display" : "FSME-Immun",
      "definition" : "FSME-Immun vaccine product, which is an inactivated whole-virus vaccine for TBE"
    },
    {
      "code" : "DE222",
      "display" : "Encepur",
      "definition" : "Encepur vaccine product, which is an inactivated viral vaccine for TBE"
    },
    {
      "code" : "DE223",
      "display" : "TBE-Moscow",
      "definition" : "TBE-Moscow vaccine product, which is a vaccine for TBE"
    },
    {
      "code" : "DE224",
      "display" : "EnceVir",
      "definition" : "EnceVir vaccine product, which is a vaccine for TBE"
    },
    {
      "code" : "DE225",
      "display" : "Type of typhoid dose",
      "definition" : "The type of typhoid vaccine dose administered to the client"
    },
    {
      "code" : "DE226",
      "display" : "Typbar-TCV",
      "definition" : "Typbar typhoid conjugate vaccine (Typbar-TCV)"
    },
    {
      "code" : "DE227",
      "display" : "ViPS",
      "definition" : "Vi polysaccharide (ViPS) vaccine"
    },
    {
      "code" : "DE228",
      "display" : "Ty21a",
      "definition" : "Ty21a vaccine"
    },
    {
      "code" : "DE229",
      "display" : "Type of cholera dose",
      "definition" : "The type of cholera vaccine dose administered to the client"
    },
    {
      "code" : "DE230",
      "display" : "WC vaccine",
      "definition" : "Killed whole-cell (WC) only cholera vaccine"
    },
    {
      "code" : "DE231",
      "display" : "WC-rBS vaccine",
      "definition" : "Vaccine contains a mixture of the recombinant B subunit (rBS) of cholera toxin plus killed WC"
    },
    {
      "code" : "DE232",
      "display" : "Type of meningococcal dose",
      "definition" : "The type of meningococcal vaccine dose administered to the client"
    },
    {
      "code" : "DE233",
      "display" : "MenA conjugate vaccine (5µg)",
      "definition" : "Monovalent serogroup A (MenA) conjugate vaccine (5µg)"
    },
    {
      "code" : "DE234",
      "display" : "Monovalent MenC conjugate",
      "definition" : "Monovalent MenC conjugate vaccine"
    },
    {
      "code" : "DE235",
      "display" : "Quadrivalent conjugate",
      "definition" : "Quadrivalent conjugate (A,C,W135,Y-D and A,C,W135,Y-CRM) vaccines"
    },
    {
      "code" : "DE252",
      "display" : "Polysaccharide vaccine",
      "definition" : "Polysaccharide vaccines not including polysaccharide-protein conjugate vaccines"
    },
    {
      "code" : "DE236",
      "display" : "Age in months when client received first meningococcal dose",
      "definition" : "The age in months when client received their first meningococcal dose"
    },
    {
      "code" : "DE237",
      "display" : "Type of hepatitis A dose",
      "definition" : "The type of hepatitis A-containing vaccine dose administered to the client"
    },
    {
      "code" : "DE238",
      "display" : "Live attenuated hepatitis A vaccine",
      "definition" : "Live attenuated hepatitis A vaccine"
    },
    {
      "code" : "DE239",
      "display" : "Inactivated hepatitis A vaccine",
      "definition" : "Inactivated hepatitis A vaccine"
    },
    {
      "code" : "DE254",
      "display" : "Type of hepatitis B dose",
      "definition" : "The type of hepatitis B-containing vaccine dose administered to the client"
    },
    {
      "code" : "DE255",
      "display" : "Hepatitis B monovalent vaccine",
      "definition" : "Hepatitis B monovalent vaccine"
    },
    {
      "code" : "DE256",
      "display" : "Hepatitis B combination vaccine",
      "definition" : "Hepatitis B combination vaccine"
    },
    {
      "code" : "DE240",
      "display" : "VNA level",
      "definition" : "Vaccine-induced neutralizing antibody (VNA) level, measured as a serum antibody concentration from the result of the concentrated, purified cell culture-derived and embryonated egg-based rabies vaccines (CCEEV)"
    },
    {
      "code" : "DE253",
      "display" : "Risk of occupational exposure to rabies virus",
      "definition" : "Professional at risk of occupational exposure to rabies virus, particularly animal health workers. Also considered for medical professionals who regularly provide care to persons with rabies"
    },
    {
      "code" : "DE241",
      "display" : "Dengue serostatus",
      "definition" : "Indicates the result of a serological test determining whether the client has antibodies against the dengue virus"
    },
    {
      "code" : "DE264",
      "display" : "Positive",
      "definition" : "The client has detectable antibodies against the dengue virus, suggesting past exposure or vaccination"
    },
    {
      "code" : "DE265",
      "display" : "Negative",
      "definition" : "The client does not have detectable antibodies, indicating no previous exposure or vaccination against the dengue virus"
    },
    {
      "code" : "DE266",
      "display" : "Unknown",
      "definition" : "The client's dengue serostatus is unknown"
    }
  ]
}

```
