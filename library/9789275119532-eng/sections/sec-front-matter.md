---
doc_id: 9789275119532-eng
doc_title: "ELECTRONIC IMMUNIZATION REGISTRY"
section_id: sec-front-matter
section_title: "Front matter"
section_number: null
pages: 1-9
source_pdf: 9789275119532_eng.pdf
source_sha256: 1010a882f2c1990a
toc_source: inferred
---
1
ELECTRONIC 
IMMUNIZATION 
REGISTRY:
Practical Considerations for 
Planning, Development, 
Implementation, and Evaluation
All rights reserved. Publications of the Pan American Health Organization are available 
on the PAHO website (www.paho.org). Requests for permission to reproduce or 
translate PAHO Publications should be addressed  to the Communications Department 
through the PAHO website (www.paho.org/permissions). 
Suggested citation. Pan American Health Organization. Electronic Immunization 
Registry: Practical Considerations for Planning, Development, Implementation and 
Evaluation. Washington, D.C.: PAHO; 2017.
Cataloguing-in-Publication (CIP)  data. CIP data are available at http://iris.paho.org.
Publications of the Pan American Health Organization enjoy copyright protection in 
accordance with the provisions of Protocol 2 of the Universal Copyright Convention.
	
The designations employed and the presentation of the material in this publication do 
not imply the expression of any opinion whatsoever on the part of the Secretariat of 
the Pan American Health Organization concerning the status of any country, territory, 
city or area or of its authorities, or concerning the delimitation of its frontiers or 
boundaries.
	
