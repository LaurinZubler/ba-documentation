#import "/components/p.typ": *
#import "/components/table.typ": *

= Abstract
==== Header 4
#p[
  #lorem(40)

  #figure(
    block(
      width: 90%,
      styledTable(
        columns: (auto, 1fr, 1fr, 1fr),
        [
          | *\#* | *Column 2*  | *Column 3* | *Column 4* |
          | ---- | ----------- | ---------- | ---------- |
          | 1    | row 1       | row 1      | row 1      |
          | 2    | row 2       | row 2      | row 2      |
          | 3    | row 3       | row 3      | row 3      |
        ]
      )
    ),
    caption: "Example Table",
    kind: table,
  )
]


