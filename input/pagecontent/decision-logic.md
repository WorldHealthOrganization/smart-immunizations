This page describes the decision support logic included in the WHO
Digital Adaptation Kit (DAK): SMART Guidelines for Immunizations (link forthcoming).

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

<div style=" width: 100%;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead>
      <tr style="text-align: left;">
        <th>Activity ID &amp; Activity Name</th>
        <th>Decision Table ID</th>
        <th>Decision Table Description</th>
        <th>Reference/Source</th>
      </tr>
    </thead>
    <tbody style="text-align: left; vertical-align: top">
      <tr>
        <td rowspan="22">IMMZ.G2.Determine required vaccinations if any</td>
        <td>IMMZ.DT.01.BCG</td>
        <td>If child or person has not been vaccinated, give BCG vaccine as soon as possible after birth</td>
        <td rowspan="22">WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>IMMZ.DT.02.HepatitisB</td>
        <td>If child or person has not been vaccinated, give Hepatitis B vaccine as soon as possible after birth</td>
      </tr>
      <tr>
        <td>IMMZ.DT.03.Polio</td>
        <td>If child or person has not been vaccinated, give Polio vaccine (either oral polio vaccines (OPV) or inactivated injectable polio vaccines (IPV)).</td>
      </tr>
      <tr>
        <td>IMMZ.DT.04.DTP</td>
        <td>If child or person has not been given DTP, start scheme</td>
      </tr>
      <tr>
        <td>IMMZ.DT.05.Hib</td>
        <td>if child or person has not been vaccinated, give Hib vaccine between 4 and 18 months</td>
      </tr>
      <tr>
        <td>IMMZ.DT.06.Pneumococcal</td>
        <td>If child or person has not been vaccinated, give Pneumococcal vaccine minimum age 6 weeks old</td>
      </tr>
      <tr>
        <td>IMMZ.DT.07.Rotavirus</td>
        <td>If child or person has not been vaccinated, give Rotavirus vaccine according to the defined schedule</td>
      </tr>
      <tr>
        <td>IMMZ.DT.08.Measles</td>
        <td>If the child or client has not been given MCV1 (usually at 9 months) and MCV2 (usually between 15-18 months) vaccination</td>
      </tr>
      <tr>
        <td>IMMZ.DT.09.Rubella</td>
        <td>If child or client has not received the vaccination and is greater than or equal to 9 months, give Rubella vaccine according to the defined schedule</td>
      </tr>
      <tr>
        <td>IMMZ.DT.10.HPV</td>
        <td>If child or person (usually a female) has not been vaccinated, give HPV vaccine according to the defined schedule</td>
      </tr>
      <tr>
        <td>IMMZ.DT.11.JE</td>
        <td>If child or person has not been vaccinated, give Japanese Encephalitis vaccine according to the defined schedule</td>
      </tr>
      <tr>
        <td>IMMZ.DT.12.YellowFever</td>
        <td>If child or person has not been vaccinated, give Yellow Fever vaccine</td>
      </tr>
      <tr>
        <td>IMMZ.DT.13.TBE</td>
        <td>If child or person has not been vaccinated, give Tick-Borne Encephalitis vaccine according to the defined schedule</td>
      </tr>
      <tr>
        <td>IMMZ.DT.14.Typhoid</td>
        <td>If child or person has not been vaccinated, give the Typhoid vaccine between age 6 months - 45 years old</td>
      </tr>
      <tr>
        <td>MMZ.DT.15.Cholera</td>
        <td>If child or person has not been vaccinated, give the Cholera vaccine to child greater than or equal to 1 year old and adults</td>
      </tr>
      <tr>
        <td>IMMZ.DT.16.Meningococcal</td>
        <td>If child or person has not been vaccinated, give Meningococcal vaccine according to the defined schedule</td>
      </tr>
      <tr>
        <td>IMMZ.DT.17.HepatitisA</td>
        <td>If child or person has not been vaccinated, give Hepatitis A vaccine according to the defined schedule</td>
      </tr>
      <tr>
        <td>IMMZ.DT.18.Rabies</td>
        <td>If a person with an indication for this vaccine has not been vaccinated, give Rabies vaccine</td>
      </tr>
      <tr>
        <td>IMMZ.DT.19.Dengue</td>
        <td>If child or person has not been vaccinated, give Dengue vaccine between 9 and 45 years of age</td>
      </tr>
      <tr>
        <td>IMMZ.DT.20.Mumps</td>
        <td>If child or person has not been vaccinated against Mumps, give Mumps vaccine</td>
      </tr>
      <tr>
        <td>IMMZ.DT.21.SeasonalInfluenza</td>
        <td>If child or person has not been vaccinated, give Seasonal Influenza vaccine at 6 months of age, and then once a year, according to the defined schedule.</td>
      </tr>
      <tr>
        <td>IMMZ.DT.22.Varicella</td>
        <td>If child or person has not been vaccinated, give Varicella vaccine, according to the defined schedule</td>
      </tr>
    </tbody>
  </table>
