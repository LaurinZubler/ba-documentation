#import "/styles/variables.typ": *

#let todo(text) = {
  block(
    fill: rgb("#ffdc00"),
    inset: gap,
    radius: 4pt,
    figure(
      [],
      caption: text,
      kind: "todo",
      supplement: "Todo"
    )
  )
}
