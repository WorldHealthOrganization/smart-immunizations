ValueSet: IMMZ.D2.DT.Cholera.rBS2to5
Title: "IMMZ.D2.DT.Cholera.rBS2to5 ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Cholera.rBS2to5 for IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses.
Business rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Cholera_WC_rBS_vaccine_3_doses"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ncpsdwa-47.116, [[No cholera primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt2y-33.40, [[Client's age is less than 2 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csai25y-25.50, [[Client's age is 2–5 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #alocpsdwa-57.117, [[At least one cholera primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #dnotlpsdio-52.106, [[Dose number of the latest primary series dose is one]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwalt1wa-61.105, [[The latest cholera dose was administered less than 1 week ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwamt1walt6wa-83.115, [[The latest cholera dose was administered more than 1 week and less than 6 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #dnotlpsdit-52.106, [[Dose number of the latest primary series dose is two]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #dnotlpsdiltt-64.106, [[Dose number of the latest primary series dose is less than three]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwamt6wa-62.106, [[The latest cholera dose was administered more than 6 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #dnotlpsdit-54.106, [[Dose number of the latest primary series dose is three]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwaltmsdllda-95.132, [[The latest cholera dose was administered less than {Member States defined lower limit} days ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwaalt6mamsdei-116.107, [[The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlcdwaamt6mamsdei-116.107, [[The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfcv-41.48, [[Client is not due for cholera vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfcv-37.44, [[Client is due for cholera vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #psiccindfcbd-70.48, [[Primary series is complete. Client is not due for cholera booster dose]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #psiccidfcbd-66.44, [[Primary series is complete. Client is due for cholera booster dose]] )