</div>

### Decision Logic Tables

#### IMMZ.DT.04.DTP Determine required vaccinations - DTP Example
Business rule:	If child or person has not been given Diphtheria, Tetanus and Pertussis (DTP)-containing vaccines, start scheme 
Trigger: IMMZ.E1 Determine Required Vaccinations, if any  

<div style=" width: 100%; height: 500px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: left;">
        <th colspan="4">Inputs</th>
        <th>Output</th>
        <th>Action</th>
        <th>Annotations</th>
        <th>Reference(s)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>"Number of doses administered" = 0</td>
        <td>"Age in Weeks" &gt;= 6</td>
        <td></td>
        <td></td>
        <td>Patient vaccinated for DTP - No Doses</td>
        <td>Should vaccinate patient with DTP 1st dose</td>
        <td>Provide DTP immunization 1st dose Ð using the "DTP vaccine immunization Ð NO PREVIOUS" schedule (3 dose scheme) if the patient is older than 6 weeks of age</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 1</td>
        <td>"Number of weeks since last dose" &gt;= 4</td>
        <td></td>
        <td></td>
        <td>Patient vaccinated for DTP - 1 Dose</td>
        <td>Should vaccinate patient for DTP with 2nd dose</td>
        <td>Provide DTP immunization 2nd dose Ð using the "DTP vaccine immunization Ð 3 dose scheme" 4-8 weeks after their previous dose</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 2</td>
        <td>"Number of weeks since last dose" &gt;= 4</td>
        <td></td>
        <td></td>
        <td>Patient vaccinated for DTP - 2 Doses</td>
        <td>Should vaccinate patient for DTP with 3rd dose</td>
        <td>Provide DTP immunizations Ð using the "DTP vaccine immunization Ð 3 dose scheme, provide the 3rd dose" 4-8 weeks after their previous dose</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 2</td>
        <td>"Number of months since last dose" &gt;= 6</td>
        <td>"Age in years when patient received first DTP dose" &gt;= 7</td>
        <td></td>
        <td>Patient vaccinated for DTP - 2 Doses</td>
        <td>Should vaccinate patient for DTP with 3rd dose</td>
        <td>Provide DTP immunizations Ð using the "DTP vaccine immunization Ð 3 dose scheme, provide the 3rd dose" 4-8 weeks after their previous dose</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 3</td>
        <td>"Age in Months" &gt;= 12</td>
        <td></td>
        <td></td>
        <td>Patient vaccinated for DTP - Booster 1</td>
        <td>Should vaccinate patient for DTP with 1st booster</td>
        <td>Provide 1st booster at 12-23 months (DTP-containing vaccine)Note: Ideally, there should be at least 4 years between booster doses.</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 4</td>
        <td>"Age in Years" &gt;= 4</td>
        <td></td>
        <td></td>
        <td>Patient vaccinated for DTP - Booster 2</td>
        <td>Should vaccinate patient for DTP with 2nd booster</td>
        <td>Provide 2nd booster at 4-7 years (Td/DT containing vaccine)Note: Ideally, there should be at least 4 years between booster doses.</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 4</td>
        <td>"Age in years when patient received first DTP dose" &gt;= 7</td>
        <td>"Number of years since last dose" &gt;= 1</td>
        <td></td>
        <td>Patient vaccinated for DTP - Booster 2 (at 1 year interval)</td>
        <td>Should vaccinate patient for DTP with 2nd booster (at 1 year interval)</td>
        <td>Provide 2nd booster 1 year after the first booster (Td/Tdap containing vaccine)Note: This dose applies 1 year after the second booster dose for children who started their vaccination older than 7 years of age.</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 5</td>
        <td>"Age in Years" &gt;= 9</td>
        <td></td>
        <td></td>
        <td>Patient vaccinated for DTP - Booster 3</td>
        <td>Should vaccinate patient for DTP with 3rd booster</td>
        <td>Provide 3rd booster at 9-15 years (Td containing vaccine), if &gt;7 years use only aP containing vaccineNote: Ideally, there should be at least 4 years between booster doses.</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 0</td>
        <td>"Age in Years" &gt;= 15</td>
        <td></td>
        <td></td>
        <td>Patient vaccinated for DTP - No Doses at 15 years or older</td>
        <td>Should vaccinate patient with DTP 1st dose</td>
        <td>Provide DTP immunization 1st dose Ð using the "DTP vaccine immunization Ð NO PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 1</td>
        <td>"Age in Years" &gt;= 15</td>
        <td>"Number of weeks since last dose" &gt;= 4</td>
        <td>"Number of weeks since last dose" &lt; 8</td>
        <td>Patient vaccinated for DTP - 1 Dose at 15 years or older</td>
        <td>Should vaccinate patient for DTP with 2nd dose</td>
        <td>Provide DTP immunization 2nd dose Ð using the "DTP vaccine immunization Ð 1 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their first dose</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 2</td>
        <td>"Age in Years" &gt;= 15</td>
        <td>"Number of weeks since last dose" &gt;= 4</td>
        <td>"Number of weeks since last dose" &lt; 8</td>
        <td>Patient vaccinated for DTP - 2 Doses at 15 years or older</td>
        <td>Should vaccinate patient for DTP with 3rd dose</td>
        <td>Provide DTP immunization 3rd dose Ð using the "DTP vaccine immunization Ð 2 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 3</td>
        <td>"Age in Years" &gt;= 15</td>
        <td>"Number of weeks since last dose" &gt;= 4</td>
        <td>"Number of weeks since last dose" &lt; 8</td>
        <td>Patient vaccinated for DTP - 3 Doses at 15 years or older</td>
        <td>Should vaccinate patient for DTP with 4th dose</td>
        <td>Provide DTP immunization 4th dose Ð using the "DTP vaccine immunization Ð 3 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
      <tr>
        <td>"Number of doses administered" = 4</td>
        <td>"Age in Years" &gt;= 15</td>
        <td>"Number of weeks since last dose" &gt;= 4</td>
        <td>"Number of weeks since last dose" &lt; 8</td>
        <td>Patient vaccinated for DTP - 4 Doses at 15 years or older</td>
        <td>Should vaccinate patient for DTP with 5th dose</td>
        <td>Provide DTP immunization 5th dose Ð using the "DTP vaccine immunization Ð 4 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose</td>
        <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
      </tr>
    </tbody>
  </table>
