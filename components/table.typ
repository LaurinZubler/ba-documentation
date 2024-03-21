#import "@preview/tablem:0.1.0": tablem
#import "@preview/tablex:0.0.8": tablex, hlinex

#let genericTable = tablem.with(
  render: (columns: auto, align: center+horizon, ..args) => {
    tablex(
      columns: columns,
      auto-lines: false,
      align: align,
      hlinex(y: 0),
      hlinex(y: 1),
      ..args,
      hlinex(),
    )
  }
)