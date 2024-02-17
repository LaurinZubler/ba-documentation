#import "/styles/template.typ": template
#import "/styles/numbering.typ": numbering
#import "/components/todo.typ": *

#include "/utils/metadata.typ"

#include "/chapters/title-page.typ"

#show: doc => template(doc)

// Abstract
// Acknowledgments
// Table of Contents

= ohni nummer
== header 2
=== header 3
==== header 4
blubedidub

#show: doc => numbering(doc)

= mit nummer
== header 2
=== header 3
==== header 4
asdf

#todo("sup")








