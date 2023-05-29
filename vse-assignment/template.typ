// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), subtitle: "", place: "", date: "", body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set text(font: "New Computer Modern", lang: "cs", size: 12pt)
  set page(
    paper: "a4",
    margin: (x: 3cm, y: 2.5cm),
  )
  show heading: it => block[
    #set align(center)
    #text(it.body)
    #v(0.3em)
  ]
  show math.equation: set text(weight: 400)

  align(center)[
    #block(text(weight: 500, 1.5em, "Vysoká škola ekonomická v Praze"))
  ]

  v(2em)

  align(center)[
    #block(text(weight: 500, 1.25em, "Fakulta informatiky a statistiky"))
  ]

  pad(
    top: 3em,
    bottom: 3em,
    align(center)[
      #image(width: 25%, "vse-fis.png")
    ]
  )
  
  align(center)[
    #block(text(weight: 700, 1.25em, title))
  ]

  
  if subtitle != "" {
    v(1em)
    align(center)[
      #block(text(weight: 500, 1.25em, subtitle))
    ]    
  }

  align(center + bottom)[
    #pad(
      top: 3em,
      bottom: 3em,
      x: 2em,
      grid(
        columns: (1fr,) * calc.min(3, authors.len()),
        gutter: 1em,
        ..authors.map(author => align(center, text(1em, author))),
      ),
    )
  ]

  if place != "" and date != "" {
    v(1em)
    align(center + bottom)[
      #block(text(weight: 500, 1em, place + ", " + date))
    ]
  }

  pagebreak()
  set page(numbering: "1", number-align: right)
  set par(justify: true, leading: 1em, first-line-indent: 1em)
  body
}
