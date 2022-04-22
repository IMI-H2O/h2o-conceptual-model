Instance: H2OHouseholdCodeSystem
InstanceOf: CodeSystem
Usage: #definition
Title: "H2O LivingArrangements (Sociodemographics)"
* status = #draft
* content = #complete
* version = "0.0.1+2022-04-20"
* id = "h2o-living-arrangements-code-system"
* name = "H2OHouseholdCodeSystem"

* concept[+].code = #single
* concept[=].display = "Single household"
* concept[=].definition = "Single household"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Einzelhaushalt"

* concept[+].code = #shared
* concept[=].display = "Shared household"
* concept[=].definition = "Shared household"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Gemeinsamer Haushalt"

* concept[+].code = #facility
* concept[=].display = "Nursing facility"
* concept[=].definition = "Nursing facility"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Pflegeeinrichtung"

* concept[+].code = #without
* concept[=].display = "Without household"
* concept[=].definition = "Without household"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Ohne Wohnung"


Instance: H2OEducationLevelCodeSystem
InstanceOf: CodeSystem
Usage: #definition
Title: "H2O Highest level of education (Sociodemographics), see International Standard Classification of Education (ISCED)."
* status = #draft
* content = #complete
* version = "0.0.1+2022-04-14"
* id = "h2o-education-level-code-system"
* name = "H2OEducationLevelCodeSystem"

* concept[+].code = #no-education
* concept[=].display = "no education (yet)"
* concept[=].definition = "no education (yet)"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "(bisher) kein Schulabschluss"

* concept[+].code = #primary
* concept[=].display = "Primary education"
* concept[=].definition = "Primary education"
* concept[=].designation[+].language = #de-DE
* concept[=].designation[=].value = "Förder-/Haupt-/Volksschule"
* concept[=].designation[+].language = #de-AT
* concept[=].designation[=].value = "Volks-/Sonder-/Statutschule 1.-4. Schulstufe"

* concept[+].code = #lower-secondary
* concept[=].display = "Lower secondary education"
* concept[=].definition = "Lower secondary education"
* concept[=].designation[+].language = #de-DE
* concept[=].designation[=].value = "Realschule/POS/MSA"
* concept[=].designation[+].language = #de-AT
* concept[=].designation[=].value = "Real-/Haupt-/Neue Mittelschule"

* concept[+].code = #upper-secondary
* concept[=].display = "Upper secondary education"
* concept[=].definition = "Upper secondary education"
* concept[=].designation[+].language = #de-DE
* concept[=].designation[=].value = "Abitur/Fachabitur"
* concept[=].designation[+].language = #de-AT
* concept[=].designation[=].value = "AHS Oberstufe/ABHS/BHS/LWS/Lehre"

* concept[+].code = #bachelor
* concept[=].display = "Bachelor or equivalent"
* concept[=].definition = "Bachelor or equivalent"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Bachelorabschluss oder gleichwertig"

* concept[+].code = #master
* concept[=].display = "Master or equivalent"
* concept[=].definition = "Master or equivalent"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Masterabschluss oder gleichwertig"

* concept[+].code = #doctoral
* concept[=].display = "Doctoral or equivalent"
* concept[=].definition = "Doctoral or equivalent"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Doktorabschluss oder höher"

* concept[+].code = #different
* concept[=].display = "different"
* concept[=].definition = "different level of education"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "anderer"