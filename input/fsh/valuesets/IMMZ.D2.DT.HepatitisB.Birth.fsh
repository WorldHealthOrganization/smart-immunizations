ValueSet: IMMZ.D2.DT.HepatitisB.Birth
Title: "IMMZ.D2.DT.HepatitisB.Birth ValueSet for Decision Table"
Description: """
ValueSet IMMZ.D2.DT.HepatitisB.Birth for IMMZ.D2.DT.Hepatitis B.Birth dose.
Business rule: Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule
Trigger: IMMZ.D2 Determine required vaccination(s) if any
Table: Birth dose administration
"""

* ^status = #active
* ^name = "IMMZ_D2_DT_Hepatitis_B_Birth_dose"
* ^expansion.timestamp = 2025-08-01T21:12:56.716Z

* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #hbbdwna-43.117, [[Hepatitis B birth dose was not administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csailtmsdul-61.66, [[Client's age is less than {Member States defined upper limit}]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #csaimtmsdul-61.66, [[Client's age is more than {Member States defined upper limit}]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Inputs, #hbbdwa-39.117, [[Hepatitis B birth dose was administered]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cidfhbmv-48.114, [[Client is due for hepatitis B monovalent vaccine]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #csfdsdl-49.0, [[Client should follow delayed-start decision logic]] )
* insert AddWithExpandCanonical( IMMZ.D2.DT.Outputs, #cindfthbbd-48.48, [[Client is not due for the hepatitis B birth dose]] )
