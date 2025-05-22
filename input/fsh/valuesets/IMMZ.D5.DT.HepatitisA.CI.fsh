ValueSet: IMMZ.D5.DT.HepatitisA.CI
Title: "IMMZ.D5.DT.HepatitisA.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.HepatitisA.CI for IMMZ.D5.DT.Hepatitis A contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_Hepatitis_A_contraindications"

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcicp, [[The client is currently pregnant]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcisi, [[The client is severely immunocompromised]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchahosar, [[The client has a history of severe allergic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #lahacvic, [[Live attentuated Hepatitis A-containing vaccine is contraindicated]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #havcbccjircacn, [[Hepatitis A vaccination could be contraindicated. Clinical judgement is required. Create a clinical note]] )
