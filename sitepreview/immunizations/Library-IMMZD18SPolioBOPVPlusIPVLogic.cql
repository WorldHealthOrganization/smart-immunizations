/*
 * Library: IMMZD18SPolioBOPVPlusIPVLogic (IMMZ.D18.S.Polio.bOPV plus IPV schedule)
 * Schedule Table: Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV) schedule
 */
library IMMZD18SPolioBOPVPlusIPVLogic

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOCommon called WC

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called IE
include IMMZD2DTPolioEncounterElements called Encounter

parameter Today Date default Today()


context Patient


/*
@output: bOPV dose 1
@description: Provision of bOPV dose 1
@trigger: Child's birth
@pseudo: 
@triggerDate: "Date of birth"
*/
define "bOPV dose 1":
  not "First bOPV dose from the primary series was administered"


/*
@output: bOPV dose 1 Create
@create: The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.
*/
define "bOPV dose 1 Create":
  if "bOPV dose 1"
  then 'The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.' + '
Due Date: ' + ToString("bOPV dose 1 Due Date")
  else ''


/*
@dynamicValue: bOPV dose 1 Due Date
@pseudocode: "Date of birth" + 6 weeks
*/
define "bOPV dose 1 Due Date":
  if "bOPV dose 1" then Patient.birthDate + 6 weeks
  else null


/*
@dynamicValue: bOPV dose 1 Overdue
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "bOPV dose 1 Overdue":
  null


/*
@dynamicValue: bOPV dose 1 Expiration
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "bOPV dose 1 Expiration":
  null

  
/*
@complete: First bOPV dose from the primary series was administered
@pseudocode: Count of vaccines administered (where "Type of dose" = "Primary series" and "Type of poliovirus dose" = "bOPV") = 1
*/
define "First bOPV dose from the primary series was administered":
  Encounter."Number of Polio bOPV Primary Series Doses Administered" >= 1



/*
@output: IPV dose 1
@description: Provision of IPV dose 1
@trigger: Child's birth
@pseudo: 
@triggerDate: "Date of birth"
*/
define "IPV dose 1":
  not "First IPV dose from the primary series was administered"


/*
@output: IPV dose 1 Create
@create: The first IPV dose should be administered from a minimum of 14 weeks of age.
*/
define "IPV dose 1 Create":
  if "IPV dose 1"
  then 'The first IPV dose should be administered from a minimum of 14 weeks of age.' + '
Due Date: ' + ToString("IPV dose 1 Due Date")
  else ''


/*
@dynamicValue: IPV dose 1 Due Date
@pseudocode: "Date of birth" + 14 weeks
*/
define "IPV dose 1 Due Date":
  if "IPV dose 1" then Patient.birthDate + 14 weeks
  else null


/*
@dynamicValue: IPV dose 1 Overdue
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "IPV dose 1 Overdue":
  null


/*
@dynamicValue: IPV dose 1 Expiration
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "IPV dose 1 Expiration":
  null

  
/*
@complete: First IPV dose from the primary series was administered
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "IPV") = 1
*/
define "First IPV dose from the primary series was administered":
  Encounter."Number of Polio IPV Primary Series Doses Administered" >= 1



/*
@output: bOPV dose 2
@description: Provision of bOPV dose 2
@trigger: First bOPV dose from the primary series was administered
@pseudo: Count of vaccines administered (where "Type of dose" = "Primary series" and "Type of poliovirus dose" = "bOPV") = 1
@triggerDate: Latest "Date and time of vaccination" (where "Type of poliovirus dose" = "bOPV")
*/
define "bOPV dose 2":
  "First bOPV dose from the primary series was administered" and not "Second bOPV dose from the primary series was administered"


/*
@output: bOPV dose 2 Create
@create: The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.
*/
define "bOPV dose 2 Create":
  if "bOPV dose 2"
  then 'The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.' + '
Due Date: ' + ToString("bOPV dose 2 Due Date")
  else ''


/*
@dynamicValue: bOPV dose 2 Due Date
@pseudocode: Latest "Date and time of vaccination" (where "Type of poliovirus dose" = "bOPV") + 4 weeks
*/
define "bOPV dose 2 Due Date":
  if "bOPV dose 2" then Encounter."Date of Latest bOPV Dose" + 4 weeks
  else null


/*
@dynamicValue: bOPV dose 2 Overdue
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "bOPV dose 2 Overdue":
  null


/*
@dynamicValue: bOPV dose 2 Expiration
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "bOPV dose 2 Expiration":
  null

  
/*
@complete: Second bOPV dose from the primary series was administered
@pseudocode: Count of vaccines administered (where "Type of dose" = "Primary series" and "Type of poliovirus dose" = "bOPV") = 2
*/
define "Second bOPV dose from the primary series was administered":
  Encounter."Number of Polio bOPV Primary Series Doses Administered" >= 2



/*
@output: IPV dose 2
@description: Provision of IPV dose 2
@trigger: First IPV dose from the primary series was administered
@pseudo: Count of vaccines administered (where "Type of poliovirus dose" = "IPV") = 1
@triggerDate: Latest "Date and time of vaccination" (where "Type of poliovirus dose" = "IPV")
*/
define "IPV dose 2":
  "First IPV dose from the primary series was administered" and not "Second IPV dose from the primary series was administered"


/*
@output: IPV dose 2 Create
@create: The first IPV dose should be administered from a minimum of 14 weeks of age (with the third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] or pentavalent vaccine [penta3]), with the second IPV dose being given at least 4 months later (possibly coinciding with other vaccines administered at 9 months of age).
*/
define "IPV dose 2 Create":
  if "IPV dose 2"
  then 'The first IPV dose should be administered from a minimum of 14 weeks of age (with the third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] or pentavalent vaccine [penta3]), with the second IPV dose being given at least 4 months later (possibly coinciding with other vaccines administered at 9 months of age).' + '
