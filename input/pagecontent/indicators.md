This page includes indicators and performance metrics that would be aggregated from core data elements identified and is extracted from the WHO Digital Adaptation Kit (DAK): SMART Guidelines for Immunizations (link forthcoming). 

For full operational descriptions of the indicators included and their references, see Web Annex C of the DAK. 
For machine-readable representations, see the <a href="indicators-measures.html">Indicators and Measures</a>. 

These indicators may be aggregated automatically from the digital tracking tool to populate a digital health management information system (HMIS). 

### Indicator table column descriptions

| Data Element | Description |
|----|----|
|Indicator code|An identifier for the indicator|
|Indicator name|A short name for the indicator|
|Description|A description about the indicator|
|Numerator definition|The description of numerator used to calculate the indicator.|
|Numerator computation|The calculation or how to derive this numerator. Any specific data elements noted here should align directly with the individual-level Data Element Name.|
|Denominator definition|The dglossescription of denominator used to calculate the indicator.|
|Denominator definition|The description of denominator used to calculate the indicator.|
|Denominator computation|The calculation or how to derive this denominator. Any specific data elements noted here should align directly with the individual-level Data Element Name.|
|Disaggregations|Are there any dis-aggregations that you would like to be able to do in order to conduct the necessary analysis?|
|References|If there are any national or global guidelines (e.g. WHO guidelines) that dictate how and why this indicator should be calculated or reported, it should be noted here. If any guidelines or recommendations change, having a clear reference listed would help in updating or restructuring your data.|				
|References|If there are any national or global guidelines (e.g. WHO guidelines) that dictate how and why this indicator should be calculated or reported, it should be noted here. If any guidelines or recommendations change, having a clear reference listed would help in updating or restructuring your data.|
{:.grid}

### Indicators and performance metrics table
The following indicators are extracted from the DAK for Immunizations. The full indicators and performance metrics table is available in Web Annex C of the DAK. To see linkages to references and full details of the L2 content, please reference the DAK. 

