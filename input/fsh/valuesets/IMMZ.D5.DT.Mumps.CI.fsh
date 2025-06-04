ValueSet: IMMZ.D5.DT.Mumps.CI
Title: "IMMZ.D5.DT.Mumps.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.Mumps.CI for IMMZ.D5.DT.Mumps contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_Mumps_contraindications"

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcicp-32.52, [[The client is currently pregnant]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchatvc-44.60, [[The client has allergy to vaccine components]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchid-32.60, [[The client has immune deficiency]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcisi-39.59, [[The client is severely immunosuppressed]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #mvic-36.56, [[Mumps vaccination is contraindicated]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #mvcbccjir-75.23, [[Mumps vaccination could be contraindicated. Clinical judgement is required.]] )
