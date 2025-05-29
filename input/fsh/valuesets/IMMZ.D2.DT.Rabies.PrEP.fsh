ValueSet: IMMZ.D2.DT.Rabies.PrEP
Title: "IMMZ.D2.DT.Rabies.PrEP ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Rabies.PrEP for IMMZ.D2.DT.Rabies.
Business rule: Determine if the client is due for a rabies vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any
Table: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Rabies"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nrpsdwa, [[No rabies primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #orpsdwa, [[One rabies primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlrdwalt7da, [[The latest rabies dose was administered less than 7 days ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlrdwamt7da, [[The latest rabies dose was administered more than 7 days ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #trpsdwa, [[Two rabies primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfrv, [[Client is due for rabies vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfrv, [[Client is not due for rabies vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #risic, [[Rabies immunization schedule is complete]] )
