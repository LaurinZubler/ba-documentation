#import "/components/p.typ": *
#import "/components/table.typ": *
#import "/components/todo.typ": *
#import "/components/h4.typ": *
#import "/utils/document-version.typ": *


== Project Planning
==== Introduction
#p[
  In this section the organisation and planning of the thesis are detailed.
  Covered are the methodology, the tools utilized for planning and execution, and the delineation of project phases and milestones.
  Additionally, the implementation of Scrum and time tracking are discussed.
]

=== Method
==== Scrum+
#p[
  In this project Scrum+ is employed, a hybrid approach blending elements of Scrum and the Rational Unified Process (RUP).
  From RUP, the concept of dividing the project into distinct phases is adopted, providing a structured framework for the entire project timeline.
  For more immediate and flexible planning, the agile methodologies of Scrum are integrated, particularly through the use of iterative sprints.
  This combination allows for both long-term structural clarity and short-term adaptability in the project management.
]

=== Tools
==== Jira
#p[
  As the primary tool for the project management _Jira_ #footnote("https://www.atlassian.com/software/jira") by _Atlassian_ is used. It is specifically configured to align with the project's requirements,
  facilitating effective planning and tracking throughout the project’s duration.

]

==== Jira Extensions
#p[
  For a better experience and additional functions in _Jira_ the following extensions are integrated:

  - *Time Tracking:* For more accurate time tracking, _ Timesheet Tracking for Jira_ by _TouchDown_ is used.
    #footnote[https://marketplace.atlassian.com/apps/1216988/timesheet-tracking-for-jira]

  - *Risk Management:* For risk tracking and analysis  _Hedge: Risk Management, Risk Register & Risk Matrix for Jira_ from _Appfire_ is employed.
    #footnote[https://marketplace.atlassian.com/apps/1227408/hedge-risk-management-risk-register-risk-matrix-for-jira]
]

#pagebreak()

=== Phases
==== Epics
#p[
  The project is initial segmented into rough phases, which are implemented using _Jira_ Epics.
  Five phases are defined to structure the project's timeline and key stages.

  _@epics-start _ lists the epics at the project start. The to phases _Development_ and _Evaluation_ are overlapping in time.

  #v(gap)

  #figure(
    block(
      width: 95%,
      styledTable(
        columns: (auto, auto, 1fr),
        align: start,
        [
          | *Phase*             | *Duration*  | *Description*                                     |
          | ------------------- | ----------- | ------------------------------------------------- |
          | Project Setup       | 2 Weeks     | Setup project management tools and documentation  |
          | Analysis            | 2 Weeks     | Conduct literature research and user study        |
          | Development         | 7 Weeks     | Develop a prototype                               |
          | Evaluation          | 7 Weeks     | Collect expert feedback and evaluate prototype    |
          | Project Completion  | 2 Weeks     | Complete documentation and submission             |
        ]
      )
    ),
    caption: "Planned project phases at project start",
    kind: table,
  )<epics-start>

  #v(gap)

  For ongoing task during the whole project the two epics _Documentation_ and _Project Management_ are created.


  _@timeline-start _ presents a screenshot of the _Jira_ timeline captured at the start of the project, illustrating how these phases were organized and visualized within the tool.

  #figure(
    image("/images/project-management/jira_timeline_start.png", width: 95%),
    caption: [Screenshot _Jira_ timeline. Planned project phases at the beginning of the project],
  )<timeline-start>

]

==== Reorganization
#p[
#todo("project planning: actual epics")
]

#pagebreak()

=== Milestones

#let milestone(title, due, end, criteria, refl) = [
  ==== #title
  #p[
    #set strong(delta: 0)

    ==== _Due date_
    #p(due)

    ==== _Actual achieved_
    #p(end)

    ==== _Acceptance Criterias_
    #p(criteria)

    ==== _Reflection_
    #p(refl)
  ]
]

==== Introduction
#p[
  Milestones are significant markers that denote critical achievements and points of progress in a project's timeline.
  For this project, a milestone was defined at the end of each phase.
  Since _Jira_ is not offering a native functionality for creating milestones, a new issue type is created for this purpose.
  Similar to tasks, these milestones are initially placed in the backlog and then added to sprints as the project is progressing.
  They are not only serving as goals to strive for but also as opportunities to evaluate the project's direction and success at various stages.
]

#milestone(
  "End of Project Setup",
  "04.03.2024",
  "04.03.2024",
  [
    - Project management tool set up
    - Project time tracking tool set up 
    - Project documentation document set up 
    - Automated CI to publish project documentation
    - Automated CI to publish meeting minutes
    - Project plan: How, when and who will work on the project?
    - Risks: What can endager the project and how to handle it?
    - Quality assurance: How is a good quality of the project ensured?
  ],
  [
    At the time of the due date all acceptance criterias were fullfilled.
  ]
)

#milestone(
  "End of Analysis",
  "17.10.2024",
  "-",
  [
    - Literature Review: What are STI's and how does tracing work?
    - Technology Evaluation: What mobile platform and blockchain should be used for the implementation?
    - Evaluation: Which test center organisations can be contacted?
  ],
  [

  ],
)

#milestone(
  "End of Development",
  "06.05.2024",
  "-",
  [
    - Prototype implemented
  ],
  [

  ],
)

#milestone(
  "End of Evaluation",
  "27.05.2024",
  "-",
  [
    - Expert feedback on prototype collected.
  ],
  [

  ],
)

#milestone(
  "Project Completion",
  "14.06.2024",
  "-",
  [
    - Documentation complete
    - All relevant elements submitted on time
  ],
  [

  ],
)

=== Scrum Elements
==== Introduction
#p[
  In this section the applied scrum elements are described.
]

