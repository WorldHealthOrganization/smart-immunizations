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
        <th>Activity ID.Activity Name</th>
        <th>Tab Name</th>
        <th>Decision-support table (DT), Contraindications table &amp; Scheduling logic table (S) ID</th>
        <th>Table description</th>
        <th>Reference/Source</th>
      </tr>
    </thead>
    <tbody style="text-align: left; vertical-align: top">
    <tr>
      <td rowspan="139">IMMZ.D2 Determine required vaccinations</td>
      <td rowspan="3">BCG</td>
      <td>IMMZ.D2.DT.BCG</td>
      <td>Recommended vaccinations for Bacille Calmette-Guérin (BCG) as per WHO recommendations</td>
      <td rowspan="3">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.BCG contraindications</td>
      <td>Performing a contraindication check for Bacille Calmette-Guérin (BCG) vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.BCG schedule</td>
      <td>Recommended vaccination schedule for Bacille Calmette-Guérin (BCG) as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="7">Hepatitis B</td>
      <td>IMMZ.D2.DT.Hepatitis B.3 doses</td>
      <td>Recommended vaccinations for hepatitis B following the 3-dose schedule as per WHO recommendations</td>
      <td rowspan="7">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Hepatitis B.4 doses</td>
      <td>Recommended vaccinations for hepatitis B following the 4-dose schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Hepatitis B.Delayed start</td>
      <td>Recommended vaccinations for hepatitis B following the delayed start schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Hepatitis B contraindications</td>
      <td>Performing a contraindication check for hepatitis B vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hepatitis B.3-dose schedule</td>
      <td>Recommended 3-dose vaccination schedule for hepatitis B as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hepatitis B.4-dose schedule</td>
      <td>Recommended 4-dose vaccination schedule for hepatitis B as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hepatitis B.Delayed start schedule</td>
      <td>Recommended delayed start vaccination schedule for hepatitis B as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="9">Polio</td>
      <td>IMMZ.D2.DT.Polio.Birth dose</td>
      <td>Recommended administration of the birth dose for polio as per WHO recommendations</td>
      <td rowspan="9">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Polio.bOPV plus IPV</td>
      <td>Recommended vaccinations for polio following the bOPV plus IPV schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Polio.Sequential IPV–bOPV</td>
      <td>Recommended vaccinations for polio following the sequential IPV–bOPV schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Polio.IPV-only</td>
      <td>Recommended vaccinations for polio following the IPV-only schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Polio contraindications</td>
      <td>Performing a contraindication check for polio vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Polio.Birth dose schedule</td>
      <td>Recommended birth dose vaccination schedule for polio as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Polio.bOPV plus IPV schedule</td>
      <td>Recommended bOPV plus IPV vaccination schedule for polio as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule</td>
      <td>Recommended sequential IPV–bOPV vaccination schedule for polio as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Polio.IPV-only schedule</td>
      <td>Recommended IPV-only vaccination schedule for polio as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="10">DTP</td>
      <td>IMMZ.D2.DT.DTP.On-time start</td>
      <td>Recommended vaccinations for diphtheria-tetanus-pertussis (DTP) following the on-time start schedule as per WHO recommendations</td>
      <td rowspan="10">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.DTP.Delayed or interrupted series</td>
      <td>Recommended vaccinations for diphtheria-tetanus-pertussis (DTP) following the delayed start or interrupted series schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.DTP.Pregnancy</td>
      <td>Determine whether diphtheria-tetanus-pertussis (DTP) vaccinations are needed for pregnant women as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses</td>
      <td>Recommended vaccinations for diphtheria and tetanus following the schedule outlined for pregnant women who have received three childhood diphtheria-tetanus-pertussis (DTP) doses as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses</td>
      <td>Recommended vaccinations for diphtheria and tetanus following the schedule outlined for pregnant women who have received four childhood diphtheria-tetanus-pertussis (DTP) doses as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.DTP contraindications</td>
      <td>Performing a contraindication check for diphtheria-tetanus-pertussis (DTP) vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.DTP.On-time start schedule</td>
      <td>Recommended on-time start (at ≤ 12 months of age) vaccination schedule for Diphtheria-tetanus-pertussis (DTP) as per WHO recommendations </td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.DTP.Delayed or interrupted schedule</td>
      <td>Recommended delayed or interrupted series vaccination schedule for Diphtheria-tetanus-pertussis (DTP) as per WHO recommendations </td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule</td>
      <td>Recommended vaccination schedule for pregnant women who received 3 childhood diphtheria-tetanus-pertussis (DTP) doses as per WHO recommendations </td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.DTP.Pregnancy starting with 4 doses schedule</td>
      <td>Recommended vaccination schedule for pregnant women who received 4 childhood diphtheria-tetanus-pertussis (DTP) doses as per WHO recommendations </td>
    </tr>
    <tr>
      <td rowspan="7">Hib</td>
      <td>IMMZ.D2.DT.Hib.3 doses</td>
      <td>Recommended vaccinations for Haemophilus influenzae type B (Hib) following the 3 primary doses without a booster schedule as per WHO recommendations</td>
      <td rowspan="7">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Hib.3 doses with booster dose</td>
      <td>Recommended vaccinations for Haemophilus influenzae type B (Hib) following the 3 primary doses with a booster schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Hib.2 doses with booster dose</td>
      <td>Recommended vaccinations for Haemophilus influenzae type B (Hib) following the 2 primary doses with a booster schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Hib contraindications</td>
      <td>Performing a contraindication check for Haemophilus influenzae type b (Hib) vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hib.3 doses schedule</td>
      <td>Recommended 3 primary doses without a booster vaccination schedule for Haemophilus influenzae type b (Hib) as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hib.3 doses with booster dose schedule</td>
      <td>Recommended 3 primary doses with a booster vaccination schedule for Haemophilus influenzae type b (Hib) as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hib.2 doses with booster dose schedule</td>
      <td>Recommended 2 primary doses with a booster vaccination schedule for Haemophilus influenzae type b (Hib) as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="5">Pneumococcal</td>
      <td>IMMZ.D2.DT.Pneumococcal.2 doses with booster dose</td>
      <td>Recommended vaccinations for pneumococcal following the 2 primary doses with a booster schedule as per WHO recommendations</td>
      <td rowspan="5">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Pneumococcal.3 doses</td>
      <td>Recommended vaccinations for pneumococcal following the 3 primary doses schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Pneumococcal contraindications</td>
      <td>Performing a contraindication check for pneumococcal vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule</td>
      <td>Recommended 2 primary doses with a booster vaccination schedule for pneumococcal as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Pneumococcal.3 doses schedule</td>
      <td>Recommended 3 primary doses vaccination schedule for pneumococcal as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="3">Rotavirus </td>
      <td>IMMZ.D2.DT.Rotavirus</td>
      <td>Recommended vaccinations for rotavirus as per WHO recommendations</td>
      <td rowspan="3">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Rotavirus contraindications</td>
      <td>Performing a contraindication check for rotavirus vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Rotavirus schedule</td>
      <td>Recommended vaccination schedule for rotavirus as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="9">Measles</td>
      <td>IMMZ.D2.DT.Measles.Ongoing transmission</td>
      <td>Recommended vaccinations for measles following the ongoing transmission schedule as per WHO recommendations</td>
      <td rowspan="9">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Measles.Low transmission</td>
      <td>Recommended vaccinations for measles following the low levels of measles transmission schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Measles.MCV dose 0</td>
      <td>Recommended administration of dose 0 for measles as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Measles.Supplementary dose</td>
      <td>Recommended administration of supplementary dose for measles as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Measles contraindications</td>
      <td>Performing a contraindication check for measles vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Measles.Ongoing transmission schedule</td>
      <td>Recommended ongoing transmission vaccination schedule for measles as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Measles.Low transmission schedule</td>
      <td>Recommended low levels of measles transmission vaccination schedule for measles as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Measles.MCV dose 0 schedule</td>
      <td>Recommended measles dose 0 vaccination schedule for measles as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Measles.Supplementary dose schedule</td>
      <td>Recommended measles supplementary dose vaccination schedule for measles as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="5">Rubella</td>
      <td>IMMZ.D2.DT.Rubella.High incidence</td>
      <td>Recommended vaccinations for rubella following the high incidence of measles schedule as per WHO recommendations</td>
      <td rowspan="5">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Rubella.Low incidence</td>
      <td>Recommended vaccinations for rubella following the low incidence of measles schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Rubella contraindications</td>
      <td>Performing a contraindication check for rubella vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Rubella.High incidence schedule</td>
      <td>Recommended vaccination schedule for rubella for countries with high incidence of measles as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Rubella.Low incidence schedule</td>
      <td>Recommended vaccination schedule for rubella for countries with low incidence of measles as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="5">HPV</td>
      <td>IMMZ.D2.DT.HPV.2 doses</td>
      <td>Recommended vaccinations for human papillomavirus (HPV) following the 2-dose schedule as per WHO recommendations</td>
      <td rowspan="5">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.HPV.Single dose</td>
      <td>Recommended vaccinations for human papillomavirus (HPV) following the single-dose schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.HPV contraindications</td>
      <td>Performing a contraindication check for human papillomavirus (HPV) vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.HPV.2-dose schedule</td>
      <td>Recommended 2-dose vaccination schedule for human papillomavirus (HPV) as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.HPV.Single-dose schedule</td>
      <td>Recommended single-dose vaccination schedule for human papillomavirus (HPV) as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="7">JE</td>
      <td>IMMZ.D2.DT.JE.Inactivated vero cell-derived vaccine</td>
      <td>Recommended vaccinations for Japanese encephalitis (JE) following the inactivated vero cell-derived vaccine schedule as per WHO recommendations</td>
      <td rowspan="7">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.JE.Live attenuated vaccine</td>
      <td>Recommended vaccinations for Japanese encephalitis (JE) following the live attenuated vaccine schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.JE.Live recombinant vaccine</td>
      <td>Recommended vaccinations for Japanese encephalitis (JE) following the live recombinant vaccine schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.JE contraindications</td>
      <td>Performing a contraindication check for Japanese encephalitis (JE) vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.JE.Inactivated vero cell-derived vaccine schedule</td>
      <td>Recommended inactivated vero cell-derived vaccination schedule for Japanese encephalitis (JE) as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.JE.Live attenuated vaccine schedule</td>
      <td>Recommended live attenuated vaccination schedule for Japanese encephalitis (JE) as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.JE.Live recombinant vaccine schedule</td>
      <td>Recommended live recombinant vaccination schedule for Japanese encephalitis (JE) as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="3">Yellow fever</td>
      <td>IMMZ.D2.DT.Yellow fever</td>
      <td>Recommended vaccinations for yellow fever as per WHO recommendations</td>
      <td rowspan="3">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Yellow fever contraindications</td>
      <td>Performing a contraindication check for yellow fever vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Yellow fever schedule</td>
      <td>Recommended vaccination schedule for yellow fever as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="9">TBE</td>
      <td>IMMZ.D2.DT.TBE.FSME-Immun</td>
      <td>Recommended vaccinations for tick-borne encephalitis (TBE) following the FSME-Immun schedule as per WHO recommendations</td>
      <td rowspan="9">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.TBE.Encepur</td>
      <td>Recommended vaccinations for tick-borne encephalitis (TBE) following thw Encepur schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.TBE.TBE-Moscow</td>
      <td>Recommended vaccinations for tick-borne encephalitis (TBE) following the TBE-Moscow schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.TBE.EnceVir</td>
      <td>Recommended vaccinations for tick-borne encephalitis (TBE) following the EnceVir schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.TBE contraindications</td>
      <td>Performing a contraindication check for tick-borne encephalitis (TBE) vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.TBE.FSME-Immun schedule</td>
      <td>Recommended FSME-Immun vaccination schedule for tick-borne encephalitis (TBE) as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.TBE.Encepur schedule</td>
      <td>Recommended Encepur vaccination schedule for tick-borne encephalitis (TBE) as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.TBE.TBE-Moscow schedule</td>
      <td>Recommended TBE-Moscow vaccination schedule for tick-borne encephalitis (TBE) as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.TBE.EnceVir</td>
      <td>Recommended EnceVir vaccination schedule for tick-borne encephalitis (TBE) as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="7">Typhoid</td>
      <td>IMMZ.D2.DT.Typhoid.TCV</td>
      <td>Recommended vaccinations for typhoid following the typhoid conjugate vaccine (TCV) schedule as per WHO recommendations</td>
      <td rowspan="7">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Typhoid.ViPS</td>
      <td>Recommended vaccinations for typhoid following the unconjugated Vi polysaccharide (ViPS) schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Typhoid.Ty21a</td>
      <td>Recommended vaccinations for typhoid following the live attenuated Ty21a vaccine schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Typhoid contraindications</td>
      <td>Performing a contraindication check for typhoid vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Typhoid.TCV schedule</td>
      <td>Recommended typhoid conjugate vaccine (TCV) vaccination schedule for typhoid as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Typhoid.ViPS schedule</td>
      <td>Recommended unconjugated Vi polysaccharide (ViPS) vaccination schedule for typhoid as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Typhoid.Ty21a schedule</td>
      <td>Recommended live attenuated Ty21a vaccination schedule for typhoid as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="9">Cholera</td>
      <td>IMMZ.D2.DT.Cholera.WC vaccines</td>
      <td>Recommended vaccinations for cholera following the WC vaccines schedule as per WHO recommendations</td>
      <td rowspan="9">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses</td>
      <td>Recommended vaccinations for cholera following the WC-rBS vaccine 3 doses schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses</td>
      <td>Recommended vaccinations for cholera following the WC-rBS vaccine 2 doses schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Cholera contraindications</td>
      <td>Performing a contraindication check for cholera vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Cholera.WC vaccines schedule</td>
      <td>Recommended WC vaccination schedule for cholera as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Cholera.WC-rBS vaccine 3 dose schedule</td>
      <td>Recommended WC-rBS vaccine 3 doses vaccination schedule for cholera as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Cholera.WC-rBS vaccine booster dose for 2-5 years schedule</td>
      <td>Recommended WC-rBS vaccine booster dose for 2-5 years vaccination schedule for cholera as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Cholera.WC-rBS vaccine 2 dose schedule</td>
      <td>Recommended WC-rBS vaccine 2 dose vaccination schedule for cholera as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Cholera.WC-rBS vaccine booster dose more than 6 years schedule</td>
      <td>Recommended WC-rBS vaccine booster dose more than 6 years vaccination schedule for cholera as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="13">Meningococcal</td>
      <td>IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose</td>
      <td>Recommended vaccinations for meningococcal following the MenA conjugate vaccine 1-dose schedule as per WHO recommendations</td>
      <td rowspan="13">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 2 doses</td>
      <td>Recommended vaccinations for meningococcal following the MenA conjugate vaccine 2-dose schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine </td>
      <td>Recommended vaccinations for meningococcal following the monovalent MenC conjugate vaccine schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 1 dose</td>
      <td>Recommended vaccinations for meningococcal following the quadrivalent conjugate vaccines 1-dose schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Meningococcal.Quadrivalent conjugate vaccines 2 doses</td>
      <td>Recommended vaccinations for meningococcal following the quadrivalent conjugate vaccines 2-dose schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines</td>
      <td>Recommended vaccinations for meningococcal following the polysaccharide vaccines schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Meningococcal contraindications</td>
      <td>Performing a contraindication check for meningococcal vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule</td>
      <td>Recommended MenA conjugate vaccine 1-dose vaccination schedule for meningococcal as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule</td>
      <td>Recommended MenA conjugate vaccine 2-dose vaccination schedule for meningococcal as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule</td>
      <td>Recommended monovalent MenC conjugate vaccination schedule for meningococcal as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule</td>
      <td>Recommended quadrivalent conjugate vaccines 1-dose vaccination schedule for meningococcal as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 2-dose schedule</td>
      <td>Recommended quadrivalent conjugate vaccines 2-dose vaccination schedule for meningococcal as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule</td>
      <td>Recommended polysaccharide vaccination schedule for meningococcal as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="7">Hepatitis A</td>
      <td>IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses</td>
      <td>Recommended vaccinations for hepatitis A following the inactivated HAV 2-dose schedule as per WHO recommendations</td>
      <td rowspan="7">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose</td>
      <td>Recommended vaccinations for hepatitis A following the inactivated HAV 1-dose schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose</td>
      <td>Recommended vaccinations for hepatitis A following the live attenuated HAV 1-dose schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Hepatitis A contraindications</td>
      <td>Performing a contraindication check for hepatitis A vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule</td>
      <td>Recommended inactivated HAV 2-dose vaccination schedule for hepatitis A as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule</td>
      <td>Recommended inactivated HAV 1-dose vaccination schedule for hepatitis A as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule</td>
      <td>Recommended live attenuated HAV 1-dose vaccination schedule for hepatitis A as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="3">Rabies</td>
      <td>IMMZ.D2.DT.Rabies</td>
      <td>Recommended vaccinations for rabies as per WHO recommendations</td>
      <td rowspan="3">WHO recommendations for routine immunization - summary tables (March 2023).</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Rabies contraindications</td>
      <td>Performing a contraindication check for rabies vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Rabies schedule</td>
      <td>Recommended vaccination schedule for rabies as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="4">Dengue</td>
      <td>IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening</td>
      <td>Recommended vaccinations for dengue following the 3-dose schedule with pre-vaccination screening as per WHO recommendations</td>
      <td rowspan="4">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening</td>
      <td>Recommended vaccinations for dengue following the 3-dose schedule without pre-vaccination screening as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Dengue contraindications</td>
      <td>Performing a contraindication check for dengue vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Dengue schedule</td>
      <td>Recommended vaccination schedule for dengue as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="3">Malaria</td>
      <td>IMMZ.D2.DT.Malaria</td>
      <td>Recommended vaccinations for malaria as per WHO recommendations</td>
      <td rowspan="3">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Malaria contraindications</td>
      <td>Performing a contraindication check for malaria vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Malaria schedule</td>
      <td>Recommended vaccination schedule for malaria as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="3">Mumps</td>
      <td>IMMZ.D2.DT.Mumps</td>
      <td>Recommended vaccinations for mumps as per WHO recommendations</td>
      <td rowspan="3">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Mumps contraindications</td>
      <td>Performing a contraindication check for mumps vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Mumps schedule</td>
      <td>Recommended vaccination schedule for mumps as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="3">Seasonal influenza</td>
      <td>IMMZ.D2.DT.Seasonal influenza</td>
      <td>Recommended vaccinations for seasonal influenza as per WHO recommendations</td>
      <td rowspan="3">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Seasonal influenza contraindications</td>
      <td>Performing a contraindication check for seasonal influenza vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Seasonal influenza schedule</td>
      <td>Recommended vaccination schedule for seasonal influenza as per WHO recommendations</td>
    </tr>
    <tr>
      <td rowspan="5">Varicella</td>
      <td>IMMZ.D2.DT.Varicella.1 dose</td>
      <td>Recommended vaccinations for varicella following the 1-dose schedule as per WHO recommendations</td>
      <td rowspan="5">WHO recommendations for routine immunization - summary tables (March 2023). </td>
    </tr>
    <tr>
      <td>IMMZ.D2.DT.Varicella.2 doses</td>
      <td>Recommended vaccinations for varicella following the 2-dose schedule as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D5.DT.Varicella contraindications</td>
      <td>Performing a contraindication check for varicella vaccines as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Varicella.1-dose schedule</td>
      <td>Recommended 1-dose vaccination schedule for varicella as per WHO recommendations</td>
    </tr>
    <tr>
      <td>IMMZ.D18.S.Varicella.2-dose schedule</td>
      <td>Recommended 2-dose vaccination schedule for varicella as per WHO recommendations</td>
    </tr>
    </tbody>
  </table>
