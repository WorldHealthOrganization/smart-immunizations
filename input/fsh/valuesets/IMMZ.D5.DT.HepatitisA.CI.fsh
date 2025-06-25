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
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcicp-32.56, [[The client is currently pregnant]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcisi-40.64, [[The client is severely immunocompromised]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchahosar-53.64, [[The client has a history of severe allergic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #lahacvic-66.139, [[Live attentuated Hepatitis A-containing vaccine is contraindicated]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #havcbccjircacn-104.70, [[Hepatitis A vaccination could be contraindicated. Clinical judgement is required. Create a clinical note]] )
