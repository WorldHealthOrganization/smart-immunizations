This page provides an overview of illustrative functional requirements that may be considered to kick-start the process of designing or adapting the immunization information system (IIS) digital tracking and decision-support system.

Functional requirements describe the capabilities the system must have in order to meet the end-users' needs and achieve tasks within the business process.

These requirements are taken from Component 8 and Web Annex D of the WHO Digital Adaptation Kit: SMART Guidelines for Immunizations (link forthcoming).

Please note that these are not exhaustive lists and should be modified according to context and user persona needs.


<h3>Business process A: Facility Registration</h3>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.001|Receive facility information|IIS Staff/System|The system to receive facility information from multiple sources, i.e. Automatically or manually in multiple formats|I will know about new facilities
|IMMZ.FXNREQ.002|Validate against national master facility list|IIS Staff/System|The system to interface with National Master Facility List's (NMFL) database to validate if the facility is already registered in the NMFL. If a facility is registered in the NMFL then the facility information should be verified for accuracy and/or updated in the IIS. |I can check if the facility is already in the system
|IMMZ.FXNREQ.003|Validate against national master facility list|IIS Staff/System|The system to flag any facilities that are registered in the IIS that are not on the NMFL  |I can identify facilities that need further investigation
|IMMZ.FXNREQ.004|Validate against national master facility list|IIS Staff/System|The system to validate the NMFL with IIS master list|I can ensure the lists are synched
|IMMZ.FXNREQ.005|Validate against national master facility list|IIS Staff/System|To include vaccine providers that may not be physical facilities (such as a health department)|We will have the flexibility to accommodate temporary or pop-up clinics
|IMMZ.FXNREQ.006|Validate against national master facility list|IIS Staff/System|To flag a facility as a temporary facility|I will know that this is not a permanent facility for things like reporting 
|IMMZ.FXNREQ.007|Does facility information match?|IIS Staff/System|The system to verify against a previously approved IIS facility|I can check the facility information against the "official" list to identify discrepancies
|IMMZ.FXNREQ.008|Update/Add new facility|Facility Staff|The system to provide a temporary unique ID to facilities not listed on the NMFL|Facilities can still be part of the IIS system while the discrepancy with the NMFL is resolved
|IMMZ.FXNREQ.009|Update/Add new facility|Facility Staff|The system to add new facilities to IIS master registration list not listed in the NMFL|Facilities providing vaccines will be included in the NMFL. Only if this is allowed by policy
|IMMZ.FXNREQ.010|Update/Add new facility|Facility Staff|The system to be able to link a facility’s NMFL ID with its IIS ID into the same record |There will be a common understanding of what facility is being referenced 
|IMMZ.FXNREQ.011|Update/Add new facility|Facility Staff|The system to send a notification of new facility to the NMFL manager| The NMFL can be aware of any potentially new facilities
|IMMZ.FXNREQ.012|Update/Add new facility|Facility Staff|The system to update facility information not captured in the NMFL|Data can be added that may be specific to the IIS but is not relevant to the NMFL
|IMMZ.FXNREQ.013|Update/Add new facility|Facility Staff|The system to keep audit log of change history when any facility information is changed and saved (i.e. include date/time stamp)|Changes can be monitored 
|IMMZ.FXNREQ.014|Update/Add new facility|Facility Staff|The system to have the ability to convert a temporary facility to a permanent facility|The data from the temporary facility is not lost
|IMMZ.FXNREQ.015|Verify information for additional data|IIS Staff/System|The system to prompt user to accept changes to IIS master registration list|I will know when changes are being made and can validate them
|IMMZ.FXNREQ.016|Verify information for additional data|IIS Staff/System|The system to notify user of incomplete mandatory fields|The user will ensure all necessary data is entered
|IMMZ.FXNREQ.017|Information complete?|IIS Staff/System|The system to verify all required facility information is complete|Any missed fields can be identified
|IMMZ.FXNREQ.018|Information complete?|IIS Staff/System|The system to generate report of missing information|Missing information can be obtained
|IMMZ.FXNREQ.019|Request additional information|IIS Staff/System & Facility Staff|The system to support the process of sending a request for information|The user will not have to transcribe the request and send it
|IMMZ.FXNREQ.020|Submit additional information|Facility Staff|The system to support the process of receiving information |The user will not have to transcribe the new information into the system
|IMMZ.FXNREQ.021|Create/Update facility record|IIS Staff/System|The system to audit facility data changes with date/timestamp/"last updated"|There is a record of all data changes
|IMMZ.FXNREQ.022|Create/Update facility record|IIS Staff/System|The system to collect all facility data changes and report to IIS staff|A person can validate the changes were appropriate
|IMMZ.FXNREQ.023|Generate unique IIS identification|IIS Staff/System|The system to generate a unique IIS ID which may be linked to national ID or health ID|The facility will have the appropriate ID
|IMMZ.FXNREQ.024|Send facility registration notification|IIS Staff/System|The system to send IIS registration notification with IIS ID (i.e. SMS, calls, mail, email) to other systems or administrators|Other systems will be informed of the new IIS facility
|IMMZ.FXNREQ.025|Send facility registration notification|IIS Staff/System|The system to include instructions of how to use IIS ID (i.e. reporting requisition)|Other systems will know how to interact with the IIS|
{:.table-bordered .table-striped .thead-light}

