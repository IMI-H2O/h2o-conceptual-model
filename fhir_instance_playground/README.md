# H2O FHIR-based example instance of the conceptual model

This folders content should provide a first impression on how well the defined conceptual model can be translated into FHIR resources. To identify potential weaknesses, a first set of resource instances is created, using FHIR Shorthand (FSH) notation and the FSH compile SUSHI.

## Installation
Use [SUSHI](https://fshschool.org/docs/sushi/), the reference FSH compiler, to build the content of this project.  
Following the [installation guide on fshschool.org](https://fshschool.org/docs/sushi/installation/), `node.js`, `npm` and `sushi` should be installed. Check with: `$ sushi -h`  
Optionally use Visual Studio Code and [FHIR Shorthand (FSH) Language Support Extension](https://marketplace.visualstudio.com/items?itemName=MITRE-Health.vscode-language-fsh).  
Optionally to only validate fsh scripts, install [https://github.com/glichtner/fsh-validator](fsh-validator) with: `$ pip install -U fsh-validator` (pip, python and jre needs to be installed)

## Compile/Run
Call: `$ sushi .` to compile all FSH input files contained in `./input/fsh`. The output folder defaults to `./fsh-generated`.  
To validate all generated instances run `$ fsh-validator --all`   
Some example FHIR REST calls are given in [test.rest](test.rest).

## Questions to be discussed (2022-04-22)
### Variables
Some variables defined in the spreadsheet, might need some more discussion:
- [ ] `SEX` might be a [Administrative-gender](http://hl7.org/fhir/r4/valueset-administrative-gender.html) or [gender-identity](http://hl7.org/fhir/ValueSet/gender-identity) as defined as standard FHIR valueset.
Administrative-gender is the standard valueset/code-system for capturing the gender of persons, to adapt this system 'divers' (spreadsheet) needs to be replaced by 'other' (administrative-gender) and the null favor 'I do not wish to answer' would be coded as 'unknown'.
The gender-identity provides, beside others, codes for a more differentiated coding of genders e.g. 'other', 'non-binary', 'trans*' for 'divers' and 'non-disclose' for 'I do not wish to answer'   
 A ValueSet combining those two CodeSystems is introduced in [fsh-generated/resources/ValueSet-H2OSexVS.json](fsh-generated/resources/ValueSet-H2OSexVS.json), a more elaborated version of this can be found in [alternatives/ValueSet-H2OSexVS.json](alternatives/ValueSet-H2OSexVS.json), featuring multi-language support using the designation field (see limitations of fsh)
- [ ] `EducationLevel` no english translation available in the Excel Sheet. Discuss the usage of a classification system, e.g. International Standard Classification of Education (ISCED). To allow for comparability of results between countries, very divers sets of types of schools and educational systems can be found. A comparison of education levels between germany and austria revealed huge differences in namings and classification.
There is also a [FHIR Code System 'EducationLevel'](https://www.hl7.org/fhir/v3/EducationLevel/cs.html) which is ported from HL7v3, but does not correspond to a standard classification system.
- [ ] `Household` there is a HL7v3 CodeSystem in FHIR for livingArrangements with somehow overlapping codes: [LivingArrangement](https://www.hl7.org/fhir/v3/LivingArrangement/cs.html)
- [ ] `Year of birth`, `Height`, `Weight`, `ZIP Code` are defined as free number, a more restricted type would be useful (integer, ranges, restricted locations)
- [ ] `Year of birth` questionable if age is relevant in the questionnaire -> derive from patient resource

### General
- [ ] Use of designation to capture language specifics on ValueSet level works. However I was not able to express designations in valuesets using fsh. An example would be to express different languages for sex as (see also the ./alternatives/ValueSet.. definition for a full example):
```json
{
    "resourceType": "ValueSet",
    ...
    "compose": {
        "include": [
        {
            "system": "http://hl7.org/fhir/administrative-gender",
            "concept": [
            {
                "code": "male",
                "designation": [{
                        "language": "de",
                        "value": "männlich"
                    },{
                        "language": "es",
                        "value": "masculino"
                    }]
            }
            ...
```

- [ ] The usage of [ElementDefinitions](https://www.hl7.org/fhir/elementdefinition.html) as questionnaire items need to be further investigated. As ElementDefinition is used in [StructureDefinitions](https://www.hl7.org/fhir/structuredefinition.html#structuredefinition) and cannot exist as stand-alone resource, it needs to be decided whats the 'kind' attribute of this StructureDefinition.  
- [ ] Although the usage of ElementDefinition for the sake of reusability of questions across questionnaires is favorable, a simple alternative would be to use the element-extension, which provides e.g. min-max constraints, see [alternatives/Questionnaire_ElementExtension.json](alternatives/Questionnaire_ElementExtension.json)
Use of extensions:  
[Core extension for Questionnaire](https://www.hl7.org/fhir/questionnaire-extensions.html) provides e.g. units for inputs  
[Element-definition Extensions](https://www.hl7.org/fhir/element-extensions.html) would provide more detailed restrictions on allowed values, e.g. regex, min-max-values, decimal-places, length-restrictions
- [ ] IG "[Structured Data Capture](https://www.hl7.org/fhir/questionnaire.html)" defines some relevant features, e.g. Support for extracting information from a completed [QuestionnaireResponse](https://www.hl7.org/fhir/questionnaireresponse.html) to generate other FHIR resources, rendering options. But this IG is very elaborated and might be to complex for our application.
- [ ] some limitations of FSH were encountered (e.g. ValueSet definitions only allow include and exclude operations, no access to properties using Caret Paths)

- [ ] Unable to find proper examples for usage of the 'definition' attribute in the [Questionnaire](https://www.hl7.org/fhir/questionnaire.html#resource).item.   
This example uses 'definition' but those do not resolve to any proper ElementDefinition containing Resources:
 https://www.hl7.org/fhir/questionnaire-profile-example-ussg-fht.html

### Next steps (florian)
- [ ] Further investigate ElementDefinitions, find some examples, fix "reuse of questions" problem
- [ ] Prepare code suggestions for Alizé (next meeting 2022-04-29)
- [ ] Compare FHIR instances, to those used in the API definition (joris)
- [ ] see reference projects in https://www.devdays.com/wp-content/uploads/2020/12/jceua_201117_BrianPostlethwaite_Questionnaires.pdf