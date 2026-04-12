# IMMZElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZElements**

## Library: IMMZElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZElements |

 
This library defines context-independent elements used throughout the Immunization CPG 

* * **Content: **text/cql: ````library IMMZElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZConcepts called Concepts include IMMZCommon called Common context Patient /** * @dataElement All Doses Administered to Patient */ define "Doses Administered to Patient": [Immunization] I where I.status = 'completed' and I.isSubpotent is not true /* @dataElement: Draft Medication Request for Patient */ define "Draft Medication Request for Patient": [MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal' sort by date from (authoredOn as FHIR.dateTime) desc /* @dataElement: Live attenuated vaccines */ define "Live Attenuated Vaccines": "Doses Administered to Patient" I where I.vaccineCode in Concepts."Live Attenuated" /* @dataElement: Date and time of last live attenuated vaccine */ define "Date of Latest Live Attenuated Vaccine": date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval() /** * @dataElement Patient age in years */ define "Current Patient Age In Years": AgeInYearsAt(Today()) /** * @dataElement Patient age in months */ define "Current Patient Age In Months": AgeInMonthsAt(Today()) /** * @dataElement Patient age in weeks */ define "Current Patient Age In Weeks": AgeInWeeksAt(Today()) /** * @dataElement Patient age in days */ define "Current Patient Age In Days": AgeInDaysAt(Today()) /* @input: No live vaccine was administered @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL */ define "No live vaccine was administered": not exists("Live Attenuated Vaccines") /* @input: Live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks */ define "Live vaccine was administered in the last 4 weeks": "Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4 /* @input: No live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks */ define "No live vaccine was administered in the last 4 weeks": not("Live vaccine was administered in the last 4 weeks") /* @internal: Potential contraindications observations */ define "Potential contraindications": ([Observation: Concepts."Potential contraindications"]).complete() /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" */ define "The client is pregnant": exists "CI Currently pregnant Observation" or exists "CI Currently pregnant Condition" or exists WE."Pregnant Observation" /* @internal: Observation for currently pregnant */ define "CI Currently pregnant Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Currently pregnant" /* @internal: Condition for currently pregnant */ define "CI Currently pregnant Condition": [Condition: Concepts."CI-Currently pregnant"] /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" */ define "The client has history of anaphylactic reactions": exists "CI History of anaphylactic reactions Observation" or exists "CI History of anaphylactic reactions Condition" /* @internal: Observation for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-History of anaphylactic reactions" /* @internal: Condition for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Condition": [Condition: Concepts."CI-History of anaphylactic reactions"] /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" */ define "The client has history of severe allergic reactions": exists "CI Severe allergic reactions Observation" or exists "CI Severe allergic reactions Condition" /* @internal: Observation for Severe allergic reactions */ define "CI Severe allergic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe allergic reactions" /* @internal: Condition for Severe allergic reactions */ define "CI Severe allergic reactions Condition": [Condition: Concepts."CI-Severe allergic reactions"] /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" */ define "The client is severely immunocompromised": exists "CI Severely immunocompromised Observation" or exists "CI Severely immunocompromised Condition" /* @internal: Observation for Severely immunocompromised */ define "CI Severely immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunocompromised" /* @internal: Condition for Severely immunocompromised */ define "CI Severely immunocompromised Condition": [Condition: Concepts."CI-Severely immunocompromised"] /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" */ define "The client is severely immunosuppressed": exists "CI Severely immunosuppressed Observation" or exists "CI Severely immunosuppressed Condition" /* @internal: Observation for Severely immunosuppressed */ define "CI Severely immunosuppressed Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunosuppressed" /* @internal: Condition for Severely immunosuppressed */ define "CI Severely immunosuppressed Condition": [Condition: Concepts."CI-Severely immunosuppressed"] /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" */ define "The client has a symptomatic HIV infection": exists "CI Symptomatic HIV infection Observation" or exists "CI Symptomatic HIV infection Condition" /* @internal: Observation for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Symptomatic HIV infection" /* @internal: Condition for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Condition": [Condition: Concepts."CI-Symptomatic HIV infection"] /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" */ define "The client has immunodeficiency syndromes": exists "CI Immunodeficiency syndromes Observation" or exists "CI Immunodeficiency syndromes Condition" /* @internal: Observation for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunodeficiency syndromes" /* @internal: Condition for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Condition": [Condition: Concepts."CI-Immunodeficiency syndromes"] /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" */ define "The client is exposed to immunosuppressive treatment": exists "CI Exposed to immunosuppressive treatment Observation" or exists "CI Exposed to immunosuppressive treatment Condition" /* @internal: Observation for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Exposed to immunosuppressive treatment" /* @internal: Condition for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Condition": [Condition: Concepts."CI-Exposed to immunosuppressive treatment"] /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" */ define "The client currently has a severe acute illness": exists "CI Severe acute illness Observation" or exists "CI Severe acute illness Condition" /* @internal: Observation for Severe acute illness */ define "CI Severe acute illness Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe acute illness" /* @internal: Condition for Severe acute illness */ define "CI Severe acute illness Condition": [Condition: Concepts."CI-Severe acute illness"] /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" */ define "The client has prior history of intussusception": exists "CI Prior history of intussusception Observation" or exists "CI Prior history of intussusception Condition" /* @internal: Observation for Prior history of intussusception */ define "CI Prior history of intussusception Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Prior history of intussusception" /* @internal: Condition for Prior history of intussusception */ define "CI Prior history of intussusception Condition": [Condition: Concepts."CI-Prior history of intussusception"] /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" */ define "The client has altered immunocompetence": exists "CI Altered immunocompetence Observation" or exists "CI Altered immunocompetence Condition" /* @internal: Observation for Altered immunocompetence */ define "CI Altered immunocompetence Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Altered immunocompetence" /* @internal: Condition for Altered immunocompetence */ define "CI Altered immunocompetence Condition": [Condition: Concepts."CI-Altered immunocompetence"] /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" */ define "The client has spina bifida": exists "CI Spina bifida Observation" or exists "CI Spina bifida Condition" /* @internal: Observation for Spina bifida */ define "CI Spina bifida Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Spina bifida" /* @internal: Condition for Spina bifida */ define "CI Spina bifida Condition": [Condition: Concepts."CI-Spina bifida"] /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" */ define "The client has bladder exstrophy": exists "CI Bladder exstrophy Observation" or exists "CI Bladder exstrophy Condition" /* @internal: Observation for Bladder exstrophy */ define "CI Bladder exstrophy Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Bladder exstrophy" /* @internal: Condition for Bladder exstrophy */ define "CI Bladder exstrophy Condition": [Condition: Concepts."CI-Bladder exstrophy"] /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" */ define "The client is immunocompromised": "Client is immunocompromised" or exists "CI Immunocompromised Observation" or exists "CI Immunocompromised Condition" /* @internal: Observation for Immunocompromised */ define "CI Immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunocompromised" /* @internal: Condition for Immunocompromised */ define "CI Immunocompromised Condition": [Condition: Concepts."CI-Immunocompromised"] /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" */ define "The client is planning to get pregnant in next month": exists "CI Planning to get pregnant in the next month Observation" or exists "CI Planning to get pregnant in the next month Condition" /* @internal: Observation for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Planning to get pregnant in the next month" /* @internal: Condition for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Condition": [Condition: Concepts."CI-Planning to get pregnant in the next month"] /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" */ define "The client is receiving blood products": exists "CI Receiving blood products Observation" or exists "CI Receiving blood products Condition" /* @internal: Observation for Receiving blood products */ define "CI Receiving blood products Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Receiving blood products" /* @internal: Condition for Receiving blood products */ define "CI Receiving blood products Condition": [Condition: Concepts."CI-Receiving blood products"] /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" */ define "The client has TB disease": exists "CI TB disease Observation" or exists "CI TB disease Condition" /* @internal: Observation for TB disease */ define "CI TB disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-TB disease" /* @internal: Condition for TB disease */ define "CI TB disease Condition": [Condition: Concepts."CI-TB disease"] /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" */ define "The client is lactating": exists "CI Breastfeeding Observation" or exists "CI Breastfeeding Condition" /* @internal: Observation for Breastfeeding */ define "CI Breastfeeding Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Breastfeeding" /* @internal: Condition for Breastfeeding */ define "CI Breastfeeding Condition": [Condition: Concepts."CI-Breastfeeding"] /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" */ define "The client has acute gastroenteritis": exists "CI Acute gastroenteritis Observation" or exists "CI Acute gastroenteritis Condition" /* @internal: Observation for Acute gastroenteritis */ define "CI Acute gastroenteritis Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Acute gastroenteritis" /* @internal: Condition for Acute gastroenteritis */ define "CI Acute gastroenteritis Condition": [Condition: Concepts."CI-Acute gastroenteritis"] /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" */ define "The client has moderate to severe fever": exists "CI Moderate to severe fever Observation" or exists "CI Moderate to severe fever Condition" /* @internal: Observation for Moderate to severe fever */ define "CI Moderate to severe fever Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Moderate to severe fever" /* @internal: Condition for Moderate to severe fever */ define "CI Moderate to severe fever Condition": [Condition: Concepts."CI-Moderate to severe fever"] /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" */ define "The client has hypersensitivity to any component of the vaccine": exists "CI Hypersensitivity to vaccine components Observation" or exists "CI Hypersensitivity to vaccine components Condition" /* @internal: Observation for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Hypersensitivity to vaccine components" /* @internal: Condition for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Condition": [Condition: Concepts."CI-Hypersensitivity to vaccine components"] /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" */ define "The client is currently taking antibiotics": exists "CI Taking antibiotics Observation" or exists "CI Taking antibiotics Condition" /* @internal: Observation for Taking antibiotics */ define "CI Taking antibiotics Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Taking antibiotics" /* @internal: Condition for Taking antibiotics */ define "CI Taking antibiotics Condition": [Condition: Concepts."CI-Taking antibiotics"] /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" */ define "The client has chronic gastrointestinal disease": exists "CI Chronic gastrointestinal disease Observation" or exists "CI Chronic gastrointestinal disease Condition" /* @internal: Observation for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Chronic gastrointestinal disease" /* @internal: Condition for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Condition": [Condition: Concepts."CI-Chronic gastrointestinal disease"] /* @internal: HIV Status Observation */ define "HIV status Observation": ([Observation: Concepts."HIV status"]).complete() /* @input: Client's HIV status is negative or unknown @pseudocode: "HIV status" ≠ "HIV-positive" */ define "Client's HIV status is negative or unknown": not "Client's HIV status is positive" /* @input: Client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" */ define "Client's HIV status is positive": exists( "HIV status Observation" O where O.value ~ Concepts."HIV-positive" ) /* @internal: Currently on ART Observation */ define "Currently on ART Observation": ([Observation: Concepts."Currently on ART"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is currently receiving antiretroviral therapy @pseudocode: "Currently on ART" = TRUE */ define "Client is currently receiving antiretroviral therapy": exists("Currently on ART Observation") and First("Currently on ART Observation").value = true /* @input: Client is currently not receiving antiretroviral therapy @pseudocode: "Currently on ART" = FALSE */ define "Client is currently not receiving antiretroviral therapy": not exists("Currently on ART Observation") or First("Currently on ART Observation").value = false /* @internal: Immunologically stable Observation */ define "Immunologically stable Observation": ([Observation: Concepts."Immunologically stable"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunologically stable @pseudocode: "Immunologically stable" = TRUE */ define "Client is immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = true /* @input: Client is not immunologically stable @pseudocode: "Immunologically stable" = FALSE */ define "Client is not immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = false /* @internal: TB infection test result Observation */ define "TB infection test result Observation": ([Observation: Concepts."TB infection test result"] O sort by end of effective.toInterval() desc).complete() /* @input: Client's TB infection test result is negative @pseudocode: "TB infection test result" = "Negative" */ define "Client's TB infection test result is negative": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Negative" /* @input: Client's TB infection test result is unknown (test not done or no result yet) @pseudocode: "TB infection test result" IS NULL */ define "Client's TB infection test result is unknown (test not done or no result yet)": not exists( "TB infection test result Observation" ) or ( not ("Client's TB infection test result is negative") and not ("Client's TB infection test result is positive") ) /* @input: Client's TB infection test result is positive @pseudocode: "TB infection test result" = "Positive" */ define "Client's TB infection test result is positive": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Positive" /* @internal: Clinically well Observation */ define "Clinically well Observation": ([Observation: Concepts."Clinically well"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is not clinically well @pseudocode: "Clinically well" = FALSE */ define "Client is not clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = false /* @input: Client is clinically well @pseudocode: "Clinically well" = TRUE */ define "Client is clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = true /* @internal: Immunocompromised Observation */ define "Immunocompromised Observation": ([Observation: Concepts."Immunocompromised"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunocompromised @pseudocode: "Immunocompromised" = TRUE */ define "Client is immunocompromised": exists( "Immunocompromised Observation" ) and First( "Immunocompromised Observation" ).value = true /* @input: Client is not immunocompromised @pseudocode: "Immunocompromised" ≠ TRUE */ define "Client is not immunocompromised": not "Client is immunocompromised" /* @internal: Birth weight in grams Observation */ define "Birth weight in grams Observation": ([Observation: Concepts."Birth weight in grams"] O sort by end of effective.toInterval() desc).complete() define "Birth weight in grams Value": First("Birth weight in grams Observation").value as FHIR.Quantity define "Birth weight in grams": "Birth weight in grams Value".value as FHIR.decimal /* @input: Client's weight at birth was over 2000 g @pseudocode: "Birth weight in grams" ≥ 2000 */ define "Client's weight at birth was over 2000 g": "Birth weight in grams" >= 2000 /* @input: Client's weight at birth was below 2000 g @pseudocode: "Birth weight in grams" < 2000 */ define "Client's weight at birth was below 2000 g": "Birth weight in grams" < 2000 /* @internal: Preterm birth Observation */ define "Preterm birth Observation": ([Observation: Concepts."Preterm birth"]).complete() /* @input: Client was not a premature infant at birth @pseudocode: "Preterm birth" ≠ TRUE */ define "Client was not a premature infant at birth": not "Client was a premature infant at birth" /* @input: Client was a premature infant at birth @pseudocode: "Preterm birth" = TRUE */ define "Client was a premature infant at birth": exists( "Preterm birth Observation" O where O.value = true ) /* @internal: Completed the primary vaccination series Observation */ define "Completed the primary vaccination series Observation": ([Observation: Concepts."Completed the primary vaccination series"]).complete() /* @internal: At high risk for pneumococcal infection Observation */ define "At high risk for pneumococcal infection Observation": ([Observation: Concepts."At high risk for pneumococcal infection"]).complete() /* @input: Client is at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = TRUE */ define "Client is at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = true ) /* @input: Client is not at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = FALSE */ define "Client is not at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = false ) /* @internal: Date when primary vaccination series was completed Observation */ define "Date when primary vaccination series was completed Observation": ([Observation: Concepts."Date when primary vaccination series was completed"] O sort by end of effective.toInterval() desc).complete() /* @internal: Completed the booster series Observation */ define "Completed the booster series Observation": ([Observation: Concepts."Completed the booster series"]).complete()````: **Id: **
  * ?: IMMZElements
* * **Content: **text/cql: ````library IMMZElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZConcepts called Concepts include IMMZCommon called Common context Patient /** * @dataElement All Doses Administered to Patient */ define "Doses Administered to Patient": [Immunization] I where I.status = 'completed' and I.isSubpotent is not true /* @dataElement: Draft Medication Request for Patient */ define "Draft Medication Request for Patient": [MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal' sort by date from (authoredOn as FHIR.dateTime) desc /* @dataElement: Live attenuated vaccines */ define "Live Attenuated Vaccines": "Doses Administered to Patient" I where I.vaccineCode in Concepts."Live Attenuated" /* @dataElement: Date and time of last live attenuated vaccine */ define "Date of Latest Live Attenuated Vaccine": date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval() /** * @dataElement Patient age in years */ define "Current Patient Age In Years": AgeInYearsAt(Today()) /** * @dataElement Patient age in months */ define "Current Patient Age In Months": AgeInMonthsAt(Today()) /** * @dataElement Patient age in weeks */ define "Current Patient Age In Weeks": AgeInWeeksAt(Today()) /** * @dataElement Patient age in days */ define "Current Patient Age In Days": AgeInDaysAt(Today()) /* @input: No live vaccine was administered @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL */ define "No live vaccine was administered": not exists("Live Attenuated Vaccines") /* @input: Live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks */ define "Live vaccine was administered in the last 4 weeks": "Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4 /* @input: No live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks */ define "No live vaccine was administered in the last 4 weeks": not("Live vaccine was administered in the last 4 weeks") /* @internal: Potential contraindications observations */ define "Potential contraindications": ([Observation: Concepts."Potential contraindications"]).complete() /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" */ define "The client is pregnant": exists "CI Currently pregnant Observation" or exists "CI Currently pregnant Condition" or exists WE."Pregnant Observation" /* @internal: Observation for currently pregnant */ define "CI Currently pregnant Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Currently pregnant" /* @internal: Condition for currently pregnant */ define "CI Currently pregnant Condition": [Condition: Concepts."CI-Currently pregnant"] /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" */ define "The client has history of anaphylactic reactions": exists "CI History of anaphylactic reactions Observation" or exists "CI History of anaphylactic reactions Condition" /* @internal: Observation for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-History of anaphylactic reactions" /* @internal: Condition for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Condition": [Condition: Concepts."CI-History of anaphylactic reactions"] /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" */ define "The client has history of severe allergic reactions": exists "CI Severe allergic reactions Observation" or exists "CI Severe allergic reactions Condition" /* @internal: Observation for Severe allergic reactions */ define "CI Severe allergic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe allergic reactions" /* @internal: Condition for Severe allergic reactions */ define "CI Severe allergic reactions Condition": [Condition: Concepts."CI-Severe allergic reactions"] /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" */ define "The client is severely immunocompromised": exists "CI Severely immunocompromised Observation" or exists "CI Severely immunocompromised Condition" /* @internal: Observation for Severely immunocompromised */ define "CI Severely immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunocompromised" /* @internal: Condition for Severely immunocompromised */ define "CI Severely immunocompromised Condition": [Condition: Concepts."CI-Severely immunocompromised"] /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" */ define "The client is severely immunosuppressed": exists "CI Severely immunosuppressed Observation" or exists "CI Severely immunosuppressed Condition" /* @internal: Observation for Severely immunosuppressed */ define "CI Severely immunosuppressed Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunosuppressed" /* @internal: Condition for Severely immunosuppressed */ define "CI Severely immunosuppressed Condition": [Condition: Concepts."CI-Severely immunosuppressed"] /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" */ define "The client has a symptomatic HIV infection": exists "CI Symptomatic HIV infection Observation" or exists "CI Symptomatic HIV infection Condition" /* @internal: Observation for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Symptomatic HIV infection" /* @internal: Condition for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Condition": [Condition: Concepts."CI-Symptomatic HIV infection"] /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" */ define "The client has immunodeficiency syndromes": exists "CI Immunodeficiency syndromes Observation" or exists "CI Immunodeficiency syndromes Condition" /* @internal: Observation for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunodeficiency syndromes" /* @internal: Condition for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Condition": [Condition: Concepts."CI-Immunodeficiency syndromes"] /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" */ define "The client is exposed to immunosuppressive treatment": exists "CI Exposed to immunosuppressive treatment Observation" or exists "CI Exposed to immunosuppressive treatment Condition" /* @internal: Observation for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Exposed to immunosuppressive treatment" /* @internal: Condition for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Condition": [Condition: Concepts."CI-Exposed to immunosuppressive treatment"] /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" */ define "The client currently has a severe acute illness": exists "CI Severe acute illness Observation" or exists "CI Severe acute illness Condition" /* @internal: Observation for Severe acute illness */ define "CI Severe acute illness Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe acute illness" /* @internal: Condition for Severe acute illness */ define "CI Severe acute illness Condition": [Condition: Concepts."CI-Severe acute illness"] /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" */ define "The client has prior history of intussusception": exists "CI Prior history of intussusception Observation" or exists "CI Prior history of intussusception Condition" /* @internal: Observation for Prior history of intussusception */ define "CI Prior history of intussusception Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Prior history of intussusception" /* @internal: Condition for Prior history of intussusception */ define "CI Prior history of intussusception Condition": [Condition: Concepts."CI-Prior history of intussusception"] /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" */ define "The client has altered immunocompetence": exists "CI Altered immunocompetence Observation" or exists "CI Altered immunocompetence Condition" /* @internal: Observation for Altered immunocompetence */ define "CI Altered immunocompetence Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Altered immunocompetence" /* @internal: Condition for Altered immunocompetence */ define "CI Altered immunocompetence Condition": [Condition: Concepts."CI-Altered immunocompetence"] /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" */ define "The client has spina bifida": exists "CI Spina bifida Observation" or exists "CI Spina bifida Condition" /* @internal: Observation for Spina bifida */ define "CI Spina bifida Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Spina bifida" /* @internal: Condition for Spina bifida */ define "CI Spina bifida Condition": [Condition: Concepts."CI-Spina bifida"] /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" */ define "The client has bladder exstrophy": exists "CI Bladder exstrophy Observation" or exists "CI Bladder exstrophy Condition" /* @internal: Observation for Bladder exstrophy */ define "CI Bladder exstrophy Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Bladder exstrophy" /* @internal: Condition for Bladder exstrophy */ define "CI Bladder exstrophy Condition": [Condition: Concepts."CI-Bladder exstrophy"] /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" */ define "The client is immunocompromised": "Client is immunocompromised" or exists "CI Immunocompromised Observation" or exists "CI Immunocompromised Condition" /* @internal: Observation for Immunocompromised */ define "CI Immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunocompromised" /* @internal: Condition for Immunocompromised */ define "CI Immunocompromised Condition": [Condition: Concepts."CI-Immunocompromised"] /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" */ define "The client is planning to get pregnant in next month": exists "CI Planning to get pregnant in the next month Observation" or exists "CI Planning to get pregnant in the next month Condition" /* @internal: Observation for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Planning to get pregnant in the next month" /* @internal: Condition for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Condition": [Condition: Concepts."CI-Planning to get pregnant in the next month"] /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" */ define "The client is receiving blood products": exists "CI Receiving blood products Observation" or exists "CI Receiving blood products Condition" /* @internal: Observation for Receiving blood products */ define "CI Receiving blood products Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Receiving blood products" /* @internal: Condition for Receiving blood products */ define "CI Receiving blood products Condition": [Condition: Concepts."CI-Receiving blood products"] /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" */ define "The client has TB disease": exists "CI TB disease Observation" or exists "CI TB disease Condition" /* @internal: Observation for TB disease */ define "CI TB disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-TB disease" /* @internal: Condition for TB disease */ define "CI TB disease Condition": [Condition: Concepts."CI-TB disease"] /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" */ define "The client is lactating": exists "CI Breastfeeding Observation" or exists "CI Breastfeeding Condition" /* @internal: Observation for Breastfeeding */ define "CI Breastfeeding Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Breastfeeding" /* @internal: Condition for Breastfeeding */ define "CI Breastfeeding Condition": [Condition: Concepts."CI-Breastfeeding"] /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" */ define "The client has acute gastroenteritis": exists "CI Acute gastroenteritis Observation" or exists "CI Acute gastroenteritis Condition" /* @internal: Observation for Acute gastroenteritis */ define "CI Acute gastroenteritis Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Acute gastroenteritis" /* @internal: Condition for Acute gastroenteritis */ define "CI Acute gastroenteritis Condition": [Condition: Concepts."CI-Acute gastroenteritis"] /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" */ define "The client has moderate to severe fever": exists "CI Moderate to severe fever Observation" or exists "CI Moderate to severe fever Condition" /* @internal: Observation for Moderate to severe fever */ define "CI Moderate to severe fever Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Moderate to severe fever" /* @internal: Condition for Moderate to severe fever */ define "CI Moderate to severe fever Condition": [Condition: Concepts."CI-Moderate to severe fever"] /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" */ define "The client has hypersensitivity to any component of the vaccine": exists "CI Hypersensitivity to vaccine components Observation" or exists "CI Hypersensitivity to vaccine components Condition" /* @internal: Observation for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Hypersensitivity to vaccine components" /* @internal: Condition for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Condition": [Condition: Concepts."CI-Hypersensitivity to vaccine components"] /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" */ define "The client is currently taking antibiotics": exists "CI Taking antibiotics Observation" or exists "CI Taking antibiotics Condition" /* @internal: Observation for Taking antibiotics */ define "CI Taking antibiotics Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Taking antibiotics" /* @internal: Condition for Taking antibiotics */ define "CI Taking antibiotics Condition": [Condition: Concepts."CI-Taking antibiotics"] /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" */ define "The client has chronic gastrointestinal disease": exists "CI Chronic gastrointestinal disease Observation" or exists "CI Chronic gastrointestinal disease Condition" /* @internal: Observation for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Chronic gastrointestinal disease" /* @internal: Condition for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Condition": [Condition: Concepts."CI-Chronic gastrointestinal disease"] /* @internal: HIV Status Observation */ define "HIV status Observation": ([Observation: Concepts."HIV status"]).complete() /* @input: Client's HIV status is negative or unknown @pseudocode: "HIV status" ≠ "HIV-positive" */ define "Client's HIV status is negative or unknown": not "Client's HIV status is positive" /* @input: Client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" */ define "Client's HIV status is positive": exists( "HIV status Observation" O where O.value ~ Concepts."HIV-positive" ) /* @internal: Currently on ART Observation */ define "Currently on ART Observation": ([Observation: Concepts."Currently on ART"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is currently receiving antiretroviral therapy @pseudocode: "Currently on ART" = TRUE */ define "Client is currently receiving antiretroviral therapy": exists("Currently on ART Observation") and First("Currently on ART Observation").value = true /* @input: Client is currently not receiving antiretroviral therapy @pseudocode: "Currently on ART" = FALSE */ define "Client is currently not receiving antiretroviral therapy": not exists("Currently on ART Observation") or First("Currently on ART Observation").value = false /* @internal: Immunologically stable Observation */ define "Immunologically stable Observation": ([Observation: Concepts."Immunologically stable"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunologically stable @pseudocode: "Immunologically stable" = TRUE */ define "Client is immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = true /* @input: Client is not immunologically stable @pseudocode: "Immunologically stable" = FALSE */ define "Client is not immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = false /* @internal: TB infection test result Observation */ define "TB infection test result Observation": ([Observation: Concepts."TB infection test result"] O sort by end of effective.toInterval() desc).complete() /* @input: Client's TB infection test result is negative @pseudocode: "TB infection test result" = "Negative" */ define "Client's TB infection test result is negative": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Negative" /* @input: Client's TB infection test result is unknown (test not done or no result yet) @pseudocode: "TB infection test result" IS NULL */ define "Client's TB infection test result is unknown (test not done or no result yet)": not exists( "TB infection test result Observation" ) or ( not ("Client's TB infection test result is negative") and not ("Client's TB infection test result is positive") ) /* @input: Client's TB infection test result is positive @pseudocode: "TB infection test result" = "Positive" */ define "Client's TB infection test result is positive": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Positive" /* @internal: Clinically well Observation */ define "Clinically well Observation": ([Observation: Concepts."Clinically well"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is not clinically well @pseudocode: "Clinically well" = FALSE */ define "Client is not clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = false /* @input: Client is clinically well @pseudocode: "Clinically well" = TRUE */ define "Client is clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = true /* @internal: Immunocompromised Observation */ define "Immunocompromised Observation": ([Observation: Concepts."Immunocompromised"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunocompromised @pseudocode: "Immunocompromised" = TRUE */ define "Client is immunocompromised": exists( "Immunocompromised Observation" ) and First( "Immunocompromised Observation" ).value = true /* @input: Client is not immunocompromised @pseudocode: "Immunocompromised" ≠ TRUE */ define "Client is not immunocompromised": not "Client is immunocompromised" /* @internal: Birth weight in grams Observation */ define "Birth weight in grams Observation": ([Observation: Concepts."Birth weight in grams"] O sort by end of effective.toInterval() desc).complete() define "Birth weight in grams Value": First("Birth weight in grams Observation").value as FHIR.Quantity define "Birth weight in grams": "Birth weight in grams Value".value as FHIR.decimal /* @input: Client's weight at birth was over 2000 g @pseudocode: "Birth weight in grams" ≥ 2000 */ define "Client's weight at birth was over 2000 g": "Birth weight in grams" >= 2000 /* @input: Client's weight at birth was below 2000 g @pseudocode: "Birth weight in grams" < 2000 */ define "Client's weight at birth was below 2000 g": "Birth weight in grams" < 2000 /* @internal: Preterm birth Observation */ define "Preterm birth Observation": ([Observation: Concepts."Preterm birth"]).complete() /* @input: Client was not a premature infant at birth @pseudocode: "Preterm birth" ≠ TRUE */ define "Client was not a premature infant at birth": not "Client was a premature infant at birth" /* @input: Client was a premature infant at birth @pseudocode: "Preterm birth" = TRUE */ define "Client was a premature infant at birth": exists( "Preterm birth Observation" O where O.value = true ) /* @internal: Completed the primary vaccination series Observation */ define "Completed the primary vaccination series Observation": ([Observation: Concepts."Completed the primary vaccination series"]).complete() /* @internal: At high risk for pneumococcal infection Observation */ define "At high risk for pneumococcal infection Observation": ([Observation: Concepts."At high risk for pneumococcal infection"]).complete() /* @input: Client is at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = TRUE */ define "Client is at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = true ) /* @input: Client is not at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = FALSE */ define "Client is not at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = false ) /* @internal: Date when primary vaccination series was completed Observation */ define "Date when primary vaccination series was completed Observation": ([Observation: Concepts."Date when primary vaccination series was completed"] O sort by end of effective.toInterval() desc).complete() /* @internal: Completed the booster series Observation */ define "Completed the booster series Observation": ([Observation: Concepts."Completed the booster series"]).complete()````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````library IMMZElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZConcepts called Concepts include IMMZCommon called Common context Patient /** * @dataElement All Doses Administered to Patient */ define "Doses Administered to Patient": [Immunization] I where I.status = 'completed' and I.isSubpotent is not true /* @dataElement: Draft Medication Request for Patient */ define "Draft Medication Request for Patient": [MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal' sort by date from (authoredOn as FHIR.dateTime) desc /* @dataElement: Live attenuated vaccines */ define "Live Attenuated Vaccines": "Doses Administered to Patient" I where I.vaccineCode in Concepts."Live Attenuated" /* @dataElement: Date and time of last live attenuated vaccine */ define "Date of Latest Live Attenuated Vaccine": date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval() /** * @dataElement Patient age in years */ define "Current Patient Age In Years": AgeInYearsAt(Today()) /** * @dataElement Patient age in months */ define "Current Patient Age In Months": AgeInMonthsAt(Today()) /** * @dataElement Patient age in weeks */ define "Current Patient Age In Weeks": AgeInWeeksAt(Today()) /** * @dataElement Patient age in days */ define "Current Patient Age In Days": AgeInDaysAt(Today()) /* @input: No live vaccine was administered @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL */ define "No live vaccine was administered": not exists("Live Attenuated Vaccines") /* @input: Live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks */ define "Live vaccine was administered in the last 4 weeks": "Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4 /* @input: No live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks */ define "No live vaccine was administered in the last 4 weeks": not("Live vaccine was administered in the last 4 weeks") /* @internal: Potential contraindications observations */ define "Potential contraindications": ([Observation: Concepts."Potential contraindications"]).complete() /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" */ define "The client is pregnant": exists "CI Currently pregnant Observation" or exists "CI Currently pregnant Condition" or exists WE."Pregnant Observation" /* @internal: Observation for currently pregnant */ define "CI Currently pregnant Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Currently pregnant" /* @internal: Condition for currently pregnant */ define "CI Currently pregnant Condition": [Condition: Concepts."CI-Currently pregnant"] /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" */ define "The client has history of anaphylactic reactions": exists "CI History of anaphylactic reactions Observation" or exists "CI History of anaphylactic reactions Condition" /* @internal: Observation for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-History of anaphylactic reactions" /* @internal: Condition for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Condition": [Condition: Concepts."CI-History of anaphylactic reactions"] /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" */ define "The client has history of severe allergic reactions": exists "CI Severe allergic reactions Observation" or exists "CI Severe allergic reactions Condition" /* @internal: Observation for Severe allergic reactions */ define "CI Severe allergic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe allergic reactions" /* @internal: Condition for Severe allergic reactions */ define "CI Severe allergic reactions Condition": [Condition: Concepts."CI-Severe allergic reactions"] /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" */ define "The client is severely immunocompromised": exists "CI Severely immunocompromised Observation" or exists "CI Severely immunocompromised Condition" /* @internal: Observation for Severely immunocompromised */ define "CI Severely immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunocompromised" /* @internal: Condition for Severely immunocompromised */ define "CI Severely immunocompromised Condition": [Condition: Concepts."CI-Severely immunocompromised"] /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" */ define "The client is severely immunosuppressed": exists "CI Severely immunosuppressed Observation" or exists "CI Severely immunosuppressed Condition" /* @internal: Observation for Severely immunosuppressed */ define "CI Severely immunosuppressed Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunosuppressed" /* @internal: Condition for Severely immunosuppressed */ define "CI Severely immunosuppressed Condition": [Condition: Concepts."CI-Severely immunosuppressed"] /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" */ define "The client has a symptomatic HIV infection": exists "CI Symptomatic HIV infection Observation" or exists "CI Symptomatic HIV infection Condition" /* @internal: Observation for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Symptomatic HIV infection" /* @internal: Condition for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Condition": [Condition: Concepts."CI-Symptomatic HIV infection"] /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" */ define "The client has immunodeficiency syndromes": exists "CI Immunodeficiency syndromes Observation" or exists "CI Immunodeficiency syndromes Condition" /* @internal: Observation for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunodeficiency syndromes" /* @internal: Condition for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Condition": [Condition: Concepts."CI-Immunodeficiency syndromes"] /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" */ define "The client is exposed to immunosuppressive treatment": exists "CI Exposed to immunosuppressive treatment Observation" or exists "CI Exposed to immunosuppressive treatment Condition" /* @internal: Observation for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Exposed to immunosuppressive treatment" /* @internal: Condition for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Condition": [Condition: Concepts."CI-Exposed to immunosuppressive treatment"] /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" */ define "The client currently has a severe acute illness": exists "CI Severe acute illness Observation" or exists "CI Severe acute illness Condition" /* @internal: Observation for Severe acute illness */ define "CI Severe acute illness Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe acute illness" /* @internal: Condition for Severe acute illness */ define "CI Severe acute illness Condition": [Condition: Concepts."CI-Severe acute illness"] /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" */ define "The client has prior history of intussusception": exists "CI Prior history of intussusception Observation" or exists "CI Prior history of intussusception Condition" /* @internal: Observation for Prior history of intussusception */ define "CI Prior history of intussusception Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Prior history of intussusception" /* @internal: Condition for Prior history of intussusception */ define "CI Prior history of intussusception Condition": [Condition: Concepts."CI-Prior history of intussusception"] /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" */ define "The client has altered immunocompetence": exists "CI Altered immunocompetence Observation" or exists "CI Altered immunocompetence Condition" /* @internal: Observation for Altered immunocompetence */ define "CI Altered immunocompetence Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Altered immunocompetence" /* @internal: Condition for Altered immunocompetence */ define "CI Altered immunocompetence Condition": [Condition: Concepts."CI-Altered immunocompetence"] /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" */ define "The client has spina bifida": exists "CI Spina bifida Observation" or exists "CI Spina bifida Condition" /* @internal: Observation for Spina bifida */ define "CI Spina bifida Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Spina bifida" /* @internal: Condition for Spina bifida */ define "CI Spina bifida Condition": [Condition: Concepts."CI-Spina bifida"] /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" */ define "The client has bladder exstrophy": exists "CI Bladder exstrophy Observation" or exists "CI Bladder exstrophy Condition" /* @internal: Observation for Bladder exstrophy */ define "CI Bladder exstrophy Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Bladder exstrophy" /* @internal: Condition for Bladder exstrophy */ define "CI Bladder exstrophy Condition": [Condition: Concepts."CI-Bladder exstrophy"] /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" */ define "The client is immunocompromised": "Client is immunocompromised" or exists "CI Immunocompromised Observation" or exists "CI Immunocompromised Condition" /* @internal: Observation for Immunocompromised */ define "CI Immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunocompromised" /* @internal: Condition for Immunocompromised */ define "CI Immunocompromised Condition": [Condition: Concepts."CI-Immunocompromised"] /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" */ define "The client is planning to get pregnant in next month": exists "CI Planning to get pregnant in the next month Observation" or exists "CI Planning to get pregnant in the next month Condition" /* @internal: Observation for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Planning to get pregnant in the next month" /* @internal: Condition for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Condition": [Condition: Concepts."CI-Planning to get pregnant in the next month"] /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" */ define "The client is receiving blood products": exists "CI Receiving blood products Observation" or exists "CI Receiving blood products Condition" /* @internal: Observation for Receiving blood products */ define "CI Receiving blood products Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Receiving blood products" /* @internal: Condition for Receiving blood products */ define "CI Receiving blood products Condition": [Condition: Concepts."CI-Receiving blood products"] /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" */ define "The client has TB disease": exists "CI TB disease Observation" or exists "CI TB disease Condition" /* @internal: Observation for TB disease */ define "CI TB disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-TB disease" /* @internal: Condition for TB disease */ define "CI TB disease Condition": [Condition: Concepts."CI-TB disease"] /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" */ define "The client is lactating": exists "CI Breastfeeding Observation" or exists "CI Breastfeeding Condition" /* @internal: Observation for Breastfeeding */ define "CI Breastfeeding Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Breastfeeding" /* @internal: Condition for Breastfeeding */ define "CI Breastfeeding Condition": [Condition: Concepts."CI-Breastfeeding"] /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" */ define "The client has acute gastroenteritis": exists "CI Acute gastroenteritis Observation" or exists "CI Acute gastroenteritis Condition" /* @internal: Observation for Acute gastroenteritis */ define "CI Acute gastroenteritis Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Acute gastroenteritis" /* @internal: Condition for Acute gastroenteritis */ define "CI Acute gastroenteritis Condition": [Condition: Concepts."CI-Acute gastroenteritis"] /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" */ define "The client has moderate to severe fever": exists "CI Moderate to severe fever Observation" or exists "CI Moderate to severe fever Condition" /* @internal: Observation for Moderate to severe fever */ define "CI Moderate to severe fever Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Moderate to severe fever" /* @internal: Condition for Moderate to severe fever */ define "CI Moderate to severe fever Condition": [Condition: Concepts."CI-Moderate to severe fever"] /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" */ define "The client has hypersensitivity to any component of the vaccine": exists "CI Hypersensitivity to vaccine components Observation" or exists "CI Hypersensitivity to vaccine components Condition" /* @internal: Observation for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Hypersensitivity to vaccine components" /* @internal: Condition for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Condition": [Condition: Concepts."CI-Hypersensitivity to vaccine components"] /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" */ define "The client is currently taking antibiotics": exists "CI Taking antibiotics Observation" or exists "CI Taking antibiotics Condition" /* @internal: Observation for Taking antibiotics */ define "CI Taking antibiotics Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Taking antibiotics" /* @internal: Condition for Taking antibiotics */ define "CI Taking antibiotics Condition": [Condition: Concepts."CI-Taking antibiotics"] /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" */ define "The client has chronic gastrointestinal disease": exists "CI Chronic gastrointestinal disease Observation" or exists "CI Chronic gastrointestinal disease Condition" /* @internal: Observation for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Chronic gastrointestinal disease" /* @internal: Condition for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Condition": [Condition: Concepts."CI-Chronic gastrointestinal disease"] /* @internal: HIV Status Observation */ define "HIV status Observation": ([Observation: Concepts."HIV status"]).complete() /* @input: Client's HIV status is negative or unknown @pseudocode: "HIV status" ≠ "HIV-positive" */ define "Client's HIV status is negative or unknown": not "Client's HIV status is positive" /* @input: Client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" */ define "Client's HIV status is positive": exists( "HIV status Observation" O where O.value ~ Concepts."HIV-positive" ) /* @internal: Currently on ART Observation */ define "Currently on ART Observation": ([Observation: Concepts."Currently on ART"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is currently receiving antiretroviral therapy @pseudocode: "Currently on ART" = TRUE */ define "Client is currently receiving antiretroviral therapy": exists("Currently on ART Observation") and First("Currently on ART Observation").value = true /* @input: Client is currently not receiving antiretroviral therapy @pseudocode: "Currently on ART" = FALSE */ define "Client is currently not receiving antiretroviral therapy": not exists("Currently on ART Observation") or First("Currently on ART Observation").value = false /* @internal: Immunologically stable Observation */ define "Immunologically stable Observation": ([Observation: Concepts."Immunologically stable"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunologically stable @pseudocode: "Immunologically stable" = TRUE */ define "Client is immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = true /* @input: Client is not immunologically stable @pseudocode: "Immunologically stable" = FALSE */ define "Client is not immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = false /* @internal: TB infection test result Observation */ define "TB infection test result Observation": ([Observation: Concepts."TB infection test result"] O sort by end of effective.toInterval() desc).complete() /* @input: Client's TB infection test result is negative @pseudocode: "TB infection test result" = "Negative" */ define "Client's TB infection test result is negative": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Negative" /* @input: Client's TB infection test result is unknown (test not done or no result yet) @pseudocode: "TB infection test result" IS NULL */ define "Client's TB infection test result is unknown (test not done or no result yet)": not exists( "TB infection test result Observation" ) or ( not ("Client's TB infection test result is negative") and not ("Client's TB infection test result is positive") ) /* @input: Client's TB infection test result is positive @pseudocode: "TB infection test result" = "Positive" */ define "Client's TB infection test result is positive": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Positive" /* @internal: Clinically well Observation */ define "Clinically well Observation": ([Observation: Concepts."Clinically well"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is not clinically well @pseudocode: "Clinically well" = FALSE */ define "Client is not clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = false /* @input: Client is clinically well @pseudocode: "Clinically well" = TRUE */ define "Client is clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = true /* @internal: Immunocompromised Observation */ define "Immunocompromised Observation": ([Observation: Concepts."Immunocompromised"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunocompromised @pseudocode: "Immunocompromised" = TRUE */ define "Client is immunocompromised": exists( "Immunocompromised Observation" ) and First( "Immunocompromised Observation" ).value = true /* @input: Client is not immunocompromised @pseudocode: "Immunocompromised" ≠ TRUE */ define "Client is not immunocompromised": not "Client is immunocompromised" /* @internal: Birth weight in grams Observation */ define "Birth weight in grams Observation": ([Observation: Concepts."Birth weight in grams"] O sort by end of effective.toInterval() desc).complete() define "Birth weight in grams Value": First("Birth weight in grams Observation").value as FHIR.Quantity define "Birth weight in grams": "Birth weight in grams Value".value as FHIR.decimal /* @input: Client's weight at birth was over 2000 g @pseudocode: "Birth weight in grams" ≥ 2000 */ define "Client's weight at birth was over 2000 g": "Birth weight in grams" >= 2000 /* @input: Client's weight at birth was below 2000 g @pseudocode: "Birth weight in grams" < 2000 */ define "Client's weight at birth was below 2000 g": "Birth weight in grams" < 2000 /* @internal: Preterm birth Observation */ define "Preterm birth Observation": ([Observation: Concepts."Preterm birth"]).complete() /* @input: Client was not a premature infant at birth @pseudocode: "Preterm birth" ≠ TRUE */ define "Client was not a premature infant at birth": not "Client was a premature infant at birth" /* @input: Client was a premature infant at birth @pseudocode: "Preterm birth" = TRUE */ define "Client was a premature infant at birth": exists( "Preterm birth Observation" O where O.value = true ) /* @internal: Completed the primary vaccination series Observation */ define "Completed the primary vaccination series Observation": ([Observation: Concepts."Completed the primary vaccination series"]).complete() /* @internal: At high risk for pneumococcal infection Observation */ define "At high risk for pneumococcal infection Observation": ([Observation: Concepts."At high risk for pneumococcal infection"]).complete() /* @input: Client is at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = TRUE */ define "Client is at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = true ) /* @input: Client is not at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = FALSE */ define "Client is not at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = false ) /* @internal: Date when primary vaccination series was completed Observation */ define "Date when primary vaccination series was completed Observation": ([Observation: Concepts."Date when primary vaccination series was completed"] O sort by end of effective.toInterval() desc).complete() /* @internal: Completed the booster series Observation */ define "Completed the booster series Observation": ([Observation: Concepts."Completed the booster series"]).complete()````: **Url: **
  * ?: [IMMZElements](Library-IMMZElements.md)
* * **Content: **text/cql: ````library IMMZElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZConcepts called Concepts include IMMZCommon called Common context Patient /** * @dataElement All Doses Administered to Patient */ define "Doses Administered to Patient": [Immunization] I where I.status = 'completed' and I.isSubpotent is not true /* @dataElement: Draft Medication Request for Patient */ define "Draft Medication Request for Patient": [MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal' sort by date from (authoredOn as FHIR.dateTime) desc /* @dataElement: Live attenuated vaccines */ define "Live Attenuated Vaccines": "Doses Administered to Patient" I where I.vaccineCode in Concepts."Live Attenuated" /* @dataElement: Date and time of last live attenuated vaccine */ define "Date of Latest Live Attenuated Vaccine": date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval() /** * @dataElement Patient age in years */ define "Current Patient Age In Years": AgeInYearsAt(Today()) /** * @dataElement Patient age in months */ define "Current Patient Age In Months": AgeInMonthsAt(Today()) /** * @dataElement Patient age in weeks */ define "Current Patient Age In Weeks": AgeInWeeksAt(Today()) /** * @dataElement Patient age in days */ define "Current Patient Age In Days": AgeInDaysAt(Today()) /* @input: No live vaccine was administered @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL */ define "No live vaccine was administered": not exists("Live Attenuated Vaccines") /* @input: Live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks */ define "Live vaccine was administered in the last 4 weeks": "Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4 /* @input: No live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks */ define "No live vaccine was administered in the last 4 weeks": not("Live vaccine was administered in the last 4 weeks") /* @internal: Potential contraindications observations */ define "Potential contraindications": ([Observation: Concepts."Potential contraindications"]).complete() /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" */ define "The client is pregnant": exists "CI Currently pregnant Observation" or exists "CI Currently pregnant Condition" or exists WE."Pregnant Observation" /* @internal: Observation for currently pregnant */ define "CI Currently pregnant Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Currently pregnant" /* @internal: Condition for currently pregnant */ define "CI Currently pregnant Condition": [Condition: Concepts."CI-Currently pregnant"] /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" */ define "The client has history of anaphylactic reactions": exists "CI History of anaphylactic reactions Observation" or exists "CI History of anaphylactic reactions Condition" /* @internal: Observation for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-History of anaphylactic reactions" /* @internal: Condition for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Condition": [Condition: Concepts."CI-History of anaphylactic reactions"] /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" */ define "The client has history of severe allergic reactions": exists "CI Severe allergic reactions Observation" or exists "CI Severe allergic reactions Condition" /* @internal: Observation for Severe allergic reactions */ define "CI Severe allergic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe allergic reactions" /* @internal: Condition for Severe allergic reactions */ define "CI Severe allergic reactions Condition": [Condition: Concepts."CI-Severe allergic reactions"] /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" */ define "The client is severely immunocompromised": exists "CI Severely immunocompromised Observation" or exists "CI Severely immunocompromised Condition" /* @internal: Observation for Severely immunocompromised */ define "CI Severely immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunocompromised" /* @internal: Condition for Severely immunocompromised */ define "CI Severely immunocompromised Condition": [Condition: Concepts."CI-Severely immunocompromised"] /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" */ define "The client is severely immunosuppressed": exists "CI Severely immunosuppressed Observation" or exists "CI Severely immunosuppressed Condition" /* @internal: Observation for Severely immunosuppressed */ define "CI Severely immunosuppressed Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunosuppressed" /* @internal: Condition for Severely immunosuppressed */ define "CI Severely immunosuppressed Condition": [Condition: Concepts."CI-Severely immunosuppressed"] /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" */ define "The client has a symptomatic HIV infection": exists "CI Symptomatic HIV infection Observation" or exists "CI Symptomatic HIV infection Condition" /* @internal: Observation for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Symptomatic HIV infection" /* @internal: Condition for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Condition": [Condition: Concepts."CI-Symptomatic HIV infection"] /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" */ define "The client has immunodeficiency syndromes": exists "CI Immunodeficiency syndromes Observation" or exists "CI Immunodeficiency syndromes Condition" /* @internal: Observation for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunodeficiency syndromes" /* @internal: Condition for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Condition": [Condition: Concepts."CI-Immunodeficiency syndromes"] /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" */ define "The client is exposed to immunosuppressive treatment": exists "CI Exposed to immunosuppressive treatment Observation" or exists "CI Exposed to immunosuppressive treatment Condition" /* @internal: Observation for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Exposed to immunosuppressive treatment" /* @internal: Condition for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Condition": [Condition: Concepts."CI-Exposed to immunosuppressive treatment"] /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" */ define "The client currently has a severe acute illness": exists "CI Severe acute illness Observation" or exists "CI Severe acute illness Condition" /* @internal: Observation for Severe acute illness */ define "CI Severe acute illness Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe acute illness" /* @internal: Condition for Severe acute illness */ define "CI Severe acute illness Condition": [Condition: Concepts."CI-Severe acute illness"] /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" */ define "The client has prior history of intussusception": exists "CI Prior history of intussusception Observation" or exists "CI Prior history of intussusception Condition" /* @internal: Observation for Prior history of intussusception */ define "CI Prior history of intussusception Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Prior history of intussusception" /* @internal: Condition for Prior history of intussusception */ define "CI Prior history of intussusception Condition": [Condition: Concepts."CI-Prior history of intussusception"] /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" */ define "The client has altered immunocompetence": exists "CI Altered immunocompetence Observation" or exists "CI Altered immunocompetence Condition" /* @internal: Observation for Altered immunocompetence */ define "CI Altered immunocompetence Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Altered immunocompetence" /* @internal: Condition for Altered immunocompetence */ define "CI Altered immunocompetence Condition": [Condition: Concepts."CI-Altered immunocompetence"] /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" */ define "The client has spina bifida": exists "CI Spina bifida Observation" or exists "CI Spina bifida Condition" /* @internal: Observation for Spina bifida */ define "CI Spina bifida Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Spina bifida" /* @internal: Condition for Spina bifida */ define "CI Spina bifida Condition": [Condition: Concepts."CI-Spina bifida"] /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" */ define "The client has bladder exstrophy": exists "CI Bladder exstrophy Observation" or exists "CI Bladder exstrophy Condition" /* @internal: Observation for Bladder exstrophy */ define "CI Bladder exstrophy Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Bladder exstrophy" /* @internal: Condition for Bladder exstrophy */ define "CI Bladder exstrophy Condition": [Condition: Concepts."CI-Bladder exstrophy"] /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" */ define "The client is immunocompromised": "Client is immunocompromised" or exists "CI Immunocompromised Observation" or exists "CI Immunocompromised Condition" /* @internal: Observation for Immunocompromised */ define "CI Immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunocompromised" /* @internal: Condition for Immunocompromised */ define "CI Immunocompromised Condition": [Condition: Concepts."CI-Immunocompromised"] /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" */ define "The client is planning to get pregnant in next month": exists "CI Planning to get pregnant in the next month Observation" or exists "CI Planning to get pregnant in the next month Condition" /* @internal: Observation for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Planning to get pregnant in the next month" /* @internal: Condition for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Condition": [Condition: Concepts."CI-Planning to get pregnant in the next month"] /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" */ define "The client is receiving blood products": exists "CI Receiving blood products Observation" or exists "CI Receiving blood products Condition" /* @internal: Observation for Receiving blood products */ define "CI Receiving blood products Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Receiving blood products" /* @internal: Condition for Receiving blood products */ define "CI Receiving blood products Condition": [Condition: Concepts."CI-Receiving blood products"] /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" */ define "The client has TB disease": exists "CI TB disease Observation" or exists "CI TB disease Condition" /* @internal: Observation for TB disease */ define "CI TB disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-TB disease" /* @internal: Condition for TB disease */ define "CI TB disease Condition": [Condition: Concepts."CI-TB disease"] /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" */ define "The client is lactating": exists "CI Breastfeeding Observation" or exists "CI Breastfeeding Condition" /* @internal: Observation for Breastfeeding */ define "CI Breastfeeding Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Breastfeeding" /* @internal: Condition for Breastfeeding */ define "CI Breastfeeding Condition": [Condition: Concepts."CI-Breastfeeding"] /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" */ define "The client has acute gastroenteritis": exists "CI Acute gastroenteritis Observation" or exists "CI Acute gastroenteritis Condition" /* @internal: Observation for Acute gastroenteritis */ define "CI Acute gastroenteritis Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Acute gastroenteritis" /* @internal: Condition for Acute gastroenteritis */ define "CI Acute gastroenteritis Condition": [Condition: Concepts."CI-Acute gastroenteritis"] /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" */ define "The client has moderate to severe fever": exists "CI Moderate to severe fever Observation" or exists "CI Moderate to severe fever Condition" /* @internal: Observation for Moderate to severe fever */ define "CI Moderate to severe fever Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Moderate to severe fever" /* @internal: Condition for Moderate to severe fever */ define "CI Moderate to severe fever Condition": [Condition: Concepts."CI-Moderate to severe fever"] /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" */ define "The client has hypersensitivity to any component of the vaccine": exists "CI Hypersensitivity to vaccine components Observation" or exists "CI Hypersensitivity to vaccine components Condition" /* @internal: Observation for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Hypersensitivity to vaccine components" /* @internal: Condition for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Condition": [Condition: Concepts."CI-Hypersensitivity to vaccine components"] /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" */ define "The client is currently taking antibiotics": exists "CI Taking antibiotics Observation" or exists "CI Taking antibiotics Condition" /* @internal: Observation for Taking antibiotics */ define "CI Taking antibiotics Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Taking antibiotics" /* @internal: Condition for Taking antibiotics */ define "CI Taking antibiotics Condition": [Condition: Concepts."CI-Taking antibiotics"] /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" */ define "The client has chronic gastrointestinal disease": exists "CI Chronic gastrointestinal disease Observation" or exists "CI Chronic gastrointestinal disease Condition" /* @internal: Observation for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Chronic gastrointestinal disease" /* @internal: Condition for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Condition": [Condition: Concepts."CI-Chronic gastrointestinal disease"] /* @internal: HIV Status Observation */ define "HIV status Observation": ([Observation: Concepts."HIV status"]).complete() /* @input: Client's HIV status is negative or unknown @pseudocode: "HIV status" ≠ "HIV-positive" */ define "Client's HIV status is negative or unknown": not "Client's HIV status is positive" /* @input: Client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" */ define "Client's HIV status is positive": exists( "HIV status Observation" O where O.value ~ Concepts."HIV-positive" ) /* @internal: Currently on ART Observation */ define "Currently on ART Observation": ([Observation: Concepts."Currently on ART"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is currently receiving antiretroviral therapy @pseudocode: "Currently on ART" = TRUE */ define "Client is currently receiving antiretroviral therapy": exists("Currently on ART Observation") and First("Currently on ART Observation").value = true /* @input: Client is currently not receiving antiretroviral therapy @pseudocode: "Currently on ART" = FALSE */ define "Client is currently not receiving antiretroviral therapy": not exists("Currently on ART Observation") or First("Currently on ART Observation").value = false /* @internal: Immunologically stable Observation */ define "Immunologically stable Observation": ([Observation: Concepts."Immunologically stable"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunologically stable @pseudocode: "Immunologically stable" = TRUE */ define "Client is immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = true /* @input: Client is not immunologically stable @pseudocode: "Immunologically stable" = FALSE */ define "Client is not immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = false /* @internal: TB infection test result Observation */ define "TB infection test result Observation": ([Observation: Concepts."TB infection test result"] O sort by end of effective.toInterval() desc).complete() /* @input: Client's TB infection test result is negative @pseudocode: "TB infection test result" = "Negative" */ define "Client's TB infection test result is negative": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Negative" /* @input: Client's TB infection test result is unknown (test not done or no result yet) @pseudocode: "TB infection test result" IS NULL */ define "Client's TB infection test result is unknown (test not done or no result yet)": not exists( "TB infection test result Observation" ) or ( not ("Client's TB infection test result is negative") and not ("Client's TB infection test result is positive") ) /* @input: Client's TB infection test result is positive @pseudocode: "TB infection test result" = "Positive" */ define "Client's TB infection test result is positive": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Positive" /* @internal: Clinically well Observation */ define "Clinically well Observation": ([Observation: Concepts."Clinically well"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is not clinically well @pseudocode: "Clinically well" = FALSE */ define "Client is not clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = false /* @input: Client is clinically well @pseudocode: "Clinically well" = TRUE */ define "Client is clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = true /* @internal: Immunocompromised Observation */ define "Immunocompromised Observation": ([Observation: Concepts."Immunocompromised"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunocompromised @pseudocode: "Immunocompromised" = TRUE */ define "Client is immunocompromised": exists( "Immunocompromised Observation" ) and First( "Immunocompromised Observation" ).value = true /* @input: Client is not immunocompromised @pseudocode: "Immunocompromised" ≠ TRUE */ define "Client is not immunocompromised": not "Client is immunocompromised" /* @internal: Birth weight in grams Observation */ define "Birth weight in grams Observation": ([Observation: Concepts."Birth weight in grams"] O sort by end of effective.toInterval() desc).complete() define "Birth weight in grams Value": First("Birth weight in grams Observation").value as FHIR.Quantity define "Birth weight in grams": "Birth weight in grams Value".value as FHIR.decimal /* @input: Client's weight at birth was over 2000 g @pseudocode: "Birth weight in grams" ≥ 2000 */ define "Client's weight at birth was over 2000 g": "Birth weight in grams" >= 2000 /* @input: Client's weight at birth was below 2000 g @pseudocode: "Birth weight in grams" < 2000 */ define "Client's weight at birth was below 2000 g": "Birth weight in grams" < 2000 /* @internal: Preterm birth Observation */ define "Preterm birth Observation": ([Observation: Concepts."Preterm birth"]).complete() /* @input: Client was not a premature infant at birth @pseudocode: "Preterm birth" ≠ TRUE */ define "Client was not a premature infant at birth": not "Client was a premature infant at birth" /* @input: Client was a premature infant at birth @pseudocode: "Preterm birth" = TRUE */ define "Client was a premature infant at birth": exists( "Preterm birth Observation" O where O.value = true ) /* @internal: Completed the primary vaccination series Observation */ define "Completed the primary vaccination series Observation": ([Observation: Concepts."Completed the primary vaccination series"]).complete() /* @internal: At high risk for pneumococcal infection Observation */ define "At high risk for pneumococcal infection Observation": ([Observation: Concepts."At high risk for pneumococcal infection"]).complete() /* @input: Client is at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = TRUE */ define "Client is at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = true ) /* @input: Client is not at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = FALSE */ define "Client is not at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = false ) /* @internal: Date when primary vaccination series was completed Observation */ define "Date when primary vaccination series was completed Observation": ([Observation: Concepts."Date when primary vaccination series was completed"] O sort by end of effective.toInterval() desc).complete() /* @internal: Completed the booster series Observation */ define "Completed the booster series Observation": ([Observation: Concepts."Completed the booster series"]).complete()````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````library IMMZElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZConcepts called Concepts include IMMZCommon called Common context Patient /** * @dataElement All Doses Administered to Patient */ define "Doses Administered to Patient": [Immunization] I where I.status = 'completed' and I.isSubpotent is not true /* @dataElement: Draft Medication Request for Patient */ define "Draft Medication Request for Patient": [MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal' sort by date from (authoredOn as FHIR.dateTime) desc /* @dataElement: Live attenuated vaccines */ define "Live Attenuated Vaccines": "Doses Administered to Patient" I where I.vaccineCode in Concepts."Live Attenuated" /* @dataElement: Date and time of last live attenuated vaccine */ define "Date of Latest Live Attenuated Vaccine": date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval() /** * @dataElement Patient age in years */ define "Current Patient Age In Years": AgeInYearsAt(Today()) /** * @dataElement Patient age in months */ define "Current Patient Age In Months": AgeInMonthsAt(Today()) /** * @dataElement Patient age in weeks */ define "Current Patient Age In Weeks": AgeInWeeksAt(Today()) /** * @dataElement Patient age in days */ define "Current Patient Age In Days": AgeInDaysAt(Today()) /* @input: No live vaccine was administered @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL */ define "No live vaccine was administered": not exists("Live Attenuated Vaccines") /* @input: Live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks */ define "Live vaccine was administered in the last 4 weeks": "Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4 /* @input: No live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks */ define "No live vaccine was administered in the last 4 weeks": not("Live vaccine was administered in the last 4 weeks") /* @internal: Potential contraindications observations */ define "Potential contraindications": ([Observation: Concepts."Potential contraindications"]).complete() /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" */ define "The client is pregnant": exists "CI Currently pregnant Observation" or exists "CI Currently pregnant Condition" or exists WE."Pregnant Observation" /* @internal: Observation for currently pregnant */ define "CI Currently pregnant Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Currently pregnant" /* @internal: Condition for currently pregnant */ define "CI Currently pregnant Condition": [Condition: Concepts."CI-Currently pregnant"] /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" */ define "The client has history of anaphylactic reactions": exists "CI History of anaphylactic reactions Observation" or exists "CI History of anaphylactic reactions Condition" /* @internal: Observation for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-History of anaphylactic reactions" /* @internal: Condition for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Condition": [Condition: Concepts."CI-History of anaphylactic reactions"] /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" */ define "The client has history of severe allergic reactions": exists "CI Severe allergic reactions Observation" or exists "CI Severe allergic reactions Condition" /* @internal: Observation for Severe allergic reactions */ define "CI Severe allergic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe allergic reactions" /* @internal: Condition for Severe allergic reactions */ define "CI Severe allergic reactions Condition": [Condition: Concepts."CI-Severe allergic reactions"] /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" */ define "The client is severely immunocompromised": exists "CI Severely immunocompromised Observation" or exists "CI Severely immunocompromised Condition" /* @internal: Observation for Severely immunocompromised */ define "CI Severely immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunocompromised" /* @internal: Condition for Severely immunocompromised */ define "CI Severely immunocompromised Condition": [Condition: Concepts."CI-Severely immunocompromised"] /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" */ define "The client is severely immunosuppressed": exists "CI Severely immunosuppressed Observation" or exists "CI Severely immunosuppressed Condition" /* @internal: Observation for Severely immunosuppressed */ define "CI Severely immunosuppressed Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunosuppressed" /* @internal: Condition for Severely immunosuppressed */ define "CI Severely immunosuppressed Condition": [Condition: Concepts."CI-Severely immunosuppressed"] /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" */ define "The client has a symptomatic HIV infection": exists "CI Symptomatic HIV infection Observation" or exists "CI Symptomatic HIV infection Condition" /* @internal: Observation for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Symptomatic HIV infection" /* @internal: Condition for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Condition": [Condition: Concepts."CI-Symptomatic HIV infection"] /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" */ define "The client has immunodeficiency syndromes": exists "CI Immunodeficiency syndromes Observation" or exists "CI Immunodeficiency syndromes Condition" /* @internal: Observation for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunodeficiency syndromes" /* @internal: Condition for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Condition": [Condition: Concepts."CI-Immunodeficiency syndromes"] /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" */ define "The client is exposed to immunosuppressive treatment": exists "CI Exposed to immunosuppressive treatment Observation" or exists "CI Exposed to immunosuppressive treatment Condition" /* @internal: Observation for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Exposed to immunosuppressive treatment" /* @internal: Condition for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Condition": [Condition: Concepts."CI-Exposed to immunosuppressive treatment"] /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" */ define "The client currently has a severe acute illness": exists "CI Severe acute illness Observation" or exists "CI Severe acute illness Condition" /* @internal: Observation for Severe acute illness */ define "CI Severe acute illness Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe acute illness" /* @internal: Condition for Severe acute illness */ define "CI Severe acute illness Condition": [Condition: Concepts."CI-Severe acute illness"] /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" */ define "The client has prior history of intussusception": exists "CI Prior history of intussusception Observation" or exists "CI Prior history of intussusception Condition" /* @internal: Observation for Prior history of intussusception */ define "CI Prior history of intussusception Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Prior history of intussusception" /* @internal: Condition for Prior history of intussusception */ define "CI Prior history of intussusception Condition": [Condition: Concepts."CI-Prior history of intussusception"] /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" */ define "The client has altered immunocompetence": exists "CI Altered immunocompetence Observation" or exists "CI Altered immunocompetence Condition" /* @internal: Observation for Altered immunocompetence */ define "CI Altered immunocompetence Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Altered immunocompetence" /* @internal: Condition for Altered immunocompetence */ define "CI Altered immunocompetence Condition": [Condition: Concepts."CI-Altered immunocompetence"] /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" */ define "The client has spina bifida": exists "CI Spina bifida Observation" or exists "CI Spina bifida Condition" /* @internal: Observation for Spina bifida */ define "CI Spina bifida Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Spina bifida" /* @internal: Condition for Spina bifida */ define "CI Spina bifida Condition": [Condition: Concepts."CI-Spina bifida"] /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" */ define "The client has bladder exstrophy": exists "CI Bladder exstrophy Observation" or exists "CI Bladder exstrophy Condition" /* @internal: Observation for Bladder exstrophy */ define "CI Bladder exstrophy Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Bladder exstrophy" /* @internal: Condition for Bladder exstrophy */ define "CI Bladder exstrophy Condition": [Condition: Concepts."CI-Bladder exstrophy"] /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" */ define "The client is immunocompromised": "Client is immunocompromised" or exists "CI Immunocompromised Observation" or exists "CI Immunocompromised Condition" /* @internal: Observation for Immunocompromised */ define "CI Immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunocompromised" /* @internal: Condition for Immunocompromised */ define "CI Immunocompromised Condition": [Condition: Concepts."CI-Immunocompromised"] /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" */ define "The client is planning to get pregnant in next month": exists "CI Planning to get pregnant in the next month Observation" or exists "CI Planning to get pregnant in the next month Condition" /* @internal: Observation for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Planning to get pregnant in the next month" /* @internal: Condition for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Condition": [Condition: Concepts."CI-Planning to get pregnant in the next month"] /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" */ define "The client is receiving blood products": exists "CI Receiving blood products Observation" or exists "CI Receiving blood products Condition" /* @internal: Observation for Receiving blood products */ define "CI Receiving blood products Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Receiving blood products" /* @internal: Condition for Receiving blood products */ define "CI Receiving blood products Condition": [Condition: Concepts."CI-Receiving blood products"] /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" */ define "The client has TB disease": exists "CI TB disease Observation" or exists "CI TB disease Condition" /* @internal: Observation for TB disease */ define "CI TB disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-TB disease" /* @internal: Condition for TB disease */ define "CI TB disease Condition": [Condition: Concepts."CI-TB disease"] /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" */ define "The client is lactating": exists "CI Breastfeeding Observation" or exists "CI Breastfeeding Condition" /* @internal: Observation for Breastfeeding */ define "CI Breastfeeding Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Breastfeeding" /* @internal: Condition for Breastfeeding */ define "CI Breastfeeding Condition": [Condition: Concepts."CI-Breastfeeding"] /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" */ define "The client has acute gastroenteritis": exists "CI Acute gastroenteritis Observation" or exists "CI Acute gastroenteritis Condition" /* @internal: Observation for Acute gastroenteritis */ define "CI Acute gastroenteritis Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Acute gastroenteritis" /* @internal: Condition for Acute gastroenteritis */ define "CI Acute gastroenteritis Condition": [Condition: Concepts."CI-Acute gastroenteritis"] /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" */ define "The client has moderate to severe fever": exists "CI Moderate to severe fever Observation" or exists "CI Moderate to severe fever Condition" /* @internal: Observation for Moderate to severe fever */ define "CI Moderate to severe fever Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Moderate to severe fever" /* @internal: Condition for Moderate to severe fever */ define "CI Moderate to severe fever Condition": [Condition: Concepts."CI-Moderate to severe fever"] /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" */ define "The client has hypersensitivity to any component of the vaccine": exists "CI Hypersensitivity to vaccine components Observation" or exists "CI Hypersensitivity to vaccine components Condition" /* @internal: Observation for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Hypersensitivity to vaccine components" /* @internal: Condition for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Condition": [Condition: Concepts."CI-Hypersensitivity to vaccine components"] /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" */ define "The client is currently taking antibiotics": exists "CI Taking antibiotics Observation" or exists "CI Taking antibiotics Condition" /* @internal: Observation for Taking antibiotics */ define "CI Taking antibiotics Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Taking antibiotics" /* @internal: Condition for Taking antibiotics */ define "CI Taking antibiotics Condition": [Condition: Concepts."CI-Taking antibiotics"] /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" */ define "The client has chronic gastrointestinal disease": exists "CI Chronic gastrointestinal disease Observation" or exists "CI Chronic gastrointestinal disease Condition" /* @internal: Observation for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Chronic gastrointestinal disease" /* @internal: Condition for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Condition": [Condition: Concepts."CI-Chronic gastrointestinal disease"] /* @internal: HIV Status Observation */ define "HIV status Observation": ([Observation: Concepts."HIV status"]).complete() /* @input: Client's HIV status is negative or unknown @pseudocode: "HIV status" ≠ "HIV-positive" */ define "Client's HIV status is negative or unknown": not "Client's HIV status is positive" /* @input: Client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" */ define "Client's HIV status is positive": exists( "HIV status Observation" O where O.value ~ Concepts."HIV-positive" ) /* @internal: Currently on ART Observation */ define "Currently on ART Observation": ([Observation: Concepts."Currently on ART"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is currently receiving antiretroviral therapy @pseudocode: "Currently on ART" = TRUE */ define "Client is currently receiving antiretroviral therapy": exists("Currently on ART Observation") and First("Currently on ART Observation").value = true /* @input: Client is currently not receiving antiretroviral therapy @pseudocode: "Currently on ART" = FALSE */ define "Client is currently not receiving antiretroviral therapy": not exists("Currently on ART Observation") or First("Currently on ART Observation").value = false /* @internal: Immunologically stable Observation */ define "Immunologically stable Observation": ([Observation: Concepts."Immunologically stable"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunologically stable @pseudocode: "Immunologically stable" = TRUE */ define "Client is immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = true /* @input: Client is not immunologically stable @pseudocode: "Immunologically stable" = FALSE */ define "Client is not immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = false /* @internal: TB infection test result Observation */ define "TB infection test result Observation": ([Observation: Concepts."TB infection test result"] O sort by end of effective.toInterval() desc).complete() /* @input: Client's TB infection test result is negative @pseudocode: "TB infection test result" = "Negative" */ define "Client's TB infection test result is negative": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Negative" /* @input: Client's TB infection test result is unknown (test not done or no result yet) @pseudocode: "TB infection test result" IS NULL */ define "Client's TB infection test result is unknown (test not done or no result yet)": not exists( "TB infection test result Observation" ) or ( not ("Client's TB infection test result is negative") and not ("Client's TB infection test result is positive") ) /* @input: Client's TB infection test result is positive @pseudocode: "TB infection test result" = "Positive" */ define "Client's TB infection test result is positive": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Positive" /* @internal: Clinically well Observation */ define "Clinically well Observation": ([Observation: Concepts."Clinically well"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is not clinically well @pseudocode: "Clinically well" = FALSE */ define "Client is not clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = false /* @input: Client is clinically well @pseudocode: "Clinically well" = TRUE */ define "Client is clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = true /* @internal: Immunocompromised Observation */ define "Immunocompromised Observation": ([Observation: Concepts."Immunocompromised"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunocompromised @pseudocode: "Immunocompromised" = TRUE */ define "Client is immunocompromised": exists( "Immunocompromised Observation" ) and First( "Immunocompromised Observation" ).value = true /* @input: Client is not immunocompromised @pseudocode: "Immunocompromised" ≠ TRUE */ define "Client is not immunocompromised": not "Client is immunocompromised" /* @internal: Birth weight in grams Observation */ define "Birth weight in grams Observation": ([Observation: Concepts."Birth weight in grams"] O sort by end of effective.toInterval() desc).complete() define "Birth weight in grams Value": First("Birth weight in grams Observation").value as FHIR.Quantity define "Birth weight in grams": "Birth weight in grams Value".value as FHIR.decimal /* @input: Client's weight at birth was over 2000 g @pseudocode: "Birth weight in grams" ≥ 2000 */ define "Client's weight at birth was over 2000 g": "Birth weight in grams" >= 2000 /* @input: Client's weight at birth was below 2000 g @pseudocode: "Birth weight in grams" < 2000 */ define "Client's weight at birth was below 2000 g": "Birth weight in grams" < 2000 /* @internal: Preterm birth Observation */ define "Preterm birth Observation": ([Observation: Concepts."Preterm birth"]).complete() /* @input: Client was not a premature infant at birth @pseudocode: "Preterm birth" ≠ TRUE */ define "Client was not a premature infant at birth": not "Client was a premature infant at birth" /* @input: Client was a premature infant at birth @pseudocode: "Preterm birth" = TRUE */ define "Client was a premature infant at birth": exists( "Preterm birth Observation" O where O.value = true ) /* @internal: Completed the primary vaccination series Observation */ define "Completed the primary vaccination series Observation": ([Observation: Concepts."Completed the primary vaccination series"]).complete() /* @internal: At high risk for pneumococcal infection Observation */ define "At high risk for pneumococcal infection Observation": ([Observation: Concepts."At high risk for pneumococcal infection"]).complete() /* @input: Client is at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = TRUE */ define "Client is at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = true ) /* @input: Client is not at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = FALSE */ define "Client is not at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = false ) /* @internal: Date when primary vaccination series was completed Observation */ define "Date when primary vaccination series was completed Observation": ([Observation: Concepts."Date when primary vaccination series was completed"] O sort by end of effective.toInterval() desc).complete() /* @internal: Completed the booster series Observation */ define "Completed the booster series Observation": ([Observation: Concepts."Completed the booster series"]).complete()````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````library IMMZElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZConcepts called Concepts include IMMZCommon called Common context Patient /** * @dataElement All Doses Administered to Patient */ define "Doses Administered to Patient": [Immunization] I where I.status = 'completed' and I.isSubpotent is not true /* @dataElement: Draft Medication Request for Patient */ define "Draft Medication Request for Patient": [MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal' sort by date from (authoredOn as FHIR.dateTime) desc /* @dataElement: Live attenuated vaccines */ define "Live Attenuated Vaccines": "Doses Administered to Patient" I where I.vaccineCode in Concepts."Live Attenuated" /* @dataElement: Date and time of last live attenuated vaccine */ define "Date of Latest Live Attenuated Vaccine": date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval() /** * @dataElement Patient age in years */ define "Current Patient Age In Years": AgeInYearsAt(Today()) /** * @dataElement Patient age in months */ define "Current Patient Age In Months": AgeInMonthsAt(Today()) /** * @dataElement Patient age in weeks */ define "Current Patient Age In Weeks": AgeInWeeksAt(Today()) /** * @dataElement Patient age in days */ define "Current Patient Age In Days": AgeInDaysAt(Today()) /* @input: No live vaccine was administered @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL */ define "No live vaccine was administered": not exists("Live Attenuated Vaccines") /* @input: Live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks */ define "Live vaccine was administered in the last 4 weeks": "Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4 /* @input: No live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks */ define "No live vaccine was administered in the last 4 weeks": not("Live vaccine was administered in the last 4 weeks") /* @internal: Potential contraindications observations */ define "Potential contraindications": ([Observation: Concepts."Potential contraindications"]).complete() /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" */ define "The client is pregnant": exists "CI Currently pregnant Observation" or exists "CI Currently pregnant Condition" or exists WE."Pregnant Observation" /* @internal: Observation for currently pregnant */ define "CI Currently pregnant Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Currently pregnant" /* @internal: Condition for currently pregnant */ define "CI Currently pregnant Condition": [Condition: Concepts."CI-Currently pregnant"] /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" */ define "The client has history of anaphylactic reactions": exists "CI History of anaphylactic reactions Observation" or exists "CI History of anaphylactic reactions Condition" /* @internal: Observation for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-History of anaphylactic reactions" /* @internal: Condition for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Condition": [Condition: Concepts."CI-History of anaphylactic reactions"] /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" */ define "The client has history of severe allergic reactions": exists "CI Severe allergic reactions Observation" or exists "CI Severe allergic reactions Condition" /* @internal: Observation for Severe allergic reactions */ define "CI Severe allergic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe allergic reactions" /* @internal: Condition for Severe allergic reactions */ define "CI Severe allergic reactions Condition": [Condition: Concepts."CI-Severe allergic reactions"] /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" */ define "The client is severely immunocompromised": exists "CI Severely immunocompromised Observation" or exists "CI Severely immunocompromised Condition" /* @internal: Observation for Severely immunocompromised */ define "CI Severely immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunocompromised" /* @internal: Condition for Severely immunocompromised */ define "CI Severely immunocompromised Condition": [Condition: Concepts."CI-Severely immunocompromised"] /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" */ define "The client is severely immunosuppressed": exists "CI Severely immunosuppressed Observation" or exists "CI Severely immunosuppressed Condition" /* @internal: Observation for Severely immunosuppressed */ define "CI Severely immunosuppressed Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunosuppressed" /* @internal: Condition for Severely immunosuppressed */ define "CI Severely immunosuppressed Condition": [Condition: Concepts."CI-Severely immunosuppressed"] /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" */ define "The client has a symptomatic HIV infection": exists "CI Symptomatic HIV infection Observation" or exists "CI Symptomatic HIV infection Condition" /* @internal: Observation for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Symptomatic HIV infection" /* @internal: Condition for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Condition": [Condition: Concepts."CI-Symptomatic HIV infection"] /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" */ define "The client has immunodeficiency syndromes": exists "CI Immunodeficiency syndromes Observation" or exists "CI Immunodeficiency syndromes Condition" /* @internal: Observation for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunodeficiency syndromes" /* @internal: Condition for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Condition": [Condition: Concepts."CI-Immunodeficiency syndromes"] /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" */ define "The client is exposed to immunosuppressive treatment": exists "CI Exposed to immunosuppressive treatment Observation" or exists "CI Exposed to immunosuppressive treatment Condition" /* @internal: Observation for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Exposed to immunosuppressive treatment" /* @internal: Condition for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Condition": [Condition: Concepts."CI-Exposed to immunosuppressive treatment"] /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" */ define "The client currently has a severe acute illness": exists "CI Severe acute illness Observation" or exists "CI Severe acute illness Condition" /* @internal: Observation for Severe acute illness */ define "CI Severe acute illness Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe acute illness" /* @internal: Condition for Severe acute illness */ define "CI Severe acute illness Condition": [Condition: Concepts."CI-Severe acute illness"] /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" */ define "The client has prior history of intussusception": exists "CI Prior history of intussusception Observation" or exists "CI Prior history of intussusception Condition" /* @internal: Observation for Prior history of intussusception */ define "CI Prior history of intussusception Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Prior history of intussusception" /* @internal: Condition for Prior history of intussusception */ define "CI Prior history of intussusception Condition": [Condition: Concepts."CI-Prior history of intussusception"] /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" */ define "The client has altered immunocompetence": exists "CI Altered immunocompetence Observation" or exists "CI Altered immunocompetence Condition" /* @internal: Observation for Altered immunocompetence */ define "CI Altered immunocompetence Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Altered immunocompetence" /* @internal: Condition for Altered immunocompetence */ define "CI Altered immunocompetence Condition": [Condition: Concepts."CI-Altered immunocompetence"] /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" */ define "The client has spina bifida": exists "CI Spina bifida Observation" or exists "CI Spina bifida Condition" /* @internal: Observation for Spina bifida */ define "CI Spina bifida Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Spina bifida" /* @internal: Condition for Spina bifida */ define "CI Spina bifida Condition": [Condition: Concepts."CI-Spina bifida"] /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" */ define "The client has bladder exstrophy": exists "CI Bladder exstrophy Observation" or exists "CI Bladder exstrophy Condition" /* @internal: Observation for Bladder exstrophy */ define "CI Bladder exstrophy Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Bladder exstrophy" /* @internal: Condition for Bladder exstrophy */ define "CI Bladder exstrophy Condition": [Condition: Concepts."CI-Bladder exstrophy"] /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" */ define "The client is immunocompromised": "Client is immunocompromised" or exists "CI Immunocompromised Observation" or exists "CI Immunocompromised Condition" /* @internal: Observation for Immunocompromised */ define "CI Immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunocompromised" /* @internal: Condition for Immunocompromised */ define "CI Immunocompromised Condition": [Condition: Concepts."CI-Immunocompromised"] /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" */ define "The client is planning to get pregnant in next month": exists "CI Planning to get pregnant in the next month Observation" or exists "CI Planning to get pregnant in the next month Condition" /* @internal: Observation for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Planning to get pregnant in the next month" /* @internal: Condition for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Condition": [Condition: Concepts."CI-Planning to get pregnant in the next month"] /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" */ define "The client is receiving blood products": exists "CI Receiving blood products Observation" or exists "CI Receiving blood products Condition" /* @internal: Observation for Receiving blood products */ define "CI Receiving blood products Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Receiving blood products" /* @internal: Condition for Receiving blood products */ define "CI Receiving blood products Condition": [Condition: Concepts."CI-Receiving blood products"] /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" */ define "The client has TB disease": exists "CI TB disease Observation" or exists "CI TB disease Condition" /* @internal: Observation for TB disease */ define "CI TB disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-TB disease" /* @internal: Condition for TB disease */ define "CI TB disease Condition": [Condition: Concepts."CI-TB disease"] /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" */ define "The client is lactating": exists "CI Breastfeeding Observation" or exists "CI Breastfeeding Condition" /* @internal: Observation for Breastfeeding */ define "CI Breastfeeding Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Breastfeeding" /* @internal: Condition for Breastfeeding */ define "CI Breastfeeding Condition": [Condition: Concepts."CI-Breastfeeding"] /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" */ define "The client has acute gastroenteritis": exists "CI Acute gastroenteritis Observation" or exists "CI Acute gastroenteritis Condition" /* @internal: Observation for Acute gastroenteritis */ define "CI Acute gastroenteritis Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Acute gastroenteritis" /* @internal: Condition for Acute gastroenteritis */ define "CI Acute gastroenteritis Condition": [Condition: Concepts."CI-Acute gastroenteritis"] /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" */ define "The client has moderate to severe fever": exists "CI Moderate to severe fever Observation" or exists "CI Moderate to severe fever Condition" /* @internal: Observation for Moderate to severe fever */ define "CI Moderate to severe fever Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Moderate to severe fever" /* @internal: Condition for Moderate to severe fever */ define "CI Moderate to severe fever Condition": [Condition: Concepts."CI-Moderate to severe fever"] /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" */ define "The client has hypersensitivity to any component of the vaccine": exists "CI Hypersensitivity to vaccine components Observation" or exists "CI Hypersensitivity to vaccine components Condition" /* @internal: Observation for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Hypersensitivity to vaccine components" /* @internal: Condition for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Condition": [Condition: Concepts."CI-Hypersensitivity to vaccine components"] /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" */ define "The client is currently taking antibiotics": exists "CI Taking antibiotics Observation" or exists "CI Taking antibiotics Condition" /* @internal: Observation for Taking antibiotics */ define "CI Taking antibiotics Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Taking antibiotics" /* @internal: Condition for Taking antibiotics */ define "CI Taking antibiotics Condition": [Condition: Concepts."CI-Taking antibiotics"] /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" */ define "The client has chronic gastrointestinal disease": exists "CI Chronic gastrointestinal disease Observation" or exists "CI Chronic gastrointestinal disease Condition" /* @internal: Observation for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Chronic gastrointestinal disease" /* @internal: Condition for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Condition": [Condition: Concepts."CI-Chronic gastrointestinal disease"] /* @internal: HIV Status Observation */ define "HIV status Observation": ([Observation: Concepts."HIV status"]).complete() /* @input: Client's HIV status is negative or unknown @pseudocode: "HIV status" ≠ "HIV-positive" */ define "Client's HIV status is negative or unknown": not "Client's HIV status is positive" /* @input: Client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" */ define "Client's HIV status is positive": exists( "HIV status Observation" O where O.value ~ Concepts."HIV-positive" ) /* @internal: Currently on ART Observation */ define "Currently on ART Observation": ([Observation: Concepts."Currently on ART"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is currently receiving antiretroviral therapy @pseudocode: "Currently on ART" = TRUE */ define "Client is currently receiving antiretroviral therapy": exists("Currently on ART Observation") and First("Currently on ART Observation").value = true /* @input: Client is currently not receiving antiretroviral therapy @pseudocode: "Currently on ART" = FALSE */ define "Client is currently not receiving antiretroviral therapy": not exists("Currently on ART Observation") or First("Currently on ART Observation").value = false /* @internal: Immunologically stable Observation */ define "Immunologically stable Observation": ([Observation: Concepts."Immunologically stable"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunologically stable @pseudocode: "Immunologically stable" = TRUE */ define "Client is immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = true /* @input: Client is not immunologically stable @pseudocode: "Immunologically stable" = FALSE */ define "Client is not immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = false /* @internal: TB infection test result Observation */ define "TB infection test result Observation": ([Observation: Concepts."TB infection test result"] O sort by end of effective.toInterval() desc).complete() /* @input: Client's TB infection test result is negative @pseudocode: "TB infection test result" = "Negative" */ define "Client's TB infection test result is negative": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Negative" /* @input: Client's TB infection test result is unknown (test not done or no result yet) @pseudocode: "TB infection test result" IS NULL */ define "Client's TB infection test result is unknown (test not done or no result yet)": not exists( "TB infection test result Observation" ) or ( not ("Client's TB infection test result is negative") and not ("Client's TB infection test result is positive") ) /* @input: Client's TB infection test result is positive @pseudocode: "TB infection test result" = "Positive" */ define "Client's TB infection test result is positive": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Positive" /* @internal: Clinically well Observation */ define "Clinically well Observation": ([Observation: Concepts."Clinically well"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is not clinically well @pseudocode: "Clinically well" = FALSE */ define "Client is not clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = false /* @input: Client is clinically well @pseudocode: "Clinically well" = TRUE */ define "Client is clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = true /* @internal: Immunocompromised Observation */ define "Immunocompromised Observation": ([Observation: Concepts."Immunocompromised"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunocompromised @pseudocode: "Immunocompromised" = TRUE */ define "Client is immunocompromised": exists( "Immunocompromised Observation" ) and First( "Immunocompromised Observation" ).value = true /* @input: Client is not immunocompromised @pseudocode: "Immunocompromised" ≠ TRUE */ define "Client is not immunocompromised": not "Client is immunocompromised" /* @internal: Birth weight in grams Observation */ define "Birth weight in grams Observation": ([Observation: Concepts."Birth weight in grams"] O sort by end of effective.toInterval() desc).complete() define "Birth weight in grams Value": First("Birth weight in grams Observation").value as FHIR.Quantity define "Birth weight in grams": "Birth weight in grams Value".value as FHIR.decimal /* @input: Client's weight at birth was over 2000 g @pseudocode: "Birth weight in grams" ≥ 2000 */ define "Client's weight at birth was over 2000 g": "Birth weight in grams" >= 2000 /* @input: Client's weight at birth was below 2000 g @pseudocode: "Birth weight in grams" < 2000 */ define "Client's weight at birth was below 2000 g": "Birth weight in grams" < 2000 /* @internal: Preterm birth Observation */ define "Preterm birth Observation": ([Observation: Concepts."Preterm birth"]).complete() /* @input: Client was not a premature infant at birth @pseudocode: "Preterm birth" ≠ TRUE */ define "Client was not a premature infant at birth": not "Client was a premature infant at birth" /* @input: Client was a premature infant at birth @pseudocode: "Preterm birth" = TRUE */ define "Client was a premature infant at birth": exists( "Preterm birth Observation" O where O.value = true ) /* @internal: Completed the primary vaccination series Observation */ define "Completed the primary vaccination series Observation": ([Observation: Concepts."Completed the primary vaccination series"]).complete() /* @internal: At high risk for pneumococcal infection Observation */ define "At high risk for pneumococcal infection Observation": ([Observation: Concepts."At high risk for pneumococcal infection"]).complete() /* @input: Client is at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = TRUE */ define "Client is at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = true ) /* @input: Client is not at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = FALSE */ define "Client is not at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = false ) /* @internal: Date when primary vaccination series was completed Observation */ define "Date when primary vaccination series was completed Observation": ([Observation: Concepts."Date when primary vaccination series was completed"] O sort by end of effective.toInterval() desc).complete() /* @internal: Completed the booster series Observation */ define "Completed the booster series Observation": ([Observation: Concepts."Completed the booster series"]).complete()````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````library IMMZElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZConcepts called Concepts include IMMZCommon called Common context Patient /** * @dataElement All Doses Administered to Patient */ define "Doses Administered to Patient": [Immunization] I where I.status = 'completed' and I.isSubpotent is not true /* @dataElement: Draft Medication Request for Patient */ define "Draft Medication Request for Patient": [MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal' sort by date from (authoredOn as FHIR.dateTime) desc /* @dataElement: Live attenuated vaccines */ define "Live Attenuated Vaccines": "Doses Administered to Patient" I where I.vaccineCode in Concepts."Live Attenuated" /* @dataElement: Date and time of last live attenuated vaccine */ define "Date of Latest Live Attenuated Vaccine": date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval() /** * @dataElement Patient age in years */ define "Current Patient Age In Years": AgeInYearsAt(Today()) /** * @dataElement Patient age in months */ define "Current Patient Age In Months": AgeInMonthsAt(Today()) /** * @dataElement Patient age in weeks */ define "Current Patient Age In Weeks": AgeInWeeksAt(Today()) /** * @dataElement Patient age in days */ define "Current Patient Age In Days": AgeInDaysAt(Today()) /* @input: No live vaccine was administered @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL */ define "No live vaccine was administered": not exists("Live Attenuated Vaccines") /* @input: Live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks */ define "Live vaccine was administered in the last 4 weeks": "Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4 /* @input: No live vaccine was administered in the last 4 weeks @pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks */ define "No live vaccine was administered in the last 4 weeks": not("Live vaccine was administered in the last 4 weeks") /* @internal: Potential contraindications observations */ define "Potential contraindications": ([Observation: Concepts."Potential contraindications"]).complete() /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" */ define "The client is pregnant": exists "CI Currently pregnant Observation" or exists "CI Currently pregnant Condition" or exists WE."Pregnant Observation" /* @internal: Observation for currently pregnant */ define "CI Currently pregnant Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Currently pregnant" /* @internal: Condition for currently pregnant */ define "CI Currently pregnant Condition": [Condition: Concepts."CI-Currently pregnant"] /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" */ define "The client has history of anaphylactic reactions": exists "CI History of anaphylactic reactions Observation" or exists "CI History of anaphylactic reactions Condition" /* @internal: Observation for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-History of anaphylactic reactions" /* @internal: Condition for History of anaphylactic reactions */ define "CI History of anaphylactic reactions Condition": [Condition: Concepts."CI-History of anaphylactic reactions"] /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" */ define "The client has history of severe allergic reactions": exists "CI Severe allergic reactions Observation" or exists "CI Severe allergic reactions Condition" /* @internal: Observation for Severe allergic reactions */ define "CI Severe allergic reactions Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe allergic reactions" /* @internal: Condition for Severe allergic reactions */ define "CI Severe allergic reactions Condition": [Condition: Concepts."CI-Severe allergic reactions"] /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" */ define "The client is severely immunocompromised": exists "CI Severely immunocompromised Observation" or exists "CI Severely immunocompromised Condition" /* @internal: Observation for Severely immunocompromised */ define "CI Severely immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunocompromised" /* @internal: Condition for Severely immunocompromised */ define "CI Severely immunocompromised Condition": [Condition: Concepts."CI-Severely immunocompromised"] /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" */ define "The client is severely immunosuppressed": exists "CI Severely immunosuppressed Observation" or exists "CI Severely immunosuppressed Condition" /* @internal: Observation for Severely immunosuppressed */ define "CI Severely immunosuppressed Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severely immunosuppressed" /* @internal: Condition for Severely immunosuppressed */ define "CI Severely immunosuppressed Condition": [Condition: Concepts."CI-Severely immunosuppressed"] /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" */ define "The client has a symptomatic HIV infection": exists "CI Symptomatic HIV infection Observation" or exists "CI Symptomatic HIV infection Condition" /* @internal: Observation for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Symptomatic HIV infection" /* @internal: Condition for Symptomatic HIV infection */ define "CI Symptomatic HIV infection Condition": [Condition: Concepts."CI-Symptomatic HIV infection"] /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" */ define "The client has immunodeficiency syndromes": exists "CI Immunodeficiency syndromes Observation" or exists "CI Immunodeficiency syndromes Condition" /* @internal: Observation for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunodeficiency syndromes" /* @internal: Condition for Immunodeficiency syndromes */ define "CI Immunodeficiency syndromes Condition": [Condition: Concepts."CI-Immunodeficiency syndromes"] /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" */ define "The client is exposed to immunosuppressive treatment": exists "CI Exposed to immunosuppressive treatment Observation" or exists "CI Exposed to immunosuppressive treatment Condition" /* @internal: Observation for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Exposed to immunosuppressive treatment" /* @internal: Condition for Exposed to immunosuppressive treatment */ define "CI Exposed to immunosuppressive treatment Condition": [Condition: Concepts."CI-Exposed to immunosuppressive treatment"] /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" */ define "The client currently has a severe acute illness": exists "CI Severe acute illness Observation" or exists "CI Severe acute illness Condition" /* @internal: Observation for Severe acute illness */ define "CI Severe acute illness Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Severe acute illness" /* @internal: Condition for Severe acute illness */ define "CI Severe acute illness Condition": [Condition: Concepts."CI-Severe acute illness"] /* @input: The client has prior history of intussusception @pseudocode: "Potential contraindications" = "Prior history of intussusception" */ define "The client has prior history of intussusception": exists "CI Prior history of intussusception Observation" or exists "CI Prior history of intussusception Condition" /* @internal: Observation for Prior history of intussusception */ define "CI Prior history of intussusception Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Prior history of intussusception" /* @internal: Condition for Prior history of intussusception */ define "CI Prior history of intussusception Condition": [Condition: Concepts."CI-Prior history of intussusception"] /* @input: The client has altered immunocompetence @pseudocode: "Potential contraindications" = "Altered immunocompetence" */ define "The client has altered immunocompetence": exists "CI Altered immunocompetence Observation" or exists "CI Altered immunocompetence Condition" /* @internal: Observation for Altered immunocompetence */ define "CI Altered immunocompetence Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Altered immunocompetence" /* @internal: Condition for Altered immunocompetence */ define "CI Altered immunocompetence Condition": [Condition: Concepts."CI-Altered immunocompetence"] /* @input: The client has spina bifida @pseudocode: "Potential contraindications" = "Spina bifida" */ define "The client has spina bifida": exists "CI Spina bifida Observation" or exists "CI Spina bifida Condition" /* @internal: Observation for Spina bifida */ define "CI Spina bifida Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Spina bifida" /* @internal: Condition for Spina bifida */ define "CI Spina bifida Condition": [Condition: Concepts."CI-Spina bifida"] /* @input: The client has bladder exstrophy @pseudocode: "Potential contraindications" = "Bladder exstrophy" */ define "The client has bladder exstrophy": exists "CI Bladder exstrophy Observation" or exists "CI Bladder exstrophy Condition" /* @internal: Observation for Bladder exstrophy */ define "CI Bladder exstrophy Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Bladder exstrophy" /* @internal: Condition for Bladder exstrophy */ define "CI Bladder exstrophy Condition": [Condition: Concepts."CI-Bladder exstrophy"] /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" */ define "The client is immunocompromised": "Client is immunocompromised" or exists "CI Immunocompromised Observation" or exists "CI Immunocompromised Condition" /* @internal: Observation for Immunocompromised */ define "CI Immunocompromised Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Immunocompromised" /* @internal: Condition for Immunocompromised */ define "CI Immunocompromised Condition": [Condition: Concepts."CI-Immunocompromised"] /* @input: The client is planning to get pregnant in next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" */ define "The client is planning to get pregnant in next month": exists "CI Planning to get pregnant in the next month Observation" or exists "CI Planning to get pregnant in the next month Condition" /* @internal: Observation for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Planning to get pregnant in the next month" /* @internal: Condition for Planning to get pregnant in the next month */ define "CI Planning to get pregnant in the next month Condition": [Condition: Concepts."CI-Planning to get pregnant in the next month"] /* @input: The client is receiving blood products @pseudocode: "Potential contraindications" = "Receiving blood products" */ define "The client is receiving blood products": exists "CI Receiving blood products Observation" or exists "CI Receiving blood products Condition" /* @internal: Observation for Receiving blood products */ define "CI Receiving blood products Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Receiving blood products" /* @internal: Condition for Receiving blood products */ define "CI Receiving blood products Condition": [Condition: Concepts."CI-Receiving blood products"] /* @input: The client has TB disease @pseudocode: "Potential contraindications" = "TB disease" */ define "The client has TB disease": exists "CI TB disease Observation" or exists "CI TB disease Condition" /* @internal: Observation for TB disease */ define "CI TB disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-TB disease" /* @internal: Condition for TB disease */ define "CI TB disease Condition": [Condition: Concepts."CI-TB disease"] /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" */ define "The client is lactating": exists "CI Breastfeeding Observation" or exists "CI Breastfeeding Condition" /* @internal: Observation for Breastfeeding */ define "CI Breastfeeding Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Breastfeeding" /* @internal: Condition for Breastfeeding */ define "CI Breastfeeding Condition": [Condition: Concepts."CI-Breastfeeding"] /* @input: The client has acute gastroenteritis @pseudocode: "Potential contraindications" = "Acute gastroenteritis" */ define "The client has acute gastroenteritis": exists "CI Acute gastroenteritis Observation" or exists "CI Acute gastroenteritis Condition" /* @internal: Observation for Acute gastroenteritis */ define "CI Acute gastroenteritis Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Acute gastroenteritis" /* @internal: Condition for Acute gastroenteritis */ define "CI Acute gastroenteritis Condition": [Condition: Concepts."CI-Acute gastroenteritis"] /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" */ define "The client has moderate to severe fever": exists "CI Moderate to severe fever Observation" or exists "CI Moderate to severe fever Condition" /* @internal: Observation for Moderate to severe fever */ define "CI Moderate to severe fever Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Moderate to severe fever" /* @internal: Condition for Moderate to severe fever */ define "CI Moderate to severe fever Condition": [Condition: Concepts."CI-Moderate to severe fever"] /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" */ define "The client has hypersensitivity to any component of the vaccine": exists "CI Hypersensitivity to vaccine components Observation" or exists "CI Hypersensitivity to vaccine components Condition" /* @internal: Observation for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Hypersensitivity to vaccine components" /* @internal: Condition for Hypersensitivity to vaccine components */ define "CI Hypersensitivity to vaccine components Condition": [Condition: Concepts."CI-Hypersensitivity to vaccine components"] /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" */ define "The client is currently taking antibiotics": exists "CI Taking antibiotics Observation" or exists "CI Taking antibiotics Condition" /* @internal: Observation for Taking antibiotics */ define "CI Taking antibiotics Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Taking antibiotics" /* @internal: Condition for Taking antibiotics */ define "CI Taking antibiotics Condition": [Condition: Concepts."CI-Taking antibiotics"] /* @input: The client has chronic gastrointestinal disease @pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease" */ define "The client has chronic gastrointestinal disease": exists "CI Chronic gastrointestinal disease Observation" or exists "CI Chronic gastrointestinal disease Condition" /* @internal: Observation for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Observation": "Potential contraindications" O where O.value ~ Concepts."CI-Chronic gastrointestinal disease" /* @internal: Condition for Chronic gastrointestinal disease */ define "CI Chronic gastrointestinal disease Condition": [Condition: Concepts."CI-Chronic gastrointestinal disease"] /* @internal: HIV Status Observation */ define "HIV status Observation": ([Observation: Concepts."HIV status"]).complete() /* @input: Client's HIV status is negative or unknown @pseudocode: "HIV status" ≠ "HIV-positive" */ define "Client's HIV status is negative or unknown": not "Client's HIV status is positive" /* @input: Client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" */ define "Client's HIV status is positive": exists( "HIV status Observation" O where O.value ~ Concepts."HIV-positive" ) /* @internal: Currently on ART Observation */ define "Currently on ART Observation": ([Observation: Concepts."Currently on ART"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is currently receiving antiretroviral therapy @pseudocode: "Currently on ART" = TRUE */ define "Client is currently receiving antiretroviral therapy": exists("Currently on ART Observation") and First("Currently on ART Observation").value = true /* @input: Client is currently not receiving antiretroviral therapy @pseudocode: "Currently on ART" = FALSE */ define "Client is currently not receiving antiretroviral therapy": not exists("Currently on ART Observation") or First("Currently on ART Observation").value = false /* @internal: Immunologically stable Observation */ define "Immunologically stable Observation": ([Observation: Concepts."Immunologically stable"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunologically stable @pseudocode: "Immunologically stable" = TRUE */ define "Client is immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = true /* @input: Client is not immunologically stable @pseudocode: "Immunologically stable" = FALSE */ define "Client is not immunologically stable": exists("Immunologically stable Observation") and First("Immunologically stable Observation").value = false /* @internal: TB infection test result Observation */ define "TB infection test result Observation": ([Observation: Concepts."TB infection test result"] O sort by end of effective.toInterval() desc).complete() /* @input: Client's TB infection test result is negative @pseudocode: "TB infection test result" = "Negative" */ define "Client's TB infection test result is negative": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Negative" /* @input: Client's TB infection test result is unknown (test not done or no result yet) @pseudocode: "TB infection test result" IS NULL */ define "Client's TB infection test result is unknown (test not done or no result yet)": not exists( "TB infection test result Observation" ) or ( not ("Client's TB infection test result is negative") and not ("Client's TB infection test result is positive") ) /* @input: Client's TB infection test result is positive @pseudocode: "TB infection test result" = "Positive" */ define "Client's TB infection test result is positive": exists("TB infection test result Observation") and First( "TB infection test result Observation" ).value ~ Concepts."TB-Positive" /* @internal: Clinically well Observation */ define "Clinically well Observation": ([Observation: Concepts."Clinically well"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is not clinically well @pseudocode: "Clinically well" = FALSE */ define "Client is not clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = false /* @input: Client is clinically well @pseudocode: "Clinically well" = TRUE */ define "Client is clinically well": exists("Clinically well Observation") and First( "Clinically well Observation" ).value = true /* @internal: Immunocompromised Observation */ define "Immunocompromised Observation": ([Observation: Concepts."Immunocompromised"] O sort by end of effective.toInterval() desc).complete() /* @input: Client is immunocompromised @pseudocode: "Immunocompromised" = TRUE */ define "Client is immunocompromised": exists( "Immunocompromised Observation" ) and First( "Immunocompromised Observation" ).value = true /* @input: Client is not immunocompromised @pseudocode: "Immunocompromised" ≠ TRUE */ define "Client is not immunocompromised": not "Client is immunocompromised" /* @internal: Birth weight in grams Observation */ define "Birth weight in grams Observation": ([Observation: Concepts."Birth weight in grams"] O sort by end of effective.toInterval() desc).complete() define "Birth weight in grams Value": First("Birth weight in grams Observation").value as FHIR.Quantity define "Birth weight in grams": "Birth weight in grams Value".value as FHIR.decimal /* @input: Client's weight at birth was over 2000 g @pseudocode: "Birth weight in grams" ≥ 2000 */ define "Client's weight at birth was over 2000 g": "Birth weight in grams" >= 2000 /* @input: Client's weight at birth was below 2000 g @pseudocode: "Birth weight in grams" < 2000 */ define "Client's weight at birth was below 2000 g": "Birth weight in grams" < 2000 /* @internal: Preterm birth Observation */ define "Preterm birth Observation": ([Observation: Concepts."Preterm birth"]).complete() /* @input: Client was not a premature infant at birth @pseudocode: "Preterm birth" ≠ TRUE */ define "Client was not a premature infant at birth": not "Client was a premature infant at birth" /* @input: Client was a premature infant at birth @pseudocode: "Preterm birth" = TRUE */ define "Client was a premature infant at birth": exists( "Preterm birth Observation" O where O.value = true ) /* @internal: Completed the primary vaccination series Observation */ define "Completed the primary vaccination series Observation": ([Observation: Concepts."Completed the primary vaccination series"]).complete() /* @internal: At high risk for pneumococcal infection Observation */ define "At high risk for pneumococcal infection Observation": ([Observation: Concepts."At high risk for pneumococcal infection"]).complete() /* @input: Client is at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = TRUE */ define "Client is at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = true ) /* @input: Client is not at high risk for pneumococcal infection @pseudocode: "At high risk for pneumococcal infection" = FALSE */ define "Client is not at high risk for pneumococcal infection": exists( "At high risk for pneumococcal infection Observation" O where O.value = false ) /* @internal: Date when primary vaccination series was completed Observation */ define "Date when primary vaccination series was completed Observation": ([Observation: Concepts."Date when primary vaccination series was completed"] O sort by end of effective.toInterval() desc).complete() /* @internal: Completed the booster series Observation */ define "Completed the booster series Observation": ([Observation: Concepts."Completed the booster series"]).complete()````: **Description: **
  * ?: This library defines context-independent elements used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZElements",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablelibrary",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablelibrary",
    "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library",
    "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://smart.who.int/immunizations/Library/IMMZElements",
  "version" : "1.0.0",
  "name" : "IMMZElements",
  "title" : "IMMZElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T13:50:16+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines context-independent elements used throughout the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library WHOConcepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library WC",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library WE",
    "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library Concepts",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library Common",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZCommon"
  }],
  "parameter" : [{
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Doses Administered to Patient",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Immunization"
  },
  {
    "name" : "Draft Medication Request for Patient",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "Live Attenuated Vaccines",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Immunization"
  },
  {
    "name" : "Date of Latest Live Attenuated Vaccine",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Current Patient Age In Years",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "integer"
  },
  {
    "name" : "Current Patient Age In Months",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "integer"
  },
  {
    "name" : "Current Patient Age In Weeks",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "integer"
  },
  {
    "name" : "Current Patient Age In Days",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "integer"
  },
  {
    "name" : "No live vaccine was administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Live vaccine was administered in the last 4 weeks",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "No live vaccine was administered in the last 4 weeks",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Potential contraindications",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Currently pregnant Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Currently pregnant Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is pregnant",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI History of anaphylactic reactions Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI History of anaphylactic reactions Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has history of anaphylactic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Severe allergic reactions Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Severe allergic reactions Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has history of severe allergic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Severely immunocompromised Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Severely immunocompromised Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is severely immunocompromised",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Severely immunosuppressed Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Severely immunosuppressed Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is severely immunosuppressed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Symptomatic HIV infection Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Symptomatic HIV infection Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has a symptomatic HIV infection",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Immunodeficiency syndromes Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Immunodeficiency syndromes Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has immunodeficiency syndromes",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Exposed to immunosuppressive treatment Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Exposed to immunosuppressive treatment Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is exposed to immunosuppressive treatment",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Severe acute illness Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Severe acute illness Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client currently has a severe acute illness",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Prior history of intussusception Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Prior history of intussusception Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has prior history of intussusception",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Altered immunocompetence Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Altered immunocompetence Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has altered immunocompetence",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Spina bifida Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Spina bifida Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has spina bifida",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Bladder exstrophy Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Bladder exstrophy Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has bladder exstrophy",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Immunocompromised Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Client is immunocompromised",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Immunocompromised Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Immunocompromised Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is immunocompromised",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Planning to get pregnant in the next month Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Planning to get pregnant in the next month Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is planning to get pregnant in next month",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Receiving blood products Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Receiving blood products Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is receiving blood products",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI TB disease Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI TB disease Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has TB disease",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Breastfeeding Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Breastfeeding Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is lactating",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Acute gastroenteritis Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Acute gastroenteritis Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has acute gastroenteritis",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Moderate to severe fever Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Moderate to severe fever Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has moderate to severe fever",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Hypersensitivity to vaccine components Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Hypersensitivity to vaccine components Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has hypersensitivity to any component of the vaccine",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Taking antibiotics Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Taking antibiotics Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client is currently taking antibiotics",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "CI Chronic gastrointestinal disease Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "CI Chronic gastrointestinal disease Condition",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Condition"
  },
  {
    "name" : "The client has chronic gastrointestinal disease",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "HIV status Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Client's HIV status is positive",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's HIV status is negative or unknown",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Currently on ART Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Client is currently receiving antiretroviral therapy",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client is currently not receiving antiretroviral therapy",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Immunologically stable Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Client is immunologically stable",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client is not immunologically stable",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "TB infection test result Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Client's TB infection test result is negative",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's TB infection test result is positive",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's TB infection test result is unknown (test not done or no result yet)",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Clinically well Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Client is not clinically well",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client is clinically well",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client is not immunocompromised",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Birth weight in grams Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Birth weight in grams Value",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Quantity"
  },
  {
    "name" : "Birth weight in grams",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "decimal"
  },
  {
    "name" : "Client's weight at birth was over 2000 g",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's weight at birth was below 2000 g",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Preterm birth Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Client was a premature infant at birth",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client was not a premature infant at birth",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Completed the primary vaccination series Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "At high risk for pneumococcal infection Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Client is at high risk for pneumococcal infection",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client is not at high risk for pneumococcal infection",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Date when primary vaccination series was completed Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  },
  {
    "name" : "Completed the booster series Observation",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "Observation"
  }],
  "dataRequirement" : [{
    "type" : "Immunization",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Immunization"]
  },
  {
    "type" : "MedicationRequest",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE161",
        "display" : "Potential contraindications"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE162",
        "display" : "Currently pregnant"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE166",
        "display" : "History of anaphylactic reactions"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE167",
        "display" : "Severe allergic reactions"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE200",
        "display" : "Severely immunocompromised"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE165",
        "display" : "Severely immunosuppressed"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE168",
        "display" : "Symptomatic HIV infection"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE187",
        "display" : "Immunodeficiency syndromes"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE164",
        "display" : "Exposed to immunosuppressive treatment"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE188",
        "display" : "Severe acute illness"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE196",
        "display" : "Prior history of intussusception"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE197",
        "display" : "Altered immunocompetence"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE192",
        "display" : "Spina bifida"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE193",
        "display" : "Bladder exstrophy"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE209",
        "display" : "Immunocompromised"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE163",
        "display" : "Immunocompromised"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE169",
        "display" : "Planning to get pregnant in the next month"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE170",
        "display" : "Receiving blood products"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE190",
        "display" : "TB disease"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE191",
        "display" : "Breastfeeding"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE194",
        "display" : "Acute gastroenteritis"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE195",
        "display" : "Moderate to severe fever"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE198",
        "display" : "Hypersensitivity to vaccine components"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE199",
        "display" : "Taking antibiotics"
      }]
    }]
  },
  {
    "type" : "Condition",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Condition"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DEXXX",
        "display" : "Chronic gastrointestinal disease"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE204",
        "display" : "HIV status"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE210",
        "display" : "Currently on ART"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE249",
        "display" : "Immunologically stable"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE246",
        "display" : "TB infection test result"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE250",
        "display" : "Clinically well"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE211",
        "display" : "Birth weight in grams"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE208",
        "display" : "Preterm birth"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE203",
        "display" : "Completed the primary vaccination series"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE251",
        "display" : "At high risk for pneumococcal infection"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE221",
        "display" : "Date when primary vaccination series was completed"
      }]
    }]
  },
  {
    "type" : "Observation",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Observation"],
    "codeFilter" : [{
      "path" : "code",
      "code" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE257",
        "display" : "Completed the booster series"
      }]
    }]
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "bGlicmFyeSBJTU1aRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgoKY29udGV4dCBQYXRpZW50CgovKioKICogQGRhdGFFbGVtZW50IEFsbCBEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudAogKi8KZGVmaW5lICJEb3NlcyBBZG1pbmlzdGVyZWQgdG8gUGF0aWVudCI6CiAgW0ltbXVuaXphdGlvbl0gSQogICAgd2hlcmUgSS5zdGF0dXMgPSAnY29tcGxldGVkJwogICAgYW5kIEkuaXNTdWJwb3RlbnQgaXMgbm90IHRydWUKCi8qCkBkYXRhRWxlbWVudDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50CiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IjoKCVtNZWRpY2F0aW9uUmVxdWVzdF0gTVIgd2hlcmUgTVIuc3RhdHVzID0gJ2RyYWZ0JyBhbmQgTVIuaW50ZW50ID0gJ3Byb3Bvc2FsJwoJc29ydCBieSBkYXRlIGZyb20gKGF1dGhvcmVkT24gYXMgRkhJUi5kYXRlVGltZSkgZGVzYwoKLyoKICBAZGF0YUVsZW1lbnQ6IExpdmUgYXR0ZW51YXRlZCB2YWNjaW5lcwoqLwpkZWZpbmUgIkxpdmUgQXR0ZW51YXRlZCBWYWNjaW5lcyI6CiAgIkRvc2VzIEFkbWluaXN0ZXJlZCB0byBQYXRpZW50IiBJIAogICAgd2hlcmUgSS52YWNjaW5lQ29kZSBpbiBDb25jZXB0cy4iTGl2ZSBBdHRlbnVhdGVkIgoKLyoKICBAZGF0YUVsZW1lbnQ6IERhdGUgYW5kIHRpbWUgb2YgbGFzdCBsaXZlIGF0dGVudWF0ZWQgdmFjY2luZQoqLwpkZWZpbmUgIkRhdGUgb2YgTGF0ZXN0IExpdmUgQXR0ZW51YXRlZCBWYWNjaW5lIjoKICBkYXRlIGZyb20gc3RhcnQgb2YgIkxpdmUgQXR0ZW51YXRlZCBWYWNjaW5lcyIubW9zdFJlY2VudCgpLm9jY3VycmVuY2UudG9JbnRlcnZhbCgpCgovKiogCiAqIEBkYXRhRWxlbWVudCBQYXRpZW50IGFnZSBpbiB5ZWFycwogKi8KZGVmaW5lICJDdXJyZW50IFBhdGllbnQgQWdlIEluIFllYXJzIjoKICBBZ2VJblllYXJzQXQoVG9kYXkoKSkKCi8qKiAKICogQGRhdGFFbGVtZW50IFBhdGllbnQgYWdlIGluIG1vbnRocwogKi8KZGVmaW5lICJDdXJyZW50IFBhdGllbnQgQWdlIEluIE1vbnRocyI6CiAgQWdlSW5Nb250aHNBdChUb2RheSgpKQoKLyoqIAogKiBAZGF0YUVsZW1lbnQgUGF0aWVudCBhZ2UgaW4gd2Vla3MKICovCmRlZmluZSAiQ3VycmVudCBQYXRpZW50IEFnZSBJbiBXZWVrcyI6CiAgQWdlSW5XZWVrc0F0KFRvZGF5KCkpCgovKiogCiAqIEBkYXRhRWxlbWVudCBQYXRpZW50IGFnZSBpbiBkYXlzCiAqLwpkZWZpbmUgIkN1cnJlbnQgUGF0aWVudCBBZ2UgSW4gRGF5cyI6CiAgQWdlSW5EYXlzQXQoVG9kYXkoKSkKCi8qCkBpbnB1dDogTm8gbGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQKQHBzZXVkb2NvZGU6IFRvZGF5J3MgZGF0ZSDiiJIgbGF0ZXN0ICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiAod2hlcmUgIkxpdmUgdmFjY2luZSIgPSBUUlVFKSBJUyBOVUxMCiovCmRlZmluZSAiTm8gbGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQiOgogIG5vdCBleGlzdHMoIkxpdmUgQXR0ZW51YXRlZCBWYWNjaW5lcyIpCgovKgpAaW5wdXQ6IExpdmUgdmFjY2luZSB3YXMgYWRtaW5pc3RlcmVkIGluIHRoZSBsYXN0IDQgd2Vla3MKQHBzZXVkb2NvZGU6IFRvZGF5J3MgZGF0ZSDiiJIgbGF0ZXN0ICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiAod2hlcmUgIkxpdmUgdmFjY2luZSIgPSBUUlVFKSA8IDQgd2Vla3MKKi8KZGVmaW5lICJMaXZlIHZhY2NpbmUgd2FzIGFkbWluaXN0ZXJlZCBpbiB0aGUgbGFzdCA0IHdlZWtzIjoKCSJEYXRlIG9mIExhdGVzdCBMaXZlIEF0dGVudWF0ZWQgVmFjY2luZSIgaXMgbm90IG51bGwgCiAgICBhbmQgZHVyYXRpb24gaW4gd2Vla3MgYmV0d2VlbiAiRGF0ZSBvZiBMYXRlc3QgTGl2ZSBBdHRlbnVhdGVkIFZhY2NpbmUiIGFuZCBOb3coKSA8IDQKCi8qCkBpbnB1dDogTm8gbGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIGxhc3QgNCB3ZWVrcwpAcHNldWRvY29kZTogVG9kYXkncyBkYXRlIOKIkiBsYXRlc3QgIkRhdGUgYW5kIHRpbWUgb2YgdmFjY2luYXRpb24iICh3aGVyZSAiTGl2ZSB2YWNjaW5lIiA9IFRSVUUpIOKJpSA0IHdlZWtzCiovCmRlZmluZSAiTm8gbGl2ZSB2YWNjaW5lIHdhcyBhZG1pbmlzdGVyZWQgaW4gdGhlIGxhc3QgNCB3ZWVrcyI6CiAgbm90KCJMaXZlIHZhY2NpbmUgd2FzIGFkbWluaXN0ZXJlZCBpbiB0aGUgbGFzdCA0IHdlZWtzIikKCi8qCkBpbnRlcm5hbDogUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIG9ic2VydmF0aW9ucwoqLwpkZWZpbmUgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyI6CiAgKFtPYnNlcnZhdGlvbjogQ29uY2VwdHMuIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyJdKS5jb21wbGV0ZSgpCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgcHJlZ25hbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkN1cnJlbnRseSBwcmVnbmFudCIKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIHByZWduYW50IjoKICBleGlzdHMgIkNJIEN1cnJlbnRseSBwcmVnbmFudCBPYnNlcnZhdGlvbiIKICBvciBleGlzdHMgIkNJIEN1cnJlbnRseSBwcmVnbmFudCBDb25kaXRpb24iCiAgb3IgZXhpc3RzIFdFLiJQcmVnbmFudCBPYnNlcnZhdGlvbiIKCi8qCkBpbnRlcm5hbDogT2JzZXJ2YXRpb24gZm9yIGN1cnJlbnRseSBwcmVnbmFudAoqLwpkZWZpbmUgIkNJIEN1cnJlbnRseSBwcmVnbmFudCBPYnNlcnZhdGlvbiI6CiAgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJDSS1DdXJyZW50bHkgcHJlZ25hbnQiCgovKgpAaW50ZXJuYWw6IENvbmRpdGlvbiBmb3IgY3VycmVudGx5IHByZWduYW50CiovCmRlZmluZSAiQ0kgQ3VycmVudGx5IHByZWduYW50IENvbmRpdGlvbiI6CiAgW0NvbmRpdGlvbjogQ29uY2VwdHMuIkNJLUN1cnJlbnRseSBwcmVnbmFudCJdCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyI6CiAgZXhpc3RzICJDSSBIaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIEhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyBDb25kaXRpb24iCgovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBIaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMKKi8KZGVmaW5lICJDSSBIaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktSGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIEhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucwoqLwpkZWZpbmUgIkNJIEhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1IaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiXQoKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgZXhpc3RzICJDSSBTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIE9ic2VydmF0aW9uIgogICAgb3IgZXhpc3RzICJDSSBTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIENvbmRpdGlvbiIKICAgIAovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCiovCmRlZmluZSAiQ0kgU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyBPYnNlcnZhdGlvbiI6CiAgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJDSS1TZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIFNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKKi8KZGVmaW5lICJDSSBTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIENvbmRpdGlvbiI6CiAgW0NvbmRpdGlvbjogQ29uY2VwdHMuIkNJLVNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiXQoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCIKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIjoKICBleGlzdHMgIkNJIFNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIE9ic2VydmF0aW9uIgogICAgb3IgZXhpc3RzICJDSSBTZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCBDb25kaXRpb24iCiAgICAKLyoKQGludGVybmFsOiBPYnNlcnZhdGlvbiBmb3IgU2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQKKi8KZGVmaW5lICJDSSBTZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCBPYnNlcnZhdGlvbiI6CiAgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJDSS1TZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCIKCi8qCkBpbnRlcm5hbDogQ29uZGl0aW9uIGZvciBTZXZlcmVseSBpbW11bm9jb21wcm9taXNlZAoqLwpkZWZpbmUgIkNJIFNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIENvbmRpdGlvbiI6CiAgW0NvbmRpdGlvbjogQ29uY2VwdHMuIkNJLVNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIl0KCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCI6CiAgZXhpc3RzICJDSSBTZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIE9ic2VydmF0aW9uIgogICAgb3IgZXhpc3RzICJDSSBTZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIENvbmRpdGlvbiIKICAgIAovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBTZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkCiovCmRlZmluZSAiQ0kgU2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCBPYnNlcnZhdGlvbiI6CiAgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJDSS1TZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIFNldmVyZWx5IGltbXVub3N1cHByZXNzZWQKKi8KZGVmaW5lICJDSSBTZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIENvbmRpdGlvbiI6CiAgW0NvbmRpdGlvbjogQ29uY2VwdHMuIkNJLVNldmVyZWx5IGltbXVub3N1cHByZXNzZWQiXQoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIHN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24KQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24iCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBzeW1wdG9tYXRpYyBISVYgaW5mZWN0aW9uIjoKICBleGlzdHMgIkNJIFN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24gT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIFN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24gQ29uZGl0aW9uIgogICAgCi8qCkBpbnRlcm5hbDogT2JzZXJ2YXRpb24gZm9yIFN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24KKi8KZGVmaW5lICJDSSBTeW1wdG9tYXRpYyBISVYgaW5mZWN0aW9uIE9ic2VydmF0aW9uIjoKICAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiBPCiAgICB3aGVyZSBPLnZhbHVlIH4gQ29uY2VwdHMuIkNJLVN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24iCgovKgpAaW50ZXJuYWw6IENvbmRpdGlvbiBmb3IgU3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbgoqLwpkZWZpbmUgIkNJIFN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24gQ29uZGl0aW9uIjoKICBbQ29uZGl0aW9uOiBDb25jZXB0cy4iQ0ktU3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbiJdCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJJbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyIKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyI6CiAgZXhpc3RzICJDSSBJbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyBPYnNlcnZhdGlvbiIKICAgIG9yIGV4aXN0cyAiQ0kgSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMgQ29uZGl0aW9uIgogICAgCi8qCkBpbnRlcm5hbDogT2JzZXJ2YXRpb24gZm9yIEltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzCiovCmRlZmluZSAiQ0kgSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCgovKgpAaW50ZXJuYWw6IENvbmRpdGlvbiBmb3IgSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMKKi8KZGVmaW5lICJDSSBJbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1JbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyJdCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50IgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQiOgogIGV4aXN0cyAiQ0kgRXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIEV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50IENvbmRpdGlvbiIKICAgIAovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBFeHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudAoqLwpkZWZpbmUgIkNJIEV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50IE9ic2VydmF0aW9uIjoKICAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiBPCiAgICB3aGVyZSBPLnZhbHVlIH4gQ29uY2VwdHMuIkNJLUV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50IgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIEV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50CiovCmRlZmluZSAiQ0kgRXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQgQ29uZGl0aW9uIjoKICBbQ29uZGl0aW9uOiBDb25jZXB0cy4iQ0ktRXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQiXQoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGN1cnJlbnRseSBoYXMgYSBzZXZlcmUgYWN1dGUgaWxsbmVzcwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFjdXRlIGlsbG5lc3MiCiovCmRlZmluZSAiVGhlIGNsaWVudCBjdXJyZW50bHkgaGFzIGEgc2V2ZXJlIGFjdXRlIGlsbG5lc3MiOgogIGV4aXN0cyAiQ0kgU2V2ZXJlIGFjdXRlIGlsbG5lc3MgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIFNldmVyZSBhY3V0ZSBpbGxuZXNzIENvbmRpdGlvbiIKICAgIAovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBTZXZlcmUgYWN1dGUgaWxsbmVzcwoqLwpkZWZpbmUgIkNJIFNldmVyZSBhY3V0ZSBpbGxuZXNzIE9ic2VydmF0aW9uIjoKICAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiBPCiAgICB3aGVyZSBPLnZhbHVlIH4gQ29uY2VwdHMuIkNJLVNldmVyZSBhY3V0ZSBpbGxuZXNzIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIFNldmVyZSBhY3V0ZSBpbGxuZXNzCiovCmRlZmluZSAiQ0kgU2V2ZXJlIGFjdXRlIGlsbG5lc3MgQ29uZGl0aW9uIjoKICBbQ29uZGl0aW9uOiBDb25jZXB0cy4iQ0ktU2V2ZXJlIGFjdXRlIGlsbG5lc3MiXQoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBwcmlvciBoaXN0b3J5IG9mIGludHVzc3VzY2VwdGlvbgpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiUHJpb3IgaGlzdG9yeSBvZiBpbnR1c3N1c2NlcHRpb24iCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgcHJpb3IgaGlzdG9yeSBvZiBpbnR1c3N1c2NlcHRpb24iOgogIGV4aXN0cyAiQ0kgUHJpb3IgaGlzdG9yeSBvZiBpbnR1c3N1c2NlcHRpb24gT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIFByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uIENvbmRpdGlvbiIKICAgIAovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBQcmlvciBoaXN0b3J5IG9mIGludHVzc3VzY2VwdGlvbgoqLwpkZWZpbmUgIkNJIFByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uIE9ic2VydmF0aW9uIjoKICAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiBPCiAgICB3aGVyZSBPLnZhbHVlIH4gQ29uY2VwdHMuIkNJLVByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIFByaW9yIGhpc3Rvcnkgb2YgaW50dXNzdXNjZXB0aW9uCiovCmRlZmluZSAiQ0kgUHJpb3IgaGlzdG9yeSBvZiBpbnR1c3N1c2NlcHRpb24gQ29uZGl0aW9uIjoKICBbQ29uZGl0aW9uOiBDb25jZXB0cy4iQ0ktUHJpb3IgaGlzdG9yeSBvZiBpbnR1c3N1c2NlcHRpb24iXQoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhbHRlcmVkIGltbXVub2NvbXBldGVuY2UKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZSIKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhbHRlcmVkIGltbXVub2NvbXBldGVuY2UiOgogIGV4aXN0cyAiQ0kgQWx0ZXJlZCBpbW11bm9jb21wZXRlbmNlIE9ic2VydmF0aW9uIgogICAgb3IgZXhpc3RzICJDSSBBbHRlcmVkIGltbXVub2NvbXBldGVuY2UgQ29uZGl0aW9uIgogICAgCi8qCkBpbnRlcm5hbDogT2JzZXJ2YXRpb24gZm9yIEFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZQoqLwpkZWZpbmUgIkNJIEFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZSBPYnNlcnZhdGlvbiI6CiAgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJDSS1BbHRlcmVkIGltbXVub2NvbXBldGVuY2UiCgovKgpAaW50ZXJuYWw6IENvbmRpdGlvbiBmb3IgQWx0ZXJlZCBpbW11bm9jb21wZXRlbmNlCiovCmRlZmluZSAiQ0kgQWx0ZXJlZCBpbW11bm9jb21wZXRlbmNlIENvbmRpdGlvbiI6CiAgW0NvbmRpdGlvbjogQ29uY2VwdHMuIkNJLUFsdGVyZWQgaW1tdW5vY29tcGV0ZW5jZSJdCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIHNwaW5hIGJpZmlkYQpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU3BpbmEgYmlmaWRhIgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIHNwaW5hIGJpZmlkYSI6CiAgZXhpc3RzICJDSSBTcGluYSBiaWZpZGEgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIFNwaW5hIGJpZmlkYSBDb25kaXRpb24iCiAgICAKLyoKQGludGVybmFsOiBPYnNlcnZhdGlvbiBmb3IgU3BpbmEgYmlmaWRhCiovCmRlZmluZSAiQ0kgU3BpbmEgYmlmaWRhIE9ic2VydmF0aW9uIjoKICAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiBPCiAgICB3aGVyZSBPLnZhbHVlIH4gQ29uY2VwdHMuIkNJLVNwaW5hIGJpZmlkYSIKCi8qCkBpbnRlcm5hbDogQ29uZGl0aW9uIGZvciBTcGluYSBiaWZpZGEKKi8KZGVmaW5lICJDSSBTcGluYSBiaWZpZGEgQ29uZGl0aW9uIjoKICBbQ29uZGl0aW9uOiBDb25jZXB0cy4iQ0ktU3BpbmEgYmlmaWRhIl0KCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgYmxhZGRlciBleHN0cm9waHkKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkJsYWRkZXIgZXhzdHJvcGh5IgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGJsYWRkZXIgZXhzdHJvcGh5IjoKICBleGlzdHMgIkNJIEJsYWRkZXIgZXhzdHJvcGh5IE9ic2VydmF0aW9uIgogICAgb3IgZXhpc3RzICJDSSBCbGFkZGVyIGV4c3Ryb3BoeSBDb25kaXRpb24iCiAgICAKLyoKQGludGVybmFsOiBPYnNlcnZhdGlvbiBmb3IgQmxhZGRlciBleHN0cm9waHkKKi8KZGVmaW5lICJDSSBCbGFkZGVyIGV4c3Ryb3BoeSBPYnNlcnZhdGlvbiI6CiAgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJDSS1CbGFkZGVyIGV4c3Ryb3BoeSIKCi8qCkBpbnRlcm5hbDogQ29uZGl0aW9uIGZvciBCbGFkZGVyIGV4c3Ryb3BoeQoqLwpkZWZpbmUgIkNJIEJsYWRkZXIgZXhzdHJvcGh5IENvbmRpdGlvbiI6CiAgW0NvbmRpdGlvbjogQ29uY2VwdHMuIkNJLUJsYWRkZXIgZXhzdHJvcGh5Il0KCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vY29tcHJvbWlzZWQiCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZCI6CiAgIkNsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZCIKICAgIG9yIGV4aXN0cyAiQ0kgSW1tdW5vY29tcHJvbWlzZWQgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIEltbXVub2NvbXByb21pc2VkIENvbmRpdGlvbiIKCi8qCkBpbnRlcm5hbDogT2JzZXJ2YXRpb24gZm9yIEltbXVub2NvbXByb21pc2VkCiovCmRlZmluZSAiQ0kgSW1tdW5vY29tcHJvbWlzZWQgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktSW1tdW5vY29tcHJvbWlzZWQiCgovKgpAaW50ZXJuYWw6IENvbmRpdGlvbiBmb3IgSW1tdW5vY29tcHJvbWlzZWQKKi8KZGVmaW5lICJDSSBJbW11bm9jb21wcm9taXNlZCBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1JbW11bm9jb21wcm9taXNlZCJdCgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiBuZXh0IG1vbnRoCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJQbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGgiCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBwbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gbmV4dCBtb250aCI6CiAgZXhpc3RzICJDSSBQbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGggT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIFBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiB0aGUgbmV4dCBtb250aCBDb25kaXRpb24iCgovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBQbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGgKKi8KZGVmaW5lICJDSSBQbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGggT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktUGxhbm5pbmcgdG8gZ2V0IHByZWduYW50IGluIHRoZSBuZXh0IG1vbnRoIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIFBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiB0aGUgbmV4dCBtb250aAoqLwpkZWZpbmUgIkNJIFBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiB0aGUgbmV4dCBtb250aCBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1QbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGgiXQoKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlJlY2VpdmluZyBibG9vZCBwcm9kdWN0cyIKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIHJlY2VpdmluZyBibG9vZCBwcm9kdWN0cyI6CiAgZXhpc3RzICJDSSBSZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIFJlY2VpdmluZyBibG9vZCBwcm9kdWN0cyBDb25kaXRpb24iCgovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBSZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMKKi8KZGVmaW5lICJDSSBSZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktUmVjZWl2aW5nIGJsb29kIHByb2R1Y3RzIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIFJlY2VpdmluZyBibG9vZCBwcm9kdWN0cwoqLwpkZWZpbmUgIkNJIFJlY2VpdmluZyBibG9vZCBwcm9kdWN0cyBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1SZWNlaXZpbmcgYmxvb2QgcHJvZHVjdHMiXQoKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgVEIgZGlzZWFzZQpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiVEIgZGlzZWFzZSIKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBUQiBkaXNlYXNlIjoKICBleGlzdHMgIkNJIFRCIGRpc2Vhc2UgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIFRCIGRpc2Vhc2UgQ29uZGl0aW9uIgoKLyoKQGludGVybmFsOiBPYnNlcnZhdGlvbiBmb3IgVEIgZGlzZWFzZQoqLwpkZWZpbmUgIkNJIFRCIGRpc2Vhc2UgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktVEIgZGlzZWFzZSIKCi8qCkBpbnRlcm5hbDogQ29uZGl0aW9uIGZvciBUQiBkaXNlYXNlCiovCmRlZmluZSAiQ0kgVEIgZGlzZWFzZSBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1UQiBkaXNlYXNlIl0KCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgbGFjdGF0aW5nCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJCcmVhc3RmZWVkaW5nIgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgbGFjdGF0aW5nIjoKICBleGlzdHMgIkNJIEJyZWFzdGZlZWRpbmcgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIEJyZWFzdGZlZWRpbmcgQ29uZGl0aW9uIgoKLyoKQGludGVybmFsOiBPYnNlcnZhdGlvbiBmb3IgQnJlYXN0ZmVlZGluZwoqLwpkZWZpbmUgIkNJIEJyZWFzdGZlZWRpbmcgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktQnJlYXN0ZmVlZGluZyIKCi8qCkBpbnRlcm5hbDogQ29uZGl0aW9uIGZvciBCcmVhc3RmZWVkaW5nCiovCmRlZmluZSAiQ0kgQnJlYXN0ZmVlZGluZyBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1CcmVhc3RmZWVkaW5nIl0KCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGFjdXRlIGdhc3Ryb2VudGVyaXRpcwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQWN1dGUgZ2FzdHJvZW50ZXJpdGlzIgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGFjdXRlIGdhc3Ryb2VudGVyaXRpcyI6CiAgZXhpc3RzICJDSSBBY3V0ZSBnYXN0cm9lbnRlcml0aXMgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIEFjdXRlIGdhc3Ryb2VudGVyaXRpcyBDb25kaXRpb24iCgovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBBY3V0ZSBnYXN0cm9lbnRlcml0aXMKKi8KZGVmaW5lICJDSSBBY3V0ZSBnYXN0cm9lbnRlcml0aXMgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktQWN1dGUgZ2FzdHJvZW50ZXJpdGlzIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIEFjdXRlIGdhc3Ryb2VudGVyaXRpcwoqLwpkZWZpbmUgIkNJIEFjdXRlIGdhc3Ryb2VudGVyaXRpcyBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1BY3V0ZSBnYXN0cm9lbnRlcml0aXMiXQoKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgbW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJNb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXIiCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgbW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyIjoKICBleGlzdHMgIkNJIE1vZGVyYXRlIHRvIHNldmVyZSBmZXZlciBPYnNlcnZhdGlvbiIKICAgIG9yIGV4aXN0cyAiQ0kgTW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyIENvbmRpdGlvbiIKCi8qCkBpbnRlcm5hbDogT2JzZXJ2YXRpb24gZm9yIE1vZGVyYXRlIHRvIHNldmVyZSBmZXZlcgoqLwpkZWZpbmUgIkNJIE1vZGVyYXRlIHRvIHNldmVyZSBmZXZlciBPYnNlcnZhdGlvbiI6CiAgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJDSS1Nb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXIiCgovKgpAaW50ZXJuYWw6IENvbmRpdGlvbiBmb3IgTW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyCiovCmRlZmluZSAiQ0kgTW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyIENvbmRpdGlvbiI6CiAgW0NvbmRpdGlvbjogQ29uY2VwdHMuIkNJLU1vZGVyYXRlIHRvIHNldmVyZSBmZXZlciJdCgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBjb21wb25lbnQgb2YgdGhlIHZhY2NpbmUKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkh5cGVyc2Vuc2l0aXZpdHkgdG8gdmFjY2luZSBjb21wb25lbnRzIgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZSI6CiAgZXhpc3RzICJDSSBIeXBlcnNlbnNpdGl2aXR5IHRvIHZhY2NpbmUgY29tcG9uZW50cyBPYnNlcnZhdGlvbiIKICAgIG9yIGV4aXN0cyAiQ0kgSHlwZXJzZW5zaXRpdml0eSB0byB2YWNjaW5lIGNvbXBvbmVudHMgQ29uZGl0aW9uIgoKLyoKQGludGVybmFsOiBPYnNlcnZhdGlvbiBmb3IgSHlwZXJzZW5zaXRpdml0eSB0byB2YWNjaW5lIGNvbXBvbmVudHMKKi8KZGVmaW5lICJDSSBIeXBlcnNlbnNpdGl2aXR5IHRvIHZhY2NpbmUgY29tcG9uZW50cyBPYnNlcnZhdGlvbiI6CiAgIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJDSS1IeXBlcnNlbnNpdGl2aXR5IHRvIHZhY2NpbmUgY29tcG9uZW50cyIKCi8qCkBpbnRlcm5hbDogQ29uZGl0aW9uIGZvciBIeXBlcnNlbnNpdGl2aXR5IHRvIHZhY2NpbmUgY29tcG9uZW50cwoqLwpkZWZpbmUgIkNJIEh5cGVyc2Vuc2l0aXZpdHkgdG8gdmFjY2luZSBjb21wb25lbnRzIENvbmRpdGlvbiI6CiAgW0NvbmRpdGlvbjogQ29uY2VwdHMuIkNJLUh5cGVyc2Vuc2l0aXZpdHkgdG8gdmFjY2luZSBjb21wb25lbnRzIl0KCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHRha2luZyBhbnRpYmlvdGljcwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiVGFraW5nIGFudGliaW90aWNzIgoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHRha2luZyBhbnRpYmlvdGljcyI6CiAgZXhpc3RzICJDSSBUYWtpbmcgYW50aWJpb3RpY3MgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIFRha2luZyBhbnRpYmlvdGljcyBDb25kaXRpb24iCgovKgpAaW50ZXJuYWw6IE9ic2VydmF0aW9uIGZvciBUYWtpbmcgYW50aWJpb3RpY3MKKi8KZGVmaW5lICJDSSBUYWtpbmcgYW50aWJpb3RpY3MgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktVGFraW5nIGFudGliaW90aWNzIgoKLyoKQGludGVybmFsOiBDb25kaXRpb24gZm9yIFRha2luZyBhbnRpYmlvdGljcwoqLwpkZWZpbmUgIkNJIFRha2luZyBhbnRpYmlvdGljcyBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1UYWtpbmcgYW50aWJpb3RpY3MiXQoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBjaHJvbmljIGdhc3Ryb2ludGVzdGluYWwgZGlzZWFzZQpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UiCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgY2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UiOgogIGV4aXN0cyAiQ0kgQ2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UgT2JzZXJ2YXRpb24iCiAgICBvciBleGlzdHMgIkNJIENocm9uaWMgZ2FzdHJvaW50ZXN0aW5hbCBkaXNlYXNlIENvbmRpdGlvbiIKCi8qCkBpbnRlcm5hbDogT2JzZXJ2YXRpb24gZm9yIENocm9uaWMgZ2FzdHJvaW50ZXN0aW5hbCBkaXNlYXNlCiovCmRlZmluZSAiQ0kgQ2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UgT2JzZXJ2YXRpb24iOgogICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiIE8KICAgIHdoZXJlIE8udmFsdWUgfiBDb25jZXB0cy4iQ0ktQ2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UiCgovKgpAaW50ZXJuYWw6IENvbmRpdGlvbiBmb3IgQ2hyb25pYyBnYXN0cm9pbnRlc3RpbmFsIGRpc2Vhc2UKKi8KZGVmaW5lICJDSSBDaHJvbmljIGdhc3Ryb2ludGVzdGluYWwgZGlzZWFzZSBDb25kaXRpb24iOgogIFtDb25kaXRpb246IENvbmNlcHRzLiJDSS1DaHJvbmljIGdhc3Ryb2ludGVzdGluYWwgZGlzZWFzZSJdCgoKCi8qCkBpbnRlcm5hbDogSElWIFN0YXR1cyBPYnNlcnZhdGlvbgoqLwpkZWZpbmUgIkhJViBzdGF0dXMgT2JzZXJ2YXRpb24iOgogIChbT2JzZXJ2YXRpb246IENvbmNlcHRzLiJISVYgc3RhdHVzIl0pLmNvbXBsZXRlKCkKCi8qCkBpbnB1dDogQ2xpZW50J3MgSElWIHN0YXR1cyBpcyBuZWdhdGl2ZSBvciB1bmtub3duCkBwc2V1ZG9jb2RlOiAiSElWIHN0YXR1cyIg4omgICJISVYtcG9zaXRpdmUiCiovCmRlZmluZSAiQ2xpZW50J3MgSElWIHN0YXR1cyBpcyBuZWdhdGl2ZSBvciB1bmtub3duIjoKICBub3QgIkNsaWVudCdzIEhJViBzdGF0dXMgaXMgcG9zaXRpdmUiCgovKgpAaW5wdXQ6IENsaWVudCdzIEhJViBzdGF0dXMgaXMgcG9zaXRpdmUKQHBzZXVkb2NvZGU6ICJISVYgc3RhdHVzIiA9ICJISVYtcG9zaXRpdmUiCiovCmRlZmluZSAiQ2xpZW50J3MgSElWIHN0YXR1cyBpcyBwb3NpdGl2ZSI6CiAgZXhpc3RzKCAiSElWIHN0YXR1cyBPYnNlcnZhdGlvbiIgTwogICAgd2hlcmUgTy52YWx1ZSB+IENvbmNlcHRzLiJISVYtcG9zaXRpdmUiICkKCi8qCkBpbnRlcm5hbDogQ3VycmVudGx5IG9uIEFSVCBPYnNlcnZhdGlvbgoqLwpkZWZpbmUgIkN1cnJlbnRseSBvbiBBUlQgT2JzZXJ2YXRpb24iOgogIChbT2JzZXJ2YXRpb246IENvbmNlcHRzLiJDdXJyZW50bHkgb24gQVJUIl0gTwogICAgc29ydCBieSBlbmQgb2YgZWZmZWN0aXZlLnRvSW50ZXJ2YWwoKSBkZXNjKS5jb21wbGV0ZSgpCgovKgpAaW5wdXQ6IENsaWVudCBpcyBjdXJyZW50bHkgcmVjZWl2aW5nIGFudGlyZXRyb3ZpcmFsIHRoZXJhcHkKQHBzZXVkb2NvZGU6ICJDdXJyZW50bHkgb24gQVJUIiA9IFRSVUUKKi8KZGVmaW5lICJDbGllbnQgaXMgY3VycmVudGx5IHJlY2VpdmluZyBhbnRpcmV0cm92aXJhbCB0aGVyYXB5IjoKICBleGlzdHMoIkN1cnJlbnRseSBvbiBBUlQgT2JzZXJ2YXRpb24iKQogIGFuZCBGaXJzdCgiQ3VycmVudGx5IG9uIEFSVCBPYnNlcnZhdGlvbiIpLnZhbHVlID0gdHJ1ZQoKLyoKQGlucHV0OiBDbGllbnQgaXMgY3VycmVudGx5IG5vdCByZWNlaXZpbmcgYW50aXJldHJvdmlyYWwgdGhlcmFweQpAcHNldWRvY29kZTogIkN1cnJlbnRseSBvbiBBUlQiID0gRkFMU0UKKi8KZGVmaW5lICJDbGllbnQgaXMgY3VycmVudGx5IG5vdCByZWNlaXZpbmcgYW50aXJldHJvdmlyYWwgdGhlcmFweSI6CiAgbm90IGV4aXN0cygiQ3VycmVudGx5IG9uIEFSVCBPYnNlcnZhdGlvbiIpCiAgb3IgRmlyc3QoIkN1cnJlbnRseSBvbiBBUlQgT2JzZXJ2YXRpb24iKS52YWx1ZSA9IGZhbHNlCgovKgpAaW50ZXJuYWw6IEltbXVub2xvZ2ljYWxseSBzdGFibGUgT2JzZXJ2YXRpb24KKi8KZGVmaW5lICJJbW11bm9sb2dpY2FsbHkgc3RhYmxlIE9ic2VydmF0aW9uIjoKICAoW09ic2VydmF0aW9uOiBDb25jZXB0cy4iSW1tdW5vbG9naWNhbGx5IHN0YWJsZSJdIE8KICAgIHNvcnQgYnkgZW5kIG9mIGVmZmVjdGl2ZS50b0ludGVydmFsKCkgZGVzYykuY29tcGxldGUoKQoKLyoKQGlucHV0OiBDbGllbnQgaXMgaW1tdW5vbG9naWNhbGx5IHN0YWJsZQpAcHNldWRvY29kZTogIkltbXVub2xvZ2ljYWxseSBzdGFibGUiID0gVFJVRQoqLwpkZWZpbmUgIkNsaWVudCBpcyBpbW11bm9sb2dpY2FsbHkgc3RhYmxlIjoKICBleGlzdHMoIkltbXVub2xvZ2ljYWxseSBzdGFibGUgT2JzZXJ2YXRpb24iKQogIGFuZCBGaXJzdCgiSW1tdW5vbG9naWNhbGx5IHN0YWJsZSBPYnNlcnZhdGlvbiIpLnZhbHVlID0gdHJ1ZQoKLyoKQGlucHV0OiBDbGllbnQgaXMgbm90IGltbXVub2xvZ2ljYWxseSBzdGFibGUKQHBzZXVkb2NvZGU6ICJJbW11bm9sb2dpY2FsbHkgc3RhYmxlIiA9IEZBTFNFCiovCmRlZmluZSAiQ2xpZW50IGlzIG5vdCBpbW11bm9sb2dpY2FsbHkgc3RhYmxlIjoKICBleGlzdHMoIkltbXVub2xvZ2ljYWxseSBzdGFibGUgT2JzZXJ2YXRpb24iKQogIGFuZCBGaXJzdCgiSW1tdW5vbG9naWNhbGx5IHN0YWJsZSBPYnNlcnZhdGlvbiIpLnZhbHVlID0gZmFsc2UKCi8qCkBpbnRlcm5hbDogVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IE9ic2VydmF0aW9uCiovCmRlZmluZSAiVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IE9ic2VydmF0aW9uIjoKICAoW09ic2VydmF0aW9uOiBDb25jZXB0cy4iVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0Il0gTwogICAgc29ydCBieSBlbmQgb2YgZWZmZWN0aXZlLnRvSW50ZXJ2YWwoKSBkZXNjKS5jb21wbGV0ZSgpCgovKgpAaW5wdXQ6IENsaWVudCdzIFRCIGluZmVjdGlvbiB0ZXN0IHJlc3VsdCBpcyBuZWdhdGl2ZQpAcHNldWRvY29kZTogIlRCIGluZmVjdGlvbiB0ZXN0IHJlc3VsdCIgPSAiTmVnYXRpdmUiCiovCmRlZmluZSAiQ2xpZW50J3MgVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IGlzIG5lZ2F0aXZlIjoKICBleGlzdHMoIlRCIGluZmVjdGlvbiB0ZXN0IHJlc3VsdCBPYnNlcnZhdGlvbiIpCiAgYW5kIEZpcnN0KCAiVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IE9ic2VydmF0aW9uIiApLnZhbHVlIH4gQ29uY2VwdHMuIlRCLU5lZ2F0aXZlIgovKgpAaW5wdXQ6IENsaWVudCdzIFRCIGluZmVjdGlvbiB0ZXN0IHJlc3VsdCBpcyB1bmtub3duICh0ZXN0IG5vdCBkb25lIG9yIG5vIHJlc3VsdCB5ZXQpCkBwc2V1ZG9jb2RlOiAiVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IiBJUyBOVUxMCiovCmRlZmluZSAiQ2xpZW50J3MgVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IGlzIHVua25vd24gKHRlc3Qgbm90IGRvbmUgb3Igbm8gcmVzdWx0IHlldCkiOgogIG5vdCBleGlzdHMoICJUQiBpbmZlY3Rpb24gdGVzdCByZXN1bHQgT2JzZXJ2YXRpb24iICkgb3IgKAogICAgbm90ICgiQ2xpZW50J3MgVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IGlzIG5lZ2F0aXZlIikgYW5kIG5vdCAoIkNsaWVudCdzIFRCIGluZmVjdGlvbiB0ZXN0IHJlc3VsdCBpcyBwb3NpdGl2ZSIpCiAgKQovKgpAaW5wdXQ6IENsaWVudCdzIFRCIGluZmVjdGlvbiB0ZXN0IHJlc3VsdCBpcyBwb3NpdGl2ZQpAcHNldWRvY29kZTogIlRCIGluZmVjdGlvbiB0ZXN0IHJlc3VsdCIgPSAiUG9zaXRpdmUiCiovCmRlZmluZSAiQ2xpZW50J3MgVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IGlzIHBvc2l0aXZlIjoKICBleGlzdHMoIlRCIGluZmVjdGlvbiB0ZXN0IHJlc3VsdCBPYnNlcnZhdGlvbiIpCiAgYW5kIEZpcnN0KCAiVEIgaW5mZWN0aW9uIHRlc3QgcmVzdWx0IE9ic2VydmF0aW9uIiApLnZhbHVlIH4gQ29uY2VwdHMuIlRCLVBvc2l0aXZlIgoKLyoKQGludGVybmFsOiBDbGluaWNhbGx5IHdlbGwgT2JzZXJ2YXRpb24KKi8KZGVmaW5lICJDbGluaWNhbGx5IHdlbGwgT2JzZXJ2YXRpb24iOgogIChbT2JzZXJ2YXRpb246IENvbmNlcHRzLiJDbGluaWNhbGx5IHdlbGwiXSBPCiAgICBzb3J0IGJ5IGVuZCBvZiBlZmZlY3RpdmUudG9JbnRlcnZhbCgpIGRlc2MpLmNvbXBsZXRlKCkKCi8qCkBpbnB1dDogQ2xpZW50IGlzIG5vdCBjbGluaWNhbGx5IHdlbGwKQHBzZXVkb2NvZGU6ICJDbGluaWNhbGx5IHdlbGwiID0gRkFMU0UKKi8KZGVmaW5lICJDbGllbnQgaXMgbm90IGNsaW5pY2FsbHkgd2VsbCI6CiAgZXhpc3RzKCJDbGluaWNhbGx5IHdlbGwgT2JzZXJ2YXRpb24iKQogIGFuZCBGaXJzdCggIkNsaW5pY2FsbHkgd2VsbCBPYnNlcnZhdGlvbiIgKS52YWx1ZSA9IGZhbHNlIAoKLyoKQGlucHV0OiBDbGllbnQgaXMgY2xpbmljYWxseSB3ZWxsCkBwc2V1ZG9jb2RlOiAiQ2xpbmljYWxseSB3ZWxsIiA9IFRSVUUKKi8KZGVmaW5lICJDbGllbnQgaXMgY2xpbmljYWxseSB3ZWxsIjoKICBleGlzdHMoIkNsaW5pY2FsbHkgd2VsbCBPYnNlcnZhdGlvbiIpCiAgYW5kIEZpcnN0KCAiQ2xpbmljYWxseSB3ZWxsIE9ic2VydmF0aW9uIiApLnZhbHVlID0gdHJ1ZSAKCi8qCkBpbnRlcm5hbDogSW1tdW5vY29tcHJvbWlzZWQgT2JzZXJ2YXRpb24KKi8KZGVmaW5lICJJbW11bm9jb21wcm9taXNlZCBPYnNlcnZhdGlvbiI6CiAgKFtPYnNlcnZhdGlvbjogQ29uY2VwdHMuIkltbXVub2NvbXByb21pc2VkIl0gTwogICAgc29ydCBieSBlbmQgb2YgZWZmZWN0aXZlLnRvSW50ZXJ2YWwoKSBkZXNjKS5jb21wbGV0ZSgpCgovKgpAaW5wdXQ6IENsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZApAcHNldWRvY29kZTogIkltbXVub2NvbXByb21pc2VkIiA9IFRSVUUKKi8KZGVmaW5lICJDbGllbnQgaXMgaW1tdW5vY29tcHJvbWlzZWQiOgogIGV4aXN0cyggIkltbXVub2NvbXByb21pc2VkIE9ic2VydmF0aW9uIiApIGFuZAogIEZpcnN0KCAiSW1tdW5vY29tcHJvbWlzZWQgT2JzZXJ2YXRpb24iICkudmFsdWUgPSB0cnVlIAoKLyoKQGlucHV0OiBDbGllbnQgaXMgbm90IGltbXVub2NvbXByb21pc2VkCkBwc2V1ZG9jb2RlOiAiSW1tdW5vY29tcHJvbWlzZWQiIOKJoCBUUlVFCiovCmRlZmluZSAiQ2xpZW50IGlzIG5vdCBpbW11bm9jb21wcm9taXNlZCI6CiAgbm90ICJDbGllbnQgaXMgaW1tdW5vY29tcHJvbWlzZWQiCgovKgpAaW50ZXJuYWw6IEJpcnRoIHdlaWdodCBpbiBncmFtcyBPYnNlcnZhdGlvbgoqLwpkZWZpbmUgIkJpcnRoIHdlaWdodCBpbiBncmFtcyBPYnNlcnZhdGlvbiI6CiAgKFtPYnNlcnZhdGlvbjogQ29uY2VwdHMuIkJpcnRoIHdlaWdodCBpbiBncmFtcyJdIE8KICAgIHNvcnQgYnkgZW5kIG9mIGVmZmVjdGl2ZS50b0ludGVydmFsKCkgZGVzYykuY29tcGxldGUoKQoKZGVmaW5lICJCaXJ0aCB3ZWlnaHQgaW4gZ3JhbXMgVmFsdWUiOgogIEZpcnN0KCJCaXJ0aCB3ZWlnaHQgaW4gZ3JhbXMgT2JzZXJ2YXRpb24iKS52YWx1ZSBhcyBGSElSLlF1YW50aXR5CgpkZWZpbmUgIkJpcnRoIHdlaWdodCBpbiBncmFtcyI6CiAgIkJpcnRoIHdlaWdodCBpbiBncmFtcyBWYWx1ZSIudmFsdWUgYXMgRkhJUi5kZWNpbWFsCgovKgpAaW5wdXQ6IENsaWVudCdzIHdlaWdodCBhdCBiaXJ0aCB3YXMgb3ZlciAyMDAwIGcKQHBzZXVkb2NvZGU6ICJCaXJ0aCB3ZWlnaHQgaW4gZ3JhbXMiICDiiaUgMjAwMAoqLwpkZWZpbmUgIkNsaWVudCdzIHdlaWdodCBhdCBiaXJ0aCB3YXMgb3ZlciAyMDAwIGciOgogICJCaXJ0aCB3ZWlnaHQgaW4gZ3JhbXMiID49IDIwMDAKCi8qCkBpbnB1dDogQ2xpZW50J3Mgd2VpZ2h0IGF0IGJpcnRoIHdhcyBiZWxvdyAyMDAwIGcKQHBzZXVkb2NvZGU6ICJCaXJ0aCB3ZWlnaHQgaW4gZ3JhbXMiIDwgMjAwMAoqLwpkZWZpbmUgIkNsaWVudCdzIHdlaWdodCBhdCBiaXJ0aCB3YXMgYmVsb3cgMjAwMCBnIjoKICAiQmlydGggd2VpZ2h0IGluIGdyYW1zIiA8IDIwMDAKCi8qCkBpbnRlcm5hbDogUHJldGVybSBiaXJ0aCBPYnNlcnZhdGlvbgoqLwpkZWZpbmUgIlByZXRlcm0gYmlydGggT2JzZXJ2YXRpb24iOgogIChbT2JzZXJ2YXRpb246IENvbmNlcHRzLiJQcmV0ZXJtIGJpcnRoIl0pLmNvbXBsZXRlKCkKCi8qCkBpbnB1dDogQ2xpZW50IHdhcyBub3QgYSBwcmVtYXR1cmUgaW5mYW50IGF0IGJpcnRoCkBwc2V1ZG9jb2RlOiAiUHJldGVybSBiaXJ0aCIg4omgICBUUlVFCiovCmRlZmluZSAiQ2xpZW50IHdhcyBub3QgYSBwcmVtYXR1cmUgaW5mYW50IGF0IGJpcnRoIjoKICBub3QgIkNsaWVudCB3YXMgYSBwcmVtYXR1cmUgaW5mYW50IGF0IGJpcnRoIgoKLyoKQGlucHV0OiBDbGllbnQgd2FzIGEgcHJlbWF0dXJlIGluZmFudCBhdCBiaXJ0aApAcHNldWRvY29kZTogIlByZXRlcm0gYmlydGgiID0gIFRSVUUKKi8KZGVmaW5lICJDbGllbnQgd2FzIGEgcHJlbWF0dXJlIGluZmFudCBhdCBiaXJ0aCI6CiAgZXhpc3RzKCAiUHJldGVybSBiaXJ0aCBPYnNlcnZhdGlvbiIgTyB3aGVyZSBPLnZhbHVlID0gdHJ1ZSApCgovKgpAaW50ZXJuYWw6IENvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMgT2JzZXJ2YXRpb24KKi8KZGVmaW5lICJDb21wbGV0ZWQgdGhlIHByaW1hcnkgdmFjY2luYXRpb24gc2VyaWVzIE9ic2VydmF0aW9uIjoKICAoW09ic2VydmF0aW9uOiBDb25jZXB0cy4iQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyJdKS5jb21wbGV0ZSgpCgovKgpAaW50ZXJuYWw6IEF0IGhpZ2ggcmlzayBmb3IgcG5ldW1vY29jY2FsIGluZmVjdGlvbiBPYnNlcnZhdGlvbgoqLwpkZWZpbmUgIkF0IGhpZ2ggcmlzayBmb3IgcG5ldW1vY29jY2FsIGluZmVjdGlvbiBPYnNlcnZhdGlvbiI6CiAgKFtPYnNlcnZhdGlvbjogQ29uY2VwdHMuIkF0IGhpZ2ggcmlzayBmb3IgcG5ldW1vY29jY2FsIGluZmVjdGlvbiJdKS5jb21wbGV0ZSgpCgovKgpAaW5wdXQ6IENsaWVudCBpcyBhdCBoaWdoIHJpc2sgZm9yIHBuZXVtb2NvY2NhbCBpbmZlY3Rpb24KQHBzZXVkb2NvZGU6ICJBdCBoaWdoIHJpc2sgZm9yIHBuZXVtb2NvY2NhbCBpbmZlY3Rpb24iID0gVFJVRQoqLwpkZWZpbmUgIkNsaWVudCBpcyBhdCBoaWdoIHJpc2sgZm9yIHBuZXVtb2NvY2NhbCBpbmZlY3Rpb24iOgogIGV4aXN0cyggIkF0IGhpZ2ggcmlzayBmb3IgcG5ldW1vY29jY2FsIGluZmVjdGlvbiBPYnNlcnZhdGlvbiIgTyB3aGVyZSBPLnZhbHVlID0gdHJ1ZSApCgovKgpAaW5wdXQ6IENsaWVudCBpcyBub3QgYXQgaGlnaCByaXNrIGZvciBwbmV1bW9jb2NjYWwgaW5mZWN0aW9uCkBwc2V1ZG9jb2RlOiAiQXQgaGlnaCByaXNrIGZvciBwbmV1bW9jb2NjYWwgaW5mZWN0aW9uIiA9IEZBTFNFCiovCmRlZmluZSAiQ2xpZW50IGlzIG5vdCBhdCBoaWdoIHJpc2sgZm9yIHBuZXVtb2NvY2NhbCBpbmZlY3Rpb24iOgogIGV4aXN0cyggIkF0IGhpZ2ggcmlzayBmb3IgcG5ldW1vY29jY2FsIGluZmVjdGlvbiBPYnNlcnZhdGlvbiIgTyB3aGVyZSBPLnZhbHVlID0gZmFsc2UgKQoKLyoKQGludGVybmFsOiBEYXRlIHdoZW4gcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMgd2FzIGNvbXBsZXRlZCBPYnNlcnZhdGlvbgoqLwpkZWZpbmUgIkRhdGUgd2hlbiBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyB3YXMgY29tcGxldGVkIE9ic2VydmF0aW9uIjoKICAoW09ic2VydmF0aW9uOiBDb25jZXB0cy4iRGF0ZSB3aGVuIHByaW1hcnkgdmFjY2luYXRpb24gc2VyaWVzIHdhcyBjb21wbGV0ZWQiXSBPCiAgICBzb3J0IGJ5IGVuZCBvZiBlZmZlY3RpdmUudG9JbnRlcnZhbCgpIGRlc2MpLmNvbXBsZXRlKCkKCi8qCkBpbnRlcm5hbDogQ29tcGxldGVkIHRoZSBib29zdGVyIHNlcmllcyBPYnNlcnZhdGlvbgoqLwpkZWZpbmUgIkNvbXBsZXRlZCB0aGUgYm9vc3RlciBzZXJpZXMgT2JzZXJ2YXRpb24iOgogIChbT2JzZXJ2YXRpb246IENvbmNlcHRzLiJDb21wbGV0ZWQgdGhlIGJvb3N0ZXIgc2VyaWVzIl0pLmNvbXBsZXRlKCk="
  }]
}

```
