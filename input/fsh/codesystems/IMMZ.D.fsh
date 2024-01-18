CodeSystem: IMMZ.D
Title:        "IMMZ.D CodeSystem for Data Elements"
Description:  "CodeSystem for IMMZ.D Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D"

* #DE156 "Immunization recommendation status" "The current status or recommendation for a specific immunization for an client"
* #DE157 "Not due" "The client is not currently eligible or scheduled for the specified immunization"
* #DE158 "Due" "The client is currently eligible and should receive the specified immunization based on the recommended schedule "
* #DE189 "Complete" "The client has received the specified immunization(s) based on the recommended schedule "
* #DE159 "Contraindicated" "The specified immunization is not recommended for the client due to contraindications"
* #DE160 "Further evaluation needed" "Additional assessment is necessary before making a recommendation regarding the specified immunization"
* #DE161 "Potential contraindications" "Specific situations or medical conditions in which it is advised or recommended to avoid or delay administering a particular vaccine"
* #DE162 "Currently pregnant" "The client is currently pregnant"
* #DE163 "Immunocompromised" "The client is known to be immunocompromised"
* #DE200 "Severely immunocompromised" "The client is known to be severely immunocompromised"
* #DE164 "Exposed to immunosuppressive treatment" "The client is undergoing immunosuppressive treatment or was exposed to immunosuppressive treatment in utero or via breastfeeding."
* #DE165 "Severely immunosuppressed" "The client is known to be severely immunosuppressed"
* #DE187 "Immunodeficiency syndromes" "The client has  immunodeficiency syndromes (e.g. HIV/AIDS, known or suspected congenital immunodeficiency, leukaemia, lymphoma or other malignant disease)"
* #DE166 "History of anaphylactic reactions" "The client is known to have history of anaphylaxis in the past"
* #DE167 "Severe allergic reactions" "The client is known to have severe allergic reaction"
* #DE168 "Symptomatic HIV infection" "The client is experiencing HIV-related symptoms"
* #DE169 "Planning to get pregnant in the next month" "The client's intention or desire is to become pregnant in the next month"
* #DE170 "Receiving blood products" "The client is receiving blood or blood-related products as part of a medical treatment."
* #DE188 "Severe acute illness" "The client has a severe acute illness"
* #DE190 "TB disease" "The client has been diagnosed with Tuberculosis"
* #DE191 "Breastfeeding" "The client is currently breastfeeding"
* #DE192 "Spina bifida" "The client has Spina bifida"
* #DE193 "Bladder exstrophy" "The client has Exstrophy of urinary bladder"
* #DE194 "Acute gastroenteritis" "The client has acute gastroenteritis"
* #DE195 "Moderate to severe fever" "The client has moderate to severe fever"
* #DE196 "Prior history of intussusception" "The client has prior history of intussusception"
* #DE197 "Altered immunocompetence" "The client's immune system is not functioning at its typical capacity"
* #DE198 "Hypersensitivity to vaccine components" "The client has heightened sensitivity or allergic reactions to specific components found in vaccines"
* #DE199 "Taking antibiotics" "The client is currently taking antibiotics to treat certain infections"
* #DE1 "Immunization event status" "The current status of the individual immunization event"
* #DE2 "Completed" "The immunization event was successfully carried out as intended"
* #DE3 "Entered in error" "Immunization event record has been mistakenly created or entered into system. Recorded information is incorrect or should not have been documented, though it is possible that real-world decisions were based on it"
* #DE4 "Not done" "Planned immunization event was not carried out for some reason"
* #DE5 "Reason vaccine was not administered" "The reason this immunization event was not performed"
* #DE6 "Immunity" "Testing has shown that the client already has immunity to the agent targeted by the immunization"
* #DE7 "Medical precaution" "The client currently has a medical condition for which the vaccine is contraindicated or for which precaution is warranted"
* #DE8 "Product out of stock" "There was no supply of the product on hand to perform the service"
* #DE9 "Client objection" "The client or their guardian objects to receiving the vaccine"
* #DE10 "Caregiver refusal" "The client's caregiver refused the vaccine"
* #DE11 "Unspecified reason" "The immunization event was not carried out for an unspecified reason"
* #DE12 "Client allergy to vaccine or component" "The immunization event was not carried out because of client allergy to vaccine or component"
* #DE13 "Immunocompromised" "The immunization event was not carried out because the client is immunocompromised"
* #DE14 "Chronic illness or condition" "The immunization event was not carried out due a chronic illness or condition of the client"
* #DE15 "Acute illness" "The immunization event was not carried out due to an acute illness present in the client"
* #DE16 "Had the disease" "The immunization event was not carried out due to the client having had the disease"
* #DE17 "Immunization not carried out for other reasons" "The immunization event was not carried out for other reasons"
* #DE18 "Vaccine brand" "The brand or trade name used to refer to the vaccine received"
* #DE173 "Live vaccine" "Uses a living but weakened version of the virus or one that’s very similar"
* #DE19 "Vaccine type" "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine Library list of codes applies in this data element"
* #DE20 "Date and time of vaccination" "Represents the visit/encounter date, which is the date and time when the vaccine was administered to the client"
* #DE21 "Country of vaccination" "The service delivery country where the vaccine administration occurred"
* #DE22 "Vaccination location" "The service delivery location where the vaccine administration occurred"
* #DE23 "Vaccine manufacturer " "The manufacturer of the vaccine product"
* #DE24 "Vaccine batch number" "Batch number or lot number of vaccine"
* #DE25 "Vaccine market authorization holder" "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED"
* #DE26 "Expiration date" "The expiration date of the vaccine"
* #DE34 "Dose quantity " "The quantity of vaccine product that was administered"
* #DE35 "Health worker identifier" "The person, organization, or role of the entity that performed the act of giving the vaccine to the client. The implementing system can choose to populate this field using data from a health worker registry or health facility registry"
* #DE86 "Client education and counselling on immunization" "Providing information, guidance, and support to client or caretakers (such as parents or legal guardians) regarding immunization practices"
* #DE87 "Counselling on functions of the immunological system" "Explaining to the client or caregiver how the vaccines work by triggering the body to produce an immune response"
* #DE88 "Advising about functions of the immunological system" "Explaining to the client or caregiver how the vaccines work by triggering the body to produce an immune response"
* #DE89 "Education to influence immunization behaviours" "Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases"
* #DE90 "Advising about immunization behaviours" "Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases"
* #DE91 "Awareness raising to influence immunization behaviours" "Public health interventions to improve general and accurate understanding and impacts of vaccines, and their role in preventing various diseases"
* #DE92 "Reaction reported" "Indicates observation of an adverse event/ reaction"
* #DE93 "Reaction date" "When adverse event/ reaction started"
* #DE95 "Reaction manifestation" "The manifestation of the reaction (e.g. infected abscess, swelling, rash, hives, diarrhea, etc.) which was observed after administering the vaccine"
* #DE96 "Severe local reaction" "The client's reaction manifested in severe local reaction"
* #DE98 "Seizures" "The client's reaction manifested in seizures"
* #DE99 "Abscess" "The client's reaction manifested in an abscess"
* #DE100 "Sepsis" "The client's reaction manifested in sepsis"
* #DE101 "Encephalopathy" "The client's reaction manifested in encephalopathy"
* #DE102 "Toxic shock syndrome" "The client's reaction manifested in toxic shock syndrome"
* #DE103 "Anaphylaxis" "The client's reaction manifested in anaphylaxis"
* #DE104 "Fever" "The client's reaction manifested as a fever"
* #DE105 "Other" "The client's reaction manifested in another way"
* #DE107 "Type of reaction" "If the event resulted in a reaction, the type of reaction"
* #DE174 "Non serious" "The reaction resulted in a mild or minor response and did not pose a significant threat to client's health"
* #DE108 "Death" "The reaction resulted in the client's death"
* #DE109 "Life threatening" "The reaction threatened the client's life"
* #DE110 "Disability" "The reaction resulted in a disability"
* #DE111 "Hospitalization" "The reaction resulted in a hospitalization"
* #DE112 "Congenital anomaly" "The reaction was a congenital anomaly or birth defect"
* #DE113 "Other important medical event (specify)" "There was another important reaction or medical event "
* #DE115 "Reaction outcome" "The outcome of the reaction (e.g. death, recovered, recovering)"
* #DE116 "Died" "The adverse event resulted in the client's death"
* #DE117 "Recovered" "The client fully recovered"
* #DE118 "Recovered with sequelae" "The client is recovered with sequelae as a consequence of the reaction/vaccination"
* #DE119 "Recovering" "The client is recovering"
* #DE120 "Not recovered" "The client has not recovered"
* #DE121 "Unknown" "The client's reaction outcome is unknown"
* #DE124 "Dose number" "Vaccine dose number including dose number within series"
* #DE125 "Total doses in series" "The recommended number of doses for immunity according to the national protocol (which may be based on product, age, etc)"
* #DE126 "Disease targeted" "Vaccine preventable disease being targeted"
* #DE127 "Typhoid" "The vaccine preventable disease being targeted is typhoid"
* #DE128 "Influenza" "The vaccine preventable disease being targeted is  influenza"
* #DE129 "Measles" "The vaccine preventable disease being targeted is measles"
* #DE133 "Pertussis" "The vaccine preventable disease being targeted is pertussis"
* #DE135 "Mumps" "The vaccine preventable disease being targeted is mumps"
* #DE136 "Varicella" "The vaccine preventable disease being targeted is varicella"
* #DE137 "Viral hepatitis A" "The vaccine preventable disease being targeted is viral hepatitis A"
* #DE139 "Tuberculosis" "The vaccine preventable disease being targeted is tuberculosis"
* #DE140 "Viral hepatitis B" "The vaccine preventable disease being targeted is viral hepatitis B"
* #DE141 "Haemophilus influenzae type B" "The vaccine preventable disease being targeted is Haemophilus influenzae type B (Hib)"
* #DE142 "Tetanus" "The vaccine preventable disease being targeted is tetanus"
* #DE143 "Rotavirus" "The vaccine preventable disease being targeted is rotavirus"
* #DE144 "Human papillomavirus" "The vaccine preventable disease being targeted is Human papillomavirus (HPV) infection"
* #DE175 "Japanese encephalitis" "The vaccine preventable disease being targeted is japanese encephalitis"
* #DE146 "Poliomyelitis" "The vaccine preventable disease being targeted is poliomyelitis"
* #DE176 "Diphtheria" "The vaccine preventable disease being targeted is diphtheria"
* #DE177 "Pneumococcal disease" "The vaccine preventable disease being targeted is pneumococcal "
* #DE178 "Rubella" "The vaccine preventable disease being targeted is rubella"
* #DE179 "Dengue" "The vaccine preventable disease being targeted is dengue"
* #DE180 "Rabies" "The vaccine preventable disease being targeted is rabies"
* #DE181 "Meningococcal" "The vaccine preventable disease being targeted is meningococcal"
* #DE182 "Cholera" "The vaccine preventable disease being targeted is cholera"
* #DE183 "Tick-borne encephalitis" "The vaccine preventable disease being targeted is Tick-Borne encephalitis"
* #DE184 "Yellow fever" "The vaccine preventable disease being targeted is yellow fever"
* #DE148 "COVID-19" "The vaccine preventable disease being targeted is coronovirus disease (COVID-19)"
* #DE149 "Due date of next dose" "Date on which the next vaccination should be administered, if a next dose is required"
* #DE185 "Date/time of follow-up appointment" "Date the patient is to return for next vaccination"
* #DE186 "Recommended follow-up date	" "Date when follow-up is recommended based on vaccination schedule"
* #DE150 "Digital certificate needed" "Indicates if a digital certificate is required"
* #DE151 "Certificate issuer" "The authority or authorized organization that issued the vaccination certificate"
* #DE152 "Health Certificate Identifier (HCID)" "Unique identifier used to associate the immunization event represented in a paper vaccination card to its digital representation(s)"
* #DE153 "Certificate valid from" "Date in which the certificate for an immunization event became valid.  No health or clinical inferences should be made from this date"
* #DE154 "Certificate valid until" "Last date in which the certificate for an immunization event is valid. No health or clinical inferences should be made from this date"
* #DE155 "Certificate schema version" "Version of the core data set and HL7 Fast Health Interoperability Resrouces (FHIR) Implementation Guide that the certificate is using"