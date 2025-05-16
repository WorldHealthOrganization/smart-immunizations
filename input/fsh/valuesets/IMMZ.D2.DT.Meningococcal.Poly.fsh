ValueSet: IMMZ.D2.DT.Meningococcal.Poly
Title: "IMMZ.D2.DT.Meningococcal.Poly ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.Meningococcal.Poly for IMMZ.D2.DT.Meningococcal.Polysaccharide vaccines.
Business rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any  
Table: Polysaccharide vaccines schedule
(Polysaccharide vaccines can be used to control outbreaks in countries where limited economic resources or insufficient supply restrict the use of meningococcal conjugate vaccines)
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Meningococcal_Polysaccharide_vaccines"

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmpsdwa, [[No meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #ompsdwa, [[One meningococcal primary series dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #nmbdwa, [[No meningococcal booster dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #mbdwa, [[Meningococcal booster dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailt2y, [[Client's age is less than 2 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimt2y, [[Client's age is more than 2 years]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwalt3ya, [[The latest meningococcal dose was administered less than 3 years ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #tlmdwamt3ya, [[The latest meningococcal dose was administered more than 3 years ago]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfmv, [[Client is not due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfmv, [[Client is due for meningococcal vaccination]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #misic, [[Meningococcal immunization schedule is complete]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #tpsiccindfmbd, [[The primary series is complete. Client is not due for meningococcal booster dose.]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #tpsiccjirfmbdcacn, [[The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note]] )
