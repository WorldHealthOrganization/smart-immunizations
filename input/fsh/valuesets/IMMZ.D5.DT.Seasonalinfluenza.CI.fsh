ValueSet: IMMZ.D5.DT.Seasonalinfluenza.CI
Title: "IMMZ.D5.DT.Seasonalinfluenza.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.Seasonalinfluenza.CI for IMMZ.D5.DT.Seasonal influenza contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_Seasonal_influenza_contraindications"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchahoar-50.67, [[The client has a history of anaphylactic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchahosaraapdotavc-101.59, [[The client has a history of severe allergic reactions after a previous dose or to a vaccine component]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #sivcbccjircacn-111.67, [[Seasonal influenza vaccination could be contraindicated. Clinical judgement is required. Create a clinical note]] )
