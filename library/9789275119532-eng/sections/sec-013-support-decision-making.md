---
doc_id: 9789275119532-eng
doc_title: "ELECTRONIC IMMUNIZATION REGISTRY"
section_id: sec-013-support-decision-making
section_title: "support decision-making"
section_number: null
pages: 78-85
source_pdf: 9789275119532_eng.pdf
source_sha256: 1010a882f2c1990a
toc_source: inferred
---
5.2.5
MAINTAINABILITY
Maintainability is “the ability of an item, under given conditions of use, to be retained 
in, or restored to, a state to perform as required, under given conditions of use and 
maintenance” [29] (Table 16). For more detail, see Chapter 3.
TABLE 16. Requirements related to the maintainability of an 
information system
CATEGORY: MAINTAINABILITY
Requirement
Met 
Partly 
met
On-
going
N/A
1
The system is modular. 
2
The system source code is 
reusable.
3
The system has the necessary 
documentation to enable easy 
analysis. 
4
The system has the necessary 
documentation to enable easy 
modification. 
5
The system has the necessary 
documentation to enable easy 
testing. 
N/A, not applicable.
79
5.4
OPTIMAL SOFTWARE PROCUREMENT 
MODEL FOR AN EIR
TOOLS
Valid resources for this review are scarce, as there is no centralized repository of 
all published experiences in public health, and many publications are designed to 
report on success stories rather than failures. Very few publications shed light on 
challenges, lessons learned, or important technical details needed to make correct 
decisions. However, some resources are available:
	» Technical Network for Strengthening Immunization Services [24]	 
http://www.technet-21.org/
	» mHealth database 
http://www.africanstrategies4health.org/mhealth-database.html
	» USAID Deliver Project
http://deliver.jsi.com/
The next step is to determine under which model the new EIR could be acquired. There 
are several alternatives, each with its own advantages and disadvantages which must be 
taken into account. In addition, it is essential that the basic requirements be understood 
to be able to determine which option is most feasible in each context (Figure 13
and Table 17).
FIGURE 13. 
Software procurement models
Refers to the development 
of software from scratch, 
i.e., the design of an application to meet a specific 
set of requirements. Such 
development tends to 
be carried out through a 
contract with an external 
company or by an in-house 
group of developers.
 Specialized software 
designed for specific 
applications and available off-the-shelf. Can 
generally be used with very 
minor modifications or no 
modification at all.
Tends to be developed by 
donors or by a technical 
agency. Some applications 
are donated by other countries or external agencies 
as part of collaboration 
agreements.
The source code of open-
source software is available by means of licenses 
for study, modification, and 
distribution for any purpose. Development of this 
type of software is often 
backed by a community of 
practice.
In this model, software is 
licensed on a subscription 
basis and is distributed by 
a centralized service. Client 
access is often through a 
Web browser. Also known 
as on-demand software.
CUSTOM 
DEVELOPMENT
COMMERCIAL 
SOFTWARE
FREE 
SOFTWARE
OPEN-SOURCE 
SOFTWARE
SOFTWARE AS A 
SERVICE
80
TABLE 17. Advantages, disadvantages, and needs of different software procurement/delivery models
MODEL
ADVANTAGES
DISADVANTAGES
NEEDS
Custom 
development
	» Provides control over technology, 
design, and functionality
	» The development experience 
generates a sense of belonging and 
improves sustainability
	» Easier to connect with existing 
systems in the country
	» Provides possibility of involving the 
local IT sector
	» All system requirements can be 
personalized, including reports 
	» Very time- and resource-consuming. Tends to take 
longer than planned
	» Almost always requires more funds than originally 
allocated
	» Having control over the design does not ensure 
satisfaction with the end product; this depends largely 
on the capacity  of the development team and its 
interaction with the technical team
	» Long-term maintenance depends on the continuous 
availability of the development team, which means the 
project can stall halfway or be difficult to update
	» In-house development requires trained staff
	» External development requires appropriate 
