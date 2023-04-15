#let project(title: "", authors: (), subtitle: "", place: "", date: "", body) = {
  set document(author: authors, title: title)
  set text(font: "New Computer Modern", lang: "en")
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
  set par(justify: true)
  body
}