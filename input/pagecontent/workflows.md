### Workflows
The over all workflow for immunizations is documented below. More details can be found in the [WHO Immunization Digital Adaptation Kit](). The FHIR resources in this implementation guide reflect the WHO Routine immunizations by antigen as described in the [PlanDefinition Index](plandefinitionindex.html)

#### Immunization Workflow
1. Facility Registration
2. Plan Service Delivery 
3. Client Reminder Call 
4. Defaulter Tracing 
5. Register Client
6. Query Client Record 
7. Administer Vaccine 
8. Resolve Duplicate Client Records 
9. Resolve Duplicate Vaccine Events
10. Report generation

##### 1. Facility Registration
All facilities that are able to administer vaccines must be registered and uniquely identified to enable appropriate tracking of vaccine coverage and stock. There are situations where the locations providing vaccines may not be a permanent physical facility but rather some kind of public health authority ￼(as is the case with some temporary or pop up clinics). These may be included as per local policy or needs.

##### 2. Plan Service Delivery 
The objective is to prepare for an immunization session, either at the facility or done on an outreach basis. The primary difference if done as outreach is that all equipment and vaccines must be properly packaged (cold box) for transport.  

Note: There are opportunities to link with stock management systems to provide the HCW with automated views and stock alerts.  

##### 3. Client Reminder Call
Vaccine reminders and recalls are sent to a client or responsible party (such as a caretaker) that the client is due, due on a future date, or past due for a vaccine. ·This is typically done electronically by the system, however, in some circumstances it may be done manually by the Health Care Worker (more likely for missed appointments or those to be followed up by a Community Health Worker) 

##### 4. Defaulter Tracing 
The objective is to identify those who are overdue to come for vaccination. There is a significant amount of variability in how this follow-up is done currently. This process flow assumes the client is registered and has started initial dose. This also assumes that there are no automated reminders sent by the system and that follow up is done by the Health Care Worker, or that electronic reminders have already been sent, but the client has not arrived for their vaccine. (see Generate reminder workflow for automated reminders) 

##### 5. Register Client
The objective is to start, or contribute to the client’s lifelong immunization record. This will allow providers and the client/mother to identify what vaccinations have been given. There are some vaccination records that may require additional security/validation features in the paper record for validation.  

For more information please refer to Digital Documentation of COVID-19 Certificates: Vaccination Status — Technical Specifications and Implementation Guidance, 27 August 2021. Geneva: World Health Organization; 2021 (WHO/2019-nCoV/Digital certificates/vaccination/2021.1). Licence CC BY-NC-SA 3.0 IGO 

##### 6. Query Client Record
The objective is to correctly locate or identify a client’s immunization record as well as review and update a client’s record to provide a complete immunization history. This will be used to determine recommended vaccines and due dates, allowing providers to recommend and discuss immunizations with the client. It may also be used if the client record needs to be recreated if the original paper record is lost.  

##### 7. Administer Vaccine 
The objective is to determine what vaccines a client needs, administer those, and record the relevant necessary data both in the system as well as on the appropriate paper records. 

##### 8. Resolve Duplicate Client Records 
The objective is to identify duplicate client records and consolidate them into one most accurate/suitable (best) record. This is a fairly complex process and is typically not done by Health Care Workers, however, they will need to identify potential duplicates if they come across them.

##### 9. Resolve Duplicate Vaccine Events
The objective is to identify duplicate vaccination events within a client record and update into one event. It is typically a system function to alert the user to potential duplicate events, the amount of automation in the resolving of the duplicates will vary. In some systems it can be done in a more automated way, while in other circumstances it is preferable to have the health care worker, or a trained system administrator review and make decisions. Ideally, duplicate events are flagged/alerted at the time they are entered so they may be dealt with immediately by the Health Care Worker and are not saved to the system. This process assumes duplicate records have been saved to the system. 

##### 10. Report generation
The objective is to provide the ability to access and analyse data to improve immunization program decision making. This process outlines the general process to generate a variety of reports that are routinely needed by IIS, providers, and other partners·  

Reports will be defined and set up initially in the system and are expected to be revised and updated as necessary. Reports can be individually generated, automatically generated or even sent to other systems. They may include dashboards, which are predefined summaries that are automatically updated frequently. They will also include aggregate reports that are typically required to be sent from facility to district. 

Examples of reports include: Coverage reports, Reminder/Recall, Patient List, Ad Hoc, Vaccine Uptake, Stock consumption or wastage reports.  

#### Generic Personas
The following personas are generic examples which are evident in some of the user scenarios present in the immunization case. 
* Mother
* Child
* Community Health Worker 
* Health Worker
* District Immunization and Vaccination Officer 
* Regional Immunization and Vaccination Officer
* Expanded Programme on Immunization Manager
* System Administrator

The personas described are fictional characters which have been created in order to represent the different user types that might use the service.

