#!/usr/bin/env amm

val pictures = List(
  ("distracted.jpg", "Distracted Boyfriend Meme", "https://twitter.com/BeeShellll/status/1245030591386566656"),
  ("thisisfine.jpg", "This Is Fine Meme", "https://twitter.com/BeeShellll/status/1245030701994586113"),
  ("toilet_paper.jpg", "Toilet Paper", "https://twitter.com/BeeShellll/status/1245030825491562499"),
  ("tiger_king.jpg", "The Tiger King", "https://twitter.com/BeeShellll/status/1245030825491562499"),

  ("office.jpg", "Office", "https://twitter.com/BeeShellll/status/1245030591386566656"),
  ("bbc.jpg", "BBC guy", "https://twitter.com/BDStanley/status/1245071576594350087"),
  ("MKBHD.jpg", "MKBHD", "https://twitter.com/MKBHD/status/1245335109106098177"),
  ("xp.jpg", "Windows XP", "https://wallpaperaccess.com/full/90278.jpg"),

  ("south_park.jpg", "South Park", "https://twitter.com/shkathleen_/status/1245194689629782017"),
  ("club_penguin.jpg", "Club Penguin", "https://twitter.com/BeeShellll/status/1245030591386566656"),
  ("sponge.jpg", "Sponge Bob", "https://twitter.com/BeeShellll/status/1245030701994586113"),
  ("icarly.jpg", "iCarly's bedroom", "https://twitter.com/BeeShellll/status/1245030591386566656"),
  
  ("phineas.jpg", "Phineas and Ferb", "https://twitter.com/BeeShellll/status/1245030701994586113"),
  ("monster_inc.jpg", "Monster Inc.", "https://twitter.com/BeeShellll/status/1245030825491562499"),
  ("friends.jpg", "Friends", "https://twitter.com/chanelizette/status/1245147224272588800"),
  ("ISS_cupola.jpg", "The ISS cupola", "https://twitter.com/AeroDork/status/1243354801225846784"),

  ("wright.jpg", "The Wright Flyer", "https://twitter.com/AeroDork/status/1243355008852062208"),
  ("c130.jpg", "C-130 off ramp", "https://twitter.com/AeroDork/status/1243355151185797120"),
  ("apollo-17.jpg", "Apollo 17", "https://twitter.com/AeroDork/status/1243355243347423237"),
  ("kim.jpg", "Rocket launch", "https://twitter.com/AeroDork/status/1243355334418157568"),

  // ("hilton-lobby.jpg", "The Hilton lobby", "https://twitter.com/AeroDork/status/1243358086795915264"),
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

pictures.grouped(4).foreach { rowPics =>
  val picsHtml = rowPics.map { case (img, title, url) =>
    s"""
<div class="tile is-parent">
  <article class="tile is-child box">
    <p class="subtitle">$title</p>
    <figure class="image is-4by3">
      <a href="assets/img/$img"><img src="assets/tumb/$img"></a>
    </figure>
    <a class="is-pulled-right is-size-7" href="$url" target="_blank">source</a>
  </article>
</div>
    """
  }


  pw.write(s"""<div class="tile is-ancestor">${picsHtml.mkString("")}</div>""")
}

pw.write("""</section>""")

pw.write("""
<section class="section">
  <div class="container">
    <h2 class="title">Zoom Virtual backgrounds</h2>
    <p>
      The official step-by-step guide to set Zoom Virtual backgrounds is <a href="https://support.zoom.us/hc/en-us/articles/210707503-Virtual-Background">here</a>
    </p>
  </div>
</section>
<footer class="footer">
<div class="content has-text-centered">
  <p>Built by <a href="https://twitter.com/ptrlaszlo">Peter László</a>. No affiliation with or endorsement by Zoom Video Communications, Inc. is intended or implied.</p>
</div>
</footer>
""")

pw.write("""</body></html>""")

pw.close