<span style="font-size: larger; font-weight: bold;">Business process B: Plan Service Delivery
</span>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.026|Review register to determine estimates of vaccine need|health worker (HW)|To identify all clients that are due (or overdue) for vaccination by the next clinic date or campaign date|I can plan my vaccination clinic day or campaign event
|IMMZ.FXNREQ.027|Review register to determine estimates of vaccine need|health worker (HW)|To sort the list of needed vaccines by antigen|I can know how much of each vaccine is needed
|IMMZ.FXNREQ.028|Review register to determine estimates of vaccine need|health worker (HW)|The system to provide range estimates for vaccine need based on historical data (high and low ranges)|I can know how much has typically been used and adjust my specific list accordingly
|IMMZ.FXNREQ.029|Record details on planning sheet|health worker (HW)|To print list of necessary antigens and accessories (e.g. syringes, wipes) based on projected need|I can make sure I have all the things I need for my vaccination clinic or campaign event
|IMMZ.FXNREQ.030|Sufficient stock in immediate location?|health worker (HW)|The system to identify the stock at the local source/supply for vaccines  (at my facility or from the local storage area/warehouse)|I can determine easily what stock I have
|IMMZ.FXNREQ.031|Sufficient stock in immediate location?|health worker (HW)|The system to compare the list of needed antigens to the stock on hand and indicate if there is sufficient stock|I do not have to make these calculations myself
|IMMZ.FXNREQ.032|Sufficient stock in immediate location?|health worker (HW)|The system to show the actual numbers of each  vaccine  in stock|I can verify the amount is sufficient 
|IMMZ.FXNREQ.033|Order additional stock|health worker (HW)|To generate a stock request based on the information provided|I do not have to transcribe or add this information myself
|IMMZ.FXNREQ.034|Order additional stock|health worker (HW)|To change the number of each antigen vaccine as needed (using the shortage as a guideline)|I can adjust for any additional requirements not known by the system
|IMMZ.FXNREQ.035|Order additional stock|health worker (HW)|The system to provide feedback for stock that is not available for ordering (back orders)|I will know if stock is not available, and when it may be so I can plan my clinic 
|IMMZ.FXNREQ.036|Order additional stock|health worker (HW)|The system to indicate that the order has been processed|I will know the order was submitted successfully
|IMMZ.FXNREQ.037|Order additional stock|health worker (HW)|The system to provide any relevant details for the order fulfilment (such as time of day to expect delivery or any special instructions)|I can ensure I will be able to receive the shipment
|IMMZ.FXNREQ.038|Order additional stock|health worker (HW)|The system to provide means to include some mandatory user feedback, such as stock on hand and reason for order|I can provide additional information to stores
|IMMZ.FXNREQ.039|Order additional stock|health worker (HW)|The system to be able to interface to logistics management systems |ordering additional stock can happen faster and with minimal user effort
|IMMZ.FXNREQ.040|Get needed stock|health worker (HW)|The system to provide a printed list of ( vaccines) stock order to be fulfilled|I can use this as my pick list, even when I am offline
|IMMZ.FXNREQ.041|Record stock taken|health worker (HW)|The system to allow bar code reading of stock taken|the system can be automatically and accurately updated
|IMMZ.FXNREQ.042|Record stock taken|health worker (HW)|To record stock removed from cold storage and taken to clinic|The count for the cold storage will be accurate, and the clinic stock accounted for
|IMMZ.FXNREQ.043|Record stock taken|health worker (HW)|The system to maintain a tally of stock available at each location (e.g. stock available in the cold fridge at health centre, stock that is out for clinic)|I can see where all stock is physically located in real time
|IMMZ.FXNREQ.044|Assemble all needed materials for clinic|health worker (HW)|The system to provide a clinic materials checklist, which is a list of materials I would need for clinic|I can make sure I have the materials I need for clinic|
{:.table-bordered .table-striped .thead-light}

