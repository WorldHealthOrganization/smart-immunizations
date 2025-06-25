ValueSet: IMMZ.D2.DT.Mumps.2Dose
Title: "IMMZ.D2.DT.Mumps.2Dose ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Mumps.2Dose for IMMZ.D2.DT.Mumps.
Business rule: Determine if the client is due for a mumps vaccination according to the national immunization schedule
Trigger: IMMZ.D2  Determine required vaccination(s) if any
Table: 2-dose schedule (countries with mumps in schedule and low transmission of measles)									
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Mumps"
* ^expansion.timestamp = 2025-06-25T16:39:07.092Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt12m-35.42, [[Client's age is less than 12 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa-47.125, [[No mumps primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtoet12m-47.42, [[Client's age is more than or equal to 12 months]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #lvwaitp4w-49.92, [[Live vaccine was administered in the past 4 weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nlvwaitp4w-52.92, [[No live vaccine was administered in the past 4 weeks]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa-46.125, [[One mumps primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt4wa-60.108, [[The latest mumps dose was administered less than 4 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt4wa-60.108, [[The latest mumps dose was administered more than 4 weeks ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tmpsdwa-48.125, [[Two mumps primary series doses were administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv-39.48, [[Client is not due for mumps vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv-35.44, [[Client is due for mumps vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic-39.49, [[Mumps immunization schedule is complete]] )
