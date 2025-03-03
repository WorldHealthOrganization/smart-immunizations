ValueSet: IMMZ.D.DE156
Title: "IMMZ.D.DE156 ValueSet for Immunization recommendation status"
Description: "ValueSet for Immunization recommendation status for IMMZ.D.DE156"

* ^status = #active
* ^name = "IMMZ_D_DE156"

* insert AddWithExpandCanonical( IMMZ.D, #DE157, Not due )
* insert AddWithExpandCanonical( IMMZ.D, #DE158, Due )
* insert AddWithExpandCanonical( IMMZ.D, #DE189, Complete )
* insert AddWithExpandCanonical( IMMZ.D, #DE159, Contraindicated )
* insert AddWithExpandCanonical( IMMZ.D, #DE160, Further evaluation needed )
