# Codings - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Data Models and Exchange**](data-models-and-exchange.md)
* **Codings**

## Codings

Note that the terminologies included in this implementation guide will need to be updated, because the ideal mechanism for distribution (as an expression) is not currently supported by the content logical definition constructs available in the FHIR ValueSet resource and all known implementations of it. Before use in a production environment, ensure you have the latest value sets based on the definitions for each value set (as defined in the inclusion/exclusion criteria for each one).

The following terminology artifacts are included for this implementation guide:

### CodeSystems

* [IMMZ.C CodeSystem for Data Elements](CodeSystem-IMMZ.C.md)

* [IMMZ.D CodeSystem for Data Elements](CodeSystem-IMMZ.D.md)

* [IMMZ.Ex CodeSystem for Example values for required data elements](CodeSystem-IMMZ.Ex.md)

* [IMMZ.I CodeSystem for Data Elements](CodeSystem-IMMZ.I.md)

* [IMMZ.Z CodeSystem for Data Elements](CodeSystem-IMMZ.Z.md)

* [IMMZDAK CodeSystem for Decision Tables](CodeSystem-IMMZDAK.md)

### ValueSets

* [IMMZ.C.DE5 ValueSet for Sex](ValueSet-IMMZ.C.DE5.md)

* [IMMZ.D.DE1 ValueSet for Immunization event status](ValueSet-IMMZ.D.DE1.md)

* [IMMZ.D.DE107 ValueSet for Type of reaction](ValueSet-IMMZ.D.DE107.md)

* [IMMZ.D.DE115 ValueSet for Reaction outcome](ValueSet-IMMZ.D.DE115.md)

* [IMMZ.D.DE126 ValueSet for Disease targeted](ValueSet-IMMZ.D.DE126.md)

* [IMMZ.D.DE156 ValueSet for Immunization recommendation status](ValueSet-IMMZ.D.DE156.md)

* [IMMZ.D.DE161 ValueSet for Potential contraindications](ValueSet-IMMZ.D.DE161.md)

* [IMMZ.D.DE18 ValueSet for Vaccine brand](ValueSet-IMMZ.D.DE18.md)

* [IMMZ.D.DE19 ValueSet for Vaccine type](ValueSet-IMMZ.D.DE19.md)

* [IMMZ.D.DE204 ValueSet for HIV status](ValueSet-IMMZ.D.DE204.md)

* [IMMZ.D.DE212 ValueSet for Type of poliovirus dose](ValueSet-IMMZ.D.DE212.md)

* [IMMZ.D.DE216 ValueSet for Type of JE dose](ValueSet-IMMZ.D.DE216.md)

* [IMMZ.D.DE220 ValueSet for Type of TBE dose](ValueSet-IMMZ.D.DE220.md)

* [IMMZ.D.DE225 ValueSet for Type of typhoid dose](ValueSet-IMMZ.D.DE225.md)

* [IMMZ.D.DE229 ValueSet for Type of cholera dose](ValueSet-IMMZ.D.DE229.md)

* [IMMZ.D.DE23 ValueSet for Vaccine manufacturer](ValueSet-IMMZ.D.DE23.md)

* [IMMZ.D.DE232 ValueSet for Type of meningococcal dose](ValueSet-IMMZ.D.DE232.md)

* [IMMZ.D.DE237 ValueSet for Type of hepatitis A dose](ValueSet-IMMZ.D.DE237.md)

* [IMMZ.D.DE241 ValueSet for Dengue serostatus](ValueSet-IMMZ.D.DE241.md)

* [IMMZ.D.DE243 ValueSet for Type of TB infection test performed](ValueSet-IMMZ.D.DE243.md)

* [IMMZ.D.DE246 ValueSet for TB infection test result](ValueSet-IMMZ.D.DE246.md)

* [IMMZ.D.DE25 ValueSet for Vaccine market authorization holder](ValueSet-IMMZ.D.DE25.md)

* [IMMZ.D.DE254 ValueSet for Type of hepatitis B dose](ValueSet-IMMZ.D.DE254.md)

* [IMMZ.D.DE258 ValueSet for Type of dose](ValueSet-IMMZ.D.DE258.md)