<div style=" width: 100%; height: 500px; overflow: scroll;">

  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
        <tr>
          <th>Indicator code</th>
          <th>Indicator name</th>
          <th>Description</th>
          <th>Numerator definition</th>
          <th>Numerator computation</th>
          <th>Denominator definition</th>
          <th>Denominator computation</th>
          <th>Disaggregation</th>
        </tr>
      </thead>
    <tbody>
      <tr>
        <td>IMMZ.IND.1</td>
        <td>Immunization coverage for BCG (Estimated Denominator)</td>
        <td>Compares the doses of BCG (Bacillus Calmette-Guerin ) vaccine administered with the estimated number of live births as a percentage.</td>
        <td>Number of administrations of BCG during the reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a "BCG Vaccine" (IMMZ.Z1.DE1) AND "status code" = completed AND "vaccine administration date" during reporting period</td>
        <td>Estimated number of live births.</td>
        <td>PARAMETER number of live births</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.2</td>
        <td>Immunization coverage for DTP containing vaccines (Estimated Denominator)</td>
        <td>Compares the administered doses of a DTP (Diphtheria, Tetanus, and Pertussis) containing vaccine with the estimated number of surviving infants as a percentage.</td>
        <td>Number of administrations of vaccinations containing a Diphtheria, Tetanus, and Pertussis component during the reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a DTP Vaccine (IMMZ.Z1.DE24) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Estimated number of surviving infants.</td>
        <td>PARAMETER surviving number of infants</td>
        <td>Dose Number - 1, 2, or 3; Age Group - &lt; 1 year or &gt;1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.3</td>
        <td>Immunization coverage for HepB containing vaccines birth dose (estimated denominator)</td>
        <td>Compares the administered doses of Hepatitis B (HepB) containing vaccine given at birth (dose sequence 0) with the number of live births.</td>
        <td>Number of administrations of vaccines containing a Hepatitis B component at birth (dose sequence 0)</td>
        <td>COUNT immunization events WHERE "vaccine code" is a HepB vaccine (IMMZ.Z1.DE6) AND "status code" = completed AND vaccine "administration date" during reporting period AND "dose number" = 0</td>
        <td>Estimated number of live births.</td>
        <td>PARAMETER number of live births</td>
        <td>Age Group - &lt;24 hours of Birth, &lt; 2 weeks; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.4</td>
        <td>Immunization coverage for HepB containing vaccines (Estimated Denominator)</td>
        <td>Compares the administered doses of Hepatitis B (HepB) containing vaccine with the estimated number of live births (if dose sequence is 1 or 2) or number of surviving infants (for dose 3 - if given)</td>
        <td>Number of administrations of vaccinations containing a Hepatitis B component.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a HepB vaccine (IMMZ.Z1.DE6) AND "status code" = completed AND vaccine "administration date" during reporting period AND "dose number" &gt; 0</td>
        <td>Estimated number of surviving infants</td>
        <td>PARAMETER number of surviving infants (see comments)</td>
        <td>Dose Sequence - 1, 2, or 3; Age Group - &lt;1 year or &gt; 1year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.5</td>
        <td>Immunization coverage for inactivated polio containing vaccine (Estimated Denominator)</td>
        <td>Compares the administered doses of Inactivated Polio Virus (IPV) containing vaccines with the estimated number of surviving infants expressed as a percentage.</td>
        <td>Number of administrations of vaccinations using an inactivated polio vaccine (IPV) during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Inactivated Polio Vaccine (IMMZ.Z1.DE25) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Estimated number of surviving infants</td>
        <td>PARAMETER surviving number of infants</td>
        <td>Dose sequence - 1, 2, or 3; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.6</td>
        <td>Immunization coverage for oral polio containing vaccine birth doses (Estimated Denominator)</td>
        <td>Compares the administered doses of Oral Polio Virus (OPV) containing vaccines given at birth (dose sequence 0) with the number of live births. This indicator should only be used in contexts where an OPV birth dose is administered.</td>
        <td>Number of administrations of vaccinations using an oral polio vaccine (OPV) where the dose sequence is 0 (birth dose) during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is an Oral Polio Vaccine (IMMZ.Z1.DE26) AND "status code" = completed AND vaccine "administration date" during reporting period AND "dose number" = 0</td>
        <td>Estimated number of live births.</td>
        <td>PARAMETER number of live births</td>
        <td>Age Group - &lt;24 hours of birth, &lt; 2 weeks; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.7</td>
        <td>Immunization coverage for non-birth doses of oral polio containing vaccine (Estimated Denominator)</td>
        <td>Compares the administered doses of Oral Polio Virus (OPV) containing vaccines which are non-birth doses (dose sequence &gt; 0) with the estimated number of surviving infants expressed as a percentage.</td>
        <td>Number of administrations of vaccinations using an oral polio vaccine (OPV) where the dose sequence &gt; 0, during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is an Oral Polio Vaccine (IMMZ.Z1.DE26) AND "status code" = completed AND vaccine "administration date" during reporting period AND "dose number" &gt; 0</td>
        <td>Estimated number of surviving infants</td>
        <td>PARAMETER surviving number of infants</td>
        <td>Dose sequence - 1, 2, or 3; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.8</td>
        <td>Immunization coverage for Measles containing vaccine (Estimated Denominator)</td>
        <td>Compares the administered doses of Measles Containing Vaccines (MCV) with the estimated number of surviving infants (if dose 1) or a country supplied denominator (if dose 2) expressed as a percentage.</td>
        <td>Number of administrations of vaccinations containing a Measles component during reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Measles vaccine (IMMZ.Z1.DE9) and "status code" = completed and vaccine "administration date" during reporting period</td>
        <td>Estimated number of surviving infants (for dose 1) and country supplied denominator for dose sequence 2 (see comments)</td>
        <td>PARAMETER number of surviving infants (if Dose Sequence = 1) or PARAMETER of country supplied denominator (if Dose Sequence = 2)</td>
        <td>Dose Sequence - 1, 2; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.9</td>
        <td>Immunization coverage for HPV (Estimated Denominator)</td>
        <td>Compares the administered doses of Human Papillomavirus (HPV) containing vaccines with the country specified denominator for HPV coverage expressed as a percentage.</td>
        <td>Number of administrations of vaccines containing an HPV component during reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a HPV vaccine (IMMZ.Z1.DE7) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Country defined target population (see comments)</td>
        <td>PARAMETER country defined target population.</td>
        <td>Dose Sequence - 1, 2, or 3; Age Group - &lt;= 9 years, 9 - 14 years, &gt;= 15 years; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.10</td>
        <td>Immunization coverage for Meningococcal containing vaccine (Estimated Denominator)</td>
        <td>Compares the administered doses of Meningococcal containing vaccine with the number of estimated surviving infants expressed as a percentage.</td>
        <td>Number of administrations of vaccines containing an Meningococcal component during reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Meningococcal vaccine (IMMZ.Z1.DE10) AND "status code" = completed AND vaccine "administration date" during reporting period 3</td>
        <td>Estimated number of surviving infants</td>
        <td>PARAMETER number of surviving infants</td>
        <td>Dose Sequence - 1 or 2; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.11</td>
        <td>Immunization coverage for Pneumococcal containing vaccine (Estimated Denominator)</td>
        <td>Compares the administered doses of Pneumococcal containing vaccine with the number of surviving infants (with the exception of final dose which is country supplied denominator definition) expressed as a percentage</td>
        <td>Number of administrations of vaccines containing an Pneumococcal component during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Pneumococcal vaccine (IMMZ.Z1.DE13) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Estimated number of surviving infants (dose 1 and 2) or country supplied denominator definition (dose 3)</td>
        <td>PARAMETER number of surviving infants and PARAMETER of country supplied denominator (if dose sequence = 3)</td>
        <td>Dose Sequence - 1, 2, or 3; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.12</td>
        <td>Immunization coverage for Hemophilus containing vaccine (Estimated Denominator)</td>
        <td>Compares the administered doses of Haemophilus containing vaccine with the estimated number of surviving infants expressed as a percentage</td>
        <td>Number of administrations of vaccines containing an Haemophilus component during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Haemophilus vaccine (IMMZ.Z1.DE4) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Estimated number of surviving infants</td>
        <td>PARAMETER number of surviving infants.</td>
        <td>Age Group - &lt;1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.13</td>
        <td>Immunization coverage for Rotavirus containing vaccines (Estimated Denominator)</td>
        <td>Compares the administered doses of rotavirus containing vaccine with the number of surviving infants expressed as a percentage</td>
        <td>Number of administrations of vaccines containing a rotavirus component during reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Rotavirus vaccine (IMMZ.Z1.DE16) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Estimated number of surviving infants</td>
        <td>PARAMETER number of surviving infants</td>
        <td>Dose Sequence - 1, 2, or 3; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.14</td>
        <td>Immunization coverage for Rubella containing vaccines (RCV) (Estimated Denominator)</td>
        <td>Compares the administered doses of rubella containing vaccine (RCV) with a country specified denominator expressed as a percentage.</td>
        <td>Number of administrations of vaccines containing a Rubella component during reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Rubella vaccine (IMMZ.Z1.DE17) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Country defined target population (see comments)</td>
        <td>PARAMETER country defined target population.</td>
        <td>Age Group - &lt; 9 months, 9 - 18 months, 18 months - 15 years, &gt; 15 years; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.15</td>
        <td>Immunization coverage for Varicella vaccinations (Estimated Denominator)</td>
        <td>Compares the administered doses of varicella containing vaccine with a country specified denominator expressed as a percentage.</td>
        <td>Number of administrations of vaccines containing a varicella component during reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Varicella vaccine (IMMZ.Z1.DE22) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Country defined denominator (no guidance on JRF)</td>
        <td>PARAMETER country defined target population.</td>
        <td>Dose Sequence - 1 or 2; Age Group - &lt; 12 months, 12 - 18 months, 18 - 36 months, 36 months - 12 years or &gt; 12 years; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.16</td>
        <td>Immunization coverage for Diphtheria containing vaccine boosters (Estimated Denominator)</td>
        <td>Compares the administered booster doses (4, 5, 6) for diphtheria containing vaccine with a country specified denominator expressed as a percentage.</td>
        <td>Number of administrations of booster vaccines containing a diphtheria component during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Diphtheria vaccine (IMMZ.Z1.DE3) AND "status code" = completed AND vaccine "administration date" during reporting period AND "dose number" &gt; 3</td>
        <td>Country defined target population (see comments)</td>
        <td>PARAMETER country defined target population.</td>
        <td>Dose Sequence - 4, 5, or 6; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.17</td>
        <td>Immunization coverage for Pertussis containing vaccine boosters (Estimated Denominator)</td>
        <td>Compares the administered booster dose of pertussis containing vaccine (dose 4) with a country specified denominator expressed as a percentage.</td>
        <td>Number of administrations of booster vaccine containing a pertussis component during the reporting period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Pertussis vaccine (IMMZ.Z1.DE12) AND "status code" = completed AND vaccine "administration date" during reporting period AND "dose number" &gt; 3</td>
        <td>Country defined target population.</td>
        <td>PARAMETER country defined target population.</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.18</td>
        <td>Immunization coverage for Tetanus containing vaccine boosters (Estimated Denominator)</td>
        <td>Compares the administered booster dose of tetanus containing vaccines (doses 4, 5, 6) with a country specified denominator expressed as a percentage</td>
        <td>Number of administrations of booster containing tetanus component during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Tetanus vaccine (IMMZ.Z1.DE19) AND "status code" = completed AND vaccine "administration date" during reporting period AND "dose number" &gt; 3</td>
        <td>Country defined target population.</td>
        <td>PARAMETER country defined target population.</td>
        <td>Dose Sequence - 4, 5, or 6; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.19</td>
        <td>Immunization coverage for Yellow Fever vaccine (Estimated Denominator)</td>
        <td>Compares the administered dose of yellow fever vaccine with the number of surviving infants.</td>
        <td>Number of administrations of vaccines containing a yellow fever component during reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Yellow Fever vaccine (IMMZ.Z1.DE23) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Number of surviving infants</td>
        <td>PARAMETER number of surviving infants</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.20</td>
        <td>Immunization coverage for Japanese Encephalitis vaccines (Estimated Denominator)</td>
        <td>Compares the administered doses of Japanese encephalitis vaccines with a country specified target population expressed as a percentage.</td>
        <td>Number of administrations of vaccines which contain Japanese encephalitis component during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Japanese Encephalitis vaccine (IMMZ.Z1.DE8) AND "status code" = completed and vaccine "administration date" during reporting period</td>
        <td>Country defined target population.</td>
        <td>PARAMETER country defined target population.</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.21</td>
        <td>Immunization coverage for Typhoid vaccines (Estimated Denominator)</td>
        <td>Compares the administered doses of Typhoid vaccines with a country defined target population expressed as a percentage.</td>
        <td>Number of administrations of vaccines which contain a typhoid component during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Typhoid vaccine (IMMZ.Z1.DE21) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Country defined target population.</td>
        <td>PARAMETER country defined target population.</td>
        <td>Dose Sequence - 1, 2, or 3; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.22</td>
        <td>Immunization coverage for seasonal influenza (Estimated Denominator)</td>
        <td>Compares the administered doses of seasonal influenza vaccines with country defined target population (at risk) expressed as a percentage</td>
        <td>Number of administrations of seasonal influenza vaccines during reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a Seasonal Influenza vaccine (IMMZ.Z1.DE18) AND "status code" = completed AND vaccine "administration date" during reporting period</td>
        <td>Country defined target population of at-risk individuals.</td>
        <td>PARAMETER country defined target population.</td>
        <td>Age Group - &lt; 1 year, &lt; 15 year, or &gt; 60 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.23</td>
        <td>Dropout Rate of DTP1 to DTP3 (using Aggregate Calculation4)</td>
        <td>Indicates the aggregate dropout rate of DTP (Diphtheria Tetanus and Pertussis) containing vaccines protocol (children who started the dose series but did not finish).-----The indicator compares the number of administrations of first dose of DTP containing vaccines (DTP1) minus the number of administrations of the final dose (DTP3) protocol divided by the number of administrations of first dose (DTP1 - DTP3 / DTP1)</td>
        <td>Number of administrations of DTP1 administered during reporting period minus the number of administrations of DTP3 administered during report period</td>
        <td>COUNT immunization events WHERE "vaccine code" is a DTP vaccine (IMMZ.Z1.DE24) AND dose number (IMMZ.G1.DE34) = 1 AND "status code" = complete AND vaccine "administration date" during reporting period-----SUBTRACT-----COUNT immunization events WHERE "vaccine code" is a DTP vaccine (IMMZ.Z1.DE24) AND dose number (IMMZ.G1.DE34) = 3 AND "status code" = complete AND vaccine "administration date" during reporting period</td>
        <td>Number of doses of DTP1 administered</td>
        <td>COUNT immunization events WHERE "vaccine code" is a DTP vaccine (IMMZ.Z1.DE24) AND dose number (IMMZ.G1.DE34) = 1 AND "status code" = complete AND vaccine "administration date" during reporting period</td>
        <td>Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.24</td>
        <td>Dropout Rate of BCG to MCV1 (using Aggregate Calculation4)</td>
        <td>Indicates the aggregate dropout rate of children which have received BCG (Bacillus Calmette-Guerin) at birth those who have started the MCV (measles containing vaccines) series using an aggregate calculation method.-----The indicator compares the number of administration of BCG minus the number of administration of MCV1 divided by the number of BCG vaccinations (BCG - MCV1 / BCG)</td>
        <td>The number of doses of MCV1 administered during reporting period minus the number of BCG doses administered during reporting period</td>
        <td>COUNT immunization events WHERE vaccine code (IMMZ.Z1.DE4) is a BCG vaccine (IMMZ.Z1.DE1) AND "status code" = complete AND vaccine "administration date" during reporting period-----SUBTRACT-----COUNT immunization events WHERE "vaccine code" is a measles containing vaccine (IMMZ.Z1.DE9) AND "dose number" = 1 AND "status code" = complete AND "administration date" during reporting period</td>
        <td>Number of doses of BCG administered during reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a BCG vaccine (IMMZ.Z1.DE1) AND "status code" = complete AND vaccine "administration date" during reporting period</td>
        <td>Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.25</td>
        <td>Dropout Rate of MCV1 to MCV2 (using Aggregate Calculation4)</td>
        <td>Indicates the aggregate dropout rate of children in the MCV (Measles Containing Vaccine) protocol (those that have received MCV dose 1 but not MCV dose 2).-----The indicator compares the number of administrations of MCV dose 1 minus the number of administration of MCV2 divided by the number of MCV1 vaccinations (MCV1 - MCV2 / MCV1)</td>
        <td>The number of first doses of measles containing vaccine administered during reporting period minus the number of last doses of measles containing vaccine during the report period</td>
        <td>COUNT immunization events WHERE vaccine code (IMMZ.Z1.DE4) is a measles containing vaccine (IMMZ.Z1.DE9) AND "dose number" = 1 AND vaccine "administration date" during reporting period and "status code" = complete-----SUBTRACT-----COUNT immunization events WHERE "vaccine code" is a measles containing vaccine (IMMZ.Z1.DE9) AND "dose number" = 3 and "status code" = complete and vaccine "administration date" during reporting period</td>
        <td>Number of first doses of measles containing vaccine administered during the reporting period.</td>
        <td>COUNT immunization events WHERE "vaccine code" is a measles containing vaccine (IMMZ.Z1.DE9) AND "status code" = complete AND "dose number" = 1 AND vaccine "administration date" during reporting period</td>
        <td>Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.26</td>
        <td>Closed vial wastage rate</td>
        <td>The closed vial wastage rate is used to measure percentage of doses of vaccine which were spoiled during the reporting period due to expiry, freezing, breakage, etc.-----This indicator is used to compare performance of management. Implementers may provide codified reasons for further disaggregation (i.e. monitoring what specifically is causing wastage in the system)</td>
        <td>Number of doses in closed vials of vaccine product that were discarded (for example: expired, vaccine vial monitoring (VVM) state, freezing, breakage, etc.)</td>
        <td>COUNT number of disposed vials of vaccine product.</td>
        <td>Total number of doses vaccine product received and available for use during the reporting period.</td>
        <td>COUNT number of total vials of vaccine product received and available for use.</td>
        <td>Vaccine Code - BCG, OPV, etc.; Type of Spoilage (Broken, Heat Exposure/VVM, Expiry); Facility Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.27</td>
        <td>Open vial wastage rate</td>
        <td>The open vial wastage rate is used to measure the percentage of doses of vaccine that were opened, but discarded due to under-utilization. For example, a 5 dose vile of an antigen may be thrown out after only 2 administrations of the vaccine, indicating an open vial wastage of 3 doses.</td>
        <td>Total number of doses used (starting balance of doses + supplied doses - ending balance doses) minus total number of doses administered to patients.-----Starting Balance = The number of doses available for immunization at the start of day or session.----- Supplied Doses = The number of doses which were received or added to the stock during the day or session.----- Ending Balance = The number of doses which were left at the end of the day or session</td>
        <td>(Starting Balance + Supplied Doses - Ending Balance) - COUNT of persons who were administered the vaccine</td>
        <td>The total number of doses used (i.e. consumed) during the day or vaccination session.</td>
        <td>Starting Balance + Supplied Doses - Ending Balance</td>
        <td>Vaccine (BCG, OPV, etc.); Facility Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.28</td>
        <td>Availability of vaccine stock and supplies</td>
        <td>The proportion of clinics which have had no stock outs for vaccine or injection supplies when they are demanded/required.</td>
        <td>The number of vaccination clinics which had no stock outs for the reporting period (i.e. they were able to fully meet all vaccine demand)</td>
        <td>COUNT of facilities which were able to fulfill all vaccination activities.</td>
        <td>Total number of facilities.</td>
        <td>COUNT all facilities in the region</td>
        <td>Facility Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.29</td>
        <td>Functional status of cold-chain storage equipment</td>
        <td>The proportion of refrigerators which are functional within a clinic.</td>
        <td>The number of functional refrigerators in the clinic.</td>
        <td>COUNT refrigerators which are functional during the reporting period</td>
        <td>The number of refrigerators which are present in the clinic.</td>
        <td>COUNT total refrigerators (regardless of status)</td>
        <td>Facility Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.30</td>
        <td>Adverse Event Following Immunization (AEFI) case rate</td>
        <td>Clinics should report adverse events (reported and confirmed) to the central authority.-----This should be tracked as an aggregate tally (which should indicate the severity, and optionally the manifestation such as rash, vomiting, etc.), with severe cases being reported using case reporting forms, and should include an analysis of whether the AEFI was a direct result (confirmed) of vaccination or not (suspected). Serious cases are those which involved hospitalization, disability, or death.-----Investigation of AEFI events can lead to withdrawal of the vaccine from the market, or inform further guidance on administration of a particular antigen/product.</td>
        <td>Number of persons which have received a vaccine dose, and have reported an adverse event</td>
        <td>COUNT immunization events WHERE reaction detail (IMMZ.G1.DE23) is present AND vaccine "administration date" during reporting period</td>
        <td>The total number of doses administered to patients of the product.</td>
        <td>COUNT number of immunization events WHERE vaccine "administration date" during reporting period</td>
        <td>Vaccine Code - BCG, OPV, etc.; Vaccine Manufacturer; Reaction Severity - Severe, Non-Severe, etc.; Administrative Area; Reaction Manifestation - Rash, Vomiting, etc.</td>
      </tr>
      <tr>
        <td>IMMZ.IND.31</td>
        <td>Immunization session completion rates</td>
        <td>This indicator allows for supervisors to follow-up on planned and completed immunization sessions - which can give an indication of planning, operational or budget issues at a facility.</td>
        <td>The number of conducted immunization sessions performed at the facility.</td>
        <td>COUNT number of vaccination sessions</td>
        <td>The planned number of vaccination sessions for a facility.</td>
        <td>COUNT number of planned sessions</td>
        <td>Facility; Facility Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.56</td>
        <td>Number of healthcare workers vaccinated with a complete COVID-19 primary series (Estimated Denominator)</td>
        <td>The proportion of healthcare workers (as defined by the country) that were vaccinated with a complete COVID-19 primary series (Dose Sequence 1 or 2, depending on the product).</td>
        <td>Number of healthcare workers (as defined by the country) who have received a completed COVID-19 primary series (Dose Sequence 1 or 2, depending on the product) during the reporting period.</td>
        <td>COUNT patients-----AND EXISTS (observation WHERE "valueCodeableConcept.code" is in "healthcare worker roles")-----AND EXISTS (immunization events WHERE "vaccine code" is a COVID-19 vaccine (IMMZ.Z1.DE30) AND "status code" = completed AND vaccine "administration date" during reporting period)</td>
        <td>Estimated total number of healthcare workers----- Country-defined list of healthcare worker roles</td>
        <td>PARAMETER total number of healthcare workers----- PARAMETER healthcare worker roles</td>
        <td>Dose sequence - 1 or 2; Occupation - Healthcare Worker; Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.57</td>
        <td>Number of healthcare workers vaccinated with at least one COVID-19 booster (Estimated Denominator)</td>
        <td>The proportion of healthcare workers (as defined by the country) that were vaccinated with at least one COVID-19 booster (Dose Sequence 2 or 3 depending on the product).</td>
        <td>Number of healthcare workers (as defined by the country) who have received at lease one COVID-19 booster (Dose Sequence 2 or 3, depending on the product) during the reporting period.</td>
        <td>COUNT patients-----AND EXISTS (observation WHERE "valueCodeableConcept.code" is in "healthcare worker roles")-----AND EXISTS (immunization events WHERE "vaccine code" is a COVID-19 vaccine (IMMZ.Z1.DE30) AND "status code" = completed AND "dose number" &gt; 2 AND vaccine "administration date" during reporting period)</td>
        <td>Estimated total number of healthcare workers----- Country-defined list of healthcare worker roles</td>
        <td>PARAMETER total number of healthcare workers----- PARAMETER healthcare worker roles</td>
        <td>Dose sequence - 2 or 3; Occupation - Healthcare Worker; Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.58</td>
        <td>Number of older adults vaccinated with a complete COVID-19 primary series (Estimated Denominator)</td>
        <td>The proportion of older adults (as defined by the country) that were vaccinated with a complete COVID-19 primary series (Dose Sequence 1 or 2, depending on the product).</td>
        <td>Number of older adults (as defined by the country) who have received a completed COVID-19 primary series (Dose Sequence 1 or 2, depending on the product) during the reporting period.</td>
        <td>COUNT patients WHERE patient.age &gt;= "age of older population defined by country"-----AND EXISTS (immunization event WHERE "vaccine code" is a COVID-19 vaccine (IMMZ.Z1.DE30) AND "status code" = completed AND vaccine "administration date" during reporting period)</td>
        <td>Estimated total number of older adults</td>
        <td>PARAMETER total number of older adults----- PARAMETER age of older population defined by country</td>
        <td>Dose sequence - 1 or 2; Age Group - &gt; "age of older population defined by country"; Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.59</td>
        <td>Number of older persons vaccinated with at least one COVID-19 booster (Estimated Denominator)</td>
        <td>The proportion of older adults (as defined by the country) that were vaccinated with at least one COVID-19 booster (Dose Sequence 2 or 3 depending on the product).</td>
        <td>Number of older adults (as defined by the country) who have received at lease one COVID-19 booster (Dose Sequence 2 or 3, depending on the product) during the reporting period.</td>
        <td>COUNT patients WHERE patient.age &gt;= "age of older population defined by country"-----AND EXISTS (immunization event WHERE "vaccine code" is a COVID-19 vaccine (IMMZ.Z1.DE30) AND "status code" = completed AND "dose number" &gt; 2 AND vaccine "administration date" during reporting period)</td>
        <td>Estimated total number of older adults</td>
        <td>PARAMETER total number of older adults----- PARAMETER age of older population defined by country</td>
        <td>Dose sequence - 2 or 3; Age Group - &gt; "age of older population defined by country"; Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.60</td>
        <td>Number of persons vaccinated with a complete COVID-19 primary series (Estimated Denominator)</td>
        <td>The proportion of persons (as defined by the country) that were vaccinated with a complete COVID-19 primary series (Dose Sequence 1 or 2, depending on the product).</td>
        <td>Number of persons (as defined by the country) who have received a completed COVID-19 primary series (Dose Sequence 1 or 2, depending on the product) during the reporting period.</td>
        <td>COUNT patients-----AND EXISTS (immunization event WHERE "vaccine code" is a COVID-19 vaccine (IMMZ.Z1.DE30) AND "status code" = completed AND vaccine "administration date" during reporting period)</td>
        <td>Estimated total population</td>
        <td>PARAMETER total population</td>
        <td>Dose sequence - 1 or 2; Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.61</td>
        <td>Number of persons vaccinated with at least one COVID-19 booster (Estimated Denominator)</td>
        <td>The proportion of persons (as defined by the country) that were vaccinated with at least one COVID-19 booster (Dose Sequence 2 or 3 depending on the product).</td>
        <td>Number of persons (as defined by the country) who have received at lease one COVID-19 booster (Dose Sequence 2 or 3, depending on the product) during the reporting period.</td>
        <td>COUNT patients-----AND EXISTS (immunization event WHERE "vaccine code" is a COVID-19 vaccine (IMMZ.Z1.DE30) AND "status code" = completed AND "dose number" &gt; 2 AND vaccine "administration date" during reporting period)</td>
        <td>Estimated total population</td>
        <td>PARAMETER total population</td>
        <td>Dose sequence - 2 or 3; Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.62</td>
        <td>Number of persons living in areas in need of humanitarian assistance that were vaccinated with a complete COVID-19 primary series (Estimated Denominator)</td>
        <td>The proportion of persons living in areas in need of humanitarian assistance (as defined by the country) that were vaccinated with a complete COVID-19 primary series (Dose Sequence 1 or 2, depending on the product).</td>
        <td>Number of persons living in areas in need of humanitarian assistance (as defined by the country) who have received a completed COVID-19 primary series (Dose Sequence 1 or 2, depending on the product) during the reporting period.</td>
        <td>COUNT patients-----AND EXISTS (immunization event WHERE "vaccine code" is a COVID-19 vaccine (IMMZ.Z1.DE30) AND "status code" = completed AND vaccine "administration location" is in "locations in need of humanitarian assistance" AND vaccine "administration date" during reporting period)</td>
        <td>Estimated total number of persons living in areas in need of humanitarian assistance----- Estimated locations in need of humanitarian assistance</td>
        <td>PARAMETER total number of persons living in areas in need of humanitarian assistance----- PARAMETER locations in need of humanitarian assistance</td>
        <td>Dose sequence - 1 or 2; Administrative Area</td>
      </tr>
      <tr>
        <td>IMMZ.IND.63</td>
        <td>Number of persons living in areas in need of humanitarian assistance that were vaccinated with at least one COVID-19 booster (Estimated Denominator)</td>
        <td>The proportion of persons living in areas in need of humanitarian assistance (as defined by the country) that were vaccinated with at least one COVID-19 booster (Dose Sequence 2 or 3 depending on the product).</td>
        <td>Number of persons living in areas in need of humanitarian assistance (as defined by the country) who have received at lease one COVID-19 booster (Dose Sequence 2 or 3, depending on the product) during the reporting period.</td>
        <td>COUNT patients-----AND EXISTS (immunization event WHERE "vaccine code" is a COVID-19 vaccine (IMMZ.Z1.DE30) AND "status code" = completed vaccine "administration location" is in "locations in need of humanitarian assistance" AND "dose number" &gt; 2 AND vaccine "administration date" during reporting period)</td>
        <td>Estimated total number of persons living in areas in need of humanitarian assistance----- Estimated locations in need of humanitarian assistance</td>
        <td>PARAMETER total number of persons living in areas in need of humanitarian assistance----- PARAMETER locations in need of humanitarian assistance</td>
        <td>Dose sequence - 2 or 3; Administrative Area</td>
      </tr>
      <tr>
        <td colspan="3">Indicators Using Computed / Actual Denominators (based on computed Immunization Recommendations)</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>IMMZ.IND.32</td>
        <td>Immunization coverage for BCG (Computed Denominator)</td>
        <td>Compares the administered doses of BCG vaccine with the actual number of registered, surviving infants expressed as a percentage.</td>
        <td>Number of registered patients administered BCG during reporting period</td>
        <td>COUNT patients WHERE "date of birth" during reporting period-----AND EXISTS (immunization event WHERE "vaccine code" is BCG vaccine (IMMZ.Z1.DE1) AND vaccine "administration date" during reporting period AND "status code" = complete)</td>
        <td>Number of registered, surviving infants born during reporting period.</td>
        <td>COUNT patients WHERE "date of birth" during reporting period AND not deceased5.</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.33</td>
        <td>Immunization coverage for DTP containing vaccines (Computed Denominator)</td>
        <td>Compares the administered doses of a DTP containing vaccine with the registered number of surviving infants expressed as a percentage.</td>
        <td>Number of patients administered DTP containing vaccines during reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a DTP vaccine (IMMZ.Z1.DE24) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of registered, surviving infants whose age is less than 12 months during reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Dose Number - 1, 2, or 3; Age Group - &lt; 1 year or &gt;1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.34</td>
        <td>Immunization coverage for non-birth dose HepB containing vaccines (Computed Denominator)</td>
        <td>Compares the administered non-birth doses of HebB containing vaccines with the number of registered, surviving infants expressed as a percentage.</td>
        <td>Number of patients administered a non-birth dose of Hepatitis B component vaccine during reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased-----AND EXISTS (immunization event WHERE vaccine code (IMMZ.G1.DE4) is a HepB vaccine (IMMZ.Z1.DE6) AND "status code" = complete AND vaccine "administration date" during reporting period AND "dose number" &gt; 0)</td>
        <td>Number of registered, surviving infants whose ages is less than 12 months during reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Dose Sequence - 1, 2, or 3; Age Group - &lt;1 year or &gt; 1year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.35</td>
        <td>Immunization coverage for inactivated polio containing vaccine (Computed Denominator)</td>
        <td>Compares the administered doses of inactive polio containing vaccines with the number of registered surviving infants expressed as a percentage.</td>
        <td>Number of patients administered an Inactivated Polio Vaccine during the reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is an Inactivated Polio Vaccine (IMMZ.Z1.DE25) AND "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of registered, surviving infants.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Dose sequence - 1, 2, or 3; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.36</td>
        <td>Immunization coverage for Measles containing vaccine (Computed Denominator)</td>
        <td>Compares the administered doses of measles containing vaccines with the number of registered surviving infants.</td>
        <td>Number of patient administered a Measles component vaccine during the reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5-----AND EXISTS (immunization event WHERE "vaccine code" is a Measles vaccine (IMMZ.Z1.DE9) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of registered, surviving infants.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Dose Sequence - 1, 2; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.37</td>
        <td>Immunization coverage for HPV (Computed Denominator)</td>
        <td>Compares the administered doses of HPV vaccines with the number of patients which have an immunization recommendation for HPV vaccine</td>
        <td>Number of patients administered an HPV vaccine during the reporting period.</td>
        <td>COUNT patients WHERE not deceased5-----AND EXISTS (immunization event WHERE "vaccine code" is an HPV vaccine (IMMZ.Z1.DE7) and "status code" = complete AND vaccination "administration date" during reporting period)</td>
        <td>Number of immunization recommendations for HPV vaccine during reporting period.</td>
        <td>COUNT patients WHERE not deceased5-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is HPV vaccine (IMMZ.Z1.DE7) and vaccine "administration date" during reporting period)</td>
        <td>Dose Sequence - 1, 2, or 3; Age Group - &lt;= 9 years, 9 - 14 years, &gt;= 15 years; Administrative Area-----Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.38</td>
        <td>Immunization coverage for Meningococcal containing vaccine (Computed Denominator)</td>
        <td>Compares the administered doses of a meningococcal containing vaccine with the number of registered surviving infants.</td>
        <td>Number of administrations of vaccines containing an Meningococcal component during reporting period</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a Meningococcal vaccine (IMMZ.Z1.DE10) AND "status code" = complete AND "administration date" during reporting period)</td>
        <td>Number of registered, surviving infants.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Dose Sequence - 1 or 2; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.39</td>
        <td>Immunization coverage for Pneumococcal containing vaccine (Computed Denominator)</td>
        <td>Compares the administered doses of a pneumococcal containing vaccine with the number of registered surviving infants expressed as a percentage.</td>
        <td>Number of administrations of vaccines containing an Pneumococcal component during the reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5-----AND EXISTS (immunization event WHERE "vaccine code" is a Pneumococcal vaccine (IMMZ.Z1.DE13) AND "status code" = complete AND "administration date" during reporting period)</td>
        <td>Number of registered, surviving infants.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Dose Sequence - 1, 2, or 3; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.40</td>
        <td>Immunization coverage for Haemophilus containing vaccine (Computed Denominator)</td>
        <td>Compares the administered doses of haemophilus containing vaccine with the registered number of surviving infants, expressed as a percentage .</td>
        <td>Number of administrations of vaccines containing an Haemophilus component during the reporting period.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a Haemophilus vaccine (IMMZ.Z1.DE4) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of registered, surviving infants.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.41</td>
        <td>Immunization coverage for Rotavirus containing vaccines (Computed Denominator)</td>
        <td>Compares the administered doses of rotavirus containing vaccine with the number of registered children (under 2) expressed as a percentage</td>
        <td>Number of administrations of vaccines containing a rotavirus component during reporting period.</td>
        <td>COUNT patients WHERE age &lt; 2 years AND not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a Rotavirus vaccine (IMMZ.Z1.DE16) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of non-deceased children under 2 years of age.</td>
        <td>COUNT patients WHERE age &lt; 2 years AND not deceased5</td>
        <td>Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.42</td>
        <td>Immunization coverage for Rubella containing vaccines (Computed Denominator)</td>
        <td>Compares the administered doses of rubella containing vaccine (RCV) with the number of immunization recommendations for rubella containing vaccines expressed as a percentage.</td>
        <td>Number of administrations of vaccines containing a Rubella component during reporting period</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a RCV vaccine (IMMZ.Z1.DE17) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of immunization recommendations for RCV vaccines due during reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is RCV vaccine (IMMZ.Z1.DE17) and vaccine "administration date" during reporting period)</td>
        <td>Age Group - &lt; 9 months, 9 - 18 months, 18 months - 15 years, &gt; 15 years; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.43</td>
        <td>Immunization coverage for Varicella vaccinations (Computed Denominator)</td>
        <td>Compares the administered doses of varicella containing vaccine with the number of immunization recommendations for varicella vaccines expressed as a percentage.</td>
        <td>Number of administrations of vaccines containing a varicella component during reporting period</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a Varicella vaccine (IMMZ.Z1.DE22) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of immunization recommendations for varicella vaccines due during reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is Varicella vaccine (IMMZ.Z1.DE22) and vaccine "administration date" during reporting period)</td>
        <td>Dose Sequence - 1 or 2; Age Group - &lt; 12 months, 12 - 18 months, 18 - 36 months, 36 months - 12 years, &gt; 12 years; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.44</td>
        <td>Immunization coverage for Diphtheria containing vaccine boosters (Computed Denominator)</td>
        <td>Compares the administered booster doses (4, 5, 6) for diphtheria containing vaccine with the number of immunization recommendations for boosters of diphtheria containing vaccines expressed as a percentage.</td>
        <td>Number of administrations of booster vaccines containing a diphtheria component during the reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a Diphtheria vaccine (IMMZ.Z1.DE3) and "status code" = complete AND vaccine "administration date" during reporting period AND "dose number" &gt; 3)</td>
        <td>Number of immunization recommendations for diphtheria boosters (doses &gt; 3) due during reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is a Diphtheria vaccine (IMMZ.Z1.DE3) AND vaccine "administration date" during reporting period AND "dose number" &gt; 3)</td>
        <td>Dose Sequence - 4, 5, 6; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.45</td>
        <td>Immunization coverage for Pertussis containing vaccine boosters (Computed Denominator)</td>
        <td>Compares the administered booster dose of pertussis containing vaccine (dose 4) with the number of immunization recommendations for boosters of pertussis containing vaccines expressed as a percentage.</td>
        <td>Number of administrations of booster vaccine containing a pertussis component during the reporting period</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a Pertussis vaccine (IMMZ.Z1.DE12) and "status code" = complete AND vaccine "administration date" during reporting period AND "dose number" &gt; 3)</td>
        <td>Number of immunization recommendations for pertussis boosters (doses &gt; 3) due during reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is a Pertussis vaccine (IMMZ.Z1.DE12) AND vaccine "administration date" during reporting period AND "dose number" &gt; 3)</td>
        <td>Dose Sequence - 4, 5, 6; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.46</td>
        <td>Immunization coverage for Tetanus containing vaccine boosters (Computed Denominator)</td>
        <td>Compares the administered booster dose of tetanus containing vaccines (doses 4, 5, 6) with the number of immunization recommendations for boosters of tetanus containing vaccines expressed as a percentage.</td>
        <td>Number of administrations of booster containing tetanus component during the reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a Tetanus vaccine (IMMZ.Z1.DE19) and "status code" = complete AND vaccine "administration date" during reporting period AND "dose number" &gt; 3)</td>
        <td>Number of immunization recommendations for tetanus boosters (doses &gt; 3) due during reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is a Tetanus vaccine (IMMZ.Z1.DE19) AND vaccine "administration date" during reporting period AND "dose number" &gt; 3)</td>
        <td>Dose Sequence - 4, 5, 6; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.47</td>
        <td>Immunization coverage for Yellow Fever vaccine (Computed Denominator)</td>
        <td>Compares the administered dose of yellow fever vaccine with the number of registered surviving infants expressed as a percentage.</td>
        <td>Number of administrations of vaccines containing a yellow fever component during reporting period.</td>
        <td>COUNT patients WHERE not deceased5 AND age &lt; 12 months-----AND EXISTS (immunization event WHERE "vaccine code" is a Yellow Fever vaccine (IMMZ.Z1.DE23) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of registered, surviving infants.</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.48</td>
        <td>Immunization coverage for Japanese encephalitis vaccines (Computed Denominator)</td>
        <td>Compares the administered doses of Japanese encephalitis vaccines with the number of immunization recommendations for Japanese encephalitis expressed as a percentage.</td>
        <td>Number of administrations of vaccines which contain Japanese encephalitis component during the reporting period.</td>
        <td>COUNT patients WHERE not deceased5 AND age &lt; 12 months -----AND EXISTS (immunization event WHERE "vaccine code" is a Japanese Encephalitis Fever vaccine (IMMZ.Z1.DE8) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of immunization recommendations for Japanese encephalitis containing vaccines dur during reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is a Japanese Encephalitis vaccine (IMMZ.Z1.DE8) AND vaccine "administration date" during reporting period AND "dose number" &gt; 3)</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.49</td>
        <td>Immunization coverage for Typhoid vaccines (Computed Denominator)</td>
        <td>Compares the administered doses of Typhoid vaccines with the number of immunization recommendations for typhoid vaccines expressed as a percentage.</td>
        <td>Number of administrations of vaccines which contain a typhoid component during the reporting period.</td>
        <td>COUNT patients WHERE not deceased5 AND age &lt; 12 months-----AND EXISTS (immunization event WHERE "vaccine code" is a Typhoid vaccine (IMMZ.Z1.DE21) and "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of immunization recommendations for typhoid vaccines dur during reporting period.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is a Typhoid vaccine (IMMZ.Z1.DE21) AND vaccine "administration date" during reporting period AND "dose number" &gt; 3)</td>
        <td>Dose Sequence - 1, 2, or 3; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.50</td>
        <td>Dropout Rate of DTP1 to DTP3 (using Individual's Immunization Status4)</td>
        <td>Indicates the number of individuals which have dropped out of the DTP (diphtheria, tetanus and pertussis) containing vaccine protocol (i.e. individuals which have received DTP1 but not DTP3).-----This indicator is computed by counting the number of individuals who have received the first dose of DTP (dose 1) containing vaccine but not the last dose of DTP (are past-due for dose 3) with the individuals who were expected to have completed the vaccination protocol.</td>
        <td>Number of children who have received DTP1 (numerator) before the reporting period who should have received (via scheduling logic) DTP dose 3 during the reporting period, however did not receive DTP dose 3.</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization events WHERE "vaccine code" is DTP containing vaccine (IMMZ.Z1.DE24) AND "dose number" = 1 AND "status code" = complete AND vaccine "administration date" before reporting period)----- AND EXISTS (immunization recommendation6 WHERE "vaccine code" is DTP vaccine (IMMZ.Z1.DE24) AND "dose number" = 3 AND vaccine "administration date" during reporting period)-----AND NOT EXISTS (immunization event WHERE "vaccine code" is DTP containing vaccine (IMMZ.Z1.DE24) AND "dose number" = 3 AND "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of children who have received DTP containing vaccine dose 1 and are past due for DTP dose 3</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a DTP containing vaccine (IMMZ.Z1.DE24) AND "dose number" = 1 AND "status code" = complete AND vaccine "administration date" before reporting period)----- AND EXISTS (immunization recommendation6 WHERE "vaccine code" is a DTP vaccine (IMMZ.Z1.DE24) AND "dose number" = 3 AND vaccine "administration date" during reporting period)</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.51</td>
        <td>Dropout Rate of BCG to MCV1 (using Individual's Immunization Status4)</td>
        <td>Indicates the number of individuals which received a BCG dose at birth (or early life) yet did not receive the first dose of a measles containing vaccine (MCV).-----This indicator is computed by counting the number of individuals who have received a BCG dose, who have not received a MCV1 dose (are past due for MCV1) with the children who were expected to have received BCG and MCV1.</td>
        <td>Number of children who have received BCG prior to the reporting period who should have received MCV dose 1 by the reporting period, however did not receive an MCV 1 dose (i.e. are past due for their MCV1)</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization events WHERE "vaccine code" is BCG containing vaccine (IMMZ.Z1.DE1) "status code" = complete AND vaccine "administration date" before reporting period)----- AND EXISTS (immunization recommendation6 WHERE "vaccine code" is MCV vaccine (IMMZ.Z1.DE9) AND "dose number" = 1 AND vaccine "administration date" during reporting period)----- AND NOT EXISTS (immunization event WHERE "vaccine code" is MCV vaccine (IMMZ.Z1.DE9) AND "dose number" = 1 AND "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of children who have received BCG vaccine and are to receive dose 1 of MCV1 (via scheduling)</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a BCG vaccine (IMMZ.Z1.DE1) AND "status code" = complete AND vaccine "administration date" before reporting period)----- AND EXISTS (immunization recommendation6 WHERE "vaccine code" is a MCV vaccine (IMMZ.Z1.DE9) AND "dose number" = 1 AND vaccine "administration date" during reporting period)</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.52</td>
        <td>Dropout Rate of MCV1 to MCV2 (using Individual's Immunization Status4)</td>
        <td>Indicates the number of individuals which have dropped out of the measles containing vaccine (MCV) protocol.-----The indicator counts the number of individuals who have received a MCV1, yet have not received the final dose of measles containing vaccine (are past due of MCV2) with the individuals who were expected to have received MCV1 and MCV2</td>
        <td>Number of children who have received MCV dose 1 prior to the reporting period who were expected to receive MCV dose 2 during the reporting period however did not receive MCV 2 (i.e. are past-due for MCV2)</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization events WHERE "vaccine code" is MCV vaccine (IMMZ.Z1.DE9) AND "dose number" = 1 AND "status code" = complete AND vaccine "administration date" before reporting period)----- AND EXISTS (immunization recommendation6 WHERE "vaccine code" is DTP vaccine (IMMZ.Z1.DE24) AND "dose number" = 3 AND vaccine "administration date" during reporting period)----- AND NOT EXISTS (immunization event WHERE vaccine code (IMMZ.G1.DE9) is MCV vaccine (IMMZ.Z1.DE9) AND "dose number" = 2 AND "status code" = complete AND vaccine "administration date" during reporting period)</td>
        <td>Number of children who have received MCV dose 1 and were expected to have received MCV dose 2</td>
        <td>COUNT patients WHERE not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is a MCV vaccine (IMMZ.Z1.DE9) AND "dose number" = 1 AND "status code" = complete AND vaccine "administration date" before reporting period)-----AND EXISTS (immunization recommendation6 WHERE "vaccine code" is a MCV vaccine (IMMZ.Z1.DE9) AND "dose number" = 2 AND vaccine "administration date" during reporting period)</td>
        <td>Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.53</td>
        <td>Immunization coverage for HepB containing vaccines birth dose (computed denominator)</td>
        <td>Compares the administered doses of Hepatitus B containing vaccine given at birth (dose sequence 0) with the actual number of live births.</td>
        <td>Number of administrations of vaccines containing a Hepatitis B component at birth (dose sequence 0)</td>
        <td>COUNT patients WHERE "date of birth" during reporting period AND not deceased-----AND EXISTS (immunization event WHERE vaccine code (IMMZ.G1.DE4) is a HepB vaccine (IMMZ.Z1.DE6) AND "status code" = complete AND vaccine "administration date" during reporting period AND "dose number" = 0)</td>
        <td>Number of registered surviving newborns</td>
        <td>COUNT patients WHERE "date of birth" during reporting period AND not deceased5</td>
        <td>Age Group - &lt;24 hrs of Birth, &lt; 2 weeks; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.54</td>
        <td>Immunization coverage for oral polio containing vaccine birth doses (computed denominator)</td>
        <td>Compares the administered doses of oral polio containing vaccines (OPV) given at birth (dose sequence 0) with the number of live births. This indicator should only be used in contexts where an OPV birth dose is administered.</td>
        <td>Number of administrations of vaccinations using an oral polio vaccine (OPV) where the dose sequence is 0 (birth dose) during the reporting period.</td>
        <td>COUNT patients WHERE "date of birth" during reporting period AND not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is an Oral Polio vaccine (IMMZ.Z1.DE26) AND "status code" = complete AND vaccine "administration date" during reporting period AND "dose number" = 0)</td>
        <td>Number of registered surviving newborns</td>
        <td>COUNT patients WHERE "date of birth" during reporting period AND not deceased5</td>
        <td>Age Group - &lt;24 hrs of Birth, &lt; 2 weeks; Administrative Area; Sex</td>
      </tr>
      <tr>
        <td>IMMZ.IND.55</td>
        <td>Immunization coverage for non-birth doses of oral polio containing vaccine (computed denominator)</td>
        <td>Compares the administered doses of oral polio containing vaccines (OPV) which are non-birth doses (dose sequence &gt; 0) with the estimated number of surviving infants expressed as a percentage.</td>
        <td>Number of administrations of vaccinations using an oral polio vaccine (OPV) where the dose sequence &gt; 0, during the reporting period.</td>
        <td>COUNT patients WHERE "date of birth" during reporting period AND not deceased-----AND EXISTS (immunization event WHERE "vaccine code" is an Oral Polio vaccine (IMMZ.Z1.DE26) AND "status code" = complete AND vaccine "administration date" during reporting period AND "dose number" &gt; 0)</td>
        <td>Number of registered surviving infants</td>
        <td>COUNT patients WHERE age &lt; 12 months AND not deceased5</td>
        <td>Dose Sequence - 1, 2, or 3; Age Group - &lt; 1 year or &gt; 1 year; Administrative Area; Sex</td>
      </tr>
    </tbody>
  </table>
</div>
