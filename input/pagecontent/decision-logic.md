This page describes the decision support logic included in the WHO Digital Adaptation Kit (DAK): WHO Immunization Implementation Guide

The decision-support logic component provides the decision logic and algorithms, as well as the scheduling of services, in accordance with WHO guidelines. The decision logic and algorithms in this implementation guide deconstruct the recommendations within the guidelines and guidance into a machine-readable format that clearly labels the inputs and outputs to be operationalized in a digital decision-support system, such as an electronic medical record (EMR) system.

# Decision Support Logic Overview
The table below provides an overview of the decision-support tables and algorithms for the different business processes in an EMR. The structure of the decision-support tables is based on an adaptation of the Decision Model and Notation (DMN™), an industry standard for modeling and executing decision logic. These decision-support tables detail the business rules, data inputs, and outputs to support EMR business processes.

## Overview of decision logic support tables
<div style=" width: 100%;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead>
      <tr style="text-align: left;">
        <th>Decision Table ID</th>
        <th>Decision Table Description</th>
        <th>Reference/Source</th>
      </tr>
    </thead>
    <tbody style="text-align: left; vertical-align: top">
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>

  </tbody>
</table>


## Decision logic support tables

### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.BCG'> </ a>
{% include 'IMMZ.D2.DT.BCG.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.BCGcontraindications'> </ a>
{% include 'IMMZ.D5.DT.BCGcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.BCGschedule'> </ a>
{% include 'IMMZ.D18.S.BCGschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HepatitisB.Birthdose'> </ a>
{% include 'IMMZ.D2.DT.HepatitisB.Birthdose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HepatitisB.3doses'> </ a>
{% include 'IMMZ.D2.DT.HepatitisB.3doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HepatitisB.4doses'> </ a>
{% include 'IMMZ.D2.DT.HepatitisB.4doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HepatitisB.Delayedstart'> </ a>
{% include 'IMMZ.D2.DT.HepatitisB.Delayedstart.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.HepatitisBcontraindications'> </ a>
{% include 'IMMZ.D5.DT.HepatitisBcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HepatitisB.Birthdoseschedule'> </ a>
{% include 'IMMZ.D18.S.HepatitisB.Birthdoseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HepatitisB.3-doseschedule'> </ a>
{% include 'IMMZ.D18.S.HepatitisB.3-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HepatitisB.4-doseschedule'> </ a>
{% include 'IMMZ.D18.S.HepatitisB.4-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HepatitisB.Delayedstartschedule'> </ a>
{% include 'IMMZ.D18.S.HepatitisB.Delayedstartschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Polio.Birthdose'> </ a>
{% include 'IMMZ.D2.DT.Polio.Birthdose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Polio.bOPVplusIPV'> </ a>
{% include 'IMMZ.D2.DT.Polio.bOPVplusIPV.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Polio.SequentialIPVbOPV'> </ a>
{% include 'IMMZ.D2.DT.Polio.SequentialIPVbOPV.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Polio.IPV-only'> </ a>
{% include 'IMMZ.D2.DT.Polio.IPV-only.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Poliocontraindications'> </ a>
{% include 'IMMZ.D5.DT.Poliocontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Polio.Birthdoseschedule'> </ a>
{% include 'IMMZ.D18.S.Polio.Birthdoseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Polio.bOPVplusIPVschedule'> </ a>
{% include 'IMMZ.D18.S.Polio.bOPVplusIPVschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Polio.SequentialIPVbOPVschedule'> </ a>
{% include 'IMMZ.D18.S.Polio.SequentialIPVbOPVschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Polio.IPV-onlyschedule'> </ a>
{% include 'IMMZ.D18.S.Polio.IPV-onlyschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.DTP.On-timestart'> </ a>
{% include 'IMMZ.D2.DT.DTP.On-timestart.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.DTP.Delayedorinterruptedseries'> </ a>
{% include 'IMMZ.D2.DT.DTP.Delayedorinterruptedseries.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.DTP.Pregnancy'> </ a>
{% include 'IMMZ.D2.DT.DTP.Pregnancy.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.DTP.Pregnancystartingwith3doses'> </ a>
{% include 'IMMZ.D2.DT.DTP.Pregnancystartingwith3doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.DTP.Pregnancystartingwith4doses'> </ a>
{% include 'IMMZ.D2.DT.DTP.Pregnancystartingwith4doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.DTPcontraindications'> </ a>
{% include 'IMMZ.D5.DT.DTPcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.DTP.On-timestartschedule'> </ a>
{% include 'IMMZ.D18.S.DTP.On-timestartschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.DTP.Delayedorinterruptedschedule'> </ a>
{% include 'IMMZ.D18.S.DTP.Delayedorinterruptedschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.DTP.Pregnancystartingwith3dosesschedule'> </ a>
{% include 'IMMZ.D18.S.DTP.Pregnancystartingwith3dosesschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.DTP.Pregnancystartingwith4dosesschedule'> </ a>
{% include 'IMMZ.D18.S.DTP.Pregnancystartingwith4dosesschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Hib.3doses'> </ a>
{% include 'IMMZ.D2.DT.Hib.3doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Hib.3doseswithboosterdose'> </ a>
{% include 'IMMZ.D2.DT.Hib.3doseswithboosterdose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Hib.2doseswithboosterdose'> </ a>
{% include 'IMMZ.D2.DT.Hib.2doseswithboosterdose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Hibcontraindications'> </ a>
{% include 'IMMZ.D5.DT.Hibcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Hib.3dosesschedule'> </ a>
{% include 'IMMZ.D18.S.Hib.3dosesschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Hib.3doseswithboosterdoseschedule'> </ a>
{% include 'IMMZ.D18.S.Hib.3doseswithboosterdoseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Hib.2doseswithboosterdoseschedule'> </ a>
{% include 'IMMZ.D18.S.Hib.2doseswithboosterdoseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Pneumococcal.2doseswithboosterdose'> </ a>
{% include 'IMMZ.D2.DT.Pneumococcal.2doseswithboosterdose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Pneumococcal.3doses'> </ a>
{% include 'IMMZ.D2.DT.Pneumococcal.3doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Pneumococcalcontraindications'> </ a>
{% include 'IMMZ.D5.DT.Pneumococcalcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Pneumococcal.2doseswithboosterdoseschedule'> </ a>
{% include 'IMMZ.D18.S.Pneumococcal.2doseswithboosterdoseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Pneumococcal.3dosesschedule'> </ a>
{% include 'IMMZ.D18.S.Pneumococcal.3dosesschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Rotavirus'> </ a>
{% include 'IMMZ.D2.DT.Rotavirus.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Rotaviruscontraindications'> </ a>
{% include 'IMMZ.D5.DT.Rotaviruscontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Rotavirusschedule'> </ a>
{% include 'IMMZ.D18.S.Rotavirusschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Measles.Ongoingtransmission'> </ a>
{% include 'IMMZ.D2.DT.Measles.Ongoingtransmission.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Measles.Lowtransmission'> </ a>
{% include 'IMMZ.D2.DT.Measles.Lowtransmission.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Measles.MCVdose0'> </ a>
{% include 'IMMZ.D2.DT.Measles.MCVdose0.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Measles.Supplementarydose'> </ a>
{% include 'IMMZ.D2.DT.Measles.Supplementarydose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Measlescontraindications'> </ a>
{% include 'IMMZ.D5.DT.Measlescontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Measles.Ongoingtransmissionschedule'> </ a>
{% include 'IMMZ.D18.S.Measles.Ongoingtransmissionschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Measles.Lowtransmissionschedule'> </ a>
{% include 'IMMZ.D18.S.Measles.Lowtransmissionschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Measles.MCVdose0schedule'> </ a>
{% include 'IMMZ.D18.S.Measles.MCVdose0schedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Measles.Supplementarydoseschedule'> </ a>
{% include 'IMMZ.D18.S.Measles.Supplementarydoseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Rubella.Highincidence'> </ a>
{% include 'IMMZ.D2.DT.Rubella.Highincidence.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Rubella.Lowincidence'> </ a>
{% include 'IMMZ.D2.DT.Rubella.Lowincidence.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Rubellacontraindications'> </ a>
{% include 'IMMZ.D5.DT.Rubellacontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Rubella.Highincidenceschedule'> </ a>
{% include 'IMMZ.D18.S.Rubella.Highincidenceschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Rubella.Lowincidenceschedule'> </ a>
{% include 'IMMZ.D18.S.Rubella.Lowincidenceschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HPV.2doses'> </ a>
{% include 'IMMZ.D2.DT.HPV.2doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HPV.Singledose'> </ a>
{% include 'IMMZ.D2.DT.HPV.Singledose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.HPVcontraindications'> </ a>
{% include 'IMMZ.D5.DT.HPVcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HPV.2-doseschedule'> </ a>
{% include 'IMMZ.D18.S.HPV.2-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HPV.Single-doseschedule'> </ a>
{% include 'IMMZ.D18.S.HPV.Single-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.JE.InactivatedVerocell-derivedvaccine'> </ a>
{% include 'IMMZ.D2.DT.JE.InactivatedVerocell-derivedvaccine.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.JE.Liveattenuatedvaccine'> </ a>
{% include 'IMMZ.D2.DT.JE.Liveattenuatedvaccine.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.JE.Liverecombinantvaccine'> </ a>
{% include 'IMMZ.D2.DT.JE.Liverecombinantvaccine.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.JEcontraindications'> </ a>
{% include 'IMMZ.D5.DT.JEcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.JE.InactivatedVerocell-derivedvacc91866bc1e5'> </ a>
{% include 'IMMZ.D18.S.JE.InactivatedVerocell-derivedvacc91866bc1e5.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.JE.Liveattenuatedvaccineschedule'> </ a>
{% include 'IMMZ.D18.S.JE.Liveattenuatedvaccineschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.JE.Liverecombinantvaccineschedule'> </ a>
{% include 'IMMZ.D18.S.JE.Liverecombinantvaccineschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Yellowfever'> </ a>
{% include 'IMMZ.D2.DT.Yellowfever.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Yellowfevercontraindications'> </ a>
{% include 'IMMZ.D5.DT.Yellowfevercontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Yellowfeverschedule'> </ a>
{% include 'IMMZ.D18.S.Yellowfeverschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.TBE.FSME-Immun'> </ a>
{% include 'IMMZ.D2.DT.TBE.FSME-Immun.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.TBE.Encepur'> </ a>
{% include 'IMMZ.D2.DT.TBE.Encepur.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.TBE.TBE-Moscow'> </ a>
{% include 'IMMZ.D2.DT.TBE.TBE-Moscow.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.TBE.EnceVir'> </ a>
{% include 'IMMZ.D2.DT.TBE.EnceVir.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.TBEcontraindications'> </ a>
{% include 'IMMZ.D5.DT.TBEcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.TBE.FSME-Immunschedule'> </ a>
{% include 'IMMZ.D18.S.TBE.FSME-Immunschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.TBE.Encepurschedule'> </ a>
{% include 'IMMZ.D18.S.TBE.Encepurschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.TBE.TBE-Moscowschedule'> </ a>
{% include 'IMMZ.D18.S.TBE.TBE-Moscowschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.TBE.EnceVir'> </ a>
{% include 'IMMZ.D18.S.TBE.EnceVir.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Typhoid.TCV'> </ a>
{% include 'IMMZ.D2.DT.Typhoid.TCV.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Typhoid.ViPS'> </ a>
{% include 'IMMZ.D2.DT.Typhoid.ViPS.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Typhoid.Ty21a'> </ a>
{% include 'IMMZ.D2.DT.Typhoid.Ty21a.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Typhoidcontraindications'> </ a>
{% include 'IMMZ.D5.DT.Typhoidcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Typhoid.TCVschedule'> </ a>
{% include 'IMMZ.D18.S.Typhoid.TCVschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Typhoid.ViPSschedule'> </ a>
{% include 'IMMZ.D18.S.Typhoid.ViPSschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Typhoid.Ty21aschedule'> </ a>
{% include 'IMMZ.D18.S.Typhoid.Ty21aschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Cholera.WCvaccines'> </ a>
{% include 'IMMZ.D2.DT.Cholera.WCvaccines.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses'> </ a>
{% include 'IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Cholera.WC-rBSvaccine2doses'> </ a>
{% include 'IMMZ.D2.DT.Cholera.WC-rBSvaccine2doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Cholera.WCvaccinesschedule'> </ a>
{% include 'IMMZ.D18.S.Cholera.WCvaccinesschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Cholera.WC-rBSvaccine3doseschedule'> </ a>
{% include 'IMMZ.D18.S.Cholera.WC-rBSvaccine3doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Cholera.WC-rBSvaccineboosterdosefo1eecdb6117'> </ a>
{% include 'IMMZ.D18.S.Cholera.WC-rBSvaccineboosterdosefo1eecdb6117.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Cholera.WC-rBSvaccine2doseschedule'> </ a>
{% include 'IMMZ.D18.S.Cholera.WC-rBSvaccine2doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Cholera.WC-rBSvaccineboosterdosemob4c42f1488'> </ a>
{% include 'IMMZ.D18.S.Cholera.WC-rBSvaccineboosterdosemob4c42f1488.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine1dose'> </ a>
{% include 'IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine1dose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine2doses'> </ a>
{% include 'IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine2doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Meningococcal.MonovalentMenCconjugatevaccine'> </ a>
{% include 'IMMZ.D2.DT.Meningococcal.MonovalentMenCconjugatevaccine.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Meningococcal.Quadrivalentconjugatb67e5e7efb'> </ a>
{% include 'IMMZ.D2.DT.Meningococcal.Quadrivalentconjugatb67e5e7efb.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Meningococcal.Quadrivalentconjugat88e1c8c0bb'> </ a>
{% include 'IMMZ.D2.DT.Meningococcal.Quadrivalentconjugat88e1c8c0bb.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Meningococcal.Polysaccharidevaccines'> </ a>
{% include 'IMMZ.D2.DT.Meningococcal.Polysaccharidevaccines.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Meningococcalcontraindications'> </ a>
{% include 'IMMZ.D5.DT.Meningococcalcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Meningococcal.MenAconjugatevaccine08ec0e799c'> </ a>
{% include 'IMMZ.D18.S.Meningococcal.MenAconjugatevaccine08ec0e799c.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Meningococcal.MenAconjugatevaccine50b379d5f8'> </ a>
{% include 'IMMZ.D18.S.Meningococcal.MenAconjugatevaccine50b379d5f8.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Meningococcal.MonovalentMenCconjug7be8a5378c'> </ a>
{% include 'IMMZ.D18.S.Meningococcal.MonovalentMenCconjug7be8a5378c.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Meningococcal.Quadrivalentconjugat72f183dcc9'> </ a>
{% include 'IMMZ.D18.S.Meningococcal.Quadrivalentconjugat72f183dcc9.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Meningococcal.Quadrivalentconjugat1a001dc325'> </ a>
{% include 'IMMZ.D18.S.Meningococcal.Quadrivalentconjugat1a001dc325.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Meningococcal.Polysaccharidevaccinesschedule'> </ a>
{% include 'IMMZ.D18.S.Meningococcal.Polysaccharidevaccinesschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HepatitisA.InactivatedHAV2doses'> </ a>
{% include 'IMMZ.D2.DT.HepatitisA.InactivatedHAV2doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HepatitisA.InactivatedHAV1dose'> </ a>
{% include 'IMMZ.D2.DT.HepatitisA.InactivatedHAV1dose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.HepatitisA.LiveattenuatedHAV1dose'> </ a>
{% include 'IMMZ.D2.DT.HepatitisA.LiveattenuatedHAV1dose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.HepatitisAcontraindications'> </ a>
{% include 'IMMZ.D5.DT.HepatitisAcontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HepatitisA.InactivatedHAV2-doseschedule'> </ a>
{% include 'IMMZ.D18.S.HepatitisA.InactivatedHAV2-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HepatitisA.InactivatedHAV1-doseschedule'> </ a>
{% include 'IMMZ.D18.S.HepatitisA.InactivatedHAV1-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.HepatitisA.LiveattenuatedHAV1-doseschedule'> </ a>
{% include 'IMMZ.D18.S.HepatitisA.LiveattenuatedHAV1-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Rabies'> </ a>
{% include 'IMMZ.D2.DT.Rabies.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Rabiescontraindications'> </ a>
{% include 'IMMZ.D5.DT.Rabiescontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Rabiesschedule'> </ a>
{% include 'IMMZ.D18.S.Rabiesschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Dengue.3doseswithpre-vaccinationscreening'> </ a>
{% include 'IMMZ.D2.DT.Dengue.3doseswithpre-vaccinationscreening.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Dengue.3doseswithoutpre-vaccinationscreening'> </ a>
{% include 'IMMZ.D2.DT.Dengue.3doseswithoutpre-vaccinationscreening.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Denguecontraindications'> </ a>
{% include 'IMMZ.D5.DT.Denguecontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Dengueschedule'> </ a>
{% include 'IMMZ.D18.S.Dengueschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Malaria'> </ a>
{% include 'IMMZ.D2.DT.Malaria.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Malariacontraindications'> </ a>
{% include 'IMMZ.D5.DT.Malariacontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Malariaschedule'> </ a>
{% include 'IMMZ.D18.S.Malariaschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Mumps'> </ a>
{% include 'IMMZ.D2.DT.Mumps.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Mumpscontraindications'> </ a>
{% include 'IMMZ.D5.DT.Mumpscontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Mumpsschedule'> </ a>
{% include 'IMMZ.D18.S.Mumpsschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Seasonalinfluenza'> </ a>
{% include 'IMMZ.D2.DT.Seasonalinfluenza.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Seasonalinfluenzacontraindications'> </ a>
{% include 'IMMZ.D5.DT.Seasonalinfluenzacontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Seasonalinfluenzaschedule'> </ a>
{% include 'IMMZ.D18.S.Seasonalinfluenzaschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Varicella.1dose'> </ a>
{% include 'IMMZ.D2.DT.Varicella.1dose.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D2.DT.Varicella.2doses'> </ a>
{% include 'IMMZ.D2.DT.Varicella.2doses.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D5.DT.Varicellacontraindications'> </ a>
{% include 'IMMZ.D5.DT.Varicellacontraindications.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Varicella.1-doseschedule'> </ a>
{% include 'IMMZ.D18.S.Varicella.1-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>
### Recommended 2-dose vaccination schedule for varicella as per WHO recommendations<br/>S(<a href= <a name='IMMZ.D18.S.Varicella.2-doseschedule'> </ a>
{% include 'IMMZ.D18.S.Varicella.2-doseschedule.xml' %}
      <tr><td>{dt_id}</td><td>{dt_desc}</td><td>{dt_src}</td></tr>

