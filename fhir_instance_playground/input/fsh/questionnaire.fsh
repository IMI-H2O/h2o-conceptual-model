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

* item[+].linkId = "YearOfBirth" // hint: using 'soft indexing' by incrementing with '+' and stay at the index with '='
* item[=].text = "Year of birth / Geburtsjahr"
* item[=].type = #integer

* item[+].linkId = "SEX"
* item[=].text = "Sex / Geschlecht"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(H2OSexVS)

* item[+].linkId = "HEIGHTPAT"
* item[=].text = "Height / Körpergröße"
* item[=].type = #decimal
* item[=].code[+].system = "http://loinc.org"
* item[=].code[=].code = #8302-2
* item[=].code[=].display = "Body height"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension[=].valueCoding.system = "http://unitsofmeasure.org"
* item[=].extension[=].valueCoding.code = #cm
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true

* item[+].linkId = "WEIGHTPAT"
* item[=].text = "Weight / Körpergewicht"
* item[=].type = #decimal
* item[=].code[+].system = "http://loinc.org"
* item[=].code[=].code = #29463-7
* item[=].code[=].display = "Weight"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension[=].valueCoding.system = "http://unitsofmeasure.org"
* item[=].extension[=].valueCoding.code = #kg
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true

* item[+].linkId = "EducationLevel"
* item[=].text = "Education / Höchster Schulabschluß"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(H2OEducationVS)

* item[+].linkId = "LivingArrangements"
* item[=].text = "Household / Wohnsituation"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(H2OHouseholdVS)

* item[+].linkId = "ZIPCODE"
* item[=].text = "ZIP Code / Postleitzahl"
* item[=].type = #integer