* [IMMZ.D.DE5 ValueSet for Reason vaccine was not administered](ValueSet-IMMZ.D.DE5.md)

* [IMMZ.D.DE86 ValueSet for Client education and counselling on immunization](ValueSet-IMMZ.D.DE86.md)

* [IMMZ.D.DE95 ValueSet for Reaction manifestation](ValueSet-IMMZ.D.DE95.md)

* [IMMZ.D.Observation ValueSet for Sex](ValueSet-IMMZ.D.Observation.md)

* [IMMZ.I.DE30 ValueSet for Disaggregation group](ValueSet-IMMZ.I.DE30.md)

* [IMMZ.I.DE48 ValueSet for Closed stock discarded type](ValueSet-IMMZ.I.DE48.md)

* [IMMZ.Z.DE1 ValueSet for BCG vaccines](ValueSet-IMMZ.Z.DE1.md)

* [IMMZ.Z.DE10 ValueSet for Meningococcal vaccines](ValueSet-IMMZ.Z.DE10.md)

* [IMMZ.Z.DE11 ValueSet for Mumps-containing vaccines](ValueSet-IMMZ.Z.DE11.md)

* [IMMZ.Z.DE12 ValueSet for Pertussis-containing vaccines](ValueSet-IMMZ.Z.DE12.md)

* [IMMZ.Z.DE13 ValueSet for Pneumococcal vaccines](ValueSet-IMMZ.Z.DE13.md)

* [IMMZ.Z.DE14 ValueSet for Poliovirus-containing vaccines](ValueSet-IMMZ.Z.DE14.md)

* [IMMZ.Z.DE15 ValueSet for Rabies vaccines](ValueSet-IMMZ.Z.DE15.md)

* [IMMZ.Z.DE16 ValueSet for Rotavirus vaccines](ValueSet-IMMZ.Z.DE16.md)

* [IMMZ.Z.DE17 ValueSet for Rubella-containing vaccines](ValueSet-IMMZ.Z.DE17.md)

* [IMMZ.Z.DE18 ValueSet for Seasonal influenza vaccines](ValueSet-IMMZ.Z.DE18.md)

* [IMMZ.Z.DE19 ValueSet for Tetanus-containing vaccines](ValueSet-IMMZ.Z.DE19.md)

* [IMMZ.Z.DE2 ValueSet for Cholera vaccines](ValueSet-IMMZ.Z.DE2.md)

* [IMMZ.Z.DE20 ValueSet for TBE vaccines](ValueSet-IMMZ.Z.DE20.md)

* [IMMZ.Z.DE21 ValueSet for Typhoid vaccines](ValueSet-IMMZ.Z.DE21.md)

* [IMMZ.Z.DE22 ValueSet for Varicella-containing vaccines](ValueSet-IMMZ.Z.DE22.md)

* [IMMZ.Z.DE23 ValueSet for Yellow fever vaccines](ValueSet-IMMZ.Z.DE23.md)

* [IMMZ.Z.DE24 ValueSet for DTP-containing vaccines](ValueSet-IMMZ.Z.DE24.md)

* [IMMZ.Z.DE25 ValueSet for Dengue vaccines](ValueSet-IMMZ.Z.DE25.md)

* [IMMZ.Z.DE26 ValueSet for COVID-19 vaccines](ValueSet-IMMZ.Z.DE26.md)

* [IMMZ.Z.DE27 ValueSet for Malaria vaccines](ValueSet-IMMZ.Z.DE27.md)

* [IMMZ.Z.DE28 ValueSet for Tetanus and diphtheria-containing vaccines](ValueSet-IMMZ.Z.DE28.md)

* [IMMZ.Z.DE29 ValueSet for Pentavalent vaccines](ValueSet-IMMZ.Z.DE29.md)

* [IMMZ.Z.DE3 ValueSet for Diphtheria-containing vaccines](ValueSet-IMMZ.Z.DE3.md)

* [IMMZ.Z.DE30 ValueSet for Oral polio vaccines](ValueSet-IMMZ.Z.DE30.md)

