#import "@preview/chic-hdr:0.3.0": *
#import "/utils/strings.typ": *
#import "/styles/variables.typ": *
#import "/components/line.typ": *

// Text size and font 
#set text(
  fontSize,
  font: font,
)

// page layout
#set page(
  margin: (left: 1.4cm, right: 1cm),
)

// page numbering
#set page(numbering: "1 / 1")

// figure caption style
#show figure.caption: emph

// heading 1
#show heading.where(level: 1): it => {
  pagebreak()
  set text(fontSizeH1)
  if it.body == "Abstract" or it.body == "Table of Contents" {
    it.body
  } else {
    it
  }
  horizontalLine(lineWidthH1)
  v(gapH1)
}

// heading 2
#show heading.where(level: 2): it => {
  set text(fontSizeH2)
  it
  horizontalLine(lineWidthH2)
  v(gapH2)
}

// heading 3
#show heading.where(level: 3): it => {
  set text(fontSizeH3)
  it
  horizontalLine(lineWidthH3)
  v(gapH3)
}

// footnote
#show footnote.entry: set text(fontSizeFootnote)

// header and footer
// https://github.com/typst/packages/tree/main/packages/preview/chic-hdr/0.3.0
#show: chic.with(
  skip: (1,),
  chic-offset(gapHeaderFooter),
  chic-separator(
    on: "header",
    gutter: 2em,
    lineWidthHeaderFooter,
  ),  
  chic-separator(
    on: "footer",
    gutter: 1.5em,
    lineWidthHeaderFooter,
  ),
  chic-height(on: "header", 3.2cm + gapHeaderFooter),
  chic-height(on: "footer", 1.8cm + gapHeaderFooter),
  chic-header(
    left-side: image("/images/ost/ost_logo.jpg", height: 1.4cm),
    center-side: text(fontSizeH2)[*#title*],
    right-side: text(fontSizeHeaderFooter)[#author]
  ),
  chic-footer(
    left-side: text(fontSizeHeaderFooter)[#datetime.today().display("[day]. [month repr:long] [year]")],
    center-side: text(fontSizeHeaderFooter)[#thesis],
    right-side: text(fontSizeHeaderFooter)[Page #chic-page-number()]
  )
)