Component 3 in the Digital Adaptation Kit (link forthcoming) includes user scenarios, which are narratives that describe how the different personas may interact with each other. The user scenarios are only illustrative and are intended to give an idea of a typical workflow.

**How to interpret user scenarios**

User scenarios can be helpful tools not only to better understand the context in which a digital tool would operate, but also for some insights into what key data elements would need to be recorded and accounted for in the database. Additionally, the context in which the tool would operate, illuminated by the user scenarios, provides insight into some functional and non-functional requirements that the system would also need.

As examples, the scenarios identify: key data elements that need to be recorded and/or calculated; decision-support logic that can be automated in the system; key functional and non-functional requirements that should be included in the system, and adolescent-specific considerations that should be accounted for.

### 3.1 User Scenario for Routine Vaccination Clinic
**User personas**
- Care giver (mother): Ruth
- Child: Esther
- health worker: Lucy

Ruth is 21 years old and Esther, her first baby, is 10 weeks old. Ruth completed primary school and has basic literacy. Her husband attended secondary school for three years, but he did not finish. They all live in a two-room house with intermittent electricity in a village near Msindo.

Esther was born at home. Although Esther’s birth was not registered (and she does not have a birth certificate), the <span style="background:yellow;">clinic assigned an ID</span>to Esther when Ruth took her in for her first round of immunizations shortly after her birth. It takes Ruth just over an hour to walk to the Msindo clinic from her home. Ruth enjoys going to the clinic as it is a chance to talk to other new mothers and she gets helpful information from the nurse about keeping her baby healthy.

Lucy is a nurse working in the Msindo clinic. She has 12 years of experience, and she has a diploma in nursing. Lucy is in charge of the delivery of scheduled vaccines as part of the “under 5 program”; at her clinic. Two other nurses also work in this clinic. The clinic operates 3 days a week in the morning. The clinic sees babies for screening and monitoring to identify any children who are at risk and may require further intervention early on to prevent issues. She also provides some preventative care such as vaccines and other supplements. Lucy also spends time during each clinic doing health teaching about various child health topics.

Ruth and Esther arrive at the clinic just after 9am, there are already 5 other moms with their babies. When it is Ruth’s turn, she goes to the table where Lucy is sitting, and hands her Esther’s paper vaccination card (or home-based record) which she received when Esther got on her first clinic visit when she was registered. It contains <span style="background:yellow;">Esther’s name, date of birth and a record of each vaccine given, as well as her weight</span> at that visit. Lucy uses <span style="background:yellow;">the ID</span> on the top of the card <span style="background:lime;">to look up Esther’s record</span> on her tablet. She finds the record and can see in the system that <span style="background:aqua;">Esther is due for 4 vaccines at this time</span>. Lucy weighs Esther using the scale set up beside the desk, and she <span style="background:yellow;">records her weight</span> on both the paper card and in the IIS application on her tablet. She tells Ruth that Esther is <span style="background:aqua;">gaining weight well</span>, and they briefly discuss some questions Ruth has about breast feeding.

Lucy takes the appropriate vaccines out of the small cooler box beside her table. Lucy had filled the cooler box earlier that morning based on what she would typically need based on an average clinic day. She has access to more vaccines, but they are in the fridge in the storage room. She prepares each vaccine, making sure that it is not expired and that the small symbol on the vial indicates it is safe to give. Lucy gives each vaccine (starting with the ones given by mouth, then the injections) to Esther. While Ruth comforts Esther, Lucy <span style="background:yellow;">records the vaccines given</span> in the application on the tablet, as well as on Esther’s home-based record. She also tells Ruth <span style="background:aqua;">when to bring Esther back for her next vaccines</span>, and she also writes this on Esther’s home-based record. She also advises Ruth on what to do if Esther develops a fever or some other symptom following vaccination. Since the clinic operates every weekday morning, Ruth understands that while she should try to come on the date given, it is not an actual appointment, just a guideline to come within a day or two of that date. Lucy also informs her that they have a new system that <span style="background:lime;">can send and SMS reminder</span> when <span style="background:aqua;">Esther is due for a vaccine</span> to her phone if she would like. Ruth agrees that she would like this reminder and Lucy confirms her phone number in the system and <span style="background:lime;">checks the box indicates she would like to receive these notifications</span>.

**Corresponding business processes**

This scenario refers to the following business processes:
- C. Client Reminder
- E. Register Client
- F. Query Client Record
- G. Administer Vaccine

|Data elements to be collected &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |Decision logic to be embedded|Functional and non-functional requirements|
|----|---|---|
|•	Unique ID <br> •	Name<br>•	Date of birth<br>•	Vaccine given<br>•	Date vaccine given<br>•	Weight	<br>|•	Determine what vaccines are due at this time (taking into account: last vaccine date, national vaccine schedule)<br>•	Determine if weight appropriate for age based on standardized growth charts (age calculated by date of birth) <br>•	Determine when next vaccines are due (taking into account: last vaccine date, national vaccine schedule) <br>•	Determine if due date of vaccine is within a few days |•	Ability to automatically generate SMS messages based on trigger events<br>•	Indicate consent to receive reminders <br>•	Indicate dissent to receive reminders if the default is to receive reminders and there is an opt out option<br>•	Send reminders only to those who have given consent|

### 3.2 User Scenario for Defaulter Tracing

### 3.3 User Scenario for Catch-up Campaign
