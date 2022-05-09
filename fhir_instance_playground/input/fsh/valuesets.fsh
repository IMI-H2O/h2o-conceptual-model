ValueSet: H2OSexVS
Title: "Sex of H2O patients."
Description:  "Sex of H2O patients."
* include codes from system $administrative-gender
* exclude $administrative-gender#unknown
* include $GenderIdentity#non-disclose


ValueSet: H2OHouseholdVS
Title: "Living arrangements of H2O patients."
* include codes from system H2OHouseholdCodeSystem


ValueSet: H2OEducationVS
Title: "Education levels of H2O patients."
Instance: H2OEducationVS
InstanceOf: ValueSet
Usage: #definition
* status = #active
* name = "H2OEducationVS"
* title = "Education levels of H2O patients."
* version = "0.1.0"
* compose.include[0].system = Canonical(ISCED2011EducationLevels)
* compose.include[=].concept[0].code = #0
* compose.include[=].concept[=].designation[+].language = #de
* compose.include[=].concept[=].designation[=].value = "(bisher) kein Schulabschluss"
* compose.include[=].concept[+].code = #2
* compose.include[=].concept[=].designation[+].language = #de-DE
* compose.include[=].concept[=].designation[=].value = "Förder- / Haupt- / Volksschule"
* compose.include[=].concept[=].designation[+].language = #de-AT
* compose.include[=].concept[=].designation[=].value = "Hauptschule, NMS, AHS Unterstufe"
* compose.include[=].concept[+].code = #3
* compose.include[=].concept[=].designation[+].language = #de-DE
* compose.include[=].concept[=].designation[=].value = "Realschule / POS / MSA"
* compose.include[=].concept[=].designation[+].language = #de-AT
* compose.include[=].concept[=].designation[=].value = "AHS Oberstufe, BHS, BMS, Lehre"
* compose.include[=].concept[+].code = #4
// This code needs some more considerations, Abitur would better fit to level3
* compose.include[=].concept[=].designation[+].language = #de
* compose.include[=].concept[=].designation[=].value = "Abitur / Fachabitur"
* compose.include[=].concept[+].code = #6
* compose.include[=].concept[=].designation[+].language = #de
* compose.include[=].concept[=].designation[=].value = "Bachelorabschluss oder gleichwertig"
* compose.include[=].concept[+].code = #7
* compose.include[=].concept[=].designation[+].language = #de
* compose.include[=].concept[=].designation[=].value = "Masterabschluss oder gleichwertig"
* compose.include[=].concept[+].code = #8
* compose.include[=].concept[=].designation[+].language = #de
* compose.include[=].concept[=].designation[=].value = "Doktorabschluss oder höher"
* compose.include[=].concept[+].code = #9
* compose.include[=].concept[=].designation[+].language = #de
* compose.include[=].concept[=].designation[=].value = "anderer"