* [IMMZ.Z.DE31 ValueSet for Inactivated polio vaccines](ValueSet-IMMZ.Z.DE31.md)

* [IMMZ.Z.DE32 ValueSet for Measles and rubella-containing vaccines](ValueSet-IMMZ.Z.DE32.md)

* [IMMZ.Z.DE33 ValueSet for Tetanus and diphtheria-containing vaccines (DT)](ValueSet-IMMZ.Z.DE33.md)

* [IMMZ.Z.DE34 ValueSet for Tetanus and diphtheria-containing vaccines (Td)](ValueSet-IMMZ.Z.DE34.md)

* [IMMZ.Z.DE4 ValueSet for Hib-containing vaccines](ValueSet-IMMZ.Z.DE4.md)

* [IMMZ.Z.DE5 ValueSet for Hepatitis A-containing vaccines](ValueSet-IMMZ.Z.DE5.md)

* [IMMZ.Z.DE6 ValueSet for Hepatitis B-containing vaccines](ValueSet-IMMZ.Z.DE6.md)

* [IMMZ.Z.DE7 ValueSet for HPV vaccines](ValueSet-IMMZ.Z.DE7.md)

* [IMMZ.Z.DE8 ValueSet for JE vaccines](ValueSet-IMMZ.Z.DE8.md)

* [IMMZ.Z.DE9 ValueSet for Measles-containing vaccines](ValueSet-IMMZ.Z.DE9.md)

* [IMMZ.Z.LiveAttenuated ValueSet for live attenuated vaccines](ValueSet-IMMZ.Z.LiveAttenuated.md)

* [IMMZ.Z.VS ValueSet for vaccine types](ValueSet-IMMZ.Z.VS.md)

* [IMMZD18SBCG ValueSet for Decision Table](ValueSet-IMMZD18SBCGVS.md)

* [IMMZD18SCholeraWCRBSVaccine2Doses ValueSet for Decision Table](ValueSet-IMMZD18SCholeraWCRBSVaccine2DosesVS.md)

* [IMMZD18SCholeraWCRBSVaccine3Doses ValueSet for Decision Table](ValueSet-IMMZD18SCholeraWCRBSVaccine3DosesVS.md)

* [IMMZD18SCholeraWCVaccines ValueSet for Decision Table](ValueSet-IMMZD18SCholeraWCVaccinesVS.md)

* [IMMZD18SDTPDelayedOrInterruptedSeries ValueSet for Decision Table](ValueSet-IMMZD18SDTPDelayedOrInterruptedSeriesVS.md)

* [IMMZD18SDTPOnTimeStart ValueSet for Decision Table](ValueSet-IMMZD18SDTPOnTimeStartVS.md)

* [IMMZD18SDTPPregnancyStartingWith3Doses ValueSet for Decision Table](ValueSet-IMMZD18SDTPPregnancyStartingWith3DosesVS.md)

* [IMMZD18SDTPPregnancyStartingWith4Doses ValueSet for Decision Table](ValueSet-IMMZD18SDTPPregnancyStartingWith4DosesVS.md)

* [IMMZD18SDengue3DosesWithPreVaccinationScreening ValueSet for Decision Table](ValueSet-IMMZD18SDengue3DosesWithPreVaccinationScreeningVS.md)

* [IMMZD18SHPV2Doses ValueSet for Decision Table](ValueSet-IMMZD18SHPV2DosesVS.md)

* [IMMZD18SHPVSingleDose ValueSet for Decision Table](ValueSet-IMMZD18SHPVSingleDoseVS.md)

* [IMMZD18SHepatitisAInactivatedHAV1Dose ValueSet for Decision Table](ValueSet-IMMZD18SHepatitisAInactivatedHAV1DoseVS.md)

* [IMMZD18SHepatitisAInactivatedHAV2Doses ValueSet for Decision Table](ValueSet-IMMZD18SHepatitisAInactivatedHAV2DosesVS.md)

* [IMMZD18SHepatitisALiveAttenuatedHAV1Dose ValueSet for Decision Table](ValueSet-IMMZD18SHepatitisALiveAttenuatedHAV1DoseVS.md)

