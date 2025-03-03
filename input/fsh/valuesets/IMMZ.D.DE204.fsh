ValueSet: IMMZ.D.DE204
Title: "IMMZ.D.DE204 ValueSet for HIV status"
Description: "ValueSet for HIV status for IMMZ.D.DE204"

* ^status = #active
* ^name = "IMMZ_D_DE204"

* insert AddWithExpandCanonical( IMMZ.D, #DE205, HIV-positive )
* insert AddWithExpandCanonical( IMMZ.D, #DE206, HIV-negative )
* insert AddWithExpandCanonical( IMMZ.D, #DE207, Unknown )
