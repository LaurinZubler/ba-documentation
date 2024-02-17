#import "/utils/document-version.typ": *

#let onlyFullVersion(doc) = {
  if documentVersion == "full" {
    doc
  } else {
    []
  }
}