</div>

### Scheduling Logic Tables

#### IMMZ.S.04 Scheduling logic - DTP Example
IMMZ.E. Administer Vaccine	

  <div style=" width: 100%; height: 500px; overflow: scroll;">
    <table border="1" class="dataframe table table-striped table-bordered">
      <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
        <tr style="text-align: right;">
          <th>Service Name </th>
          <th>Service Description </th>
          <th>Trigger Event</th>
          <th>Trigger Date</th>
          <th>Create Condition</th>
          <th>Due Date</th>
          <th>Overdue </th>
          <th>Expiration </th>
          <th>Completion</th>
          <th>Comments</th>
          <th>Reference(s)</th>
        </tr>
      </thead>
      <tbody style="text-align: left; vertical-align: top">
        <tr>
          <td>The name of the service for which the schedule is relevant</td>
          <td>Description of the service (to provide clarity)</td>
          <td>What event signals the start of the service schedule?</td>
          <td>What is the date of the signalling event that will be used to determine a service’s due date?</td>
          <td>Are there any conditions that specify when a service should be given?</td>
          <td>How is the due date of the service calculated?</td>
          <td>When does the service become overdue?</td>
          <td>When does the service expire?</td>
          <td colspan="2">How does the health worker complete the service?</td>
          <td></td>
        </tr>
        <tr>
          <td colspan="11">DTP Schedule (3 dose scheme + 3 boosters)</td>
        </tr>
        <tr>
          <td>DTP Dose 1</td>
          <td>Provision of the DTP Dose 1</td>
          <td>"Number of doses administered" = 0</td>
          <td>"Date of birth"</td>
          <td>DTP Dose 1 should be provided if the patient is older than 6 weeks of age</td>
          <td>"Date of birth" + "6 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 1</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td rowspan="4">DTP Dose 2</td>
          <td>Provision of the DTP Dose 2</td>
          <td>"Number of doses administered" = 1</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Dose 2 should be provided if the patient is was given the previous DTP dose more than 4 weeks ago</td>
          <td>"Date and time when last dose was administered" + "4 weeks"</td>
          <td>"Date and time when last dose was administered" + "8 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 2</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>Provision of the DTP Dose 3</td>
          <td>"Number of doses administered" = 2</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Dose 3 should be provided if the patient received the previous dose more than 4 weeks ago or, the patient received the previous dose more than 6 months ago and the patient received the first dose at age 7 years or after</td>
          <td>"Date and time when last dose was administered" + "4 weeks"</td>
          <td>"Date and time when last dose was administered" + "8 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 3</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>Provision of the DTP Booster 1</td>
          <td>"Number of doses administered" = 3</td>
          <td>"Date of birth"</td>
          <td>DTP Booster 1 should be provided at 12-23 months (DTP-containing vaccine) if patient has completed primary 3 dose scheme</td>
          <td>"Date of birth" + "1 year"</td>
          <td>"Date of birth" + "23 months"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 4</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>Provision of the DTP Booster 2</td>
          <td>"Number of doses administered" = 4</td>
          <td>"Date of birth"</td>
          <td>DTP Booster 2 should be provided at 4-7 years (Td/DT containing vaccine) if patient has completed primary 3 dose scheme and 1 booster</td>
          <td>"Date of birth" + "4 years"</td>
          <td>"Date of birth" + "7 years"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>"Number of doses administered" = 5</td>
          <td>Ideally, there should be at least 4 years between booster doses.</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Booster 3</td>
          <td>Provision of the DTP Booster 3</td>
          <td>"Number of doses administered" = 5</td>
          <td>"Date of birth"</td>
          <td>DTP Booster 3 should be provided at 9-15 years (Td containing vaccine), if &gt;7 years use only aP containing vaccine - if patient has completed primary 3 dose scheme and 2 boosters</td>
          <td>"Date of birth" + "9 Years"</td>
          <td>"Date of birth" + "15 years"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>"Number of doses administered" = 6</td>
          <td>Ideally, there should be at least 4 years between booster doses.</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td colspan="5">DTP Schedule (3 dose scheme + 2 boosters) - Children who started their vaccination after 7 years of age</td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td>DTP Dose 1</td>
          <td>Provision of the DTP Dose 1</td>
          <td>"Number of doses administered" = 0</td>
          <td>"Date of birth"</td>
          <td>DTP Dose 1 should be provided if the patient is older than 6 weeks of age</td>
          <td>"Date of birth" + "6 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 1</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Dose 2</td>
          <td>Provision of the DTP Dose 2</td>
          <td>"Number of doses administered" = 1</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Dose 2 should be provided if the patient is was given the previous DTP dose more than 4 weeks ago</td>
          <td>"Date and time when last dose was administered" + "4 weeks"</td>
          <td>"Date and time when last dose was administered" + "8 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 2</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Dose 3</td>
          <td>Provision of the DTP Dose 3</td>
          <td>"Number of doses administered" = 2</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Dose 3 should be provided if the patient received the previous dose more than 4 weeks ago or, the patient received the previous dose more than 6 months ago and the patient received the first dose at age 7 years or after</td>
          <td>"Date and time when last dose was administered" + "6 months" AND "Age in years when patient received first DTP dose" &gt;= 7</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 3</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Booster 1</td>
          <td>Provision of the DTP Booster 1</td>
          <td>"Number of doses administered" = 3</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Booster 1 should be provided at 1 year after the previous DTP dose using Td or Tdap containing vaccine, if the patient started their primary series after 7 years of age</td>
          <td>"Date and time when last dose was administered" + "1 year"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>"Number of doses administered" = 4</td>
          <td>1 year after the previous dose</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Booster 2</td>
          <td>Provision of the DTP Booster 2</td>
          <td>"Number of doses administered" = 4</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Booster 2 should be provided 1 year after the first booster dose using Td or Tdap containing vaccine, if the patient started their primary series after 7 years of age</td>
          <td>"Date and time when last dose was administered" + "1 year"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>"Number of doses administered" = 5</td>
          <td>1 year after the previous booster dose</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td colspan="11">DTP Schedule for 15+ years old (5 dose scheme)</td>
        </tr>
        <tr>
          <td>DTP Dose 1</td>
          <td>Provision of the DTP Dose 1</td>
          <td>"Number of doses administered" = 0</td>
          <td>'"Date of birth"</td>
          <td>DTP Dose 1 should be provided if the patient is older than 15 years of age and they haven't received DTP vaccination</td>
          <td>"Date of birth" + "15 years"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 1</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Dose 2</td>
          <td>Provision of the DTP Dose 2</td>
          <td>"Number of doses administered" = 1</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Dose 2 should be provided if the patient is older than 15 years of age and they were given the previous DTP dose more than 4 weeks ago</td>
          <td>"Date and time when last dose was administered" + "4 weeks"</td>
          <td>"Date and time when last dose was administered" + "8 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 2</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Dose 3</td>
          <td>Provision of the DTP Dose 3</td>
          <td>"Number of doses administered" = 2</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Dose 3 should be provided if the patient is older than 15 years of age and they were given the previous DTP dose more than 4 weeks ago</td>
          <td>"Date and time when last dose was administered" + "4 weeks"</td>
          <td>"Date and time when last dose was administered" + "8 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 3</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Dose 4</td>
          <td>Provision of the DTP Dose 4</td>
          <td>"Number of doses administered" = 3</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Dose 4 should be provided if the patient is older than 15 years of age and they were given the previous DTP dose more than 4 weeks ago</td>
          <td>"Date and time when last dose was administered" + "4 weeks"</td>
          <td>"Date and time when last dose was administered" + "8 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 4</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
        <tr>
          <td>DTP Dose 5</td>
          <td colspan="2">Provision of the DTP Dose 5</td>
          <td>"Date and time when last dose was administered"</td>
          <td>DTP Dose 5 should be provided if the patient is older than 15 years of age and they were given the previous DTP dose more than 4 weeks ago</td>
          <td>"Date and time when last dose was administered" + "4 weeks"</td>
          <td>"Date and time when last dose was administered" + "8 weeks"</td>
          <td>TBD by Member States, since there is no clear guidance from WHO</td>
          <td colspan="2">"Number of doses administered" = 5</td>
          <td>WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</td>
        </tr>
      </tbody>
    </table>
  </div>
