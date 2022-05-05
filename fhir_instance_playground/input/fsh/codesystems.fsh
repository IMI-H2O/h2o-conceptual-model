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


Instance: ISCED2011EducationLevels
InstanceOf: CodeSystem
Usage: #definition
Title: "United Nations International Classification of Education (ISCED) 2011 levels."
* status = #draft
* content = #complete
* version = "0.0.1+2022-05-05"
* name = "isced-2011-education-levels" 
* description = "The International Standard Classification of Education (ISCED) belongs to the United Nations International Family of Economic and Social Classifications, which are applied in statistics worldwide with the purpose of assembling, compiling and analysing cross-nationally comparable data. ISCED is the reference classification for organizing education programmes and related qualifications by education levels and fields. (UN, 2012, see: http://dx.doi.org/10.15220/978-92-9189-123-8-en)"

* concept[+].code = #0
* concept[=].display = "Early childhood educational"
* concept[=].definition = "ISCED level 0 refers to early childhood programmes that have an intentional education component. These programmes aim to develop socio-emotional skills necessary for participation in school and society. They also develop some of the skills needed for academic readiness and prepare children for entry into primary education. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de-DE
* concept[=].designation[=].value = "Krippen / Kindergärten oder gleichwertig"
* concept[=].designation[+].language = #de-AT
* concept[=].designation[=].value = "Kindergarten"

* concept[+].code = #1
* concept[=].display = "Primary education"
* concept[=].definition = "Programmes at ISCED level 1, or primary education, are typically designed to provide students with fundamental skills in reading, writing and mathematics (i.e. literacy and numeracy) and establish a solid foundation for learning and understanding core areas of knowledge, personal and social development, in preparation for lower secondary education. It focuses on learning at a basic level of complexity with little, if any, specialisation. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de-DE
* concept[=].designation[=].value = "Grund- /Gesamtschulen (1.–4. Klasse)"
* concept[=].designation[+].language = #de-AT
* concept[=].designation[=].value = "Volksschule"

* concept[+].code = #2
* concept[=].display = "Lower secondary education"
* concept[=].definition = "Programmes at ISCED level 2, or lower secondary education, are typically designed to build on the learning outcomes from ISCED level 1. Usually, the aim is to lay the foundation for lifelong learning and human development upon which education systems may then expand further educational opportunities. Some education systems may already offer vocational education programmes at ISCED level 2 to provide individuals with skills relevant to employment. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de-DE
* concept[=].designation[=].value = "Förder- / Haupt- / Volksschule"
* concept[=].designation[+].language = #de-AT
* concept[=].designation[=].value = "Hauptschule, NMS, AHS Unterstufe"

* concept[+].code = #3
* concept[=].display = "Upper secondary education"
* concept[=].definition = "Programmes at ISCED level 3, or upper secondary education, are typically designed to complete secondary education in preparation for tertiary education or provide skills relevant to employment, or both. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de-DE
* concept[=].designation[=].value = "Realschule / POS / MSA"
* concept[=].designation[+].language = #de-AT
* concept[=].designation[=].value = "AHS Oberstufe, BHS, BMS, Lehre"

* concept[+].code = #4
* concept[=].display = "Post-secondary non-tertiary education"
* concept[=].definition = "Post-secondary non-tertiarcy education provides learning experiences building on secondary education, preparing for labour market entry as well as tertiary education. It aims at the individual acquisition of knowledge, skills and competencies lower than the level of complexity characteristic of tertiary education. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de-DE
* concept[=].designation[=].value = "Abitur / Fachabitur"

* concept[+].code = #5
* concept[=].display = "Short-cycle tertiary education"
* concept[=].definition = "Short-cycle tertiary education, are often designed to provide participants with professional knowledge, skills and competencies. Typically, they are practically- based, occupationally-specific and prepare students to enter the labour market. However, these programmes may also provide a pathway to other tertiary education programmes. Academic tertiary education programmes below the level of a Bachelor’s programme or equivalent are also classified as ISCED level 5. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Bachelorabschluss oder gleichwertig"

* concept[+].code = #6
* concept[=].display = "Bachelor's or equivalent"
* concept[=].definition = "Bachelor’s or equivalent level, are often designed to provide participants with intermediate academic and/or professional knowledge, skills and competencies, leading to a first degree or equivalent qualification. Programmes at this level are typically theoretically-based but may include practical components and are informed by state of the art research and/or best professional practice. They are traditionally offered by universities and equivalent tertiary educational institutions. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Bachelorabschluss oder gleichwertig"

* concept[+].code = #7
* concept[=].display = "Masters's or equivalent"
* concept[=].definition = "Master’s or equivalent level, are often designed to provide participants with advanced academic and/or professional knowledge, skills and competencies, leading to a second degree or equivalent qualification. Programmes at this level may have a substantial research component but do not yet lead to the award of a doctoral qualification. Typically, programmes at this level are theoretically-based but may include practical components and are informed by state of the art research and/or best professional practice. They are traditionally offered by universities and other tertiary educational institutions. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Masterabschluss oder gleichwertig"

* concept[+].code = #8
* concept[=].display = "Doctorate or equivalent"
* concept[=].definition = "Programmes at ISCED level 8, or doctoral or equivalent level, are designed primarily to lead to an advanced research qualification. Programmes at this ISCED level are devoted to advanced study and original research and are typically offered only by research-oriented tertiary educational institutions such as universities. Doctoral programmes exist in both academic and professional fields. (source: UN, ISCED-2011, 2008, http://dx.doi.org/10.15220/978-92-9189-123-8-en)"
* concept[=].designation[+].language = #de
* concept[=].designation[=].value = "Doktorabschluss oder höher"