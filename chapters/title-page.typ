#import "/styles/variables.typ": *
#import "/styles/title-page.typ": titlePage
#import "/utils/strings.typ": *

#show: doc => titlePage(doc)

#v(3fr)

#text(84pt)[
  *#title*
]

#v(0.7fr)

#text(18pt)[
  #subtitle
]

#v(2fr)

#text(18pt)[
  #thesis
]

#grid(
  columns: (0.8fr, 1fr),
  row-gutter: 1em,
  column-gutter: 1em,
  align(right, "Author:"), align(left, author),
  align(right, "Advisor:"), align(left, advisor),
  align(right, "Institute:"), align(left, institute),
  align(right, "Field of Study:"), align(left, fieldOfStudy),
  align(right, "Semester:"), align(left, semester),
)


#v(0.5fr)

#image("/images/ost/ost_logo.svg", height: 3cm)

#v(0.5fr)
