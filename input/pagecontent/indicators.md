### Indicators
The FHIR [Measure](http://www.hl7.org/fhir/measure) is used to describe the indicator in a computable format. The tables below show the data elements and highlight some of the measures those are applied in from this IG. For a complete list of measures, visit the [Artifact Index](artifacts.html)

#### Indicator Table Data Element Descriptions

|Data Element|Description|
|---|---|
|Indicator code|Sequential numbering of the indicator|
|Indicator name|Brief name of the indicator|
|Definition|This is a narrative description of the indicator to provide additional context.|
|Numerator definition|The description of numerator used to calculate the indicator.|
|Numerator computation|The calculation or how to derive this numerator. Any specific data elements noted here should align directly with the individual-level Data Element Name.|
|Denominator definition|The dglossescription of denominator used to calculate the indicator.|
|Denominator computation|The calculation or how to derive this denominator. Any specific data elements noted here should align directly with the individual-level Data Element Name.|
|Disaggregations|Are there any dis-aggregations that you would like to be able to do in order to conduct the necessary analysis?|
|References|If there are any national or global guidelines (e.g. WHO guidelines) that dictate how and why this indicator should be calculated or reported, it should be noted here. If any guidelines or recommendations change, having a clear reference listed would help in updating or restructuring your data.|				

#### Indicator definitions

|Indicator ID|Title|Discussion|Reference| 
|---|---|---|---|
|[IMMZ.IND.1](Measure-measure-IMMZIND01.html)|Immunization coverage for BCG (Estimated Denominator)|Compares the doses of BCG vaccine administered with the estimated number of live births as a percentage.|WHO Immunization Facility Analysis Guide (1) <br/> WHO / UNICEF Joint Reporting Form (3 - element 4010)|
|[IMMZ.IND.2](Measure-measure-IMMZIND02.html)|Immunization coverage for DTP containing vaccines (Estimated Denominator)|Compares the administered doses of a DTP containing vaccine with the estimated number of surviving infants as a percentage.|WHO Immunization Facility Analysis Guide (1)<br/>WHO / UNICEF Joint Reporting Form (3 - element 4040, 4050)|
|[IMMZ.IND.3](Measure-measure-IMMZIND03.html)|Immunization coverage for HepB containing vaccines birth dose (estimated denominator)|Compares the administered doses of Hepatitis B containing vaccine with the estimated number of live births (if dose sequence is 1 or 2) or number of surviving infants (for dose 3 - if given)|WHO / UNICEF Join Reporting Form (3 - element 4030)|
|[IMMZ.IND.4](Measure-measure-IMMZIND04.html)|Immunization coverage for HepB containing vaccines (Estimated Denominator)|Compares the administered doses of Hepatitis B containing vaccine with the estimated number of live births (if dose sequence is 1 or 2) or number of surviving infants (for dose 3 - if given)|WHO / UNICEF Join Reporting Form (3 - element 4030)|
|[IMMZ.IND.5](Measure-measure-IMMZIND05.html)|Immunization coverage for inactivated polio containing vaccine (Estimated Denominator)|Compares the administered doses of inactivated polio containing vaccines (IPV) with the estimated number of surviving infants expressed as a percentage.|WHO Immunization Facility Analysis Guide (1)<br/>WHO / UNICEF Joint Reporting Form (3 - elements 4130 - 4160)|
|[IMMZ.IND.6](Measure-measure-IMMZIND06.html)|Immunization coverage for oral polio containing vaccine (Estimated Denominator)|Compares the administered doses of oral polio containing vaccines (OPV) with the estimated number of surviving infants expressed as a percentage.|WHO Immunization Facility Analysis Guide (1)<br/>WHO / UNICEF Joint Reporting Form (3 - elements 4130 - 4160)|
|[IMMZ.IND.7](Measure-measure-IMMZIND07.html)|Immunization coverage for Measles containing vaccine (Estimated Denominator)|Compares the administered doses of measles containing vaccines (MCV) with the estimated number of surviving infants (if dose 1) or a country supplied denominator (if dose 2) expressed as a percentage. |WHO Immunization Facility Analysis Guide (1)<br/>WHO / UNICEF Joint Reporting Form (3 - elements 4240 and 4260 )|
|[IMMZ.IND.8](Measure-measure-IMMZIND08.html)|Immunization coverage for HPV (Estimated Denominator)|Compares the administered doses of HPV vaccines with the country specified denominator for HPV coverage expressed as a percentage.|WHO Immunization Facility Analysis Guide (1)<br/>WHO / UNICEF Joint Reporting Form (3 - elements 4330, 4340)|
|[IMMZ.IND.9](Measure-measure-IMMZIND09.html)|Immunization coverage for Meningococcal containing vaccine (Estimated Denominator)|Compares the administered doses of meningococcal containing vaccine with the number of estimated surviving infants expressed as a percentage. |WHO Immunization Facility Analysis Guide (1)<br/>WHO / UNICEF Joint Reporting Form (3 - element 4280)|
|[IMMZ.IND.10](Measure-measure-IMMZIND10.html)|Immunization coverage for Pneumococcal containing vaccine (Estimated Denominator)|Compares the administered doses of pneumococcal containing vaccine with the number of surviving infants (with the exception of final dose which is country supplied denominator definition) expressed as a percentage|WHO Immunization Facility Analysis Guide (1)<br/>WHO / UNICEF Joint Reporting Form (3- elements 4190, 4200, 4210)|
