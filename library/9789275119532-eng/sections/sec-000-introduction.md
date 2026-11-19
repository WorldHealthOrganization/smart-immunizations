---
doc_id: 9789275119532-eng
doc_title: "ELECTRONIC IMMUNIZATION REGISTRY"
section_id: sec-000-introduction
section_title: "INTRODUCTION"
section_number: null
pages: 9-14
source_pdf: 9789275119532_eng.pdf
source_sha256: 1010a882f2c1990a
toc_source: inferred
---
expensive vaccines that benefit not only the pediatric population, but the general 
population throughout the life cycle. This has led to an increase in program budgets, which, 
in turn, created a need for increasingly precise, complete, and systematic accountability. 
In a context of relatively high vaccination coverage, it has become more difficult to 
detect who lacks complete compulsory vaccine coverage, thus hindering strategies for 
identification and immunization of these individuals. Finally, ICTs, geographic information 
Introduction
Electronic immunization registries (EIRs) are tools that facilitate the monitoring of individual immunization schedules and the storage 
of individual immunization histories, and, consequently, help enhance the performance of the Expanded Program on Immunization 
(EPI), in terms of both coverage and efficiency. 
10
	» To generate knowledge related to information systems and immunization registries 
for immunization program managers at the national and subnational levels;
	» To provide teams, EPI managers, and experts in health information systems with 
relevant background and experiences for development, implementation, maintenance, 
monitoring, and evaluation of EIR systems, so as to support planning of their 
implementation;
	» To provide technical, functional, and operational recommendations that can serve 
as a basis for discussion and analysis of the standard requirements needed for 
development and implementation of EIRs in countries of the Region of the Americas 
and other regions;
	» To serve as a platform for documentation and sharing of lessons learned and successful 
experiences in EIR implementation. 
This document is structured into three major sections: background; EIR planning and 
design; and EIR development and implementation, taking into account the relevant 
processes and their structure (Figure 1).
The content of the chapters is supported by a literature review of aspects related to 
EIR requirements, and summarizes the experiences of the countries of the Region of the 
Americas and other regions that already have EIRs in place or are at the development 
and implementation stage. Many of the experiences presented herein have been shared 
during the three editions of the “Regional Meeting to Share Lessons Learned in the 
Development and Implementation of Electronic Individualized Vaccination Registries,” 
held in 2011 in Bogotá (Colombia), in 2013 in Brasilia (Brazil), and in 2016 in San José (Costa 
Rica), in addition to ad hoc meetings held by the Pan American Health Organization/World 
Health Organization (PAHO/WHO) and Member States.
TARGET AUDIENCE
This document is geared toward decision-makers in Ministries of Health, immunization 
programs and their managers, and national information and statistics units or 
departments within PAHO Member States, in order to provide support and guidance for 
the adoption and implementation of electronic immunization registries.
FIGURE 1. 
General model of module structure
A) Background
B) EIR planning and design
C) Development and implementation
Health information systems
1
Electronic immunization registries
2
Ethical considerations
8
Monitor and evaluate
6
Address future challenges
7
Plan for and estimate associated costs
3
Define outcomes and 
what every system must do
4
Find the solution
5
11
GENERAL CONSIDERATIONS
PAHO/WHO recommends the use of EIR systems given the potential benefits that these 
information systems can provide to the countries of the Region. However, it is important 
to note that under no circumstances does PAHO intend to force countries to implement 
this type of information system; rather, it recommends that their use be considered 
taking the current context into account, although actual implementation will depend on 
each country’s national priorities and realities.
The tables, variables, and methods presented in this document are general considerations, 
and do not necessarily constitute exhaustive recommendations on the part of PAHO; 
each country can define their utility and feasibility.
The ordering of modules in this document allows the reader to decide what chapters to 
focus on. There is no need to read chapters in the order they are presented.
ACKNOWLEDGMENTS
The Improving Data Quality for Immunizations (IDQi) project team is grateful for the 
financial contributions of the Bill and Melinda Gates Foundation that made this work 
possible. Furthermore, we are deeply thankful for the technical and content contributions 
provided by the countries of the Region of the Americas, by our colleagues at WHO 
Headquarters, and by the Members of the IDQi Project Technical Advisory Group.
 
13
By the end of this chapter, 
you will be able to define: 
What is eHealth.
What is a health 
information system.
The phases of development 
and implementation of such 
a system.
The reasons for failure 
of an electronic 
information system.
Background on 
health information systems
Decision-makers at all levels of the health system require relevant, reliable, and timely 
information to support the decision-making process. Information systems play a key role in 
producing the information that will guide the strategic, managerial, and operational decisions of 
any health program. Furthermore, they provide essential data for monitoring and accountability, 
both to higher hierarchical levels and to the beneficiary population in general. In this context, the 
Expanded Program on Immunization (EPI) uses multiple information systems, including Electronic 
Immunization Registries (EIRs). This chapter will provide background and context on health 
information systems, their concepts and building blocks, past experiences, and how EIRs fit into 
this conceptual framework.
A health information system is a set of interrelated components that collect, process, store, and distribute information on health 
to support decision-making and control processes, as well as to support data analysis, communication, and coordination within the 
system itself [3-4]. 
Health information systems provide the foundations for decision-making and have four key functions: data generation, compilation, 
analysis and synthesis, and communication and use. HISs compile data from the health sector and other related sectors, analyze 
them, assure their quality, relevance, and timeliness, and convert them into information for health-related decision-making [5]. 
HISs should operate within the framework of each country’s eHealth strategy, so as to ensure their governance and sustainability.
1
1.1
WHAT IS eHEALTH AND 
WHAT ARE HEALTH INFORMATION SYSTEMS?
14
1.1.2
HEALTH INFORMATION SYSTEMS
In 1973, WHO defined health information systems as “a mechanism for the collection, 
processing, analysis, and transmission of information required for organizing and 
operating health services.” An HIS is a set of interrelated components that collect, 
process, store, and distribute data to support decision-making and control processes, 
as well as to support data analysis, communication, and coordination within the system 
itself [6]. At present, and given the massive progress toward widespread use of ICTs, 
the mistaken concept has arisen that an information system only includes software. 
This definition disregards several critical elements concerning the system’s users, 
generation of data, the transformation of data into information, and the translation 
of this information into knowledge for decision-making. It is essential to note that the 
elements of an information system include people, data, work processes or methods, and 
material resources (usually computing and communication resources).  
1.1.3
 
BENEFITS OF AN ELECTRONIC HEALTH INFORMATION SYSTEM
The basic objective of health information systems is to contribute to the improvement 
of health outcomes by providing pertinent, high-quality data in a timely fashion. 
Improvements in health information systems arise from the changing information needs 
of programs, sectors, users, and the population. The main benefits include:
	» Helping reduce errors in data entry and in calculation of health indicators. 
	» Improving the efficiency of processes and information and work flows. 
	» Helping identify problems and opportunities to improve the use of resources and 
inputs. 
	» Reducing the administrative burden, facilitating timely access to information, and 
automating the generation of key reports. 
	» Facilitating communication of results to the population, community, and beneficiaries. 
	» Allowing automatic aggregation and disaggregation of data and indicators by 
geographical levels. 
1.1.1
