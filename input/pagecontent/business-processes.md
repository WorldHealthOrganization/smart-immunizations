This page describes the business processes included in the WHO Digital
Adaptation Kit (DAK): SMART Guidelines for Immunizations (link forthcoming). 
For full details, see the published DAK content.

A business process, or process, is a set of related activities or tasks 
performed together to achieve the objectives of the health programme area, 
such as registration, counselling, referrals. Workflows are a visual 
representation of the progression of activities (tasks, events, interactions) 
that are performed within the business process. The workflow provides a “story” 
for the business process being diagrammed and is used to enhance communication 
and collaboration among users, stakeholders and engineers.

The DAK for Immunizations focuses on key business processes that are
part of routine immunization programmes and mass immunization
campaigns.

### Overview of Key Business Processes 
The following table describes the workflows of the included processes. 

<table border="1" class="dataframe table table-striped table-bordered">
  <thead>
    <tr class="header">
      <th><strong>#</strong> </th>
      <th><strong>Process Name</strong> </th>
      <th><strong>Process ID</strong> </th>
      <th><strong>Personas</strong> </th>
      <th><strong>Objectives</strong> </th>
    </tr>
 </thead>
 <tbody>
    <tr class="odd">
      <td></td>
      <td>Title </td>
      <td>ID used to reference this process throughout the DAK </td>
      <td>Individuals interacting to complete the process </td>
      <td>A concrete statement describing what the process seeks to achieve </td>
    </tr>
    <tr class="even">
      <td> A</td>
      <td>Facility Registration </td>
      <td>IMMZ.A</td>
      <td>
        <p>IIS Staff</p>
        <p>Facility Staff</p>
      </td>
      <td>All facilities (including private sector facilities) that are able to administer vaccines must be registered and uniquely identified to enable appropriate tracking of vaccine coverage and stock.</td>
    </tr>
    <tr class="odd">
      <td> B</td>
      <td>Plan Service Delivery </td>
      <td>IMMZ.B</td>
      <td> Health worker</td>
      <td>
        <p>To prepare for vaccination session.</p>
        <p>Ensure sufficient supply, and organise their workload</p>
      </td>
    </tr>
    <tr class="odd">
      <td> C</td>
      <td>Query Client Record </td>
      <td> IMMZ.C</td>
      <td>Health worker</td>
      <td>Correctly locate or identify a client’s immunization record as well as review and update a client’s record to provide a complete immunization history</td>
    </tr>
   <tr class="even">
      <td> D</td>
      <td>Register client </td>
      <td> IMMZ.D</td>
      <td>Health worker</td>
      <td>Start and contribute to the clients’ lifelong vaccine record</td>
    </tr>
    <tr class="even">
      <td> E</td>
      <td>Administer Vaccine </td>
      <td> IMMZ.E</td>
      <td>Health worker</td>
      <td> To determine what vaccines a client needs, administer those, and record the relevant necessary data both in the system as well as on the appropriate paper records</td>
    </tr>
    <tr class="even">
      <td> F</td>
      <td>Client reminder</td>
      <td> IMMZ.F</td>
      <td>Health worker</td>
      <td>To remind clients it is time to return for a vaccine</td>
    </tr>
    <tr class="odd">
      <td> G</td>
      <td>Defaulter tracing </td>
      <td> IMMZ.G</td>
      <td>Health worker</td>
      <td>Identify those who are overdue for a vaccine and contact them to have them come to be vaccinated.</td>
    </tr>
    <tr class="odd">
      <td> H</td>
      <td>Resolve duplicate client records </td>
      <td>IMMZ.H</td>
      <td>
        <p>Health worker</p>
        <p>IIS Staff</p>
      </td>
      <td> To identify duplicate client records and consolidate them into one most accurate/suitable (best) record</td>
    </tr>
    <tr class="even">
      <td>I </td>
      <td>Resolve duplicate vaccine events </td>
      <td> IMMZ.I</td>
      <td>
        <p>Health worker</p>
        <p>IIS Staff</p>
      </td>
      <td> To identify duplicate vaccination events within a client record and update into one event.</td>
    </tr>
    <tr class="odd">
      <td> J</td>
      <td>Report generation </td>
      <td> IMMZ.J</td>
      <td>
        <p>Health worker</p>
        <p>IIS Staff</p>
      </td>
      <td>To provide the ability to access and analyse data and to improve immunization program decision making</td>
    </tr>
  </tbody>
</table>

### Workflows
The workflows that follow depict processes that have been generalized across different contexts and may not reflect the variability and nuances across different settings. The simplicity of the workflow may not adequately illustrate the nonlinear steps that may occur.

#### Overview of key immunization process flows
The business processes included in the DAK are shown in the following figure. Processes included in the DAK start with a letter (e.g. "A.") and are shown using the "Activity with sub-process" shape, which includes a plus sign. 

  <div> 
    <img src="immz-0-overview-business-process.png" alt="Overview of key immunization process flows" style="width:85%"/>
  </div>
<br/>
  
#### A. Facility Registration
Objective: All facilities that are able to administer vaccines must be registered and uniquely identified to enable appropriate tracking of vaccine coverage and stock. There are situations where the locations providing vaccines may not be a permanent physical facility but rather some kind of public health authority (as is the case with some temporary or pop up clinics). These may be included as per local policy or needs. 

Many countries have a National Master Facility List (NMFL) also called a facility registry. How this is updated and maintained is not part of this workflow.