</div>

### Decision Logic Tables

#### IMMZ.D2.DT.Measles.Ongoing transmission - Measles example - DRAFT
Business rule:	Determine if the client is due for a measles vaccination according to the national immunization protocol
Trigger: IMMZ.D2 Determine required vaccination(s) if any

<div style=" width: 100%; height: 500px; overflow: scroll;">
  <table border="1" class="dataframe table table-striped table-bordered">
    <thead style="position: sticky;top: 0;z-index: 100;background-color: white;">
      <tr style="text-align: left;">
      <th colspan="7">
        <strong>Countries with ongoing transmission in which the risk of measles mortality remains high</strong>
      </th>
      </tr>
    </thead>
   <tbody>
    <tr>
      <td>
        <strong>Number of measles primary series doses administered</strong>
        <br> Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series")
      </td>
      <td>
        <strong>Client's age</strong>
        <br> Today's date - "Date of birth"
      </td>
      <td>
        <strong>Time passed since a live vaccine was administered</strong>
        <br> Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE)
      </td>
      <td>
        <strong>Output</strong>
      </td>
      <td>
        <strong>Guidance displayed to health worker</strong>
      </td>
      <td>
        <strong>Annotations</strong>
      </td>
      <td>
        <strong>Reference(s)</strong>
      </td>
    </tr>
    <tr>
      <td>-</td>
      <td>
        <strong>Client's age is less than 9 months</strong>
        <br> Today's date - "Date of birth" &lt; 9 'month'
      </td>
      <td>-</td>
      <td>
        <strong>Client is not due for MCV1</strong>
        <br>
        <br> "Immunization recommendation status" = 'Not due'
      </td>
      <td>Should not vaccinate client as client's age is less than 9 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV1.</td>
      <td>In countries with ongoing transmission in which the risk of measles mortality remains high, MCV1 should be given at age 9 months. <br>
        <br> As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time before or after measles vaccination without interference in the response to either vaccine.
      </td>
      <td rowspan="7">WHO recommendations for routine immunization - summary tables (March 2023)</td>
    </tr>
    <tr>
      <td rowspan="2">
        <strong>No measles primary series doses were administered</strong>
        <br> Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 0
      </td>
      <td rowspan="2">
        <strong>Client's age is more than or equal to 9 months</strong>
        <br> Today's date - "Date of birth" ≥ 9 'month'
      </td>
      <td>
        <strong>No live vaccine was administered in the last 4 weeks</strong>
        <br> Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 'week'
      </td>
      <td>
        <strong>Client is due for MCV1</strong>
        <br> "Immunization recommendation status" = 'Due'
      </td>
      <td>Should vaccinate client for MCV1 as no measles doses were administered, client is within appropriate age range and no live vaccine administered in the last 4 weeks. Check for contraindications.</td>
      <td></td>
    </tr>
    <tr>
      <td>
        <strong>Live vaccine was administered in the last 4 weeks</strong>
        <br> Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) &lt; 4 'week'
      </td>
      <td>
        <strong>Client is not due for MCV1</strong>
        <br> "Immunization recommendation status" = 'Not due'
      </td>
      <td>Should not vaccinate client for MCV1 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV1.</td>
      <td></td>
    </tr>
    <tr>
      <td rowspan="3">
        <strong>MCV1 was administered </strong>
        <br> Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 1
      </td>
      <td>
        <strong>Client's age is less than 15 months </strong>
        <br> Today's date - "Date of birth" &lt; 15 'month'
      </td>
      <td>-</td>
      <td>
        <strong>Client is not due for MCV2</strong>
        <br> "Immunization recommendation status" = 'Not due'
      </td>
      <td>Should not vaccinate client for MCV2 as client's age is less than 15 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV2.</td>
      <td>In countries with ongoing transmission in which the risk of measles mortality remains high, MCV2 should be given between 15-18 months. The minimum interval between MCV1 and MCV2 is 4 weeks. <br>
        <br> As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time before or after measles vaccination without interference in the response to either vaccine
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        <strong>Client's age is more than or equal to 15 months </strong>
        <br> Today's date - "Date of birth" ≥ 15 'month'
      </td>
      <td>No live vaccine was administered in the last 4 weeks <br> Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 'week' </td>
      <td>
        <strong>Client is due for MCV2</strong>
        <br> "Immunization recommendation status" = 'Due'
      </td>
      <td>Should vaccinate client for MCV2 as client is within appropriate age range and no live vaccine administered in the last 4 weeks. Check for contraindications.</td>
      <td></td>
    </tr>
    <tr>
      <td>
        <strong>Live vaccine was administered in the last 4 weeks </strong>
        <br> Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) &lt; 4 'week'
      </td>
      <td>
        <strong>Client is not due for MCV2</strong>
        <br> "Immunization recommendation status" = 'Not due'
      </td>
      <td>Should not vaccinate client for MCV2 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV2.</td>
      <td></td>
    </tr>
    <tr>
      <td>
        <strong>MCV2 was administered</strong>
        <br> Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 2
      </td>
      <td>-</td>
      <td>-</td>
      <td>
        <strong>Measles primary series is complete </strong>
        <br> "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles containing vaccines")
      </td>
      <td>Measles primary series is complete. Two measles primary series doses were administered. Check if a measles supplementary dose is appropriate for the client.</td>
      <td>An additional dose of MCV should be administered to HIV-infected children receiving HAART following immune reconstitution. If CD4+ T lymphocyte counts are monitored, an additional dose of MCV should be administered when immune reconstitution has been achieved, e.g. when the CD4+ T lymphocyte count reaches 20–25%. Where CD4+ T lymphocyte monitoring is not available, children should receive an additional dose of MCV 6–12 months after initiation of HAART.</td>
    </tr>
  </tbody>