funding for system development and future 
maintenance (sustainability)
	» In both cases, adequate communication with 
technical personnel (including health workers 
at the local level) is required to ensure correct 
interpretation of project requirements
	» Clearly defined roles, ownership, and access to 
data 
Commercial 
software
	» Time from software selection to 
implementation is short
	» In most cases, a trial period is 
available before purchasing the 
software
	» The product is maintained and 
updated by a company (for a price 
that can vary over time)
	» Tends to be a product that has 
already been tried and improved by 
previous clients
	» Specific solutions tend to be very expensive
	» In some cases, costs are not completely clear, e.g., cost 
per number of users (type of licensing)
	» Design does not tend to take into account the more 
complex requirements and processes of the EPI, but is 
rather based on the requirements of the private sector
	» Updating to new versions carries additional costs
	» If it is not updated, the system can become obsolete 
and lose technical support
	» Possibility of losing support if the software seller closes 
down
	» Long-term maintenance depends on continuous 
availability of the supplier 
	» Initial funds for software purchase 
	» Although the product is maintained and 
updated by the company, trained IT staff 
within the Ministry of Health are still required
	» Clearly defined roles, ownership, and access to 
data 
Free software
	» Can be evaluated and deployed 
quickly
	» No front-end costs (only for 
maintenance or customization if 
required) 
	» No service agreements and, therefore, no guarantee of 
rapid problem-solving
	» There are always costs involved once the system is 
operational
	» The source code is not always available
	» Support may be discontinued (sustainability) 
	» Allocated budget to cover system operating 
expenses 
	» Trained IT personnel within the Ministry of 
Health are needed to update and operate the 
system
81
MODEL
ADVANTAGES
DISADVANTAGES
NEEDS
Open-source 
software
	» Software can be modified, as 
the source code and appropriate 
permissions are available
	» Users, programmers, and companies 
can become involved in the 
development process (community of 
practice)
	» Error detection and correction and 
implementation of new features are 
efficient
	» No investment required to purchase 
licenses, only for staff training
	» No dependence on a specific provider 
for maintenance tasks 
	» No external technical support; community support can 
vary over time
	» The solution of any problem depends on the community 
of practice or on the in-house IT staff, which entails 
unplanned expenditures
	» The customization of an open-source system is time-
consuming, tends to be difficult to plan and, as a result, 
difficult to budget for
	» In-house support requires trained IT staff
	» Budget allocation to cover system 
customization, operation, and maintenance 
expenses
	» Country legislation must allow the use of such 
software; provisions must be made for the 
event of a change in regulations
Software as a 
service
	» Very easy to implement and maintain
	» Implementation and operation costs 
are defined clearly
	» No installation or client-side 
maintenance required
	» Investment in software improvement 
can be shared between clients 
	» Data must be stored in remote servers (in some cases, 
this goes against national policy)
	» Ministries of Health do not tend to allocate payment for 
this type of service in their budgets
	» Costs can increase without prior notice upon renewal of 
the service agreement
	» Budget allocation to cover monthly license/
subscription costs
	» Trained IT personnel within the Ministry 
of Health are required for system 
implementation
	» Country legislation must allow the use of such 
