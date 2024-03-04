#import "/styles/layout.typ": layout
#import "/utils/document-version.typ": *

#let meeting(doc) = {
  if documentVersion == "meetings" {
    show: doc => layout(doc)
    doc
  }
}