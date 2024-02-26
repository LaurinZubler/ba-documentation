#import "/styles/variables.typ": *
#import "@preview/chic-hdr:0.4.0": *

// paragraph
#let p(content) = {
  grid(
    columns: (1fr, 6fr),
    gutter: gap,
    // last H4
    text(fontSizeH4)[*#chic-heading-name(dir: "prev", level: 4)*], 
    content,
  )
  v(gap)
} 