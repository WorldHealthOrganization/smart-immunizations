ValueSet: IMMZ.D5.DT.Malaria.CI
Title: "IMMZ.D5.DT.Malaria.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.Malaria.CI for IMMZ.D5.DT.Malaria contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_Malaria_contraindications"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchhtaotvc-64.72, [[The client has hypersensitivity to any of the vaccine components]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #mvcbccjircacn-100.67, [[Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note]] )
