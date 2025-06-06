ValueSet: IMMZ.D5.DT.Varicella.CI
Title: "IMMZ.D5.DT.Varicella.CI ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D5.DT.Varicella.CI for IMMZ.D5.DT.Varicella contraindications.
Business rule: Check for contraindications before administering the vaccine(s) due	
Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
Table: Potential contraindications
"""

* ^status = #active
* ^name = "IMMZ_D5_DT_Varicella_contraindications"

* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcicp-32.52, [[The client is currently pregnant]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tchid-32.60, [[The client has immune deficiency]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tciptgpitnm-56.76, [[The client is planning to get pregnant in the next month]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcii-31.51, [[The client is immunocompromised]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Inputs, #tcirohrmtmbi-81.72, [[The client is receiving or has received medications that may be immunosuppressive]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #vvic-40.56, [[Varicella vaccination is contraindicated]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #cjirccn-52.66, [[Clinical judgement is required. Create clinical note]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #vvcbccjirccn-100.66, [[Varicella vaccination could be contraindicated. Clinical judgement is required. Create clinical note]] )
* insert AddWithExpandCanonical( IMMZ.D5.DT.Outputs, #cjirccn-52.67, [[Clinical judgement is required. Create clinical note]] )