The mention of specific companies or of certain manufacturers’ products does 
not imply that they are endorsed or recommended by the Pan American Health 
Organization in preference to others of a similar nature that are not mentioned. Errors 
and omissions excepted, the names of proprietary products are distinguished by initial 
capital letters.
All reasonable precautions have been taken by the Pan American Health Organization 
to verify the information contained in this publication. However, the published material 
is being distributed without warranty of any kind, either expressed or implied. The 
responsibility for the interpretation and use of the material lies with the reader. In no 
event shall the Pan American Health Organization be liable for damages arising from 
its use.
Original version in Spanish:
Registro nominal de vacunación electrónico: consideraciones prácticas para su planificación, desarrollo, implementación y evaluación.
ISBN: 978-92-75-31953-6
Electronic Immunization Registry: Practical Considerations for Planning, Development, Implementation and Evaluation.  
ISBN: 978-92-75-11953-2
© Pan American Health Organization 2017
3
Contents
ACKNOWLEDGEMENTS .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 5 
ACRONYMS. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5
GLOSSARY .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 6
INTRODUCTION. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
1.	
Background on health information systems	
13
1.1	
What is eHealth and what are health information systems? .  .  .  . 13
1.1.1	 Definition of eHealth .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 14
1.1.2	 Health information systems. . . . . . . . . . . . . . . . . . . . . . . . . 14
1.1.3	 Benefits of an electronic health information system .  .  .  .  .  .  .  .  .  .  . 14
1.1.4	 Immunization information systems. . . . . . . . . . . . . . . . . . . . . 15
1.2	
How to develop and implement a 
health information system . . . . . . . . . . . . . . . . . . . . . . .  16
1.3	
Reasons for failure of an electronic 
health information system .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 18
2.	 Background on individualized immunization registries	 21
2.1 	 What is an electronic immunization registry? .  .  .  .  .  .  .  .  .  .  .  . 22
2.2	 Comparison of immunization systems using 
non-individualized data, paper-based individualized 
immunization registries, and EIRs . . . . . . . . . . . . . . . . . . .  23
2.3	 Advantages of using EIRs in the 
Expanded Program on Immunization  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 24
2.4	 Characteristics of an ideal EIR. . . . . . . . . . . . . . . . . . . . . 26
2.4.1	 Registration of individuals. . . . . . . . . . . . . . . . . . . . . . . . . . 26
2.4.2	 Registration of vaccination events . . . . . . . . . . . . . . . . . . . . . 28
2.4.3	 Reports and individual monitoring .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 30
2.4.4	 System .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 31
2.5	 The best time to develop an EIR .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 33
3.	 Strategic and operational planning and 
estimation of associated costs	
37
3.1	
Useful strategic planning elements for the 
implementation of an EIR system .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 37
3.2	 Scope of the system . . . . . . . . . . . . . . . . . . . . . . . . . . .  39
3.3	 Development of an operational plan .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 41
3.3.1	 Context of health information systems already in place 
or under development .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 42
3.3.2	 Human resources .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 43
3.3.3	 Information entry and flows. . . . . . . . . . . . . . . . . . . . . . . . . 44
3.3.4	 Infrastructure and technology .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 44
3.3.5	 Financial resources .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 45
3.3.6	 Monitoring of implementation (system follow-up) .  .  .  .  .  .  .  .  .  .  .  . 46
3.3.7	 Interest groups and stakeholders participating 
in the working group .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 46
3.4	 Current information flows .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 47
3.5	 Costs associated with the cycle of an EIR .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 49
3.5.1	 Is an EIR a good investment? .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 49
3.5.2	 Cost categories .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 50
3.6	 Transition stage from a non-individualized 
information system to an EIR: yes or no? .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 51
4
4.	 Necessary elements for electronic 
immunization registry (EIR) implementation 
and achievement of results	
55
4.1	
Variables to consider for an EIR  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 55
4.2	 EIR functions .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 58
4.3	 How can an EIR help implement vaccination strategies? .  .  .  .  .  . 60
4.4	 Roles and responsibilities of the technical team for 
EIR implementation and monitoring  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 62
4.5	 How system success is measured .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 65
5.	 Finding the right solution 	
67
5.1	
Criteria to evaluate in the eHealth context 
before developing an EIR .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 68
5.2	 Non-functional requirements for selection of 
appropriate technology .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 72
5.2.1	 Operability .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 72
5.2.2	 Usability .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 74
5.2.3	 Compatibility. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76
5.2.4	 Security .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 77
5.2.5	 Maintainability. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 78
5.3	 Relevant information on the external context to 
support decision-making .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 78
5.4	 Optimal software procurement model for an EIR .  .  .  .  .  .  .  .  .  .  . 79
5.5	 Evaluation of the selected model .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 82
5.5.1	 Supplier adequacy .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 83
6.	 Monitoring and evaluation of EIR data quality 	
85
6.1	
Data quality assessment .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 85
6.2	 The importance of managing data quality 
monitoring and assessment .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 86
6.3	 Evaluation of performance indicators for 
identification of inconsistencies .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 86
6.3.1	 Description of the national EIR  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 86
6.3.2	 Analysis of the information system .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 87
6.3.3	 EIR data analysis .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 87
7.	
Facing future challenges 	
91
7.1	
eHealth policies and their impact on EIRs .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 91
7.2	
Use of information and communication technologies .  .  .  .  .  .  .  . 92
7.3	
Data quality and use of data beyond typical analyses .  .  .  .  .  .  . 93
8.	 Ethics  	
95
8.1	
Is it ethical to obtain individualized data from 
health services users? .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 96
8.2	 Ethical obligations .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 96
8.3	 Ethical obligations of EIR managers toward management 
and preservation of collected data .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 97
8.4	 Ethical use of collected data . . . . . . . . . . . . . . . . . . . . . . 98
REFERENCES. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  99
ANNEXES .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 101
1	
Lessons learned from health information systems 
that have failed. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 101
2	
Benefits of an EIR  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 104
3	
Why an EIR is a good investment .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 108
4	
Essential EIR reports .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 109
5	
Criteria for EIR system evaluation .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 110
6	
Business rules to ensure EIR data quality 
at the time of data entry .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . 112
7	
Recommended actions to avoid duplicate entries .  .  .  .  .  .  .  .  . 113
8	
Examples of EIR analyses for data quality monitoring .  .  .  .  .  . 114
5
The document “Electronic Immunization Registry: Practical Considerations for Planning, 
Development, Implementation and Evaluation” was written jointly by Marcela Contreras, 
Gabriela Félix, and Martha Velandia with support from experts in countries of the 
Region of the Americas and other regions of the world, under the general coordination 
of Cuauhtémoc Ruiz Matus of the Comprehensive Family Immunization Unit of the 
Department of Family, Health Promotion and Life Course in the Pan American Health 
Organization (PAHO). Other PAHO technical staff members who collaborated in the 
development of the document were Gabriela Fernández, Gladys Ghisays, David Novillo, 
Claudia Ortiz, Carla Sáenz, Samia Samad, and Octavia Silva.
We would like to express our gratitude to the professionals from other institutions 
that contributed to the revision of this document: Rebecca Coyle and Carmela Gupta 
of the American Immunization Registry Association (AIRA); Laurie Werner of the BID 
Initiative/PATH; Tarik Derrough of the European Center for Disease Prevention and 
Control (ECDC); Kristie Clarke, Daniel Elhman, David Lyalin, and Daniel Martin of the 
United States Centers for Disease Control and Prevention (CDC); Tove Ryman of the 
Bill & Melinda Gates Foundation; William Avilés and Heather Zornetzer, independent 
consultants; Antonia Teixeira from the Brazilian Ministry of Health; Carolina Danovaro 
and Jan Grevendonk of the World Health Organization (WHO); Daniel Otzoy of the 
Central American Network of Health Informatics; and Patricia Arce from the Secretary 
of Health of Bogotá.
Lastly, we would like to express our gratitude to the Bill & Melinda Gates Foundation for 
its technical and financial support in the development of this document and activities 
to improve the quality and use of data in the Region of the Americas. Similarly, we 
would like to extend our thanks to all the national immunization programs in the Region, 
whose experiences and contributions allowed this important work to be carried out.
AIRA	
American Immunization Registry 
Association
BCG	
Bacillus Calmette–Guérin 
(vaccine against serious forms of 
tuberculosis)
CDC	
U.S. Centers for Disease Control 
and Prevention
CPU	
central processing unit
CRDM	 Collaborative Requirements 
Development Methodology
DPT	
diphtheria/pertussis/tetanus 
vaccine (also abbreviated DTP)
DQA	
data quality audit
DQS	
data quality self-assessment
EHR	
electronic health record
EIR	
electronic immunization registry
EMR 	
electronic medical record
EPI 	
Expanded Program on 
Immunization
ESAVI	 events supposedly attributable to 
vaccination or immunization
(also known as adverse events 
following immunization or AEFI)
EU	
European Union
GIS 	
geographic information systems
GVAP	
Global Vaccine Action Plan 
HIS 	
health information systems
HPV	
human papillomavirus
ICT 	
information and communication 
technology
IIS	
immunization information 
systems
ISP	
institutional service provider
LIS	
laboratory information systems
MOH	
Ministry of Health
NGO 	
nongovernmental organization
PACS	
picture archiving and 
communication systems
PAHO 	 Pan American Health Organization
PATH	
Program for Appropriate 
Technology in Health
PHII	
Public Health Informatics 
Institute 
RENIEC	 National Registry of 
Identification and Marital Status 
(Spanish acronym)
RIAP 	
Regional Immunization Action Plan
RIS 	
radiology information systems
RUAF	 Single Registry of Affiliates 
(Spanish acronym)
TAG 	
Technical Advisory Group
TCO	
total cost of ownership
UID	
unique identifier
VPD 	
vaccine-preventable diseases
WHO	
World Health Organization
Acknowledgements
Acronyms
6
eLearning 
Consists of the application of information and communication technologies to learning. 
It can be used to improve the quality of education, increase access to education, and 
create new and innovative forms of education that can reach a greater number of people. 
Includes distance learning or training activities. 
Electronic immunization registry (EIR) 
Confidential, population-based information system that contains data on vaccine doses 
administered. This type of system allows monitoring of vaccination coverage by service 
provider, vaccine, dose, age, target group, and geographical area, and yields results that 
facilitate individualized monitoring of immunization recipients. EIRs support immunization 
programs by providing timely and precise information. According to PAHO, individualized 
registries are those registries which identify the vaccination data of each individual, 
thus providing access to individual vaccine history and facilitating active capture, in 
addition to supporting monthly planning of those who should be vaccinated and following 
up defaulters or dropouts [1, 2].
Electronic medical record
An electronic record of information on the health of each patient. Also known as 
“electronic clinical history.” 
Extramural activities
Vaccine administration that takes place outside a health facility, as part of a campaign 
or routine immunization program. 
Business rules
Rules that describe a condition and specify an action to be taken on the basis of said 
condition.
Continuing education in information and communication technologies
Courses or programs for health professionals (not necessarily formally accredited) that 
support learning and development processes and facilitate acquisition of information and 
communication technology skills applicable to the field of health. This includes current 
methods for the exchange of scientific knowledge, such as electronic publications, open 
access, digital literacy, and the use of social networks.
Defaulters
Individuals who do not access health services in time to receive vaccination.
Dropout rate
Refers to the percentage of vaccination recipients (e.g., children) who begin their 
schedules but do not complete them. For example, the DPT dropout rate is calculated by 
dividing the number of children 12-23 months who received DPT1 minus the number of 
children 12-23 months who received DPT3 by the number of children 12-23 months who 
received DPT1.
Glossary
DPT 
dropout 
rate
# children 
who received 
DPT1
=
-
# children 
who received 
DPT3
# children 
who received 
DPT1
7
Non-individualized immunization registry
Any immunization registry based on immunization events and not on individuals that 
pools data on vaccinated individuals by ranges of variables, such as age group, sex, place 
of residence, and/or health facility in which the vaccine was administered, but does 
not disclose the name of each vaccinated individual and does not allow individualized 
monitoring of vaccination status. For example: doses applied by vaccination schedule 
and by type of vaccine to a vaccine recipient. Its main objective is to allow the number of 
people vaccinated to be counted and thus allow calculation of immunization coverage by 
dividing this number by the target population for that vaccine and dose.
Offline electronic immunization registry
An EIR that operates offline (disconnected from the Internet) and, as a result, is not 
available for real-time immediate use, can be operated independently, and can be 
synchronized by use of removable storage media. Database transfers at all levels should 
follow a standardized flow for data consolidation.
Online electronic immunization registry
An EIR system that operates online (connected to the Internet) and is available for 
real-time immediate use. Requires adequate infrastructure (connectivity) to be able to 
operate; however, it can be adapted to operate via synchronization in limited-connectivity 
environments.
Paper-based individualized registry
In the majority of countries, each vaccination center keeps an individualized paper-
based record that tends to include the name and date of birth of the user, information 
on the mother or caregiver in the case of children, address and/or telephone number, 
day, month, and year of visit, vaccines administered, and the number of corresponding 
doses. When ordered by user, this registry allows monitoring of individual vaccination 
schedules; this facilitates monthly planning of vaccinations and monitoring of those who 
are behind on their doses.
Immunization program efficiency
Refers to achievement of the goals of the vaccination program, in terms of coverage, 
completeness of schedules, timeliness of vaccination, and equity in access to the 
program by the entire target population, focusing efforts to achieve the same or better 
results in terms of quantity and quality with the least possible investment of financial 
resources, human resources, and time.
Individualized vaccination registry 
An individual registry ordered by origin of data on each vaccinated person. Upon 
administering each vaccine, the unique ID of the individual is recorded, as well as his or 
her name and other general data, such as contact information for reminders, the date of 
administration of each vaccine, and other data on the vaccination (facility, vaccinator, 
etc.). Allows determination of whether a person is up to date on immunization schedule 
for his or her age and even to determine if he or she has been vaccinated in a timely and 
correct fashion. Individualized registries can be paper-based or electronic. 
Interoperability
Communication between different technologies and software applications for the 
exchange and use of data in an effective, precise, and robust manner. Intra- and 
extraorganizational interoperability allow for more agile information flows and processes.
Intersectoral 
Government sectors other than the health sector (e.g., education, finance, social 
development, etc.).
mHealth
Short for “mobile health,” this term refers to the practice of medicine and public health 
with the support of mobile devices as ancillary tools to improve diagnostic processes, 
using mobile phones, patient monitoring devices, and other wireless devices.
8
Principles
Recommendations for practice.
Programmatic errors
Preventable error caused by inappropriate handling, prescription, or application. For 
example: vaccinating someone who has a contraindication, poor vaccine administration 
technique, administration of vaccines not indicated at the proper age, duplicate 
administration of the same vaccine, duplicate registration of a single immunization event, 
incorrect route of administration, and use of expired vaccines, among others.
Standardization
Corresponds to the application of standards, i.e., regulations, guidelines, or definitions of 
technical specifications, to make feasible the integrated management of health systems 
at all levels. It is a requirement for successful interoperability. Its adoption has the 
potential to contribute to the exchange of information and data between information 
systems within and outside organizations.
Telehealth (including telemedicine) 
Health services delivery by means of information and communication technologies, 
especially where distance is a barrier to accessing health care. 
Total cost of ownership
The total cost of ownership (TCO) is calculated through a comprehensive evaluation of 
all costs associated with information systems and ICTs. The TCO takes into account all 
organizational expenses pertaining to hardware and software procurement, management 
and technical support, communications, training, system upkeep, updates, operating 
costs, networking, security, licensing costs, and the opportunity costs of system 
downtime, among others.
Use case
Description of the steps and/or the activities that should be conducted in order to carry 
out a given process. In the context of eHealth, it is a sequence of interactions that will 
take place between a system and its actors in response to an event initiated by a main 
actor in the system itself. Use case diagrams are used to specify the communications 
and patterns of a system through its interaction with users and/or other systems.
User 
Health provider or other person who uses an information system, whether the EIR or 
another. 
Vaccine recipient
Individual who accesses the health services and benefits from an immunization program. 
Variables 
Fields in the immunization record.
9
systems (GIS), and connectivity are increasingly omnipresent and attainable, which has 
allowed the development of user-friendly information systems and databases to handle 
large volumes of information simultaneously and rapidly while ensuring data security 
and confidentiality. 
Developing an EIR, implementing it at the country level, and, above all, ensuring its 
sustainability are not easy, fast, or inexpensive processes. However, the experience 
generated by multiple EIR development projects, and the success of some of these 
programs, can be used as sources of best practices and provide many lessons learned. 
This document on EIRs compiles these experiences and provides an overview of the 
EIR planning, design, and implementation stages to make the road easier for countries 
that are considering embarking on this journey or have already done so. The document 
introduces important concepts, examples, country experiences, case studies, tools 
(such as checklists and data quality assessment forms, among others), and practical 
considerations and questions to facilitate decision-making at each stage of EIR 
development and implementation.
ABOUT THIS DOCUMENT
This document is designed to support EPI managers and their teams in the implementation 
of EIR-related information systems, using the various experiences compiled at the global 
level – and, especially, in the Region of the Americas – as a foundation. Within this context, 
the main objectives of this document are as follows:
Evidence suggests that EIRs are cost-effective tools that help increase coverage, improve 
the timeliness of vaccination, reduce revaccination due to unverifiability of previous 
immunizations, and provide reliable data for decision-making, e.g., where to search for 
unvaccinated individuals in order to ensure the right to equitable immunization. EIRs 
also enable monitoring of the immunization process with a view to optimizing ancillary 
activities. For example, EIRs provide accurate and timely information, thus facilitating 
planning of resources and activities. Furthermore, from a process standpoint, knowing 
the productivity of each vaccinator could help improve workload distribution. These 
tools also allow detection of problems in implementation of existing regulations (e.g., 
administration of vaccines to nontarget populations) and assist in directing training 
and supervision activities. Finally, it has been proven that EIRs offer useful, reliable 
information for conducting vaccine effectiveness and safety studies, among other 
research. 
Progress toward the development and implementation of EIRs responds to progress both 
in immunization programs and in information and communication technologies (ICTs) 
and connectivity, as well as to the information requirements of the EPI. Immunization
