#import "/components/p.typ": *
#import "/components/h4.typ": *
#import "/components/table.typ": *
#import "/components/todo.typ": *

#let risk(
  name,
  description,
  inherentRiskProbability, inherentRiskImpact, inherentRiskLevel, 
  residualRiskProbability, residualRiskImpact, residualRiskLevel,
  countermeasures,
  occureActions
) = [
  #h4(name)
  
  ==== Description
  #p(description)
  
  ==== Counter- \measures
  #p(countermeasures)
  
  ==== Actions on Risk Occurrence
  #p(occureActions)
  
  ==== Risk assessment
  #p( 
    figure(
      block(  
        width: 90%,
        styledTable(
          columns: (1fr, 1fr, 1fr, 1fr),
          align: start,
          [
            | *Type*   | *Probabiliy*             | *Impact*            |  *Level*           | 
            | -------- | ------------------------ | ------------------- | ------------------ |
            | Inherent | #inherentRiskProbability | #inherentRiskImpact | #inherentRiskLevel |
            | Residual | #residualRiskProbability | #residualRiskImpact | #residualRiskLevel |
          ]
        )
      ),
      caption: [Risk assessment of Risk: #name]
    )
  )
]

== Risk Management
==== Introduction
#p(
  [
    In the section, the strategies employed for managing risks in this project are explored. The risk management involved the identification, analysis, and mitigation of possible risks. The key risks that were identified, along with the analyses conducted and measures developed to manage these risks, are outlined in the following discussion.
  ]
)

=== Risk Analysis

==== Introduction
#p(
  [
    In the risk analysis process, each identified risk is assigned a probability of occurrence and an impact level should it occur. These values are then used to calculate a risk score, which helps in classifying the risk as low, medium, or high according to the risk matrix. This classification is done twice: firstly, to determine the inherent risk level, which is the risk level before any countermeasures are implemented, and secondly, to assess the residual risk level, which is the risk level after the implementation of countermeasures.
    
    @jira-risks presents a screenshot of the _Jira_ risks management, illustrating how the risks were organized and visualized within the tool.

    #figure(
      image("/images/project-management/jira_risk_list.png", width: 95%),
      caption: [Screenshot of identified risks in _Jira_],
    )<jira-risks>
  ]
)

==== Risk Matrix
#p(
  [
    _@risk-matrix _ illustrates the specific values assigned to each risk probability and impact, which are used in calculating the risk score used for the classification of the risk.
    #figure(
      block(
        width: 60%,
        styledTable(
          columns: (1fr, 1fr, 1fr),
          [
            | *Probability* | *Impact*      | *Value* | 
            | ------------- | ------------- | ------- |
            | Rare          | Insignificant | 1       |
            | Unlikely      | Low           | 2       |
            | Possible      | Moderate      | 3       |
            | Likely        | Major         | 4       |
            | Certain       | Severe        | 5       |
          ]
        )
      ),
      caption: "Risk matrix to calculate the risk score",
      kind: table,
    )<risk-matrix>
  ]
)

==== Risk Level Formula
#p(
  [
    The risk level formula is used to calculate the the risk score used for the classification of the risk.

    #align(
      center,
      [$"risk level"="probability" dot "impact"$]
    )
    
  ]
)

==== Inherent Risks Matrix
#p(
  [
    The inherent risks matrix provides a visual representation of the potential risks identified, before any mitigating actions are taken. This matrix categorizes risks based on their likelihood of occurrence and the impact they could have if they materialize. It serves for prioritizing risks and planning appropriate countermeasures in the initial stages of the project.

    _@risk-inherent-matrix _ presents a screenshot from _Jira_ of the inherent risks matrix, showcasing how each risk is categorized and assessed.

    #figure(
      image("/images/project-management/jira_risk_inherent_matrix.png", width: 80%),
      caption: [Screenshot of inherent risk matrix in _Jira_],
    )<risk-inherent-matrix>
  ]
)

==== Residual Risks Matrix
#p(
  [
    The residual risks matrix provides a visual representation of the potential risks identified, after the implementation of countermeasures. This matrix categorizes risks based on their likelihood of occurrence and the impact they could have if they materialize. 

    _@risk-inherent-matrix _ presents a screenshot from _Jira_ of the residual risks matrix, showcasing how each risk is categorized.
    #figure(
      image("/images/project-management/jira_risk_residual_matrix.png", width: 80%),
      caption: [Screenshot of residual risk matrix in _Jira_],
    )
  ]
)

==== Results
#p(
  [
    #todo[risk result]
    In the risk analysis, six distinct risks were identified. Of these, one was classified as high-risk, one as moderate-risk, and the remaining three as low-risk. Following the implementation of countermeasures, there was a notable reduction in the overall risk levels. While the probability of these risks occurring remained unchanged, the impact of their occurrence was successfully mitigated. 
  ]
)

=== Risks
==== Inroduction
#p(
  [
    In this section all the identified risks are further detailed.
  ]
)

#todo[Real H4 header nice]

#risk(
  "Staff Shortage",
  "The author of this thesis is no longer able to work due to illness, accidents or other unforeseen events.",
  "Possible", "Severe", "High",
  "Possible", "Major", "High",
  "The project documentation is constantly updated and working hours are documented in order to identify the project status at any time and to be able to resume work after an absence.",
  "If the loss of work is only for a short duration a request to postpone the final deadline can be submitted. Otherwise the theseis must be canceled or postponed to another semester."
)

#risk(
  "Loss of Advisor",
  "The advisor of this thesis is no longer able to advise due to illness, accidents or other unforeseen events.",
  "Possible", "Moderate", "Moderate",
  "Possible", "Low", "Moderate",
  "The project documentation is constantly updated and working hours are documented in order to identify the project status at any time and to be able to resume advisement after an absence.",
  "If the loss of advisor is only for a short duration the thesis can be continued independently. Does the absence last longer and no representative advisor takes over, a complaint can be submitted to the academic advisor, the course director or the university management."
)

#risk(
  "Failure of Critical Infrastructure",
  "The infrastructure used for writing and implementing this theses, mostly cloud services, can no longer be used.",
  "Rare", "Major", "Low",
  "Rare", "Low", "Low",
  "The probability of this occurring is very low and therefore no explicit countermeasures are taken.",
  "Depending on the failing infrastructure, a solution must be found spontaneously."
)

#risk(
  "Failure of Personal Hardware",
  "The author's hardware for writing and implementing this thesis breaks or can no longer be used for other reasons.",
  "Rare", "Major", "Low",
  "Rare", "Moderate", "Low",
  "The probability of this occurring is very low and therefore no explicit countermeasures are taken. The author has household contents insurance which can compensate for damages.",
  "Depending on the failing hardware, a solution must be found spontaneously. As backup the university has hardware that can be used."
)

#risk(
  "Failure of Third-Party Hardware",
  "Third-Party hardware for writing and implementing this thesis breaks or can no longer be used for other reasons.",
  "Rare", "Moderate", "Low",
  "Rare", "Moderate", "Low",
  "The probability of this occurring is very low and therefore no explicit countermeasures are taken. The author has liability insurance which can compensate for damages.",
  "Depending on the failing hardware, a solution must be found spontaneously."
)

#todo[Risk: 'time estimation too optimistic']