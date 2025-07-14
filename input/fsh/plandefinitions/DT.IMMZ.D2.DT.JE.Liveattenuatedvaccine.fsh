Profile: DT.IMMZ.D2.DT.JE.Liveattenuatedvaccine
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
* insert SGDecisionTable( DT.IMMZ.D2.DT.JE.Liveattenuatedvaccine,0.2.0)

* insert SGDecisionTableCitation("""WHO recommendations for routine immunization – summary tables March 2023 1 """)

* insert SGDecisionTableOutput(DTO.ClientisnotdueforJEvaccination,"Client is not due for JE vaccination","""Live attenuated vaccine: Single dose administered at ≥ 8 months of age.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with JE dose as clients age is less than 8 months. Check for any vaccines due and inform the caregiver of when to come back for the first JE dose. """)
* insert SGDecisionTableOutput(DTO.ClientisdueforJEvaccination,"Client is due for JE vaccination",""" """)
* insert SGDecisionTableGuidance("""Should vaccinate client with JE dose as no JE dose was administered\, client is within the appropriate age range and no live vaccine was administered in last 4 weeks. Check for contraindications. """)
* insert SGDecisionTableOutput(DTO.ClientisnotdueforJEvaccination,"Client is not due for JE vaccination","""Live attenuated vaccine: Single dose administered at ≥8 months of age. As a general rule\, any live vaccine may be given either simultaneously or at an interval of 4 weeks.  """)
* insert SGDecisionTableGuidance("""Should not vaccinate client with JE dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the first JE dose. """)
* insert SGDecisionTableOutput(DTO.JEimmunizationscheduleiscomplete,"JE immunization schedule is complete","""–  """)
* insert SGDecisionTableGuidance("""JE immunization schedule is complete. One JE primary series dose was administered. Check for any other vaccines due. """)

