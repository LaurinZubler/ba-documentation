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
      caption: [Risk assessment for _ #name _]
    )
  )
]

== Risk Management
==== Introduction
#p[
  This section highlights the strategies for dealing with risks during the bachelor's theses. The risk management involved the identification, analysis, and mitigation of possible risks.
]

=== Risk Analysis

==== Introduction
#p[
  In the risk analysis process, identified risks are assigned a probability of occurrence and an impact level should it occur. These values are used to calculate a risk score, which helps to classify the risk as low, moderate, or high according to the risk matrix. This classification is done twice: firstly, to determine the inherent risk level, which is the risk level before any countermeasures are implemented, and secondly, to assess the residual risk level, which is the risk level after the implementation of countermeasures.

  _@jira-risks _ presents a screenshot of the _Hedge: Risk Management, Risk Register & Risk Matrix for Jira_, illustrating how the risks were organized.
]

  #figure(
    image("/images/project-management/jira_risk_list.png", width: 70%),
    caption: [Screenshot of identified risks in _Jira_],
  )<jira-risks>

==== Risk Metrics
#p[
  _@risk-metrics _ illustrates the specific values assigned to each risk probability and impact, which are used in calculating the risk score used for the classification of the risk.
]
  #figure(
    block(
      width: 50%,
      styledTable(
        columns: (auto, 1fr, auto),
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
  )<risk-metrics>

#pagebreak()
==== Risks Matrix
#p[
  Using the probability and impact each risk is classified as _Low, Moderate_ or _High_.

  _@risk-matrix _ shows how the risk classes are distributed.
]
  #figure(
    image("/images/project-management/jira_risk_matrix.png", width: 70%),
    caption: [Risk matrix class distribution],
  )<risk-matrix>

==== Inherent Risk Report
#p[
  The inherent risks report is providing a visual representation of the potential risks identified, before any mitigating actions are taken.

  _@risk-inherent-matrix _ presents a screenshot from _Jira_ of the inherent risks report, showcasing how each risk is categorized and assessed.
#figure(
  image("/images/project-management/jira_inherent_report.png", width: 100%),
  caption: [Screenshot of inherent risk report in _Jira_],
)<risk-inherent-matrix>
]

==== Residual Risk Report
#p[
  The residual risks report is providing a visual representation of the potential risks identified, after the implementation of countermeasures.

  _@risk-inherent-matrix _ presents a screenshot from _Jira_ of the residual risks report, showcasing how each risk is categorized.
#figure(
  image("/images/project-management/jira_residual_report.png", width: 100%),
  caption: [Screenshot of residual risk report in _Jira_],
)
]

==== Results
#p[
  #todo[risk result]
  In the risk analysis, six distinct risks were identified. Of these, one was classified as high-risk, one as moderate-risk, and the remaining three as low-risk. Following the implementation of countermeasures, there was a notable reduction in the overall risk levels. While the probability of these risks occurring remained unchanged, the impact of their occurrence was successfully mitigated.
]

#pagebreak()

=== Risks
==== Introduction
#p[
  In this section all the identified risks are further detailed.
]

#todo[Real H4 header nice]
#todo[table colored]

#risk(
  "Staff Shortage",
  "The author of this thesis is no longer able to work due to illness, accidents or other unforeseen events.",
  "Possible", "Severe", "High",
  "Possible", "Major", "High",
  "The project documentation is constantly updated and working hours are documented in order to identify the project status at any time and to be able to resume work after an absence.",
  "If the loss of work is only for a short duration a request to postpone the final deadline can be submitted. Otherwise the thesis must be canceled or postponed to another semester."
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

#risk(
  "Time Estimation too Optimistic",
  "Tasks take longer than expected and the planned goal cannot be reached",
  "Possible", "Major", "High",
  "Possible", "Moderate", "Moderate",
  "",
  ""
)

#todo[Risk: 'time estimation too optimistic']