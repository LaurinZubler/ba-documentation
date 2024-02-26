#import "/utils/global.typ" as global
#import "/utils/document-version.typ": *

== Project Planning
#global.paragraph(
  "Introduction",
  [
    In this section the organizing and structuring the thesis are detailed. Covered are the methodology, the tools utilized for planning and execution, and the delineation of project phases and milestones. Additionally, the implementation of Scrum and time tracking are discussed.
  ]
)

=== Method
#global.paragraph(
  [Scrum+],
  [
    In this project Scrum+ was employed, a hybrid approach blending elements of Scrum and the Rational Unified Process (RUP). From RUP, the concept of dividing the project into distinct phases was adopted, providing a structured framework for the entire project timeline. For more immediate and flexible planning, the agile methodologies of Scrum were integrated, particularly through the use of iterative sprints. This combination allowed for both long-term structural clarity and short-term adaptability in the project management.
  ]
)

=== Tools
#global.paragraph(
  "Jira",
  [
    As the primary tool for the project management _Jira_ by _Atlassian_ was used. It was specifically configured to align with the project's requirements, facilitating effective planning and tracking throughout the project’s duration.
    #footnote("https://www.atlassian.com/software/jira")
  ]
)

#global.paragraph(
  "Jira Extensions",
  [
    For a better experience and additional functions in _Jira_ the following extensions were integrated:
    
    - *Time Tracking:* For more accurate time tracking, _ Timesheet Tracking for Jira_ by _TouchDown_ was used.
      #footnote[https://marketplace.atlassian.com/apps/1216988/timesheet-tracking-for-jira] 
    
    - *Risk Management:* For risk tracking and analysis  _Hedge: Risk Management, Risk Register & Risk Matrix for Jira_ from _Appfire_ was employed.
      #footnote[https://marketplace.atlassian.com/apps/1227408/hedge-risk-management-risk-register-risk-matrix-for-jira] 
  ]
)

#pagebreak()

=== Phases
#global.paragraph(
  [Epics],
  [
    The project was initial segmented into rough phases, which were implemented using _Jira_ Epics. 
    Six phases were defined to structure the project's timeline and key stages.
    
    _@epics-start _ lists the epics at the project start.
    
    #v(global.gap)

    #figure(
      block(
        width: 95%,
        global.table(
          columns: (auto, auto, 1fr),
          align: start,
          [
            | *Phase*             | *Duration*  | *Description*                                     | 
            | ------------------- | ----------- | ------------------------------------------------- |
            | Project Setup       | 2 Weeks     | Setup project management tools and documentation  |
            | Analysis            | 3 Weeks     | Conduct literature research and user study        |
            | Design              | 3 Weeks     | Develop design prototype                          |
            | Implementation      | 3 Weeks     | Implement prototype                               |
            | Evaluation          | 2 Week      | Collect user feedback and evaluate prototype      |
            | Project Completion  | 1 Week      | Complete documentation and submission             |
          ]
        )
      ),
      caption: "Planned project phases at project start",
      kind: table,
    )<epics-start>
  
    #v(global.gap)

    _@timeline-start _ presents a screenshot of the _Jira_ timeline captured at the start of the project, illustrating how these phases were organized and visualized within the tool.

    #figure(
      image("/images/project-management/jira_timeline_cut.png", width: 95%),
      caption: [Screenshot _Jira_ timeline. Planned project phases at the beginning of the project],
    )<timeline-start>
 ] 
)

#global.paragraph(
  "Reorganization",
  [
    During the project, the focus of the thesis shifted. More studies were found during the literature research than initially anticipated, leading to a greater emphasis and extension of the analysis phase. 
    This shift resulted in the development of a prototype not being feasible within the project timeline. Given that the project was also a solo endeavor, the available time was limited, and developing a prototype of satisfactory was not achievable.

    For these reasons, the focus was redirected towards architecture. Determining what data would be needed to implement the scenario, which hardware components to use, and how these components would communicate with each other. Furthermore, it became apparent that writing this document required more time than initially expected.

    To accommodate these changes, the project was reorganized. The analysis phase was extended. The design,implementation and evaluation phases were removed, and a new phase dedicated to architecture was introduced. Additionally, the project completion phase was extended to allow for more focus on documentation.

    \ // force pagebreak

    _@epics-end _ illustrates the project phases as they were actually carried out.

    #v(global.gap)

    #figure(
      block(
        width: 95%,
        global.table(
          columns: (auto, auto, 1fr),
          align: start,
          [
            | *Phase*             | *Duration*  | *Description*                                     | 
            | ------------------- | ----------- | ------------------------------------------------- |
            | Project Setup       | 2 Weeks     | Setup project management tools and documentation  |
            | Analysis            | 6 Weeks     | Conduct literature research and user study        |
            | Architecture        | 2 Weeks     | Developing a hardware for future implementaion    |
            | Project Completion  | 4 Week      | Complete documentation and submission             |
          ]
        )
      ),
      caption: "Actual project phases carried out",
      kind: table,
    )<epics-end>

    #v(global.gap)
    
    _@timeline-end _ presents a screenshot of the _Jira_ timeline captured at the end of the project, illustrating how these phases were organized and visualized within the tool.

    #figure(
      image("/images/project-management/jira_timeline_end_cut.png", width: 95%),
      caption: [Screenshot _Jira_ timeline. Actual carried out project phases],
    )<timeline-end>
  ]
)

