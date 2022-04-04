# h2o-conceptual-model
H2O Conceptual model

```plantuml
@startuml
' ========================================
' start: configuration
' ========================================

skinparam linetype ortho

' ========================================
' end: configuration
' ========================================

' ========================================
' start: definition of entities/classes
' ========================================

class Questionnaire {
  url : uri [0..1]
  identifier : Identifier [0..*]
  version : string [0..1]
  name : string [0..1]
  title : string [0..1]
  ...
}

' ========================================
' end: definition of entities/classes
' ========================================

' ========================================
' start: definition of associations
' ========================================

Questionnaire *-- "[0..*]" QuestionnaireItem : item
QuestionnaireItem *-- "[0..*]" QuestionnaireItem : item
QuestionnaireItem *-- "[0..*]" Initial : initial
QuestionnaireItem *-- "[0..*]" AnswerOption : answerOption
QuestionnaireItem *-- "[0..*]" EnableWhen : enableWhen

QuestionnaireResponse *-- "[0..1]" Questionnaire : questionnaire
QuestionnaireResponse *-- "[0..*]" QuestionnaireResponseItem : item
QuestionnaireResponseItem *-- "[0..*]" QuestionnaireResponseItem : item
QuestionnaireResponseItem *-- "[0..*]" Answer : answer
Answer *-- "[0..*]" QuestionnaireResponseItem : item

' ========================================
' end: definition of associations
' ========================================
@enduml
```
