ValueSet: IMMZ.D.DE1
Title: "IMMZ.D.DE1 ValueSet for Immunization event status"
Description: "ValueSet for Immunization event status for IMMZ.D.DE1"

* ^status = #active
* ^name = "IMMZ_D_DE1"

* insert AddWithExpandCanonical( IMMZ.D, #DE2, Completed )
* insert AddWithExpandCanonical( IMMZ.D, #DE3, Entered in error )
* insert AddWithExpandCanonical( IMMZ.D, #DE4, Not done )