##### Mother
Ruth is 21 years old and Esther, her first baby, is 11 weeks old. She completed primary school and has basic literacy. Her husband attended secondary school for three years, but did not finish. They all live in a single-room house without electricity in a small village near Msindo. There is a public tap for drinking water a few hundred meters away. 

##### Child 
Esther was born at home. Although Esther’s birth was not registered (and she does not have a birth certificate), the clinic assigned an ID to Esther when Ruth took her in for her first round of immunizations shortly after her birth. It takes Ruth just over an hour to walk to the Msindo clinic from her home. 

##### Community Health Worker 
Fatuma is a CHW in Ruth’s village and has held this role for eight months. She is 44 years old. Fatuma’s four children are grown and have left the home. Two years ago, Fatuma’s husband died of HIV/AIDS.  

Fatuma has completed primary school and is functionally literate. She has no formal clinical certifications, but completed a CHW training program in her district. She doesn’t receive formal compensation for her work, but the Village Health Council gave her a bicycle and a uniform. The villagers also make small contributions to her when she provides care. 

*Fatuma provides a link between health service and the community. She spends one to two days per week on her duties which include: running sanitation campaigns, distributing medications and nutritional supplements, assisting nurses during outreach campaigns, monitoring growth in children, reminding HIV-positive patients to take medications, making referrals to health centers, distributing condoms, responding to emergencies, and reporting births.*  

*Fatuma also visits homes and provides health education to expectant and new mothers about their pregnancy and newborns, nutrition, and sanitation. She visited with Ruth several times, providing health education information on antenatal, postnatal, and newborn care, as well as general hygiene, breastfeeding, and immunization.* 

##### Health Worker 
Lucy is a nurse working in a busy health center in Kubwamji, the largest city in the region. She has 12 years’ experience and is 33 years old. Lucy has a diploma in nursing, and received RED training four years ago. She speaks English and Swahili. 

*Although many services are offered in the clinic, Lucy’s focus is on keeping up with the ever-increasing demand for immunizations. She facilitates education sessions, administers immunizations, and provides counseling when needed.*  

*Lucy uses paper-based service registers and tally sheets to record immunizations and paper ledgers to record stock movements (despite the clinic’s computer system). These are keyed in later by clerical staff. At the end of the month, Lucy compiles the data and prepares a report for the DIVO*

##### District Immunization and Vaccination Officer 
Abdu is the DIVO in Madiba district and supervises 32 health facilities. He has four years’ experience and is 34 years old. Abdu received his advanced diploma in environmental science. He recently received RED training, as well as vaccine-management training as part of the deployment of the WHO SMT. 

*Abdu plans, manages, and monitors both existing and new immunization programs in his district, and coordinates these programs with other MoH programs.*  

*He visits facilities in his district to ensure cold chain equipment is functioning properly and temperatures are monitored and within range, and resolves any issues that may exist. Abdu also reviews and discusses data management and reporting quality issues during his site visits and will also check stock balances and help determine stock-replenishment quantities.*

##### Regional Immunization and Vaccination Officer 
Kwame is the RIVO in Kileo region and supervises seven districts. He has 14 years’ experience (two as RIVO and 12 as DIVO) and is 47 years old. Kwame has an environmental health degree and has also received vaccine-management training. 

*Kwame prepares an annual micro-plan at the end of each year based on the district micro-plans he receives. He also provides supportive supervision to districts in his region, and tries to visit each district at least twice per year. During his site visits, he checks that cold chain equipment is functioning properly and resolves any issues, and also discusses data management and reporting.*  

*Kwame also acts as a transport officer for the regional office, reviewing requisition forms, selecting vaccines for shipment, updating stock ledgers, taking physical counts for monthly reports, and managing the emergency replenishment process.*

##### Expanded Programme on Immunization Manager 
Sarah is the national manager for the EPI and has held this role for one year. She is 41 years old and has a Master’s in Public Health. 

*Sarah is responsible for: developing annual and multi-annual plans; immunization communication and mobilization; management of logistics, the cold chain, and vaccines; monitoring, supervision and evaluation of immunization services; and coordination of EPI activities at the national level that includes the development of policies, strategies, and human resource capacity-building.* 

##### System Administrator 
Mohamed is a systems administrator working in the Ministry of Health at the national office. He has worked there for the past 3 years in the M&E department and only moved into this role in the past year. He has a degree in M&E. He is 30 years old. 

#### Business Process
A business process is a set of related activities or tasks performed together to achieve the objectives of the health programme. Below are descriptions of some processes which are covered by this IG in a narrative format.

##### Request district-level reports 
Abdu uses his computer to generate an immunization report from the eHealth database for his district showing summary information by catchment (i.e., clinic service area). The report lists the number of children who are due for immunizations in the near-term, broken down by type and by week, as well as information about women in the MoH’s maternal care program. Abdu also generates a historical report showing trends in the catchment’s immunization activities (including coverage) over the last number of months.  

