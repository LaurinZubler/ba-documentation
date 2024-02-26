#import "/styles/variables.typ": *
#import "@preview/chic-hdr:0.4.0": *
#import "/components/line.typ": *
  
  #let h4(content) = [
    ==== #content
    #set text(fontSizeH4)
    *#chic-heading-name(dir: "prev", level: 4)*
    #horizontalLine(lineWidthH3)
  ]