#pagebreak()

=== Milestones
#global.paragraph(
  "Introduction", 
  [
    Milestones are significant markers that denote critical achievements and points of progress in a project's timeline. For this project, a milestone was defined at the end of each phase. Since Jira does not offer a native functionality for creating milestones, a new issue type was specifically created for this purpose. Similar to work tasks, these milestones were initially placed in the backlog and then added to sprints as the project progressed. They serve not only as goals to strive for but also as opportunities to evaluate the project's direction and success at various stages.     
  ]
)

#let milestone(short, title, due, criteria, end, refl) = [
  ==== #short: #title
  #v(global.gap)
  #global.row("Due date", due)
  #global.row("Acceptance Criterias", criteria)
  #global.row("Actual achieved", end)
  #global.row("Reflection", refl)
]

#milestone(
  "M1",
  "End of Project Setup",
  "03.10.2023",
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
  "10.10.2023",
  [
    At the time of due date the acceptance criterias were not all fullfilled. Therefore the project setup was extended for another week. The impact on the overall project was considered uncritical, so the project planning was not adjusted. At the time of the achievement of the milestone, the documentation was not as extensive as intended. However, this was considered as not important for the next steps and the next project phase was started.
  ]
)


#milestone(
  "M2", 
  "End of Analysis",
  "24.10.2023",
  [
    - Literature research: What is the current scientific state of AR systems in the context of sailing.
    - Interviews: What are problems while sailing? Understanding and determining the usage context and requirements talking to sailors.
    - Personas: Describe fictional personas that could use the application based on interviews.
    - Scenarios: Describe scenarios that could be implemented based on research and interviews.
    - Scenario chosen for prototype implementation
  ],
  "14.11.2023",
  [
    With the extension of the analysis phase, this milestone was also postponed by 3 weeks. Some results of the analysis in the acceptance criterias were not documented pronounced at the end of the phase. This was taken into account by extending the project completion phase. To finish the documentation at the end of the project.
  ],
)

#milestone(
  "M3", 
  "End of Desing",
  "14.11.2023",
  [
    - Design solutions for the prototype developed
    - User feedback collected and into design integrated
  ],
  "-",
  "This milestone was removed with the corresponding design phase"
)

#milestone(
  "M4", 
  "End of Implementation",
  "05.12.2023",
  [
    - Prototype implemented
    - Prototype fulfills requirements from analysis
    - User feedback from evaluation integrated
  ],
  "-",
  "This milestone was removed with the corresponding implementation phase"
)

#milestone(
  "M5",
  "End of Evaluation",
  "12.12.2023",
  "User feedback on prototype collected",
  "-",
  "This milestone was removed with the corresponding evaluation phase"
)

#milestone(
  "M6", 
  "Project Finish",
  "22.12.2023",
  [
    - Documentation complete
    - All relevant elements submitted on time
  ],
  "22.12.2023",
  "At the time of writing this, I hope to reach this milestone. If not, I think I have more to worry about than this text. Therefore, milstone exceedingly well fulfilled"
)

#milestone(
  "M7", 
  "End of Architecture",
  "28.11.2023",
  [
    - Technical feasability for one scenario is discussed
    - What data is needed for the implementation of the scenario
    - What hardware components are needed for the implementation of the scenario
    - Who does the communication between the components work
  ],
  "28.11.2023",
  [
    This mileston was new introduced after the reorganization of the project phases marking the end of the architecture phase.
    The acceptance critearias were mostly fullfield at the time of the due date. Missing were some parts in the documentation. As the next phase was dedicated to the writing of the documentation, there were no concerns to start with the project completion phase.
  ],
)

=== Scrum Elements
#global.paragraph(
  "Introduction",
  [
    In this section the applied scrum elements are decribed.
  ]
)

#global.paragraph(
  "Sprint",
  [
    The work is completed in two-week sprints. Each sprint has a sprint goal and some sprint increments, small steps towards the final project product.

    During the ongoing sprint the tasks were managed using the _jira_ sprint board. In four swimlane the progress of the tasks is visualized. 
    
    These swimlanes were used:
    - *To Do* For tasks that have not yet been started
    - *In Progress* For tasks that are currently being worked on
    - *Review* For tasks waiting for a review from the advisor
    - *Done* For tasks that are done
  ]
)

#global.paragraph(
  "Backlog Refinement",
  [
      In the backlog refinement new tasks were created in the backlog and the time for completion was estimated. 
  ]
)

