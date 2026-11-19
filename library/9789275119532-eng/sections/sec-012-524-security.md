---
doc_id: 9789275119532-eng
doc_title: "ELECTRONIC IMMUNIZATION REGISTRY"
section_id: sec-012-524-security
section_title: "Security"
section_number: 5.2.4
pages: 77-78
source_pdf: 9789275119532_eng.pdf
source_sha256: 1010a882f2c1990a
toc_source: inferred
---
This concept covers security requirements for access to data and to the various 
functions provided by the software product, including user validation and user access 
control (authentication) requirements. It also covers security aspects concerning 
access to physical locations, data integrity requirements, fraud control, and means of 
data communication through the corresponding channels, as well as encryption and 
nonrepudiation requirements for data transmitted through different communication 
channels (Table 15).
TABLE 15. Example list of non-functional requirements related to security
KEY CONSIDERATIONS
Security requirements should be taken into account for all EIR modules, 
including mobile applications. 
Due to their local databases, mobile applications require special attention 
to security procedures. Passwords should be defined for use by teams and 
database encryption should be ensured.
CATEGORY: SECURITY 
Requirement
Met 
Partly 
met
On-
going
N/A
1
Prevents unauthorized access 
to confidential information on 
vaccine recipients. 
2
Prevents partial changes to the 
database, which can cause more 
problems than rejecting the entire 
form. 
3
Keeps a log of data changes 
made by the system and by 
users (updates, deletions, and 
additions). 
4
Allows the administrator to 
establish access and priority 
privileges.
CATEGORY: SECURITY 
Requirement
Met 
Partly 
met
On-
going
N/A
5
Allows definition of multiple roles 
and assigns degrees of clearance 
for data viewing, input, editing, 
and auditing.
6
Requires role-based 
authentication of each user 
before providing access to the 
system. 
7
Provides a flexible password 
control strategy that allows 
alignment with national policy 
and with standard operational 
procedures.
8
The system can be configured 
to comply with the country’s 
existing health information 
storage policies.
N/A, not applicable.
78
Once the context in which the EIR should operate has been determined, the next step 
is to figure out how these and other types of systems work elsewhere in the world, 
in the country, in other regions, or in other health programs, with particular focus on 
development and implementation. An all too common issue in the world of software 
is imitation of existing models, which leads to duplication of efforts and resource 
expenditures. It is thus advisable to search for published prior experiences, even when 
requirements mean a bespoke system will probably be necessary.
KEY CONSIDERATIONS
These lists are basic examples of non-functional system requirements. 
They are intended as a guide for development of specific requirements. 
When formulating non-functional requirements, it is essential to seek the 
opinion of the IT bureau in the Ministry of Health or of the agency in charge 
of information systems in the country.
5.3
RELEVANT INFORMATION ON THE EXTERNAL