* [IMMZD18SHib2DosesWithBoosterDose ValueSet for Decision Table](ValueSet-IMMZD18SHib2DosesWithBoosterDoseVS.md)

* [IMMZD18SHib3Doses ValueSet for Decision Table](ValueSet-IMMZD18SHib3DosesVS.md)

* [IMMZD18SHib3DosesWithBoosterDose ValueSet for Decision Table](ValueSet-IMMZD18SHib3DosesWithBoosterDoseVS.md)

* [IMMZD18SJEInactivatedVeroCellDerivedVaccine ValueSet for Decision Table](ValueSet-IMMZD18SJEInactivatedVeroCellDerivedVaccineVS.md)

* [IMMZD18SJELiveAttenuatedVaccine ValueSet for Decision Table](ValueSet-IMMZD18SJELiveAttenuatedVaccineVS.md)

* [IMMZD18SJELiveRecombinantVaccine ValueSet for Decision Table](ValueSet-IMMZD18SJELiveRecombinantVaccineVS.md)

* [IMMZD18SMalaria ValueSet for Decision Table](ValueSet-IMMZD18SMalariaVS.md)

* [IMMZD18SMeaslesLowTransmission ValueSet for Decision Table](ValueSet-IMMZD18SMeaslesLowTransmissionVS.md)

* [IMMZD18SMeaslesMCVDose0 ValueSet for Decision Table](ValueSet-IMMZD18SMeaslesMCVDose0VS.md)

* [IMMZD18SMeaslesOngoingTransmission ValueSet for Decision Table](ValueSet-IMMZD18SMeaslesOngoingTransmissionVS.md)

* [IMMZD18SMeaslesSupplementaryDose ValueSet for Decision Table](ValueSet-IMMZD18SMeaslesSupplementaryDoseVS.md)

* [IMMZD18SMeningococcalMenAConjugateVaccine1Dose ValueSet for Decision Table](ValueSet-IMMZD18SMeningococcalMenAConjugateVaccine1DoseVS.md)

* [IMMZD18SMeningococcalMenAConjugateVaccine2Doses ValueSet for Decision Table](ValueSet-IMMZD18SMeningococcalMenAConjugateVaccine2DosesVS.md)

* [IMMZD18SMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table](ValueSet-IMMZD18SMeningococcalMonovalentMenCConjugateVaccineVS.md)

* [IMMZD18SMeningococcalPolysaccharideVaccines ValueSet for Decision Table](ValueSet-IMMZD18SMeningococcalPolysaccharideVaccinesVS.md)

* [IMMZD18SMeningococcalQuadrivalentConjugateVaccines1Dose ValueSet for Decision Table](ValueSet-IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseVS.md)

* [IMMZD18SMeningococcalQuadrivalentConjugateVaccines2Doses ValueSet for Decision Table](ValueSet-IMMZD18SMeningococcalQuadrivalentConjugateVaccines2DosesVS.md)

* [IMMZD18SMumps ValueSet for Decision Table](ValueSet-IMMZD18SMumpsVS.md)

* [IMMZD18SPneumococcal2DosesWithBoosterDose ValueSet for Decision Table](ValueSet-IMMZD18SPneumococcal2DosesWithBoosterDoseVS.md)

* [IMMZD18SPneumococcal3Doses ValueSet for Decision Table](ValueSet-IMMZD18SPneumococcal3DosesVS.md)

* [IMMZD18SPolioBOPVPlusIPV ValueSet for Decision Table](ValueSet-IMMZD18SPolioBOPVPlusIPVVS.md)

* [IMMZD18SPolioBirthDose ValueSet for Decision Table](ValueSet-IMMZD18SPolioBirthDoseVS.md)

* [IMMZD18SPolioIPVOnly ValueSet for Decision Table](ValueSet-IMMZD18SPolioIPVOnlyVS.md)

* [IMMZD18SPolioSequentialIPVbOPV ValueSet for Decision Table](ValueSet-IMMZD18SPolioSequentialIPVbOPVVS.md)

* [IMMZD18SRabies ValueSet for Decision Table](ValueSet-IMMZD18SRabiesVS.md)

* [IMMZD18SRotavirus ValueSet for Decision Table](ValueSet-IMMZD18SRotavirusVS.md)

