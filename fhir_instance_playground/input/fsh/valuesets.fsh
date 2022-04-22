Alias: $AG = http://hl7.org/fhir/administrative-gender
Alias: $GenderIdentity = http://hl7.org/fhir/gender-identity
Alias: LNC = http://loinc.org


ValueSet: H2OSexVS
Title: "Sex of H2O patients."
Description:  "Sex of H2O patients."
* include codes from system $AG
* exclude $AG#unknown
* include $GenderIdentity#non-disclose
// unable to access e.g. the designation of a specific concept:
// * ^compose.include.concept.designation.language = #de

ValueSet: H2OEducationVS
Title: "Education levels of H2O patients."
* include codes from system http://health-outcomes-observatory.eu/fhir/CodeSystem/H2OEducationLevelCodeSystem

ValueSet: H2OHouseholdVS
Title: "Living arrangements of H2O patients."
* include codes from system http://health-outcomes-observatory.eu/fhir/CodeSystem/H2OHouseholdCodeSystem