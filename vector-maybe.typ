#import "@preview/cetz:0.2.2"

#cetz.canvas({
  import cetz: *
  import cetz.plot
  import cetz.draw: *

  line((0,0), (x: 10), mark: (end: ">"), name: "x-axis")
  line((0,0), (y: 10), mark: (end: ">"), name: "y-axis")
  line((0,0), (x: -3), name: "x-axis-neg")
  line((0,0), (y: -3), name: "y-axis-neg")

  line((1, 1), (2, 3), (1, 2), (0, 0), fill: yellow)

  set-style(content: (stroke: none, fill: none, padding: .1))

  content(
    "x-axis.end",
    anchor: "north",
    padding: .15,
    [x]
  )

  content(
    "y-axis.end",
    anchor: "west",
    padding: .15,
    [y]
  )

  line((0, 0), (1, 1), mark: (end: ">"), stroke: green, name: "vector-a")
  line((1, 1), (2, 3), mark: (end: ">"), stroke: red, name: "vector-b")

  content(
    "vector-a.end",
    anchor: "west",
    padding: .2,
    [(1, 1)]
  )

  content(
    (name: "vector-a", anchor: 75%),
    anchor: "north-west",
    padding: .1,
    [$arrow(a)$]
  )

  content(
    "vector-b.end",
    anchor: "south-west",
    [(2, 3)]
  )

  content(
    (name: "vector-b", anchor: 75%),
    anchor: "north-west",
    padding: .1,
    [$arrow(b)$]
  )

  line((0, 0), (2, 3), mark: (end: ">"), stroke: blue, name: "vector-c")

  content(
    "vector-c.end",
    anchor: "south-west",
    [(2, 3)]
  )

  content(
    (name: "vector-c", anchor: 75%),
    anchor: "south-east",
    padding: .1,
    [$arrow(c)$]
  )
})

$
arrow(a) + arrow(b) = arrow(c)
$
