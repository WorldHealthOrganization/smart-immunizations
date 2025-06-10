ValueSet: IMMZ.D2.DT.Cholera.rBSover5
Title: "IMMZ.D2.DT.Cholera.rBSover5 ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Cholera.rBSover5 for IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses.
Business rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Cholera_WC_rBS_vaccine_2_doses"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ncpsdwa-47.116, [[No cholera primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #alocpsdwa-57.117, [[At least one cholera primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #dnotlpsdio-52.106, [[Dose number of the latest primary series dose is one]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwalt1wa-61.105, [[The latest cholera dose was administered less than 1 week ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwamt1walt6wa-83.115, [[The latest cholera dose was administered more than 1 week and less than 6 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwamt6wa-62.106, [[The latest cholera dose was administered more than 6 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimt5y-33.40, [[Client's age is more than 5 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #dnotlpsdimtoett-74.107, [[Dose number of the latest primary series dose is more than or equal to two]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwaalt2yamsdi-109.139, [[The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwaamt2yamsdi-109.139, [[The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfcv-41.48, [[Client is not due for cholera vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfcv-37.44, [[Client is due for cholera vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #psiccidfcbd-66.44, [[Primary series is complete. Client is due for cholera booster dose]] )
