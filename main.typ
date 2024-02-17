#import "/styles/template.typ": template
#import "/styles/numbering.typ": numbering
#import "/components/todo.typ": *

#include "/utils/metadata.typ"

#include "/chapters/title-page.typ"

#show: doc => template(doc)

#outline(
  title: [Todo's],
  target: figure.where(kind: "todo"),
)

// Abstract
// Acknowledgments

#outline(
    title: "Table of Contents",
    depth: 3,
    indent: auto,
)

= ohni nummer
== header 2
=== header 3
==== header 4
blubedidub
#todo("dkdk")


#show: doc => numbering(doc)

= mit nummer
== header 2
=== header 3
==== header 4
asdf

#todo("sup")








