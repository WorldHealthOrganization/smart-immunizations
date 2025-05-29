ValueSet: IMMZ.D5.DT.Rabies.CI
Title: "IMMZ.D5.DT.Rabies.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.Rabies.CI for IMMZ.D5.DT.Rabies contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_Rabies_contraindications"

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchhosar, [[The client has history of severe allergic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #cjircacn, [[Clinical judgement is required. Create a clinical note]] )
