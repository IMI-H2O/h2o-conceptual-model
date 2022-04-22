Alias: $Regions = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: SociodemographicsQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* title = "H2O example questionnaire (sociodemographics)"
* name = "H2oSociodemographicsQuestionnaire"
* url = "http://health-outcomes-observatory.eu/fhir/Questionnaire/SociodemographicsQuestionnaire"
* status = #active
* subjectType = #Patient
* date = "2022-04-14"
* experimental = true
* jurisdiction[+].coding = $Regions#150 "Europe"

* item[+].linkId = "1" // hint: using 'soft indexing' by incrementing with '+' and stay at the index with '='
* item[=].text = "Year of birth / Geburtsjahr"
* item[=].type = #integer

* item[+].linkId = "2"
* item[=].text = "Sex / Geschlecht"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(H2OSexVS)

* item[+].linkId = "3"
* item[=].type = #integer
* item[=].text = "Height / Körpergröße"

* item[+].linkId = "4"
* item[=].text = "Weight / Körpergewicht"
* item[=].type = #integer

* item[+].linkId = "5"
* item[=].text = "Education / Höchster Schulabschluß"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(H2OEducationVS)

* item[+].linkId = "6"
* item[=].text = "Household / Wohnsituation"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(H2OHouseholdVS)

* item[+].linkId = "7"
* item[=].text = "ZIP Code / Postleitzahl"
* item[=].type = #integer