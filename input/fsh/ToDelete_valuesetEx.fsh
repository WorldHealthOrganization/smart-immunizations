//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: careplanbirthcontrolmethods-values
Id: careplanbirthcontrolmethods-values
Title: "Prior contraceptive methods used - CarePlan-based values"
Description: "Codes representing possible values for the Prior contraceptive methods used - CarePlan-based element"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#169450001 "No CarePlan-based method"
* SCT#169513000 "Withdrawal"
* SCT#455501000124105 "Fertility awareness-based methods (FAB)"
* SCT#454441000124107 "Lactational amenorrhea method (LAM)"
* SCT#455491000124102 "Male relying on female method"
* LNC#LA14549-2 "Withdrawal"
* LNC#LA27918-4 "Fertility awareness-based methods (FAB)"
* LNC#LA27919-2 "Lactational amenorrhea method (LAM)"
* LNC#LA27920-0 "Male relying on female method"