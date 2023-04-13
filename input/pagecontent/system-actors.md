This page lists and describes the human users and digital services that interact with the system, derived from the business requirements defined at the operational level (L2). For more details about end-users and related stakeholders, see the [Generic Personas](personas.html) and the WHO Digital Adaptation Kit: SMART Guidelines for Immunizations (link forthcoming).

Systems managing clinical and patient information are expected to interact with a shared health record, laboratory information system or a longitudinal health record, as appropriate, and to synchronize with data collected in a clinical encounter.

For additional actor definitions, see the [Digital Documentation of COVID-19 Certificates (DDCC) Implementation Guide](https://worldhealthorganization.github.io/ddcc/actors.html). Additionally, Integrating the Healthcare Enterprise (IHE) maintains a [repository with common actors](https://profiles.ihe.net/GeneralIntro/ch-A.html) used in IHE profiles.

### Key generic personas interacting with the system 
In the clinical flows, generic personas are represented using profiles of the various entity resources in HL7 FHIR, such as [Patient](http://hl7.org/fhir/patient), [Practitioner](http://hl7.org/fhir/practitioner), [PractitionerRole](http://hl7.org/fhir/practitionerrole), and [RelatedPerson](http://hl7.org/fhir/relatedperson).


<table class="list">
  <thead>
    <tr>
      <th>Role or Service</th>
      <th>Description</th>
      <th>Different Names</th>
      <th>ISCO Code (if applicable)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Health Worker (HW)</td>
      <td>Health workers facilitate education sessions, administers immunizations, provide counselling when needed, record stock movements, and compiles/generates reports.</td>
      <td>Nurse, Registered Nurse, Practical Nurse</td>
      <td>3221 (Nursing Associate Professional)</td>
    </tr>
    <tr>
      <td>Community Health Worker</td>
      <td>Community health workers provide health education, referral and follow-up; case management and basic preventive health care; and home visiting services to specific communities. They provide support and assistance to clients by reminding clients to take their vaccinations, responding to emergencies, and reporting births.</td>
      <td>Volunteer assistant, Volunteer health worker</td>
      <td>3253 (Worker, community: health)</td>
    </tr>
    <tr>
      <td>Expanded Programme on Immunization (EPI) Manager</td>
      <td>Responsible for: developing annual and multi-annual plans; immunization communication and mobilization; management of logistics, the cold chain, and vaccines; monitoring, supervision and evaluation of immunization services; and coordination of EPI activities at the national and subnational levels.</td>
      <td>Program Manager</td>
      <td>1342 (Manager, health service)</td>
    </tr>
	<tr>
      <td>Immunization Information System (IIS) Staff</td>
      <td>A System Administrator supervises the operation and storage of electronic health records and makes sure that servers function properly, allowing clients and staff to communicate with each other, coordinate their actions and take care of essential tasks.</td>
      <td>System Administrator, IT Manager, Technical Support</td>
      <td>2522 (Administrator, IT systems)</td>
    </tr>
    <tr>
      <td>Clerical Staff</td>
      <td>Assist in scheduling appointments, answer phones, greet clients, keep/document medical records, handle medical billing.</td>
      <td>Registration Clerk</td>
      <td>3252 (Clerk, information: health)</td>
    </tr>
  </tbody>
</table>

### Digital Services
  
  