* [IMMZD18SRubellaHighIncidence ValueSet for Decision Table](ValueSet-IMMZD18SRubellaHighIncidenceVS.md)

* [IMMZD18SRubellaLowIncidence ValueSet for Decision Table](ValueSet-IMMZD18SRubellaLowIncidenceVS.md)

* [IMMZD18STBEEnceVir ValueSet for Decision Table](ValueSet-IMMZD18STBEEnceVirVS.md)

* [IMMZD18STBEEncepur ValueSet for Decision Table](ValueSet-IMMZD18STBEEncepurVS.md)

* [IMMZD18STBEFSMEImmun ValueSet for Decision Table](ValueSet-IMMZD18STBEFSMEImmunVS.md)

* [IMMZD18STBETBEMoscow ValueSet for Decision Table](ValueSet-IMMZD18STBETBEMoscowVS.md)

* [IMMZD18STyphoidTCV ValueSet for Decision Table](ValueSet-IMMZD18STyphoidTCVVS.md)

* [IMMZD18STyphoidTy21a ValueSet for Decision Table](ValueSet-IMMZD18STyphoidTy21aVS.md)

* [IMMZD18STyphoidViPS ValueSet for Decision Table](ValueSet-IMMZD18STyphoidViPSVS.md)

* [IMMZD18SVaricella1Dose ValueSet for Decision Table](ValueSet-IMMZD18SVaricella1DoseVS.md)

* [IMMZD18SVaricella2Doses ValueSet for Decision Table](ValueSet-IMMZD18SVaricella2DosesVS.md)

* [IMMZD18SYellowfeverYellowFever ValueSet for Decision Table](ValueSet-IMMZD18SYellowfeverYellowFeverVS.md)

* [IMMZD2DTBCG ValueSet for Decision Table](ValueSet-IMMZD2DTBCGVS.md)

* [IMMZD2DTCholeraWCRBSVaccine2Doses ValueSet for Decision Table](ValueSet-IMMZD2DTCholeraWCRBSVaccine2DosesVS.md)

* [IMMZD2DTCholeraWCRBSVaccine3Doses ValueSet for Decision Table](ValueSet-IMMZD2DTCholeraWCRBSVaccine3DosesVS.md)

* [IMMZD2DTCholeraWCVaccines ValueSet for Decision Table](ValueSet-IMMZD2DTCholeraWCVaccinesVS.md)

* [IMMZD2DTDTPDelayedOrInterruptedSeries ValueSet for Decision Table](ValueSet-IMMZD2DTDTPDelayedOrInterruptedSeriesVS.md)

* [IMMZD2DTDTPOnTimeStart ValueSet for Decision Table](ValueSet-IMMZD2DTDTPOnTimeStartVS.md)

* [IMMZD2DTDTPPregnancyStartingWith3Doses ValueSet for Decision Table](ValueSet-IMMZD2DTDTPPregnancyStartingWith3DosesVS.md)

* [IMMZD2DTDTPPregnancyStartingWith4Doses ValueSet for Decision Table](ValueSet-IMMZD2DTDTPPregnancyStartingWith4DosesVS.md)

* [IMMZD2DTDTPPregnancy ValueSet for Decision Table](ValueSet-IMMZD2DTDTPPregnancyVS.md)

* [IMMZD2DTDengue3DosesWithPreVaccinationScreening ValueSet for Decision Table](ValueSet-IMMZD2DTDengue3DosesWithPreVaccinationScreeningVS.md)

* [IMMZD2DTDengue3DosesWithoutPreVaccinationScreening ValueSet for Decision Table](ValueSet-IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningVS.md)

* [IMMZD2DTHPV2Doses ValueSet for Decision Table](ValueSet-IMMZD2DTHPV2DosesVS.md)

* [IMMZD2DTHPVSingleDose ValueSet for Decision Table](ValueSet-IMMZD2DTHPVSingleDoseVS.md)

* [IMMZD2DTHepatitisAInactivatedHAV1Dose ValueSet for Decision Table](ValueSet-IMMZD2DTHepatitisAInactivatedHAV1DoseVS.md)

