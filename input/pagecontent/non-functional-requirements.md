This page provides an overview of illustrative non-functional
requirements that may be considered to kick-start the process of
designing or adapting the electronic immunization registry digital
tracking and decision-support system.

Non-functional requirements provide the general attributes and features
of the digital system to ensure usability and overcome technical and
physical constraints. Examples of non-functional requirements include
ability to work offline, multiple language settings and password
protection.

Table 17 in the DAK provides non-functional requirements as general
characteristics of the overall system.


| **Requirement ID**| **Category**  | **Non-Functional Requirement** |
|-----------|---------------|----------------------------------------------|
| **IMMZ.NFXNREQ.001** | Performance| Make efficient use of data communication time.|
| **IMMZ.NFXNREQ.002** | Performance| Make efficient use of capabilities of lower-cost mobile devices. |
| **IMMZ.NFXNREQ.003** | Performance| Support data capacity considerations (including those for data transmission, storage, and processing) for all users over the expected lifetime of the system. |
| **IMMZ.NFXNREQ.004** | Performance| Use a database that can scale to support projected transaction volume.|
| **IMMZ.NFXNREQ.005** | Performance| Provide real-time response to transactions submitted by connected devices up to the configured national volume level.|
| **IMMZ.NFXNREQ.006** | Compatibility | Use open standards to promote interoperability.|
| **IMMZ.NFXNREQ.007** | Compatibility | Exchange actionable data between systems (need to enforce semantic interoperability).|
| **IMMZ.NFXNREQ.008** | Compatibility | Provide access from internet-enabled devices.|
| **IMMZ.NFXNREQ.009** | Compatibility | Support flexible models for data collection (e.g., including paper forms, web forms, SMS, barcode, etc.). |
| **IMMZ.NFXNREQ.010** | Compatibility | Comply with industry standards for data exchange.|
| **IMMZ.NFXNREQ.011** | Compatibility | Interface to open-source or third-party reporting tools. |
| **IMMZ.NFXNREQ.012** | Compatibility | Comply with industry standards for tracking and tracing of supplies.  |
| **IMMZ.NFXNREQ.013** | Usability| Allow for flexible configurations based on the context of use, including the physical, regulatory and social environment.|
| **IMMZ.NFXNREQ.014** | Usability| Transmit information in a language (script or voice) that is understood by the user population.|
| **IMMZ.NFXNREQ.015** | Usability| Emphasize ease of use and learnability to reduce training costs. |
| **IMMZ.NFXNREQ.016** | Usability| Be able to be learned by end users and supervisors to meet specified goals of system effectiveness and efficiency.|
| **IMMZ.NFXNREQ.017** | Usability| Enable easy data collection, organization, and dissemination.|
| **IMMZ.NFXNREQ.018** | Usability| Focus on the mobile-user experience with secondary use of a computer. |
| **IMMZ.NFXNREQ.019** | Usability| Allow users to find features in two clicks or fewer. |
| **IMMZ.NFXNREQ.020** | Usability| Enable pleasing and satisfying interaction for the user. |
| **IMMZ.NFXNREQ.021** | Usability| Provide a search interface to reduce data-entry burden and improve accuracy on mobile devices.|
| **IMMZ.NFXNREQ.022** | Usability| Support real-time data-entry validation and feedback to prevent data-entry errors from being recorded.|
| **IMMZ.NFXNREQ.023** | Usability| Support ability to calculate values on behalf of user (eliminating need to add, subtract, multiply, or divide).|
| **IMMZ.NFXNREQ.024** | Usability| Provide an appropriate localized experience with both language and cultural translations.|
| **IMMZ.NFXNREQ.025** | Reliability| Enable a task to be cancelled and rolled back to previous state. |
| **IMMZ.NFXNREQ.026** | Reliability| Enable users to work offline and then synchronize data when data connection is available.|
| **IMMZ.NFXNREQ.027** | Reliability| Allow a task to be interrupted and resumed.|
| **IMMZ.NFXNREQ.028** | Reliability| Enable earlier versions of a record to be recoverable.|
| **IMMZ.NFXNREQ.029** | Reliability| Enable backup of data so that information is recoverable in the event of a system or hardware failure.|
| **IMMZ.NFXNREQ.030** | Reliability| Accommodate loss of connectivity to hosted application (network may become unavailable while a user is in the process of submitting a form).|
| **IMMZ.NFXNREQ.031** | Reliability| Be able to reliably perform tasks within appropriate time with resistance to failures or deadlocks.|
| **IMMZ.NFXNREQ.032** | Reliability| Be deployed in an environment subject to power loss. |
| **IMMZ.NFXNREQ.033** | Reliability| Allow for client devices with low bandwidth or irregular connectivity.|
| **IMMZ.NFXNREQ.034** | Confidentiality, Privacy & Security | Prevent unauthorized access to client s' protected health information.|
| **IMMZ.NFXNREQ.035** | Confidentiality, Privacy & Security | Prevent updates to the database occurring only partially (atomicity), which can cause greater problems than rejecting an entire submission of a form. |
| **IMMZ.NFXNREQ.036** | Confidentiality, Privacy & Security | Trace and record changes to data taken by the system and by users (update/delete/add/access). |
| **IMMZ.NFXNREQ.037** | Confidentiality, Privacy & Security | Allow the administrator to establish access privileges and priorities.|
| **IMMZ.NFXNREQ.038** | Confidentiality, Privacy & Security | Support definitions of unlimited roles and assigned levels of access, viewing, entry, editing, and auditing.|
| **IMMZ.NFXNREQ.039** | Confidentiality, Privacy & Security | Require each user to authenticate by role before gaining access to the system.  |
| **IMMZ.NFXNREQ.040** | Confidentiality, Privacy & Security | Provide flexible password control to align to national policy and standard operating procedures, including password format requirements.|
| **IMMZ.NFXNREQ.041** | Confidentiality, Privacy & Security | Protect system servers through the use of an internet firewall.  |
| **IMMZ.NFXNREQ.042** | Confidentiality, Privacy & Security | Protect against viruses and malware.|
| **IMMZ.NFXNREQ.043** | Confidentiality, Privacy & Security | Allow for maintenance of security updates. |
| **IMMZ.NFXNREQ.044** | Confidentiality, Privacy & Security | Have a source code audit against security threats.|
| **IMMZ.NFXNREQ.045** | Confidentiality, Privacy & Security | Log transactions at the time of data entry.|
| **IMMZ.NFXNREQ.046** | Confidentiality, Privacy & Security | Maintain a transaction log history.|
| **IMMZ.NFXNREQ.047** | Confidentiality, Privacy & Security | Support privacy policies such as identifying who has access to the health data, and what data can be accessed.|
| **IMMZ.NFXNREQ.048** | Confidentiality, Privacy & Security | Design software security protections to ensure system availability.|
| **IMMZ.NFXNREQ.049** | Maintainability | Be built using technologies that enable local control, open competition, and transparency of the code.|
| **IMMZ.NFXNREQ.050** | Maintainability | Have adequate support resources to ensure scalability and sustainability.|
| **IMMZ.NFXNREQ.051** | Maintainability | Promote easier acquisition by supporting a range of devices and form factors.|
| **IMMZ.NFXNREQ.052** | Maintainability | Able to access the system at all levels/stores.|
| **IMMZ.NFXNREQ.053** | Maintainability | Enable local control of operations.|
| **IMMZ.NFXNREQ.054** | Maintainability | Be well-documented, including known issues.|
| **IMMZ.NFXNREQ.055** | Maintainability | Support repair or upgrade of a component in a running system.|
| **IMMZ.NFXNREQ.056** | Maintainability | Provide a unique version number for all future updates and releases.  |
| **IMMZ.NFXNREQ.057** | Maintainability | Enable the system to detect incompatible versions of software running on different components.|
| **IMMZ.NFXNREQ.058** | Maintainability | Enable configuration to any national or subnational administrative structure or number of levels.|
| **IMMZ.NFXNREQ.059** | Maintainability | Have a support process that tracks and documents bugs from discovery to resolution. |
| **IMMZ.NFXNREQ.060** | Maintainability | Enable access to the central system from all levels of the health system.|
| **IMMZ.NFXNREQ.061** | Maintainability | Support changes to organizational alignment of facilities and personnel |
| **IMMZ.NFXNREQ.062** | Maintainability | Include an administrable content management system.  |
| **IMMZ.NFXNREQ.063** | Maintainability | Provide detailed architectural and operational documentation.|
| **IMMZ.NFXNREQ.064** | Portability| Be able to provide continuity and access to data throughout changes in infrastructure (e.g., telecommunication, power) at the health-post level.  |
| **IMMZ.NFXNREQ.065** | Portability| Support extensibility and/or the ability to accept new services or functionality.|
{:.table-bordered .table-striped .thead-light}