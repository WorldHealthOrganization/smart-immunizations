ValueSet: IMMZ.Z.DE34
Title: "IMMZ.Z.DE34 ValueSet for Tetanus and diphtheria-containing vaccines (Td)"
Description: "ValueSet for Tetanus and diphtheria-containing vaccines (Td) for IMMZ.Z.DE34"

* ^status = #active
* ^name = "IMMZ_Z_DE34"

* insert AddWithExpandCanonical( IMMZ.Z, #DE34, [[Tetanus and diphtheria-containing vaccines (Td)]] )
* insert AddWithExpand( $ICD11, #XM1G86, [[Tetanus toxoid, combinations with diphtheria toxoid vaccines]] )
* insert AddWithExpand( $ATC, #J07AM51, [[tetanus toxoid, combinations with diphtheria toxoid]] )