<h3>Business process C: Client Reminder</h3>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.045|Define/Evaluate criteria|IIS Staff/System & health worker (HW)|To select reminder  parameters. May include but not limited to, age range, vaccine type(s), vaccine schedules, geographic area, number of days overdue.|reminders can be optimized
|IMMZ.FXNREQ.046|Define/Evaluate criteria|IIS Staff/System & health worker (HW)|To associate a client with a health facility  clinic or site to generate a provider-based reminder/recall|Site specific lists of clients can be generated
|IMMZ.FXNREQ.047|Define/Evaluate criteria|IIS Staff/System & health worker (HW)|To validate data against the vaccine schedule (Note: Can use the vaccine schedule to best schedule reminders/recall for series vaccinations)|The generated list adheres to guidelines
|IMMZ.FXNREQ.048|Select notification method|IIS Staff/System & health worker (HW)|To select one or more notification methods (e.g. automated telephone calls (i.e. robocall), text message, letter, email, CHW notification, home visits)|The most appropriate notification method will be used 
|IMMZ.FXNREQ.049|Select notification method|IIS Staff/System & health worker (HW)|To maintain a client's preferred contact method|Any notification will go through the client’s preferred method
|IMMZ.FXNREQ.050|Generate list of clients|IIS Staff/System & health worker (HW)|To display the type of notification indicator per client record (i.e.  a reminder for when a vaccine is due or only a notification when it is overdue)|The notification will be sent at the correct time
|IMMZ.FXNREQ.051|Generate list of clients|IIS Staff/System & health worker (HW)|The system to track the number of reminders attempts (i.e. per client and total)|I can know if additional action may be required, or when to stop sending reminders
|IMMZ.FXNREQ.052|Generate list of clients|IIS Staff/System & health worker (HW)|The system to prevent all records given an inactive or deceased status from being included in the list of clients for reminder/recall|Notifications will not be inappropriately sent to clients
|IMMZ.FXNREQ.053|Generate list of clients|IIS Staff/System & health worker (HW)|To produce a list of clients according to user defined parameters|I can adjust who is recalled when based on my local needs or situation
|IMMZ.FXNREQ.054|Generate list of clients|IIS Staff/System & health worker (HW)|To print the list of clients|I have a list I can use when I am offline
|IMMZ.FXNREQ.055|Generate list of clients|IIS Staff/System & health worker (HW)|The system to log each time a user generates a list of clients|Printing needs can be monitored
|IMMZ.FXNREQ.056|Generate list of clients|IIS Staff/System & health worker (HW)|The system to display the date the reminder/recall notice was sent to a client|I will know when it was sent and can follow-up accordingly 
|IMMZ.FXNREQ.057|Send notifications|IIS Staff/System & health worker (HW)|The system to generate electronic notifications |the user does not have to generate notifications 
|IMMZ.FXNREQ.059|Send notifications|IIS Staff/System & health worker (HW)|To send reminder notification to client or designated health worker (i.e. via community health worker)|they will be alerted of an upcoming or overdue appointment
|IMMZ.FXNREQ.060|Send notifications|IIS Staff/System & health worker (HW)|To include specific details about clinic dates and times or outreach dates and times as appropriate|The client will know specifically when and where to go to receive a vaccination 
|IMMZ.FXNREQ.061|Client shows up for vaccination|health worker (HW)|To know that the client has a visit registered at a clinic|I can plan my clinic workload
|IMMZ.FXNREQ.062|Administer vaccine|health worker (HW)|To know that the client has received the vaccine doses|The client record can be updated, and this information can be available to all appropriate users
|IMMZ.FXNREQ.064|Is another reminder needed?|IIS Staff/System & Vaccine Provider|The system to remind a client a configurable number of times|The number of reminders can be limited and adjusted over time to get the minimum number of reminders that are effective
|||||
|IMMZ.FXNREQ.065|Is another reminder needed?|IIS Staff/System & Vaccine Provider|The system to flag a client as a defaulter after the configured number of reminders is met|We can identify those who have not come and are overdue, requiring additional intervention
|IMMZ.FXNREQ.066|Is another reminder needed?|IIS Staff/System & Vaccine Provider|The system to track notification attempts and log back to a client's record|That information will be available when reviewing the record|
{:.table-bordered .table-striped .thead-light}

<span style="font-size: larger; font-weight: bold;">Business process D: Defaulter Tracing
</span>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.068|Determine if vaccines were missed|health worker (HW)|To produce a list of clients who missed their vaccine for each antigen|I can plan follow up activities
|IMMZ.FXNREQ.069|Determine if vaccines were missed|health worker (HW)|To specify the vaccine schedule and thresholds for a client to qualify as requiring follow-up|Follow up is only done at the appropriate time
|IMMZ.FXNREQ.070|Determine if vaccines were missed|health worker (HW)|To print a list of clients requiring follow-up|I will have an offline version
|IMMZ.FXNREQ.071|Determine if vaccines were missed|health worker (HW)|To export a list of clients for follow-up|Information can be sent to another health worker or system as appropriate
|IMMZ.FXNREQ.072|Record the necessary information to follow-up|health worker (HW)|To extract a client’s location and personal information|It will be easier to find and contact the client for follow-up
|IMMZ.FXNREQ.073|Record the necessary information to follow-up|health worker (HW)|To categorize defaulter information by location and community health worker (CHW)|Each CHW or clinic will have the list of only their clients
|IMMZ.FXNREQ.074|Is there an active CHW in the area|health worker (HW)|To assign a CHW to a client|To direct client information to the correct CHW
|IMMZ.FXNREQ.075|Plan for follow-up directly or during outreach|health worker (HW)|To display a list of clients due for specific planned outreach and clinic sessions, based on area|The clinic or outreach will have a targeted list of clients, allowing for prioritization of tasks and workload
|IMMZ.FXNREQ.076|Send client information to CHW|health worker (HW)|To send list of missing clients by email or SMS to the CHW|The CHW will get that information quickly and without needing to travel to pick up a paper list
|IMMZ.FXNREQ.077|Send client information to CHW|health worker (HW)|To send recall SMS to caregiver|The caregiver is aware a visit is due
|IMMZ.FXNREQ.078|Provide feedback|Community Health Worker (CHW)|The CHW to send tracking updates/results to facility via SMS and email.|The facility/clinic knows the client is being followed up and can facilitate, if needed
|IMMZ.FXNREQ.079|Update record to document reason/lost follow-up|health worker (HW)|To record reason vaccine was missed|
|This information can be used for planning and reporting purposes||||
|IMMZ.FXNREQ.080|Update record to document reason/lost follow-up|health worker (HW)|To edit, update, and override client information such as including change of address (moved permanently or temporarily)|To facilitate the client being contacted, or being removed from a clinic’s list
|IMMZ.FXNREQ.081|Update record to document reason/lost to follow-up|health worker (HW)|To flag when there is a change of address and a new client has been added to another catchment area|The client will appear on the correct list for follow up
|IMMZ.FXNREQ.082|Update record to document reason/lost to follow-up|health worker (HW)|To indicate the client is now inactive, identified as either permanently or temporarily, with a reason (e.g. death, moved, refuses vaccine)|No further follow up will be done, and they will not show as defaulters
|IMMZ.FXNREQ.083|Update record to document reason/lost to follow-up|health worker (HW)|To be able to generate a report of clients who are inactive and disaggregate by the reason they are inactive |It can be used for reporting and planning
|IMMZ.FXNREQ.084|Update record to document reason/lost to follow-up|health worker (HW)|The system to maintain an audit log of the changes and history|I will be able to see all changes to a record
|IMMZ.FXNREQ.085|Update record to document reason/lost to follow-up|health worker (HW)|To allow a client record to be inactive for a selected time frame e.g. temporarily lost residence, crop harvest season|I can distinguish between those who may require follow up at a future time and those who are permanently inactive|
{:.table-bordered .table-striped .thead-light}

