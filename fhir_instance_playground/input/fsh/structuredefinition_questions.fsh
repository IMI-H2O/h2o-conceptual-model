Alias: LNC = http://loinc.org

Logical:   H20QuestionsModel
Id:        h2o-questions-model
Title:     "H2O Related Questions logical model"
Description: "A set of reusable questions asked in the H2O context will be captured in this Resource, used to create questionnaire instances"

* yearofbirth 1..1 SU decimal 
  "Year of birth"
  "The participants age expressed as birthyear."
  //* code = LNC#30525-0 "Age"