Each step can often be done by either the system (automated) or may be performed by an actual person who is responsible for the system, this will depend entirely on how the system is implemented. In some situation it may be automated for certain data (for example a new facility notification may come directly from the NMFL) or manual (for example changes to fridge capacity may come via a paper form and entered by IIS staff).

  <div> 
    <img src="immz-a-facility-registration-business-process.png" alt="IMMZ.A Facility Registration business process" style="width:85%"/>
  </div> 
<br/> 

#### B. Service Plan Delivery
Objective:  The objective is to prepare for an immunization session, either at the facility or done on an outreach basis. The primary difference if done as outreach is that all equipment and vaccines must be properly packaged (cold box) for transport. 

Note: There are opportunities to integrate with stock management systems to provide the HW with automated views and stock alerts. 

  <div> 
    <img src="immz-b-plan-service-delivery-business-process.png" alt="IMMZ.B Plan Service Delivery business process" style="width:85%"/>
  </div> 
<br/>

#### C. Query Client Record
Objective: The objective is to correctly locate or identify a client’s immunization record as well as review and update a client’s record to provide a complete immunization history. This will be used to determine recommended vaccines and due dates, allowing providers to recommend and discuss immunizations with the client. It may also be used if the client record needs to be recreated in case original paper record is lost.

  <div> 
    <img src="immz-c-query-client-record-business-process.png" alt="IMMZ.C Query Client Record business process" style="width:85%"/>
  </div> 
<br/>

#### D. Register Client
Objective: The objective is to start or contribute to the client’s lifelong immunization record. This will allow providers and the client/mother to identify what vaccinations have been given. Adult clients requiring a new vaccine (such as COVID-19 vaccines) will typically not be in the system as it may not have been available when they received their childhood vaccines. How this is handled will vary widely. It may be possible to import records from another system (such as a universal health insurance system) or from a list from another source (such as an external scheduling or registration system), or they may all be required to be entered manually. This will depend on local capacity and policy.
If starting with a paper record, there are some vaccination records (home-based record) that may require additional security/validation features in the paper record for validation. For more information, please refer to Digital Documentation of COVID-19 Certificates: Vaccination Status (23).

  <div> 
    <img src="immz-d-register-client-business-process.png" alt="IMMZ.D Register client business process business process" style="width:85%"/>
  </div> 
<br/>  
  
#### E. Administer Vaccine
Objective: The objective is to determine what vaccines a client needs, administer those, and record the relevant necessary data both in the system as well as on the appropriate paper records. Clients will enter this process in a variety of ways. They may be coming for one in a series of routine childhood vaccines, they may be a healthcare worker requiring a vaccine for work, they may be an adult seeking a vaccine for COVID-19 or an annual flu vaccine, or a student getting a vaccine for HPV at a school vaccination clinic. This will also apply to catch up campaigns, although they will often be conducted as outreach/mobile clinics. Supplementary vaccine campaigns do not follow the process below as they vary widely on what is recorded on an individuals record and determining eligibility (everyone in the age range will be eligible regardless of vaccine status, since the dose is supplemental to any series. 

  <div>
    <img src="immz-e-administer-vaccine-business-process.png" alt="IMMZ.E Administer Vaccine business process" style="width:85%"/>
  </div> 
<br/>

#### F. Client Reminder
Objective: The objective is to correctly locate or identify a client’s immunization record as well as review and update a client’s record to provide a complete immunization history. This will be used to determine recommended vaccines and due dates, allowing providers to recommend and discuss immunizations with the client. It may also be used if the client record needs to be recreated in case original paper record is lost.![image]

  <div> 
    <img src="immz-f-client-reminder-business-process.png" alt="IMMZ.F Client reminder business process" style="width:85%"/>
  </div> 
  <br/>  
  
#### G. Defaulter Tracing

Objective: The objective is to identify those who are overdue for a follow-up dose and/or vaccination as part of their immunization schedule to come in for vaccination. There is a significant amount of variability in how this follow-up is done currently. This process flow assumes the client is registered and has started an initial dose. This also assumes that there are no automated reminders sent by the system and that follow up is done by the health worker, or that electronic reminders have already been sent, but the client has not arrived for their vaccine. (See Client reminder workflow for automated reminders). This process may also be done as a part of a “catch-up campaign” where coverage in an area has fallen below certain thresholds and a large number of clients are overdue for vaccinations. These campaigns may include broader advertising and the addition of extra outreach sessions or pop- up clinics.  

  <div> 
    <img src="immz-g-defaulter-tracing-business-process.png" alt="IMMZ.G Defaulter tracing business process" style="width:85%"/>
  </div> 
  <br/> 
  
#### H. Resolve Duplicate Client Records

  <div> 
    <img src="immz-h-resolve-duplicate-client-records-business-process.png" alt="IMMZ.H Resolve duplicate client records business process" style="width:85%"/>
  </div> 
  <br/>

#### I. Resolve Duplicate Vaccine Events

  <div> 
    <img src="immz-i-resolve-duplicate-vaccine-events-business-process.png" alt="IMMZ.I Resolve duplicate vaccine events business process" style="width:85%"/>
  </div> 
  <br/>

#### J. Report Generation

  <div> 
    <img src="immz-j-report-generation-business-process.png" alt="IMMZ.J Report generation business process" style="width:85%"/> 
  </div>
  <br/>