<span style="font-size: larger; font-weight: bold;">Business process E: Register Client
</span>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.087|Does client have a record?|health worker (HW)|To confirm I have selected the correct record|I know I have the correct record
|IMMZ.FXNREQ.088|Enter into vaccination log/register|health worker (HW)|To enter all necessary registration data|It will be available to the system and others who should have access to it
|IMMZ.FXNREQ.089|Enter into vaccination log/register|health worker (HW)|To select the place of birth from a list as defined by the system administrator|We have a standardized list of locations to prevent entry errors
|IMMZ.FXNREQ.090|Enter into vaccination log/register|health worker (HW)|To select the health centre of the client from a list as defined by the system administrator|I can be sure the client is assigned to the correct clinic and that all systems and users will understand it to be the same clinic
|IMMZ.FXNREQ.091|Enter into vaccination log/register|health worker (HW)|The system to validate that a client does not exist before adding a new record.|Duplicates can be prevented
|IMMZ.FXNREQ.092|Enter into vaccination log/register|health worker (HW)|The system to enforce a minimal required data set for new registrations|Sufficient data is entered to be able to identify the client 
|IMMZ.FXNREQ.093|Enter into vaccination log/register|health worker (HW)|The system to uniquely identify every client using a system generated unique identifier or an existing identifier e.g. health care, national ID, health unique ID|The client can be definitively identified using that number
|IMMZ.FXNREQ.094|Enter into vaccination log/register|||
||Health Worker (HW)|The system to generate a unique identifier |The client can be uniquely identified for vaccination activities across systems using the same ID|
|IMMZ.FXNREQ.095|Enter into vaccination log/register|||
||Health Worker (HW)|||
||Validate a unique ID when offline|Entry errors are prevented||
|IMMZ.FXNREQ.096|Enter into vaccination log/register|health worker (HW)|The system to provide a mechanism to prevent unwanted duplication of records, i.e. the system warns if a client is registered with same name and date of birth|Duplicates can be prevented, and entries that are not duplicates can be confirmed as similar but separate
|IMMZ.FXNREQ.097|Enter into vaccination log/register|health worker (HW)|To handle duplicates (such as merging records)|Duplicate records are minimized or eliminated
|IMMZ.FXNREQ.098|Enter into vaccination log/register|health worker (HW)|The ability for remote access and update of client records (via mobile device)|Records can be updated when the client is present, to confirm any information
|IMMZ.FXNREQ.099|Enter into vaccination log/register|health worker (HW)|The ability for the system administrator to configure what information and what data will be returned to determine a match|To maintain confidentiality of records by only displaying what is needed to make a match
|IMMZ.FXNREQ.100|Enter into vaccination log/register|health worker (HW)|The ability to add a historical vaccination history on a new client|the record will contain the full vaccine history
|IMMZ.FXNREQ.101|Enter into vaccination log/register|health worker (HW)|The ability to generate a barcode label to affix to the paper record|The record can easily be uniquely identified by scanning the ID
|IMMZ.FXNREQ.102|Enter into vaccination log/register|health worker (HW)|The ability to include an appropriate data on the barcode including the unique ID and data to support the digital vaccination certificate verification and validation process such as web end point or public key|Interaction with other systems can be facilitated
|IMMZ.FXNREQ.103|Enter into vaccination log/register|||
||Health Worker (HW)|||
||The ability to associate a unique ID generated by another authority (local or global) to the record|The record can be more easily shared or identified with other appropriate systems||
|IMMZ.FXNREQ.104|Enter into vaccination log/register|health worker (HW)|The ability to add relevant health history if needed|Relevant clinical information will be available to users of the system to improve decisions making
|IMMZ.FXNREQ.105|Modify record|health worker (HW)|To modify or update appropriate client data as needed|Most up to date information is available to all users
|IMMZ.FXNREQ.106|Modify record|health worker (HW)|The system to track that I have changed or modified an existing record|accountability for correct data is improved
|IMMZ.FXNREQ.107|Modify record|health worker (HW)|The system to identify changes made to the record for my confirmation before saving|I can have the opportunity to double check the data to prevent errors|
{:.table-bordered .table-striped .thead-light}