software; provisions must be made for the 
event of a change in regulations 
TABLE 17. continued
82
Ideally, at this point in the process, there will be a list of options. These possible solutions 
must be compared on the basis of all the crucial factors that have been reviewed in 
this document, including those listed in Chapter 3 and Chapter 4. The easiest way to 
conduct this assessment is to assign scores for each criterion through a selection matrix 
(Table 18).
TABLE 18. Example table for confirmation of model selection
FACTOR 
POSSIBLE 
POINTS 
SYSTEM 1 
SYSTEM 2 SYSTEM 3 
Does it meet or will it meet the defined requirements? 
To what extent does the system meet the needs of the user?
Does this system meet or will it meet technical infrastructure requirements?
Is the appropriate hardware in place to acquire, adopt, or develop this system?
Does this system use or will it use recommended standards for health information systems? 
Is or will the system be interoperable with other information systems, both health and otherwise 
(e.g., identification systems)?
Does the system meet or will it meet country regulatory requirements for health information systems? 
Is this system certified or certifiable according to existing standards?
Are the development, implementation, and operation costs of this system within the planned and estimated budget? 
Are the necessary funds available to ensure the scalability and sustainability of this system?
Are Ministry of Health personnel trained in the appropriate technology to acquire, adopt, or develop this system? 
Total score
5.5
EVALUATION OF THE SELECTED MODEL
KEY CONSIDERATIONS
There are many factors to take into account when evaluating existing 
options from a cost standpoint. Savings in the short term do not necessarily 
represent a better solution from the standpoint of long-term cost-
effectiveness. On many occasions, there are hidden costs not included in 
front-end prices, such as maintenance, updates, training, etc.  
83
5.	 Determine how offers will be evaluated and include this in the invitation for bids. 
6.	 Publish the invitation for bids in accordance with the country’s procurement method. 
7.	 Review proposals. 
8.	 Research new technologies contained in the proposals as needed. 
9.	 Conduct a background check of potential suppliers. 
10.	Prepare, review, and sign a contract.
There are many guidelines of what information should be included in an invitation for bids 
or tender. In general, including the following information is advisable: 
	» Information on the institution, including its legal and financial status and the 
background and experience of key personnel. 
	» Brief description of the project. 
	» Project requirements and objectives: this tends to be the longest part of the document, 
as it describes the characteristics that will determine a successful result. As a rule, 
specific closed-ended questions are easier to evaluate and score than open-ended 
questions. 
	» Project budget, broken down by component, including pay-per-use and hosting costs. 
	» Milestones and deadlines. 
	» Questions and information required of the supplier, including prior experience in 
similar projects. 
	» Contact information and deadline for proposals.
5.5.1
SUPPLIER ADEQUACY
On many occasions, the Ministry of Health lacks internal capability for the development 
of a new project. This means a solution has to be sought within the private IT sector or 
from specialized providers. Regardless of modality, deciding which company or supplier is 
adequate can be a difficult task, especially when there are many alternatives and little 
experience in this type of process. 
The process of writing an invitation to bid is very important when seeking an adequate 
supplier to meet the needs of the institution. The possibility should be left open for 
the largest possible number of bidders; this increases the odds of finding a company 
or consultant that meets the needs of the project. Furthermore, the bidding or tender 
process has several added values, including transparency and the opportunity to conduct 
a thorough review of the needs that must be addressed to compile a robust list of project 
requirements. 
Conducting an invitation for bids is essential when the policies of the institution, the 
project funders, or government regulations require it. However, even when there is no 
such requirement, this process is always a good idea in order to increase the effectiveness 
of the search for suppliers. 
The usual steps of this process can be summarized as follows:
1.	 Define the project plan and scope, as described in Chapter 3. At this point, it is 
important to consult decision-makers about any restrictions to the project. Subjects 
to consider include budgetary limits, flexibility in deadlines, and non-negotiable 
technical requirements. 
2.	 Identify key partners and advisors. Evaluation of the answers provided by this process 
is a complex, demanding undertaking that requires deep knowledge of the institution, 
as well as some level of understanding of how companies or consultants work. 
3.	 Conduct an in-depth review of functional and non-functional project requirements 
before publishing the invitation for bids. 
4.	 Draft an invitation for bids. 
85
By the end of this chapter,
you will be able to define:
What are data quality 
assessments. 
Why management of data 
quality monitoring and 
evaluation is important. 
Evaluation of performance 
indicators for identification of 
inconsistencies. 
How to avoid, reduce, or address 
data duplication in the EIR. 
How to manage data updates 
and incomplete data.
Monitoring and evaluation 
of EIR data quality
