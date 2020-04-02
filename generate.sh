#!/usr/bin/env amm

val pictures = List(
  ("ISS_cupola.jpg", "The ISS cupola", "https://twitter.com/AeroDork/status/1243354801225846784"),
  ("wright.jpg", "The Wright Flyer", "https://twitter.com/AeroDork/status/1243355008852062208"),
  ("c130.jpg", "C-130 off ramp", "https://twitter.com/AeroDork/status/1243355151185797120"),
  ("apollo-17.jpg", "Apollo 17", "https://twitter.com/AeroDork/status/1243355243347423237"),
  ("kim.jpg", "Rocket launch", "https://twitter.com/AeroDork/status/1243355334418157568"),
  ("hilton-lobby.jpg", "The Hilton lobby", "https://twitter.com/AeroDork/status/1243358086795915264")
)

import java.io._
val pw = new PrintWriter(new File("index.html"))

pw.write("""
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Funny zoom backgrounds | funnyzoombackgrounds.com</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <style type="text/css">
      * {
        oxutline: 1px solid red;
      }
    </style>
  </head>
  <body>
  <section class="section">
    <div class="container">
      <h1 class="title">
        Funny zoom backgrounds
      </h1>
      <p class="subtitle">
        To make the meetings bearable
      </p>
    </div>
  </section>

  <section class="section">
""")

pictures.grouped(3).foreach { rowPics =>
  val picsHtml = rowPics.map { case (img, title, url) =>
    s"""
<div class="tile is-parent">
  <article class="tile is-child box">
    <p class="subtitle">$title</p>
    <figure class="image is-4by3">
      <img src="assets/img/$img">
    </figure>
    <a class="is-pulled-right" href="$url" target="_blank">source</a>
  </article>
</div>
    """
  }


  pw.write(s"""<div class="tile is-ancestor">${picsHtml.mkString("")}</div>""")
}

pw.write("""</section></body></html>""")

pw.close
