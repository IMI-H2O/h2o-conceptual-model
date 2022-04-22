Instance: SociodemographicsResponce1
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* subject = Reference(DoeJane)
* source = Reference(DoeJane)
* questionnaire = Canonical(SociodemographicsQuestionnaire)
* encounter = Reference(DoeJane1)

* item[+].linkId = "1"
* item[=].answer[+].valueInteger = 1999

* item[+].linkId = "2"
* item[=].answer[+].valueCoding = http://hl7.org/fhir/administrative-gender#female
//* item[=].answer[+].valueCoding = #male // would trigger validation-error, e.g. with fsh-validator input/fsh/questionnaire_resp.fsh 

* item[+].linkId = "3"
* item[=].answer[+].valueInteger = 175

* item[+].linkId = "4"
* item[=].answer[+].valueInteger = 68

* item[+].linkId = "5"
* item[=].answer[+].valueCoding = http://health-outcomes-observatory.eu/fhir/CodeSystem/H2OEducationLevelCodeSystem#master

* item[+].linkId = "6"
* item[=].answer[+].valueCoding = http://health-outcomes-observatory.eu/fhir/CodeSystem/H2OHouseholdCodeSystem#single

* item[+].linkId = "7"
* item[=].answer[+].valueInteger = 10101