#global.paragraph(
  "Sprint Planning",
  [
    Before each sprint start, the sprint was filled with tasks from the backlog so that the estimated time of work was 2 weeks and a sprint goal was defined.
  ]
)

#global.paragraph(
  "Sprint Review",
  [
    At the end of each sprint, the outcome of the Sprint was inspected and future adaptations were determinated. The Sprint review took place in the weekly meeting with the supervisior.
  ]
)


#global.paragraph(
  "Daily Scrum Meeting",
  [
    Since the project team only consists of one person, no daily Scrum meetings were held.
  ]
)

#global.paragraph(
  "Weekly Meeting with Supervisior",
  [
    Every week a meeting with the project supervisor took place. 
  ]
)

#pagebreak()

=== Time Tracking
#global.paragraph(
  "Time Expenditure",
  [
    This thesis is worth 8 ects credits, each credit is valued with 30 hours of work. This results in a total workload of 240 hours. Distributed over the 14 weeks of the semester a working time of approximately 17 hours or 2 days is targeted.
  ]
)
#global.paragraph(
  "Tracking",
  [
    To ensure that sufficient effort was put into this thesis, hours worked were recorded throughout the semester. In total, 216 hours and 10 minutes were dedicated to the project. This falls within a 10% range of the total 240 hours required, which is an acceptable margin.

    #if document-version == "full" [
      A detailed time tracking report exported from jira can be found in the appendix.
    ]
  ]
)

#pagebreak()

=== Sprints
#let sprint(name, start, end, goal, increments, retro, startImage, endImage) = [
  ==== #name
  #v(global.gap)
  #global.paragraph("Period", [#start - #end])
  #global.paragraph("Sprint goal", goal)
  #global.paragraph("Sprint increments", increments)
  #global.paragraph("Retrospective", retro)
  #global.paragraph(
    "Screenshot Jira",
    {
      if startImage != ""  {
        figure(
          image(startImage, width: 90%),
          caption: [Screenshot of the _Jira_ tasks at the start of #name]
        )
      }
      
      figure(
        image(endImage, width: 90%),
        caption: [Screenshot of the _Jira_ swimlanes at the end of #name]
      )
    }
  )
  #pagebreak(weak: true)
]

#sprint(
  "Sprint 1",
  "18.09.2023",
  "03.10.2023",
  "Complete project setup",
  [
    - Project management tools
    - Project documentation 
    - Chapter project management
    - Milestone: Complete project setup
  ],
  [
    - Sprint goal was not achieved
    - Time estimation for documentation too low
    - Set up typst took longer
    - Writing took longer
    - Lots of considerations how to do things
  ],
  "",
  "/images/project-management/1_end.png"
) 
#sprint(
  "Sprint 2",
  "03.10.2023",
  "17.10.2023",
  "Interviews & Literature Research",
  [
    - Interview Guide
    - Interview Protocols
    - Literature sources
  ],
  [
    - Sprint goal was not achieved
    - Too little time was found, the target hours were not met
    - Finishing the documentary was postponed, focus on more outcome
    - Many AR-Sailing studies found, focus shift towards research, therefore design phase extended
    - Conduct interviews took longer than expected.
  ],
  "/images/project-management/2_start.png",
  "/images/project-management/2_end.png"
)

#sprint(
  "Sprint 3",
  "17.10.2023",
  "31.10.2023",
  "Deep dive into the Studies & Interviews",
  [
    - Interviews Evaluation 
    - Literature Summary
  ],
  [
    - Sprint goal was achieved
    - Interviews all done
  ],
  "",
  "/images/project-management/3_end.png"
)

#sprint(
  "Sprint 4",
  "31.10.2023",
  "15.11.2023",
  "Personas and Scenarios",
  [
    - Personas
    - Scenarios
    - Milestone: End of Analysis
  ],
  [
    - Sprint goal was not fully achieved
    - Reorganisation of the project. Task from Desing phase was not processed
    - Milestone not reached
    - Documentation of research took longer than expected
  ],
  "/images/project-management/4_start.png",
  "/images/project-management/4_end.png"
)

#sprint(
  "Sprint 5",
  "15.11.2023",
  "29.11.2023",
  "Architecture",
  [
    - Architectur
    - Milestone: End of Architecure
  ],
  [
    - Sprint goal was not fully achieved
    - Personas done
    - Milestone not reached
    - Documentation of reserach and scenarios took longer than expected
  ],
  "",
  "/images/project-management/5_end.png"
)

#sprint(
  "Sprint 6",
  "29.11.2023",
  "13.12.2023",
  "Final push",
  [
    - Documentation 
    - Milestone not reached
  ],
  [
    - Sprint goal was achieved
  ],
  "/images/project-management/6_start.png",
  "/images/project-management/6_end.png"
)

#sprint(
  "Sprint 7",
  "13.12.2023",
  "22.12.2023",
  "Submission",
  [
    - Documentation complete
    - Submission
  ],
  [
    - Sprint goal was achieved
  ],
  "/images/project-management/7_start.png",
  "/images/project-management/7_end.png"
)

