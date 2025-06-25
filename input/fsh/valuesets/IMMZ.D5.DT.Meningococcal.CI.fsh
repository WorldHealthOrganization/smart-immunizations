ValueSet: IMMZ.D5.DT.Meningococcal.CI
Title: "IMMZ.D5.DT.Meningococcal.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.Meningococcal.CI for IMMZ.D5.DT.Meningococcal contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_Meningococcal_contraindications"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchhosar-51.63, [[The client has history of severe allergic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #mvcbccjircacn-106.138, [[Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note]] )
