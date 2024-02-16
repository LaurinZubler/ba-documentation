#import "/styles/variables.typ": *

#let titlePage(doc) = {
  
  set page(margin: (left: 0.7cm, right: 0.7cm, top: 0.7cm, bottom: 0.7cm))
  
  set text(fontSize, font: font)
  
  set align(center)

  doc
}