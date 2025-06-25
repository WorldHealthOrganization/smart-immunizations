ValueSet: IMMZ.D2.DT.Cholera.WC
Title: "IMMZ.D2.DT.Cholera.WC ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Cholera.WC for IMMZ.D2.DT.Cholera.WC vaccines.
Business rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Whole-cell (WC) vaccines schedule
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Cholera_WC_vaccines"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt1y-32.39, [[Client's age is less than 1 year]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet1y-44.39, [[Client's age is more than or equal to 1 year]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ncpsdwa-47.116, [[No cholera primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ocpsdwa-48.116, [[One cholera primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwalt14da-62.106, [[The latest cholera dose was administered less than 14 days ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwamt14da-62.106, [[The latest cholera dose was administered more than 14 days ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tcpsdwa-50.116, [[Two cholera primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ncbsdwa-47.114, [[No cholera booster series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwalt3ya-62.106, [[The latest cholera dose was administered less than 3 years ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwamt3ya-62.106, [[The latest cholera dose was administered more than 3 years ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #alobsdwa-49.115, [[At least one booster series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #dnotldio-37.68, [[Dose number of the latest dose is one]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwamt14daalt3ya-88.118, [[The latest cholera dose was administered more than 14 days ago and less than 3 years ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #dnotldit-37.68, [[Dose number of the latest dose is two]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfcv-41.48, [[Client is not due for cholera vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfcv-37.44, [[Client is due for cholera vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #psiccindfcbd-70.48, [[Primary series is complete. Client is not due for cholera booster dose]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #psiccidfcbd-66.44, [[Primary series is complete. Client is due for cholera booster dose]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfcbd-42.48, [[Client is not due for cholera booster dose]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfcbd-38.44, [[Client is due for cholera booster dose]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #bsic-26.81, [[Booster series is complete]] )
