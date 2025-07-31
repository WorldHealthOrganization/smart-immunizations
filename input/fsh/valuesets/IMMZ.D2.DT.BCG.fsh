ValueSet: IMMZ.D2.DT.BCG
Title: "IMMZ.D2.DT.BCG ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.BCG for Determine if the client is due for a bacille Calmette–Guérin (BCG) vaccination according to the national immunization schedule.
Business rule: IMMZ.D2 Determine required vaccination(s) if any
Trigger: undefined
Table: IMMZ.D2.DT.BCG
"""

* ^status = #active
* ^name = "Determine_if_the_client_is_due_for_a_bacille_Calmette_Gu_rin__BCG__vaccination_according_to_the_national_immunization_schedule"
* ^expansion.timestamp = 2025-07-30T21:14:32.397Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimt5y-33.40, [[Client's age is more than 5 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nbpsdwa-43.112, [[No BCG primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailtoet28d-45.40, [[Client's age is less than or equal to 28 days]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cshsinou-42.29, [[Client's HIV status is negative or unknown]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nlvwa-32.90, [[No live vaccine was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #lvwaitlfw-52.92, [[Live vaccine was administered in the last four weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cshsip-31.29, [[Client's HIV status is positive]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cicrat-52.25, [[Client is currently receiving antiretroviral therapy]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ciis-32.31, [[Client is immunologically stable]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cinis-36.32, [[Client is not immunologically stable]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cicnrat-56.26, [[Client is currently not receiving antiretroviral therapy]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaib28da5y-43.50, [[Client's age is between 28 days and 5 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cstitrin-45.39, [[Client's TB infection test result is negative]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nlvwaitlfw-55.92, [[No live vaccine was administered in the last four weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cstitriutndonry-77.34, [[Client's TB infection test result is unknown (test not done or no result yet)]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cstitrip-45.39, [[Client's TB infection test result is positive]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cincw-29.25, [[Client is not clinically well]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #cicw-25.24, [[Client is clinically well]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #obpsdwa-44.112, [[One BCG primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfbv-33.44, [[Client is due for BCG vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfbv-37.48, [[Client is not due for BCG vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cjirccn-53.66, [[Clinical judgement is required. Create clinical note.]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cjirccn-53.67, [[Clinical judgement is required. Create clinical note.]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #bisic-37.50, [[BCG immunization schedule is complete]] )