Due Date: ' + ToString("IPV dose 2 Due Date")
  else ''


/*
@dynamicValue: IPV dose 2 Due Date
@pseudocode: Latest "Date and time of vaccination" (where "Type of poliovirus dose" = "IPV") + 4 months
*/
define "IPV dose 2 Due Date":
  if "IPV dose 2" then Encounter."Date of Latest IPV Dose" + 4 months
  else null


/*
@dynamicValue: IPV dose 2 Overdue
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "IPV dose 2 Overdue":
  null


/*
@dynamicValue: IPV dose 2 Expiration
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "IPV dose 2 Expiration":
  null

  
/*
@complete: Second IPV dose from the primary series was administered
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "IPV") = 2
*/
define "Second IPV dose from the primary series was administered":
  Encounter."Number of Polio IPV Primary Series Doses Administered" >= 2



/*
@output: bOPV dose 3
@description: Provision of bOPV dose 3
@trigger: Second bOPV dose from the primary series was administered
@pseudo: Count of vaccines administered (where "Type of dose" = "Primary series" and "Type of poliovirus dose" = "bOPV") = 2
@triggerDate: Latest "Date and time of vaccination" (where "Type of poliovirus dose" = "bOPV")
*/
define "bOPV dose 3":
  "Second bOPV dose from the primary series was administered" and not "Third bOPV dose from the primary series was administered. The primary series has been completed"


/*
@output: bOPV dose 3 Create
@create: The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.
*/
define "bOPV dose 3 Create":
  if "bOPV dose 3"
  then 'The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.' + '
Due Date: ' + ToString("bOPV dose 3 Due Date")
  else ''


/*
@dynamicValue: bOPV dose 3 Due Date
@pseudocode: Latest "Date and time of vaccination" (where "Type of poliovirus dose" = "bOPV") + 4 weeks
*/
define "bOPV dose 3 Due Date":
  if "bOPV dose 3" then Encounter."Date of Latest bOPV Dose" + 4 weeks
  else null


/*
@dynamicValue: bOPV dose 3 Overdue
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "bOPV dose 3 Overdue":
  null


/*
@dynamicValue: bOPV dose 3 Expiration
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "bOPV dose 3 Expiration":
  null

  
/*
@complete: Third bOPV dose from the primary series was administered. The primary series has been completed
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Poliovirus-containing vaccines")
*/
define "Third bOPV dose from the primary series was administered. The primary series has been completed":
  Encounter."Number of Polio bOPV Primary Series Doses Administered" >= 3



/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = 'Polio18.1' then "bOPV dose 1" and "IPV dose 1"
    when Patient.id = 'Polio19.2' then "bOPV dose 1" and "IPV dose 1"
    when Patient.id = 'Polio20.2' then "bOPV dose 1" and "IPV dose 1"
    when Patient.id = 'Polio21.3' then "IPV dose 1" and "bOPV dose 2"
    when Patient.id = 'Polio22.3' then "IPV dose 1" and "bOPV dose 2"
    when Patient.id = 'Polio23.4' then "IPV dose 1" and "bOPV dose 2"
    when Patient.id = 'Polio24.4' then "IPV dose 1" and "bOPV dose 2"
    when Patient.id = 'Polio25.4' then "IPV dose 2" and "bOPV dose 1"
    when Patient.id = 'Polio26.4' then "IPV dose 2" and "bOPV dose 1"
    when Patient.id = 'Polio27.4' then "IPV dose 1" and "bOPV dose 3"
    when Patient.id = 'Polio28.4' then "IPV dose 1" and "bOPV dose 3"
    when Patient.id = 'Polio29.4' then "IPV dose 1" and "bOPV dose 3"
    when Patient.id = 'Polio30.4' then "IPV dose 1" and "bOPV dose 3"
    when Patient.id = 'Polio31.4' then "IPV dose 2" and "bOPV dose 2"
    when Patient.id = 'Polio32.4' then "IPV dose 2" and "bOPV dose 2"
    when Patient.id = 'Polio33.4' then "IPV dose 2" and "bOPV dose 2"
    when Patient.id = 'Polio34.4' then "IPV dose 2" and "bOPV dose 2"
    when Patient.id = 'Polio35.2' then "bOPV dose 1"
    when Patient.id = 'Polio36.3' then "IPV dose 1"
    when Patient.id = 'Polio37.3' then "IPV dose 1"
    when Patient.id = 'Polio38.4' then "IPV dose 2" and "bOPV dose 3"
    when Patient.id = 'Polio39.4' then "IPV dose 2" and "bOPV dose 3"
    when Patient.id = 'Polio40.4' then "IPV dose 2" and "bOPV dose 3"
    when Patient.id = 'Polio41.4' then "IPV dose 2" and "bOPV dose 3"
    when Patient.id = 'Polio42.3' then "bOPV dose 2"
    when Patient.id = 'Polio43.3' then "bOPV dose 2"
    when Patient.id = 'Polio44.3' then "IPV dose 2"
    when Patient.id = 'Polio45.3' then "IPV dose 2"
    when Patient.id = 'Polio46.3' then "bOPV dose 3"
    when Patient.id = 'Polio47.3' then "bOPV dose 3"
    when Patient.id = 'Polio48.1' then "Third bOPV dose from the primary series was administered. The primary series has been completed"
      and "Second IPV dose from the primary series was administered"
    else 'No test case set'
  end