<span style="font-size: larger; font-weight: bold;">Business process F: Query Client Record
</span>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.108|Search for the client record|health worker (HW)|To know the system will allow only authorized users to access and view the clients record|Client confidentiality is maintained
|IMMZ.FXNREQ.109|Search for the client record|health worker (HW)|To search for the client record given some demographic information |I can find the client record if I don’t have the unique ID
|IMMZ.FXNREQ.110|Search for the client record|health worker (HW)|The system to return all potential matches based upon search criteria|I can find the best match
|IMMZ.FXNREQ.111|Search for the client record|health worker (HW)|The search to match on partial information (such as partial birthdates)|I have a better chance of finding a match
|IMMZ.FXNREQ.112|Search for the client record|health worker (HW)|To search for client record based on family relationships or demographics |I have a better chance of finding a match
|IMMZ.FXNREQ.113|Search for the client record|health worker (HW)|The system to allow a system administrator to configure search parameters: mandatory fields, when partial information is acceptable etc.|A search can be optimised without compromising confidentiality 
|IMMZ.FXNREQ.114|Search for the client record|health worker (HW)|To search with wild cards (using a symbol to replace one or more characters)|I can find something without knowing the exact spelling
|IMMZ.FXNREQ.115|Search for the client record|health worker (HW)|To find client records using barcodes that contain the client ID|I can quickly pull up the correct record 
|IMMZ.FXNREQ.116|Search for the client record|health worker (HW)|The ability for searches to include results that look or sound similar to the search term (phonetic search)|I can find something that may be spelt incorrectly 
|IMMZ.FXNREQ.117|Search for the client record|health worker (HW)|the system to identify any records that may have been imported from another system for verification|I can verify before introducing potential errors to the system automatically
|IMMZ.FXNREQ.118|Search for the client record|health worker (HW)|To search for a client using at least two identifying information|I improve my chances of finding a match, and distinguishing between similar records
|IMMZ.FXNREQ.119|Search for the client record|health worker (HW)|The system to require a user to search if a client is already in the system prior to starting a new record|Duplicates are prevented
|IMMZ.FXNREQ.120|Search for the client record|health worker (HW)|The system to have the ability to configure whether a client search must occur in advance of allowing a new registration.|Performance and accuracy may be optimized
|IMMZ.FXNREQ.121|Search for the client record|health worker (HW)|To scan a client ID bar code to retrieve the client record|To quickly access the correct record
|IMMZ.FXNREQ.122|Search for the client record|health worker (HW)|To be certain the retrieved record belongs to the client (this means it contains enough information/demographics/photo/unique ID etc. )|I can make sure I am selecting the correct record
|IMMZ.FXNREQ.123|Search for the client record|health worker (HW)|The system to provide a history of previous care|I have access to the information I need in one place
|IMMZ.FXNREQ.124|Search for the client record|health worker (HW)|To view client contact information|I am confident I have the correct record
|IMMZ.FXNREQ.125|Exact match?|health worker (HW)|The system to display sufficient information to confirm it is the correct record|I am confident I have the correct record
|IMMZ.FXNREQ.126|Possible matches found?|health worker (HW)|To be presented with the possible matches and any additional information to allow me to determine which record is correct|I am confident I have the correct record
|IMMZ.FXNREQ.127|Possible matches found?|health worker (HW)|The system to display the most probable matches at the top of the list|I can review them first
|IMMZ.FXNREQ.128|Is client record confirmed?|health worker (HW)|To confirm when I find the correct match|The correct record is selected
|IMMZ.FXNREQ.129|Add additional search criteria|health worker (HW)|To enter additional search criteria if the list of possible matches is too long|My list of matches is shorter and easier to review
|IMMZ.FXNREQ.130|Add additional search criteria|health worker (HW)|To add wildcards to capture records that may be similar or potentially misspelled or incomplete|I can find a record that may not have come up initially or I am unsure of the spelling
|IMMZ.FXNREQ.131|Display or retrieve record|health worker (HW)|To have the record imported or retrieved if it matches but is not local|I can access and update the record
|IMMZ.FXNREQ.132|Display or retrieve record|health worker (HW)|The system to display the information of the selected record|I can see the information I need to provide care|
{:.table-bordered .table-striped .thead-light}