* [IMMZD2DTHepatitisAInactivatedHAV2Doses ValueSet for Decision Table](ValueSet-IMMZD2DTHepatitisAInactivatedHAV2DosesVS.md)

* [IMMZD2DTHepatitisALiveAttenuatedHAV1Dose ValueSet for Decision Table](ValueSet-IMMZD2DTHepatitisALiveAttenuatedHAV1DoseVS.md)

* [IMMZD2DTHib2DosesWithBoosterDose ValueSet for Decision Table](ValueSet-IMMZD2DTHib2DosesWithBoosterDoseVS.md)

* [IMMZD2DTHib3Doses ValueSet for Decision Table](ValueSet-IMMZD2DTHib3DosesVS.md)

* [IMMZD2DTHib3DosesWithBoosterDose ValueSet for Decision Table](ValueSet-IMMZD2DTHib3DosesWithBoosterDoseVS.md)

* [IMMZD2DTJEInactivatedVeroCellDerivedVaccine ValueSet for Decision Table](ValueSet-IMMZD2DTJEInactivatedVeroCellDerivedVaccineVS.md)

* [IMMZD2DTJELiveAttenuatedVaccine ValueSet for Decision Table](ValueSet-IMMZD2DTJELiveAttenuatedVaccineVS.md)

* [IMMZD2DTJELiveRecombinantVaccine ValueSet for Decision Table](ValueSet-IMMZD2DTJELiveRecombinantVaccineVS.md)

* [IMMZD2DTMalaria ValueSet for Decision Table](ValueSet-IMMZD2DTMalariaVS.md)

* [IMMZD2DTMeaslesLowTransmission ValueSet for Decision Table](ValueSet-IMMZD2DTMeaslesLowTransmissionVS.md)

* [IMMZD2DTMeaslesMCVDose0 ValueSet for Decision Table](ValueSet-IMMZD2DTMeaslesMCVDose0VS.md)

* [IMMZD2DTMeaslesOngoingTransmission ValueSet for Decision Table](ValueSet-IMMZD2DTMeaslesOngoingTransmissionVS.md)

* [IMMZD2DTMeaslesSupplementaryDose ValueSet for Decision Table](ValueSet-IMMZD2DTMeaslesSupplementaryDoseVS.md)

* [IMMZD2DTMeningococcalMenAConjugateVaccine1Dose ValueSet for Decision Table](ValueSet-IMMZD2DTMeningococcalMenAConjugateVaccine1DoseVS.md)

* [IMMZD2DTMeningococcalMenAConjugateVaccine2Doses ValueSet for Decision Table](ValueSet-IMMZD2DTMeningococcalMenAConjugateVaccine2DosesVS.md)

* [IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine ValueSet for Decision Table](ValueSet-IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineVS.md)

* [IMMZD2DTMeningococcalPolysaccharideVaccines ValueSet for Decision Table](ValueSet-IMMZD2DTMeningococcalPolysaccharideVaccinesVS.md)

* [IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1Dose ValueSet for Decision Table](ValueSet-IMMZD2DTMeningococcalQuadrivalentConjugateVaccines1DoseVS.md)

* [IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2Doses ValueSet for Decision Table](ValueSet-IMMZD2DTMeningococcalQuadrivalentConjugateVaccines2DosesVS.md)

* [IMMZD2DTMumps ValueSet for Decision Table](ValueSet-IMMZD2DTMumpsVS.md)

* [IMMZD2DTPneumococcal2DosesWithBoosterDose ValueSet for Decision Table](ValueSet-IMMZD2DTPneumococcal2DosesWithBoosterDoseVS.md)

* [IMMZD2DTPneumococcal3Doses ValueSet for Decision Table](ValueSet-IMMZD2DTPneumococcal3DosesVS.md)

* [IMMZD2DTPolioBOPVPlusIPV ValueSet for Decision Table](ValueSet-IMMZD2DTPolioBOPVPlusIPVVS.md)

* [IMMZD2DTPolioBirthDose ValueSet for Decision Table](ValueSet-IMMZD2DTPolioBirthDoseVS.md)