==== Sprint
#p[
  The tasks are completed in two-week sprints. Each sprint has a sprint goal and some sprint increments, small steps towards the final project product.

  During the ongoing sprint the tasks were managed using the _jira_ sprint board. In four swimlane the progress of the tasks are visualized.

  These swimlanes are used:
  - *To Do* For tasks that have not yet been started
  - *In Progress* For tasks that are currently being worked on
  - *Review* For tasks waiting for a review from the advisor
  - *Done* For tasks that are done
]

==== Backlog Refinement
#p[
  In the backlog refinement new tasks are created in the backlog and the time for completion is estimated.
]

==== Sprint Planning
#p[
  Before each sprint start, the sprint is filled with tasks from the backlog so that the estimated time of work is 2 weeks and a sprint goal is defined.
]

==== Sprint Review
#p[
  At the end of each sprint, the outcome of the Sprint is inspected and future adaptations are determinated. The Sprint review is part of the weekly meeting with the advisor.
]

==== Daily Scrum Meeting
#p[
  Since the project team only consists of one person, no daily Scrum meetings are held.
]

==== Weekly Meeting with Adviser
#p[
  Every week a meeting with the project advisor is held.
  #todo[link to meeting minutes?]
]

#pagebreak()

=== Time Tracking
==== Time Expenditure
#p[
  The bachelor thesis is worth 12 ects credits, each credit is valued with 30 hours of work.
  This results in a total workload of 360 hours. Distributed over the 17 weeks of the semester a working time of approximately 21 hours or 2.6 days is targeted.
]

==== Tracking
#p[
  To ensure sufficient effort is put into this thesis, working hours are recorded throughout the semester.
  #todo[Timetracking: actual results]
  #todo[Timetracking: link to jira time export?]

  #if documentVersion == "full" [
    A detailed time tracking report exported from jira can be found in the appendix.
  ]
]

#pagebreak()

=== Sprints
#let sprint(name, start, end, goal, increments, retro, startImage, endImage) = [
  ==== #name
  #p[
    #set strong(delta: 0)
    ==== _Period_
    #p[#start - #end]

    ==== _Sprint Goal_
    #p(goal)

    ==== _Planned \ Sprint Increments_
    #p(increments)

    ==== _Retrospective_
    #p(retro)

    ==== _Screenshot Jira_
    #p({
      if startImage != ""  {
        figure(
          image(startImage, width: 90%),
          caption: [Screenshot of the _Jira_ tasks at the start of #name]
        )
      }

      if endImage != ""  {
        figure(
          image(endImage, width: 90%),
          caption: [Screenshot of the _Jira_ swimlanes at the end of #name]
        )
      }
    })
  ]
]

#sprint(
  "Sprint 1",
  "19.02.2024",
  "04.03.2023",
  "Complete project setup",
  [
    - Project management tools
    - Project documentation
    - Milestone: End of Project Setup
  ],
  [
    #todo[Sprint 1 retro: new tasks "analysis" (evaluate tech & test org), documentation next sprint. no problem: not in epic project setup -> milestone reached]
  ],
  "/images/project-management/1_start.png",
  "/images/project-management/1_end.png"
)

#sprint(
  "Sprint 2",
  "05.03.2024",
  "18.03.2023",
  "Analysis done",
  [
    - Analysis: Literature Review
    - Analysis: Technology Evaluation
    - Milestone: End of Analysis
  ],
  [
    To get in contact with a test organisation as soon as possible, the decision was made to set the focus on writing a concept, to be able to present the idea of the project.
    Therefore there was less time for the literature review and the milestone _End of Analysis_ was not reached.
    The overall success of the project is not seen in danger, as some tasks are now done in advance and the literature review is just postponed.
  ],
  "/images/project-management/2_start.png",
  "/images/project-management/2_end.png"
)

#sprint(
  "Sprint 3",
  "19.03.2024",
  "01.04.2023",
  "Concept & Literature Review",
  [
    - Analysis: Literature Review
    - Development: Architecture diagram
    - Development: Design Prototype
    - Concept: Presentation to introduce the project idea
    - Evaluation: Contact test organisation
    - Milestone: End of Analysis
  ],
  [

  ],
  "/images/project-management/3_start.png",
  //"/images/project-management/3_end.png"
  ""
)

#sprint(
  "Sprint 4",
  "02.04.2024",
  "15.04.2023",
  "",
  [

  ],
  [

  ],
  //"/images/project-management/4_start.png",
  //"/images/project-management/4_end.png"
  "",
  ""
)

#sprint(
  "Sprint 5",
  "16.04.2024",
  "29.04.2023",
  "",
  [

  ],
  [

  ],
  //"/images/project-management/5_start.png",
  //"/images/project-management/5_end.png"
  "",
  ""
)

#sprint(
  "Sprint 6",
  "30.04.2024",
  "13.05.2023",
  "",
  [

  ],
  [

  ],
  //"/images/project-management/6_start.png",
  //"/images/project-management/6_end.png"
  "",
  ""
)

#sprint(
  "Sprint 7",
  "14.05.2024",
  "27.05.2023",
  "",
  [

  ],
  [

  ],
  //"/images/project-management/7_start.png",
  //"/images/project-management/7_end.png"
  "",
  ""
)

#sprint(
  "Sprint 8",
  "28.05.2024",
  "10.06.2023",
  "",
  [

  ],
  [

  ],
  //"/images/project-management/8_start.png",
  //"/images/project-management/8_end.png"
  "",
  ""
)

#sprint(
  "Sprint 9",
  "11.06.2024",
  "14.06.2023",
  "",
  [
    #todo[Sprint: combine 8 and 9. 9 is only 4 days]
  ],
  [

  ],
  //"/images/project-management/9_start.png",
  //"/images/project-management/9_end.png"
  "",
  ""
)