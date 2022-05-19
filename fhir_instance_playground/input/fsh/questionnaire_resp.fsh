Instance: SociodemographicsResponce1
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* subject = Reference(DoeJane)
* source = Reference(DoeJane)
* questionnaire = Canonical(SociodemographicsQuestionnaire)
* encounter = Reference(DoeJane1)

* item[+].linkId = "YearOfBirth"
* item[=].answer[+].valueInteger = 1999

* item[+].linkId = "SEX"
* item[=].answer[+].valueCoding = http://hl7.org/fhir/administrative-gender#female
//* item[=].answer[+].valueCoding = #male // would trigger validation-error, e.g. with fsh-validator input/fsh/questionnaire_resp.fsh 

* item[+].linkId = "HEIGHTPAT"
* item[=].answer[+].valueDecimal = 175

* item[+].linkId = "WEIGHTPAT"
* item[=].answer[+].valueDecimal = 68

* item[+].linkId = "EducationLevel"
* item[=].answer[+].valueCoding = http://health-outcomes-observatory.eu/fhir/CodeSystem/H2OEducationLevelCodeSystem#master

* item[+].linkId = "LivingArrangements"
* item[=].answer[+].valueCoding = http://health-outcomes-observatory.eu/fhir/CodeSystem/H2OHouseholdCodeSystem#single

* item[+].linkId = "ZIPCODE"
* item[=].answer[+].valueInteger = 10101
