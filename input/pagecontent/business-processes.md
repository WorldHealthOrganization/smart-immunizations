This page describes the business processes included in the [WHO Digital
Adaptation Kit (DAK) for Immunizations](https://worldhealthorganization.github.io/smart-dak-immz/index.html). 
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
      <td>Vaccination location registration </td>
      <td>IMMZ.A</td>
      <td>
        <p>Electronic immunization registry (EIR) staff</p>
      </td>
      <td>All vaccination locations (including private sector facilities, government centres and/or other entities involved in public health efforts) able to administer vaccines must be registered and uniquely identified to enable appropriate tracking of vaccine coverage and stock. In the case of a health-care facility with multiple vaccination locations, only the facility will be registered.</td>
    </tr>
    <tr class="odd">
      <td> B</td>
      <td>Plan service delivery </td>
      <td>IMMZ.B</td>
      <td> Health worker</td>
      <td>
        <p>To prepare for vaccination session.</p>
        <p>In preparation for a vaccination session, ensure sufficient supply and organize workload </p>
      </td>
    </tr>
    <tr class="odd">
      <td> C</td>
      <td>Client registration </td>
      <td> IMMZ.C</td>
      <td>Client, health worker</td>
      <td>Create and/or update the clients’ vaccine record by including personal data in the EIR to support future vaccine administration</td>
    </tr>
    <tr class="even">
      <td> D</td>
      <td>Administer vaccine </td>
      <td> IMMZ.D</td>
      <td>Health worker</td>
      <td>To determine which vaccines a client needs, administer those and record the relevant necessary data both in the EIR as well as in the appropriate paper records</td>
    </tr>
    <tr class="even">
      <td> D</td>
      <td>Client reminder</td>
      <td> IMMZ.E</td>
      <td>Health worker</td>
      <td>To remind clients it is time to return for a vaccine/td>
    </tr>
    <tr class="odd">
      <td> F</td>
      <td>Defaulter tracing </td>
      <td> IMMZ.F</td>
      <td>Health worker, community health worker</td>
      <td>To identify those who are overdue for a vaccine and reach out to them to schedule their vaccination</td>
    </tr>
    <tr class="odd">
      <td> G</td>
      <td>Resolve duplicate client records </td>
      <td>IMMZ.G</td>
      <td>
        <p>Health worker, EIR staff</p>
      </td>
      <td> To identify duplicate client records and consolidate them into one most accurate/suitable record</td>
    </tr>
    <tr class="even">
      <td>H </td>
      <td>Resolve duplicate vaccination events </td>
      <td> IMMZ.H</td>
      <td>
        <p>Health worker, EIR staff</p>
      </td>
      <td>To identify duplicate vaccination events within a client record and update into one event</td>
    </tr>
    <tr class="odd">
      <td> I</td>
      <td>Report generation </td>
      <td> IMMZ.I</td>
      <td>
        <p>Health worker, EIR staff</p>
      </td>
      <td>To provide the ability to access and analyse data and to improve immunization programme decision-making</td>
    </tr>
  </tbody>
</table>

### Workflows
The workflows that follow depict processes that have been generalized across different contexts and may not reflect the variability and nuances across different settings. The simplicity of the workflow may not adequately illustrate the nonlinear steps that may occur.

#### Overview of key Immunization process flows
The business processes included in the DAK are shown in the following figure. Processes included in the DAK start with a letter (e.g. "A.") and are shown using the "Activity with sub-process" shape, which includes a plus sign. 

{% include immz-overview-business-process.svg %}

####  A.  Vaccination location registration  
Objective: All vaccination locations (including private sector facilities, government centres and/or other entities involved in public health efforts) able to administer vaccines must be registered and uniquely identified to enable appropriate tracking of vaccine coverage and stock. In the case of a health-care facility with multiple vaccination locations, only the facility will be registered.
{% include immz-a-vaccination-location-business-process.svg %}

####  B.  Plan service delivery  
Objective: In preparation for a vaccination session, ensure sufficient supply and organize workload 
{% include immz-b-plan-service-delivery-business-process.svg %}

####  C.  Client registration 
Objective: Create and/or update the clients’ vaccine record by including personal data in the EIR to support future vaccine administration
{% include immz-c-client-registration-business-process.svg %}

####  D.  Administer vaccine  
Objective: To determine which vaccines a client needs, administer those and record the relevant necessary data both in the EIR as well as in the appropriate paper records
{% include immz-d-administer-vaccine-business-process.svg %}

####  E.  Client reminder  
Objective: To remind clients it is time to return for a vaccine
{% include immz-e-client-reminder-business-process.svg %}

####  F.  Defaulter tracing  
Objective: To identify those who are overdue for a vaccine and reach out to them to schedule their vaccination
{% include immz-f-defaulter-tracing-business-process.svg %}

####  G.  Resolve duplicate client records  
Objective: To identify duplicate client records and consolidate them into one most accurate/suitable record
{% include immz-g-resolve-duplicate-client-v2-business-process.svg %}

####  H .  Resolve duplicate vaccination events  
Objective: To identify duplicate vaccination events within a client record and update into one event
{% include immz-h-resolve-duplicate-vaccine-v2-business-process.svg %}

####  I.  Report generation  
Objective: To provide the ability to access and analyse data and to improve immunization programme decision-making
{% include immz-i-report-generation-business-process.svg %}