</table>
</div>

### Scheduling Logic Tables

#### IMMZ.D18.S.Measles.Ongoing transmission schedule - Measles example - DRAFT
IMMZ.D. Administer Vaccine	

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
          <td colspan="11">
            <strong>Schedule for countries with ongoing transmission in which the risk of measles mortality remains high</strong>
          </td>
        </tr>
        <tr>
          <td>MCV dose 1</td>
          <td>Provision of MCV1 from the primary series</td>
          <td>
            <strong>Child's birth</strong>
          </td>
          <td>"Date of birth"</td>
          <td>The client is due for measles dose 1 if the client is at least 9 months</td>
          <td>"Date of birth" + 9 'month'</td>
          <td>To be determined by Member States however there is no recommended overdue date and individuals are always eligible to be vaccinated</td>
          <td>To be determined by Member States however there is no recommended expiration date and individuals are always eligible to be vaccinated</td>
          <td>
            <strong>MCV1 was administered</strong>
            <br> Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 1
          </td>
          <td>-</td>
          <td>WHO recommendations for routine immunization - summary tables (March 2023) <br>
          </td>
        </tr>
        <tr>
          <td>MCV dose 2</td>
          <td>Provision of the MCV2 from the primary series</td>
          <td>
            <strong>MCV1 was administered</strong>
            <br> Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 1
          </td>
          <td>"Date of birth"</td>
          <td>The client is due for measles dose 2 if the client is at least 15 months.</td>
          <td>"Date of birth" + 15 'month'</td>
          <td>To be determined by Member States however there is no recommended overdue date and individuals are always eligible to be vaccinated</td>
          <td>To be determined by Member States however there is no recommended expiration date and individuals are always eligible to be vaccinated</td>
          <td>
            <strong>MCV2 was administered. The primary series has been completed.</strong>
            <br> "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles containing vaccines")
          </td>
          <td>-</td>
          <td>WHO recommendations for routine immunization - summary tables (March 2023) <br>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
