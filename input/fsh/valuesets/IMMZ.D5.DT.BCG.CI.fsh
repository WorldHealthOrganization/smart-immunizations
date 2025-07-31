ValueSet: IMMZ.D5.DT.BCG.CI
Title: "IMMZ.D5.DT.BCG.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.BCG.CI for IMMZ.D5.DT.BCG contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_BCG_contraindications"
* ^expansion.timestamp = 2025-07-31T19:47:21.304Z

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcip-22.52, [[The client is pregnant]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchhosar-51.60, [[The client has history of severe allergic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchis-41.60, [[The client has immunodeficiency syndromes]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcietit-52.72, [[The client is exposed to immunosuppressive treatment]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #csailt1y-32.14, [[Client's age is less than 1 year]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #t-1.1, [[T]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #csaimtoet1y-44.14, [[Client's age is more than or equal to 1 year]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #bcgrbvic-60.57, [[Bacille Calmette–Guérin (BCG) vaccination is contraindicated]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #bvcbccjircacn-97.67, [[BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #bvic-34.57, [[BCG vaccination is contraindicated]] )
