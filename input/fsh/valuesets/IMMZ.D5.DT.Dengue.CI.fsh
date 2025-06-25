ValueSet: IMMZ.D5.DT.Dengue.CI
Title: "IMMZ.D5.DT.Dengue.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.Dengue.CI for IMMZ.D5.DT.Dengue contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_Dengue_contraindications"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchhosar-51.63, [[The client has history of severe allergic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcicp-32.56, [[The client is currently pregnant]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcisi-40.64, [[The client is severely immunocompromised]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcii-31.55, [[The client is immunocompromised]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcicl-33.52, [[The client is currently lactating]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchhoar-48.70, [[The client has history of anaphylactic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchis-41.64, [[The client has immunodeficiency syndromes]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcisi-39.63, [[The client is severely immunosuppressed]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchshi-40.63, [[The client has symptomatic HIV infection]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #dvic-37.60, [[Dengue vaccination is contraindicated]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #dvcbccjircacn-100.70, [[Dengue vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.]] )