##### Discuss district-level strategy and develop tactics 
Abdu and Kwame review these reports at their monthly meeting and use the data to create “action lists,” planning how best to manage the immunization activities for the district over the planning horizon. They discuss what tactics are working well and strategize about new ideas that may improve results. Kwame also uses this district-level insight to inform his discussions with Joseph and Sarah about national-level strategy and tactics.

##### Discuss clinic-level strategy and develop tactics 
Abdu uses his computer to generate two more immunization reports from the eHealth database specific to Namsemba’s clinic and catchment area. One report lists each child who is coming up for immunization and highlights any that are past due; the other includes historical data. Abdu and Namsemba review these reports each month and use the data to create “action lists,” planning how best to manage the immunization activities for Namsemba’s clinic over the planning horizon. They discuss what tactics are working well and strategize about new ideas that may improve results. 

##### Discuss village-level strategy and develop tactics 
Fatuma and Namsemba meet with Juma monthly to review the current and historical reports Abdu has given them about the village’s catchment areas. They plan for how best to manage the immunization activities in the village and to get important messages to the community about immunization and also discuss what has worked well and what hasn’t. Namsemba discusses strategies and ideas with her CHW colleagues regarding how to improve coverage.

##### Send immunization reminders to CHWs via SMS 
At the beginning of each week, Fatuma receives SMS messages from the electronic immunization registry for each child in the village that is due for immunization on her mobile phone. She also receives an alert message for any child that is past due for immunization, noting the child’s name and how many weeks past due they are. Fatuma uses these SMSs as her monthly “action list.”  

##### Send immunization reminders to parents via SMS 
Ruth has access to her husband’s mobile phone. The week before baby Esther is due for her next immunization, the electronic immunization registry sends an SMS reminder to this mobile phone. 

##### Calculate and schedule deliveries to health centers 
Abdu and Namsemba use the report data discussed in Section A to calculate the appropriate allocation and delivery schedule of vaccine stock to Namsemba’s clinic from the district store. Refer to Appendix B (Systems design and inventory management) for more information on how to make these calculations.

##### Calculate and schedule deliveries to district stores 
Kwame calculates the appropriate allocation and delivery schedule of vaccine stock from the regional store to the district store based on Abdu’s allocation and delivery schedule to each health center. Refer to Appendix B (Systems design and inventory management) for more information on how to make these calculations.

##### Calculate and schedule delivers to regional stores
Joseph calculates the appropriate allocation and delivery schedule of vaccine stock from the national store to the regional store based on Kwame’s district allocation and delivery schedule.  

##### Capture birth data 
Juma collects basic information about births that do not occur in a clinic and sends it via SMS through the electronic immunization registry where it will be added to the national database. Once the birth data has been added it will be included in future reports, and will also trigger SMS messages when the child is due for vaccination as noted in Section A. 

##### Manually assign and add identification numbers 
Namsemba assigns an identification number to each baby who goes to the clinic who does not already have one. She also adds children’s identification numbers manually to her action list if they are missing from the report. NOTE: These children’s information will be the only data that is manually entered. Data entered for the children already listed on the reports will be machine-readable as in Figure 6-5.

##### Capture patient data 
Namsemba records the weight and date of immunization for each patient. This data is stored in the patient’s electronic health record. For children who are not immunized, Namsemba records their weight on a simple tally sheet. 

##### Submit report to and create action list 
At the end of each month, Namsemba separates the data-capture forms, sending the left side to Abdu to be scanned or manually entered, and keeping the right side, which becomes her defaulter action list.

##### Compile district-level reports 
Abdu scans or manually enters the data he receives from Namsemba and the other clinics in his district and submits them to the eHealth database every month. He will also generate new immunization forms for the following two months. As illustrated in Figure 6-7, these workflows are designed to provide a two-month forward-looking visibility.  

##### Submit health center reports 
Namsemba provides her paper immunization registry forms and her vaccine stock on hand balances to Abdu. Lucy’s data is provided directly from the electronic immunization registry.  

##### Capture and report data 
Abdu receives Namsemba’s data and inputs the forms, which then updates the national electronic immunization registry and SMT. The immunization registry data and the SMT inventory levels are used to calculate the recommended health center replenishment orders sent back to Abdu.  

##### Review and manage vaccine stock delivery 
Abdu uses the immunization registry data to inform the health center replenishment plan recommended by the SMT.  

##### Transfer inventory to health center 
Abdu physically transfers inventory from his district stores to Namsemba’s clinic. The stock delivery is logged to the SMT, which then automatically updates the national database with the stock now on hand at Namsemba’s health center. The inventory movements from the district to the health centers are then used to develop the replenishment plan for Abdu’s district stores from the regional store. 