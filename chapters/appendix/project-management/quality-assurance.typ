#import "/utils/global.typ" as global

== Quality Assurance
#global.paragraph(
  "Introduction",
  [
    In this section, the various actions undertaken to ensure good quality and safety are described.
  ]
)

#global.paragraph(
  "Types",
  [
    This document was written using Types#footnote("https://typst.app/").
  ]
)

#global.paragraph(
  "Github",
  [  
    For the validation of versioning and backups of the document, GitHub was utilized. This platform ensured that all changes and iterations of the project documentation were systematically tracked and securely stored. To further streamline the process, a CI/CD (Continuous Integration/Continuous Deployment) pipeline was implemented. This setup facilitated the automated building of the document.

    In the event of any failures or issues in the pipeline, a notification system was established using a Microsoft Teams channel. This integration allowed for immediate alerts from GitHub whenever the pipeline encountered problems, ensuring prompt attention and resolution.
  ]
)

#global.paragraph(
  "Dashboard",
  [
    For the distribution of the project's documentation, including the main document, meeting minutes, and essential links, GitHub Pages was employed to create a online project dashboard. This dashboard provided a centralized and accessible location for all project-related materials. This ensured that the most recent versions of the documents were always available, particularly beneficial for the advisor, who could access the latest work at any time.

    _@dashboard _ is showing a screenshot of the project dashboard.
    #figure(
      image("/images/project-management/dashboard.png", width: 85%),
      caption: "Screenshot of the project dashboard"
    )<dashboard>
  ]
)