<span style="font-size: larger; font-weight: bold;">Business process G: Administer Vaccine
</span>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.134|Does client require vaccine?|health worker (HW)|To customise vaccine protocol|it reflects my countries vaccine schedule
|IMMZ.FXNREQ.135|Does client require vaccine?|health worker (HW)|To determine vaccine required by looking at age of client, vaccines already given and predefined vaccine protocol|I give the vaccine appropriately
|IMMZ.FXNREQ.136|Does client require vaccine?|health worker (HW)|To display vaccines already given and vaccines due according to predefined vaccine protocol|I can assess what I need to give
|IMMZ.FXNREQ.137|Does client require vaccine?|health worker (HW)|The system to ensure I have the most up to date vaccine protocols|It will recommend the correct schedule
|IMMZ.FXNREQ.138|Is required vaccine available?|health worker (HW)|To display availability of vaccines stock|I can see what stock I have and if I have enough
|IMMZ.FXNREQ.139|Is required vaccine available?|health worker (HW)|The system to warn the user if required vaccine is not in stock|I can alert the client if the vaccine is not available
|IMMZ.FXNREQ.140|Is required vaccine available?|health worker (HW)|The system to display the expiry date of stock to ensure expired vaccines are not administered|I give safe and effective doses only
|IMMZ.FXNREQ.141|Check contraindications|health worker (HW)|To be alerted of any relevant potential contraindications for the vaccine (e.g. based on age or dose spacing)|I can withhold it if contraindicated
|IMMZ.FXNREQ.142|Check contraindications|health worker (HW)|To be able to quickly access information regarding any contraindications by antigen|I can access all information in one place
|IMMZ.FXNREQ.143|Shall I administer vaccine?|health worker (HW)|To document why a vaccine was not given|it will be visible to other health workers 
|IMMZ.FXNREQ.144|Inform client of next vaccine date|health worker (HW)|The system to display due date of the next vaccine|I can inform the client when to return for their next vaccination 
|IMMZ.FXNREQ.145|Record appropriate data|health worker (HW)|The system to associate the context data for each entry (e.g. the health centre where the dose was given, the person administering it)|I can investigate if any issues arise 
|IMMZ.FXNREQ.146|Record appropriate data|health worker (HW)|To update clients’ vaccination record with all relevant information (i.e. date, dose, lot number, antigen)|The client and caregivers see a full complete record, and doses can be traced
|IMMZ.FXNREQ.147|Record appropriate data|health worker (HW)|To record additional vaccinations, even those that are not included in the national vaccination schedule|The client and caregivers see a full complete record
|IMMZ.FXNREQ.148|Record appropriate data|health worker (HW)|To enter antigen information i.e. batch number, expiry date, Vaccine Vial Monitor (VVM) Status|The client and caregivers see a full complete record, and doses can be traced
|IMMZ.FXNREQ.149|Record appropriate data|health worker (HW)|A system administrator to define rules for data validation (correct date format, correct selection of antigens)|data entry errors are prevented
|IMMZ.FXNREQ.150|Record appropriate data|health worker (HW)|To enter additional related data (such as weight, or location given)|The client and caregivers see a full complete record and I do not need to maintain a paper version for additional data
|IMMZ.FXNREQ.151|Record appropriate data|health worker (HW)|The system to allow only certain fields to be edited (i.e. ID field should not be editable)|A user cannot accidentally change it
|IMMZ.FXNREQ.152|Record appropriate data|health worker (HW)|The system to maintain an audit of any modified data and by whom|Users are accountable for the data they enter
|IMMZ.FXNREQ.153|Record appropriate data|health worker (HW)|The system to apply an authorised digital signature when necessary and appropriate|The users’ identity can be validated
|IMMZ.FXNREQ.154|Record appropriate data|health worker (HW)|To confirm changes if data is modified|Accidental or erroneous changes will not be saved
|IMMZ.FXNREQ.155|Record appropriate data|health worker (HW)|To update stock record|I know which stock adjustments have not been done automatically (such as in instances if something is wasted)
|IMMZ.FXNREQ.156|Record appropriate data|health worker (HW)|To be prompted for any specific data required to produce a digital vaccine certificate for a specific antigen|The record will have all relevant data to produce a certificate
|IMMZ.FXNREQ.157|Record appropriate data|health worker (HW)|To know that the data in the client record is secure and confidential|Client confidentiality is maintained
|IMMZ.FXNREQ.158|Treat as appropriate|health worker (HW)|To record any significant observations (such as reaction) that may be specific to that client|The observations can be readily available with other providers or for reporting
|IMMZ.FXNREQ.159|Treat as appropriate|health worker (HW)|To connect to the appropriate form (AEFI) to document adverse reaction|All of the data is in the same place and easily accessible
|IMMZ.FXNREQ.160|Treat as appropriate|health worker (HW)|To have any serious reaction be displayed prominently in the clients record so it will be visible in future visits|They can be aware and not give it if contraindicated
|IMMZ.FXNREQ.161|Does client require digital certificate?|health worker (HW)|To be prompted to ask client if they want a digital vaccination certificate where appropriate|The digital vaccination certificate can be generated|
{:.table-bordered .table-striped .thead-light}