* [IMMZD2DTPolioIPVOnly ValueSet for Decision Table](ValueSet-IMMZD2DTPolioIPVOnlyVS.md)

* [IMMZD2DTPolioSequentialIPVbOPV ValueSet for Decision Table](ValueSet-IMMZD2DTPolioSequentialIPVbOPVVS.md)

* [IMMZD2DTRabies ValueSet for Decision Table](ValueSet-IMMZD2DTRabiesVS.md)

* [IMMZD2DTRotavirus ValueSet for Decision Table](ValueSet-IMMZD2DTRotavirusVS.md)

* [IMMZD2DTRubellaHighIncidence ValueSet for Decision Table](ValueSet-IMMZD2DTRubellaHighIncidenceVS.md)

* [IMMZD2DTRubellaLowIncidence ValueSet for Decision Table](ValueSet-IMMZD2DTRubellaLowIncidenceVS.md)

* [IMMZD2DTTBEEnceVir ValueSet for Decision Table](ValueSet-IMMZD2DTTBEEnceVirVS.md)

* [IMMZD2DTTBEEncepur ValueSet for Decision Table](ValueSet-IMMZD2DTTBEEncepurVS.md)

* [IMMZD2DTTBEFSMEImmun ValueSet for Decision Table](ValueSet-IMMZD2DTTBEFSMEImmunVS.md)

* [IMMZD2DTTBETBEMoscow ValueSet for Decision Table](ValueSet-IMMZD2DTTBETBEMoscowVS.md)

* [IMMZD2DTTyphoidTCV ValueSet for Decision Table](ValueSet-IMMZD2DTTyphoidTCVVS.md)

* [IMMZD2DTTyphoidTy21a ValueSet for Decision Table](ValueSet-IMMZD2DTTyphoidTy21aVS.md)

* [IMMZD2DTTyphoidViPS ValueSet for Decision Table](ValueSet-IMMZD2DTTyphoidViPSVS.md)

* [IMMZD2DTVaricella1Dose ValueSet for Decision Table](ValueSet-IMMZD2DTVaricella1DoseVS.md)

* [IMMZD2DTVaricella2Doses ValueSet for Decision Table](ValueSet-IMMZD2DTVaricella2DosesVS.md)

* [IMMZD2DTYellowfeverYellowFever ValueSet for Decision Table](ValueSet-IMMZD2DTYellowfeverYellowFeverVS.md)

* [IMMZD5DTBCGContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTBCGContraindicationsVS.md)

* [IMMZD5DTDTPContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTDTPContraindicationsVS.md)

* [IMMZD5DTDengueContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTDengueContraindicationsVS.md)

* [IMMZD5DTHPVContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTHPVContraindicationsVS.md)

* [IMMZD5DTHepatitisAContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTHepatitisAContraindicationsVS.md)

* [IMMZD5DTHibContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTHibContraindicationsVS.md)

* [IMMZD5DTJEContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTJEContraindicationsVS.md)

* [IMMZD5DTMalariaContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTMalariaContraindicationsVS.md)

* [IMMZD5DTMeaslesContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTMeaslesContraindicationsVS.md)

* [IMMZD5DTMeningococcalContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTMeningococcalContraindicationsVS.md)

* [IMMZD5DTMumpsContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTMumpsContraindicationsVS.md)

* [IMMZD5DTPneumococcalContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTPneumococcalContraindicationsVS.md)

* [IMMZD5DTPolioContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTPolioContraindicationsVS.md)

* [IMMZD5DTRabiesContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTRabiesContraindicationsVS.md)

* [IMMZD5DTRotavirusContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTRotavirusContraindicationsVS.md)

* [IMMZD5DTRubellaContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTRubellaContraindicationsVS.md)

* [IMMZD5DTTBEContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTTBEContraindicationsVS.md)

* [IMMZD5DTTyphoidContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTTyphoidContraindicationsVS.md)

* [IMMZD5DTVaricellaContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTVaricellaContraindicationsVS.md)

* [IMMZD5DTYellowFeverContraindications ValueSet for Decision Table](ValueSet-IMMZD5DTYellowFeverContraindicationsVS.md)

