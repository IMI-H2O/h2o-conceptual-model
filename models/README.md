# H2O FHIR-Based Conceptual Model

This page presents the non-final partial models of the [overview model](https://github.com/IMI-H2O/h2o-conceptual-model) of the H2O project. The models are stored in [PlantUML](https://plantuml.com) files. The complete list of the non-final partial models of the H2O project is as follows:
- [Appointment Model](https://github.com/IMI-H2O/h2o-conceptual-model/blob/main/models#appointment-model);
- [Encounter Model](https://github.com/IMI-H2O/h2o-conceptual-model/tree/main/models#encounter-model);
- [Observation Model](https://github.com/IMI-H2O/h2o-conceptual-model/tree/main/models#observation-model);
- [ObservationDefinition Model](https://github.com/IMI-H2O/h2o-conceptual-model/tree/main/models#observationdefinition-model);
- [Patient Model](https://github.com/IMI-H2O/h2o-conceptual-model/tree/main/models#patient-model);
- [Practitioner Model](https://github.com/IMI-H2O/h2o-conceptual-model/tree/main/models#practitioner-model);
- [Questionnaire Model](https://github.com/IMI-H2O/h2o-conceptual-model/tree/main/models#questionnaire-model);
- [RelatedPerson Model](https://github.com/IMI-H2O/h2o-conceptual-model/tree/main/models#relatedperson-model); and
- [ValueSet Model](https://github.com/IMI-H2O/h2o-conceptual-model/tree/main/models#valueset-model).


## Appointment Model
### See https://www.hl7.org/fhir/appointment.html for FHIR specification
![Appointment Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/appointment.puml)

## Encounter Model
### See https://www.hl7.org/fhir/encounter.html for FHIR specification
![Encounter Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/encounter.puml)
### Relevant profiles
- [Germany Core Encounter Profile](https://ig.fhir.de/basisprofile-de/stable/Ressourcen-AmbulanterStationaererFall.html)
- [US Core Encounter Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-encounter.html)


## Observation Model
### See https://www.hl7.org/fhir/observation.html for FHIR specification
![Observation Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/observation.puml)
### Relevant profiles
- [Germany Core Observation Profiles](https://ig.fhir.de/basisprofile-de/stable/Ressourcen-BeobachtungenMessungenObservation.html)
- [US Core Observation Profiles](http://hl7.org/fhir/us/core/STU5.0.1/profiles-and-extensions.html#observation)


## ObservationDefinition Model
### See https://www.hl7.org/fhir/observationdefinition.html for FHIR specification
![ObservationDefinition Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/observation_definition.puml)


## Patient Model
### See https://www.hl7.org/fhir/patient.html for FHIR specification
![Patient Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/patient.puml)
### Relevant profiles
- [ISiK Basismodul Level 1 (Germany)](https://simplifier.net/guide/implementierungsleitfadenisik-basismodul-stufe1/ImplementationGuide-markdown-Datenobjekte-Patient?version=current)
- [ISiK Basismodul Level 2 (Germany)](https://simplifier.net/guide/implementierungsleitfadenisik-basismodul/ImplementationGuide-markdown-Datenobjekte-Datenobjekte-Patient?version=current)
- [Germany Core Patient Profile](https://ig.fhir.de/basisprofile-de/stable/Ressourcen-Patient.html)
- [Austria Core Patient Profile](https://fhir.hl7.at/r4-core-main/StructureDefinition-at-core-patient.html)
- [US Core Patient Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-patient.html)
### Identified differences between profiles
The ISiK Basismodul 1 and 2 define patient profiles with different canonical URLs ("https://gematik.de/fhir/ISiK/StructureDefinition/ISiKPatient" versus "https://gematik.de/fhir/isik/v2/Basismodul/StructureDefinition/ISiKPatient"). However, at the moment both patient profiles seem to be identical. They are also consistent with the extensions defined for the Patient resource in the Germany Core Patient Profile.
#### Differences between ISiK and Austria Core Patient Profiles
The slices for element "identifier" that are used for the representation of local patient identifiers within a health institution are modeled differently. 
- In the Austrian profile the slice is named "localPatientId" and binds the identifier's element "type" as follows: "system" fixed to value "http://terminology.hl7.org/CodeSystem/v2-0203", "code" fixed to value "PI", "display" fixed to value "Patient internal identifier".
- In the ISiK profile the slice is named "Patientennummer" and is bound to a separate profile "Identifier-Profil für die Abbildung einer Patienten-ID". It binds the identifier's element "type" to valueSet "http://fhir.de/ValueSet/identifier-type-de-basis". Further a pattern is specified for element "type" as follows: "system" matched to value "http://terminology.hl7.org/CodeSystem/v2-0203", "code" matched to value "MR"


## Practitioner Model
### See https://www.hl7.org/fhir/practitioner.html for FHIR specification
![Practitioner Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/practitioner.puml)
### Relevant profiles
- [US Core Practitioner Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-practitioner.html)


## Questionnaire Model
### See https://www.hl7.org/fhir/questionnaire.html for FHIR specification
![Questionnaire Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/questionnaire.puml)
### Relevant profiles
- [Structured Data Capture Questionnaire Profiles](http://build.fhir.org/ig/HL7/sdc/artifacts.html#5)
- [US Core QuestionnaireResponse Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-questionnaireresponse.html)


## RelatedPerson Model
### See https://www.hl7.org/fhir/relatedperson.html for FHIR specification
![RelatedPerson Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/related_person.puml)
### Relevant profiles
- [US Core RelatedPerson Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-relatedperson.html)



## ValueSet Model
### See https://www.hl7.org/fhir/valueset.html for FHIR specification
![ValueSet Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/models/value_set.puml)
### Relevant profiles
- [FHIR Core Shareable ValueSet Profile](https://www.hl7.org/fhir/shareablevalueset.html)



<!--
## Overview Model
![Overview Model](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IMI-H2O/h2o-conceptual-model/main/overview.puml)

Check also the [Conceptual/Class Model](https://github.com/IMI-H2O/h2o-conceptual-model/blob/main/tmp/README.md).
-->