<span style="font-size: larger; font-weight: bold;">Business process H: Resolve Duplicate Client Record
</span>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.163|Flag client records for evaluation|IIS Staff/System & health worker (HW)|The system to automatically flag client records as possible duplicates|Duplicates can be identified and resolved
|IMMZ.FXNREQ.164|Flag client records for evaluation|IIS Staff/System & health worker (HW)|The system to prompt user of possible duplicate record prior to saving new record|I can ensure I am not creating a duplicate
|IMMZ.FXNREQ.165|Flag client records for evaluation|IIS Staff/System & health worker (HW)|To manually flag duplicate records|I can identify potential duplicates myself for resolution
|IMMZ.FXNREQ.166|Flag client records for evaluation|IIS Staff/System & health worker (HW)|The system to alert user of records pending for manual review|I can make sure I document and use the correct record
|IMMZ.FXNREQ.167|Flag client records for evaluation|IIS Staff/System & health worker (HW)|The system to support a rules-based algorithm to evaluate duplicate records|Duplicates can be found by the system
|IMMZ.FXNREQ.168|Flag client records for evaluation|IIS Staff/System & health worker (HW)|The rules to be easily editable by IIS staff |They may be adjusted so that they trigger appropriately
|IMMZ.FXNREQ.169|Produce list of potential duplicate records|IIS Staff/System|To schedule batching of duplicate record process|They may be processed and assessed together when user is ready
|IMMZ.FXNREQ.170|Produce list of potential duplicate records|IIS Staff/System|The system to generate a report of like identifiers or confidence ratings. Possible duplicates include name, address, quality data, reliable information, etc. |The user can focus on those most appropriate
|IMMZ.FXNREQ.171|Perform manual review|IIS Staff/System|To combine two or more duplicate records according to business rules. Business rules should define which criteria to use to merge records, i.e. what information to keep from the duplicates.|A user does not have to review highly certain matches
|IMMZ.FXNREQ.172|Perform manual review|IIS Staff/System|To view duplicate records simultaneously for decision to merge records|I can see all information available to determine if they are duplicates
|IMMZ.FXNREQ.173|Perform manual review|IIS Staff/System|To navigate the system while reviewing possible duplicates|I can access other fields to aid in my decision making
|IMMZ.FXNREQ.174|Can records be merged?|IIS Staff/System|To determine if records have appropriate criteria in order to merge, i.e. personal identifying data to watch|I can be confident in the decision to merge
|IMMZ.FXNREQ.175|Merge records|IIS Staff/System|To select data elements to merge into a consolidated record (Note: Could access additional source of data to validate information, i.e. ask the person, look up in another database)|I can select the correct fields to be merged, to achieve the most accurate consolidated record
|IMMZ.FXNREQ.176|Merge records|IIS Staff/System|The system to support an audit trail when records are merged|I know when records are merged for troubleshooting. Also to encourage accountability for manual merges.
|IMMZ.FXNREQ.177|Merge records|IIS Staff/System|To produce and access a cross-reference listing of pre- and post-merged records, i.e. a list that shows the old client record information with the corresponding converted new client record|I can confirm the merged fields were done appropriately
|IMMZ.FXNREQ.178|Merge records|IIS Staff/System|To "undo merge"|I can correct records merged in error
|IMMZ.FXNREQ.179|Merge records|IIS Staff/System|To retain “pre-merged” records|I have a history of the record in case the records were merged in error 
|IMMZ.FXNREQ.180|Mark as "not a duplicate" or "pending"|IIS Staff/System|To flag record as "not a duplicate”.  The system could believe records are duplicates, but they are not.|It is not presented as a possible duplicate each time
|IMMZ.FXNREQ.181|Mark as "not a duplicate" or "pending"|IIS Staff/System|The system to prevent matching for the same pair of records that have been flagged as "not a duplicate"|Confirmed unique records are not accidentally merged
|IMMZ.FXNREQ.182|Mark as "not a duplicate" or "pending"|IIS Staff/System|To flag a record as pending for manual review, if there is not enough information for the system to determine it is a duplicate|An actual person can review and resolve
|IMMZ.FXNREQ.184|Mark as "not a duplicate" or "pending"|IIS Staff/System|To enter comments for records marked as "not a duplicate"|I can add any additional information to let other users see why it was determined to not be a duplicate|
{:.table-bordered .table-striped .thead-light}

<span style="font-size: larger; font-weight: bold;">Business process I: Resolve Duplicate Vaccination Events
</span>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.185|Identify groups of vaccination events for evaluation|IIS Staff/System|The system to prompt the user that the new vaccine is a duplicate| the user can decide if it is a duplicate and if so not enter it
|IMMZ.FXNREQ.186|Identify groups of vaccination events for evaluation|IIS Staff/System|The system to generate a list of possible client vaccination event duplicates|the entire list can be assessed 
|IMMZ.FXNREQ.187|Identify groups of vaccination events for evaluation|IIS Staff/System|To manually initiate duplicate search process|it can be done when the user is available to troubleshoot
|IMMZ.FXNREQ.188|Identify groups of vaccination events for evaluation|IIS Staff/System|The system to automate duplicate search process|users are made aware of issues that need to be delt with
|IMMZ.FXNREQ.189|Identify groups of vaccination events for evaluation|IIS Staff/System|To manually flag duplicate vaccination events|an end user can report a mistake/duplicate that they are not able to merge (usually because they don’t have permission)
|IMMZ.FXNREQ.190|Identify groups of vaccination events for evaluation|IIS Staff/System|The system to display the vaccine type, manufacturer, administrator date, eligibility, and administrator who entered the dose for manual vaccine de-duplication review|I can be sure it is actually a duplicate vaccination event 
|IMMZ.FXNREQ.191|Evaluate vaccine event records|IIS Staff/System & health worker (HW)|The system to support a rules-based algorithm to evaluate duplicate events|it will improve the system's ability to find duplicates
|IMMZ.FXNREQ.192|Evaluate vaccine event records|IIS Staff/System & health worker (HW)|The system to support probabilistic algorithm to determine and flag when duplicate events need manual review|a user will be alerted of potential duplicates that will require further investigation
|IMMZ.FXNREQ.193|Evaluate vaccine event records|IIS Staff/System & health worker (HW)|The rules to be easily editable by IIS staff (add, remove, modify), when authorized|the process can be optimized
|IMMZ.FXNREQ.194|Duplicate events?|IIS Staff/System|The system to alert user of events pending for manual review|the user will know there are events pending review
|IMMZ.FXNREQ.195|Duplicate events?|IIS Staff/System|To view duplicate events and event details simultaneously for decision to merge, i.e. two or more|I have sufficient information to easily compare and decide whether or not to merge events
|IMMZ.FXNREQ.196|Duplicate events?|IIS Staff/System|To navigate the system while reviewing possible duplicates (optional)|I can access other fields to aid in my decision making
|IMMZ.FXNREQ.197|Select the most accurate/suitable event record|IIS Staff/System & health worker (HW)|The system to automatically select the most accurate/suitable vaccination event to be used as the (primary or master) record|the accurate data is preserved
|IMMZ.FXNREQ.198|Update vaccine event records|IIS Staff/System & health worker (HW)|To select data elements to merge into a consolidated event record|I can select the correct fields to be merged, to achieve the most accurate consolidated record
|IMMZ.FXNREQ.199|Update vaccine event records|IIS Staff/System & health worker (HW)|The system to combine two or more duplicate event records according to business rules|the user does not have to manually merge highly probable or certain records
|IMMZ.FXNREQ.200|Update vaccine event records|IIS Staff/System & health worker (HW)|The system to support an audit trail when event records are merged|I know when records are merged for troubleshooting and to encourage accountability for manual merges.
|IMMZ.FXNREQ.201|Update vaccine event records|IIS Staff/System & health worker (HW)|The system to retain “pre-merged” event records|I have a history of the record
|IMMZ.FXNREQ.202|Update vaccine event records|IIS Staff/System & health worker (HW)|The system to generate an audit list of vaccination events that are automatically merged|I can confirm the merged fields were done appropriately
|IMMZ.FXNREQ.203|Update vaccine event records|IIS Staff/System & health worker (HW)|To delete a duplicate vaccine event while still maintaining audit record|the data on the duplicate event can still be seen for troubleshooting
|IMMZ.FXNREQ.204|Generate report of duplicate vaccine events|IIS Staff/System & health worker (HW)|To schedule routine reports to run at a specific time|the issues can be addressed in a timely manner
|IMMZ.FXNREQ.205|Generate report of duplicate vaccine events|IIS Staff/System & health worker (HW)|The system to restrict access to confidential personal identifiable information|client confidentiality is maintained|
{:.table-bordered .table-striped .thead-light}

