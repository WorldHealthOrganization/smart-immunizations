This page describes the decision support logic included in the [WHO
Digital Adaptation Kit (DAK): ...for Immunizations]{.underline}...

The decision-support logic component provides the decision logic and
algorithms, as well as the scheduling of services, in accordance with
WHO guidelines. The decision logic and algorithms in this implementation
guide deconstruct the recommendations within the immunization guidelines
and guidance into a machine readable format that clearly labels the
inputs and outputs that would be operationalized in a digital
decision-support system, such as an electronic immunization registry
(EIR).

### Decision Support Logic Overview
The table below provides an overview of the decision-support tables and
algorithms for the different business processes in an EIR. The structure
of the decision-support tables is based on an adaptation of the Decision
Model and Notation (DMN™), an industry standard for modelling and
executing decision logic. These decision-support tables detail the
business rules, data inputs and outputs to support EIR business
processes.

**Overview of decision support tables for vaccine delivery**

| Activity ID & Activity Name  | Decision Table ID  | Decision Table Description  | Reference/Source  |  |
|---|---|---|---|---|
| IMMZ.G2.Determine required vaccinations if any   | IMMZ.DT.01.BCG  | If child or person has not been vaccinated, give BCG vaccine as soon as possible after birth  | WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables  |  |
|  | IMMZ.DT.02.HepatitisB  | If child or person has not been vaccinated, give Hepatitis B vaccine as soon as possible after birth  |  |  |
|  | IMMZ.DT.03.Polio  | If child or person has not been vaccinated, give Polio vaccine (either oral polio vaccines (OPV) or inactivated injectable polio vaccines (IPV)).  |  |  |
|  | IMMZ.DT.04.DTP  | If child or person has not been given DTP, start scheme  |  |  |
|  | IMMZ.DT.05.Hib  | if child or person has not been vaccinated, give Hib vaccine between 4 and 18 months  |  |  |
|  | IMMZ.DT.06.Pneumococcal  | If child or person has not been vaccinated, give Pneumococcal vaccine minimum age 6 weeks old  |  |  |
|  | IMMZ.DT.07.Rotavirus  | If child or person has not been vaccinated, give Rotavirus vaccine according to the defined schedule  |  |  |
|  | IMMZ.DT.08.Measles  | If the child or client has not been given MCV1 (usually at 9 months) and MCV2 (usually between 15-18 months) vaccination  |  |  |
|  | IMMZ.DT.09.Rubella  | If child or client has not received the vaccination and is greater than or equal to 9 months, give Rubella vaccine according to the defined schedule  |  |  |
|  | IMMZ.DT.10.HPV  | If child or person (usually a female) has not been vaccinated, give HPV vaccine according to the defined schedule  |  |  |
|  | IMMZ.DT.11.JE  | If child or person has not been vaccinated, give Japanese Encephalitis vaccine according to the defined schedule  |  |  |
|  | IMMZ.DT.12.YellowFever  | If child or person has not been vaccinated, give Yellow Fever vaccine |  |  |
|  | IMMZ.DT.13.TBE  | If child or person has not been vaccinated, give Tick-Borne Encephalitis vaccine according to the defined schedule  |  |  |
|  | IMMZ.DT.14.Typhoid  | If child or person has not been vaccinated, give the Typhoid vaccine between age 6 months - 45 years old  |  |  |
|  | MMZ.DT.15.Cholera  | If child or person has not been vaccinated, give the Cholera vaccine to child greater than or equal to 1 year old and adults  |  |  |
|  | IMMZ.DT.16.Meningococcal  | If child or person has not been vaccinated, give Meningococcal vaccine according to the defined schedule  |  |  |
|  | IMMZ.DT.17.HepatitisA  | If child or person has not been vaccinated, give Hepatitis A vaccine according to the defined schedule  |  |  |
|  | IMMZ.DT.18.Rabies  | If a person with an indication for this vaccine has not been vaccinated, give Rabies vaccine  |  |  |
|  | IMMZ.DT.19.Dengue  | If child or person has not been vaccinated, give Dengue vaccine between 9 and 45 years of age  |  |  |
|  | IMMZ.DT.20.Mumps  | If child or person has not been vaccinated against Mumps, give Mumps vaccine  |  |  |
|  | IMMZ.DT.21.SeasonalInfluenza  | If child or person has not been vaccinated, give Seasonal Influenza vaccine at 6 months of age, and then once a year, according to the defined schedule.  |  |  |
|  | IMMZ.DT.22.Varicella  | If child or person has not been vaccinated, give Varicella vaccine, according to the defined schedule  |  |  |                     | |
