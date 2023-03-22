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
- [NL Core Patient Profile](https://simplifier.net/Nictiz-R4-zib2020/NlcorePatient/~overview)
- [US Core Patient Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-patient.html)
### Identified differences between profiles
The ISiK Basismodul 1 and 2 define patient profiles with different canonical URLs ("https://gematik.de/fhir/ISiK/StructureDefinition/ISiKPatient" versus "https://gematik.de/fhir/isik/v2/Basismodul/StructureDefinition/ISiKPatient"). However, at the moment both patient profiles seem to be identical. They are also consistent with the extensions defined for the Patient resource in the Germany Core Patient Profile.
#### Differences between definition of identifiers
- The slices used for the representation of local patient identifiers within a health institution are modeled differently (in Austrian profile slice is named "localPatientId", in ISiK profile slice is named "Patientennummer", in NL profile no specific slice for the local patient id is defined)
- The slices used for the representation of social security identifiers are modeled differently (in Austrian profile slice is named "socialSecurityNumber", in ISiK profile slice is named "VersichertenId-GKV", in NL profile slice is named "bsn")
- All profiles allow the use of further identifiers, such as for example an H2O-specific identifier
#### Differences between definition of names
- In contrast to the Austrian profile, the ISiK and NL profiles define specific slices for the "name" element (slices "Name" and "Geburtsname" in ISiK and slices "nameInformation" and "nameInformation-GivenName" in NL). The slices are represented as profiles on FHIR data type "HumanName" and are distinguished by fixed values for attribute "use" in HumanName. The fixed values are all consistent with the FHIR standard value set "NameUse", i.e. "usual | official | temp | nickname | anonymous | old | maiden".
- In contrast to the Austrian profile, the ISiK and NL profiles include additional extensions for separate storage of name components, such as prefixes.
- All profiles expect the standard name elements (family, given, etc.) to be filled and also include the information held in the extensions, so the standard elements could serve as a common denominator for all profiles
#### Differences between definition of telecom
- In contrast to the Austrian and ISiK profiles, the NL profile defines specific slices for the "telecom" element (slices "telephoneNumbers" and "emailAdresses")
#### Differences between definition of gender
- The ISiK profile allows to subgroup gender "other" into the more specific variants "divers" and "unbestimmt" by means of an extension. The NL profile allows to additionally hold the national gender code via an extension and uses a concept map to translate NL gender codes to the FHIR standard value set "AdministrativeGender". The latter allows gender codes "male | female | other | unknown".
- The Austrian profile does not modify attribute "gender".
- In H2O we will need to record gender values "Male | Female | Other | Prefer not to say" according to the Diabetes Data Dictionary. If "Prefer not to say" can be represented via code "unknown" from FHIR standard value set "AdministrativeGender", the latter would be sufficient for H2O.

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