<span style="font-size: larger; font-weight: bold;">Business process J: Report Generation
</span>

|Requirement ID|Activity ID and Description|[As a ...](personas.html)|I want ...|So that ...|
|----|---|---|---|
|IMMZ.FXNREQ.206|Define parameters|IIS Staff/System & health worker & Other Partners|To select parameters (i.e. Time, age, race/ethnicity, jurisdiction, vaccine grouping vaccine dose count, specific program codes, other program codes)|appropriate specific reports can be generated
|IMMZ.FXNREQ.207|Define parameters|IIS Staff/System & health worker & Other Partners|To select report output parameters (i.e. Display options, summary vs. detail report, sort options, alphanumeric versus date)|the report presentation can be customised
|IMMZ.FXNREQ.208|Define parameters|IIS Staff/System & health worker & Other Partners|To choose a report generation timeframe (i.e., run now or set the time for later)|the user has options for when to produce the report, to avoid peek system use etc
|IMMZ.FXNREQ.209|Define parameters|IIS Staff/System & health worker & Other Partners|To save parameters as "public" to allow other users to generate the same report using the same parameters|the report will be available to be run by other users 
|IMMZ.FXNREQ.210|Define parameters|IIS Staff/System & health worker & Other Partners|To modify/delete saved "public" parameters|there can be central control of the available reports
|IMMZ.FXNREQ.211|Define parameters|IIS Staff/System & health worker & Other Partners|The system to determine if the report can be immediately generated or if it must be delayed based on size and generate a message "report processing" (i.e. based on types of criteria, based on size of data)|the system performance is not affected
|IMMZ.FXNREQ.212|Define parameters|IIS Staff/System & health worker & Other Partners|The system to prompt user to confirm the generation of a report at a later time, if required|the user realises they are not generating it now and will be aware of when it may be collected
|IMMZ.FXNREQ.213|Define parameters|IIS Staff/System & health worker & Other Partners|To search, list, filter and reorder and export the history of vaccines administered|the report can be used for dynamic troubleshooting
|IMMZ.FXNREQ.214|Generate report|IIS Staff/System & health worker & Other Partners|To save, display, or print report|I can select the most appropriate method for my use
|IMMZ.FXNREQ.215|Generate report|IIS Staff/System & health worker & Other Partners|To produce reports in multiple formats (i.e. CSV, PDF)|I can select the most appropriate format for my use
|IMMZ.FXNREQ.216|Generate report|IIS Staff/System & health worker & Other Partners|To delete a report and track on audit log|A record of past reports can be maintained 
|IMMZ.FXNREQ.217|Generate report|IIS Staff/System & health worker & Other Partners|To delete and/or modify data elements within a report|I can modify report based on the audience or my needs
|IMMZ.FXNREQ.218|Generate report|IIS Staff/System & health worker & Other Partners|To schedule routine reports to run at a specific time|They will be available for review at the routine time (for example first thing in the morning) without needing to be requested
|IMMZ.FXNREQ.219|Generate report|IIS Staff/System & health worker & Other Partners|To restrict some predefined data such as duplicate records|the reports are accurate and consistent
|IMMZ.FXNREQ.220|Generate report|IIS Staff/System & health worker & Other Partners|To generate the report based on the parameters set|I can easily generate the report
|IMMZ.FXNREQ.221|Report acceptable?|IIS Staff/System & health worker & Other Partners|To return to and modify report criteria|Reports can be adjusted based on needs
|IMMZ.FXNREQ.222|Analyse|IIS Staff/System & health worker & Other Partners|To verify that the report is in the correct format |It will appear and print correctly
|IMMZ.FXNREQ.223|Analyse|IIS Staff/System & health worker & Other Partners|To send report by email|I don’t have to manually do that
|IMMZ.FXNREQ.224|Analyse|IIS Staff/System & health worker & Other Partners|To export data in selected file formats|It can easily be shared with other programs or systems
|IMMZ.FXNREQ.225|Analyse|IIS Staff/System & health worker & Other Partners|To configure report displays|It may be customised for optimal use
|IMMZ.FXNREQ.226|Analyse|IIS Staff/System & health worker & Other Partners|The system to provide report output which is interoperable with a statistical analysis software|It can be shared with other systems automatically|
{:.table-bordered .table-striped .thead-light}