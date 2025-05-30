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

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchhosar, [[The client has history of severe allergic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcicp, [[The client is currently pregnant]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcisi, [[The client is severely immunocompromised]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcii, [[The client is immunocompromised]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcicl, [[The client is currently lactating]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchhoar, [[The client has history of anaphylactic reactions]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchis, [[The client has immunodeficiency syndromes]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcisi, [[The client is severely immunosuppressed]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchshi, [[The client has symptomatic HIV infection]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #dvic, [[Dengue vaccination is contraindicated]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #dvcbccjircacn, [[Dengue vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.]] )
