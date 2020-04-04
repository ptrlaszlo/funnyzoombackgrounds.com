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
  ("titanic.jpg", "Titanic", "https://hips.hearstapps.com/digitalspyuk.cdnds.net/17/41/1507565852-titanic-1490202383.jpg"),
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

  ("hilton-lobby.jpg", "The Hilton lobby", "https://twitter.com/AeroDork/status/1243358086795915264"),
  ("prison.jpg", "Prison", "https://twitter.com/RedEye_Sec/status/1245064421380104198"),
  ("toystory.jpg", "Toy Story", "https://twitter.com/desdemipersiana/status/1245191276011696130"),
  ("insideout.jpg", "Inside Out", "https://twitter.com/desdemipersiana/status/1245191276011696130"),

  ("club_penguin.jpg", "Club Penguin", "https://twitter.com/BeeShellll/status/1245030591386566656"),
  ("movieup.jpg", "UP", "https://twitter.com/desdemipersiana/status/1245191276011696130"),
  ("nemo.jpg", "Nemo", "https://twitter.com/desdemipersiana/status/1245191276011696130"),
  ("Westerlund2.jpg", "Westerlund 2", "https://cdn.spacetelescope.org/archives/images/screen/heic1509a.jpg"),
)

val animated = List(
  ("ship.mp4", "Ship", "https://www.reddit.com/r/zoombackgrounds/comments/fsihx3/zoom_background_video_for_difficult_meetings/"),
  ("star_wars_1.mp4", "Star Wars", "https://www.reddit.com/r/zoombackgrounds/comments/ft52yp/heres_another_version_of_the_xwing_animated/"),
  ("star_wars_2.mp4", "Star Wars", "https://www.reddit.com/r/zoombackgrounds/comments/ft150s/animated_xwing_cockpit_i_put_together_from_a/"),
  ("man_eating.mp4", "Man eating", "https://www.reddit.com/r/zoombackgrounds/comments/fqp8ze/man_eating/"),
) 

def createHtml(name: String, picsPage: Boolean, items: List[(String, String, String)]) = {
  import java.io._
  val index = new PrintWriter(new File(name))
  val title = if (picsPage) "Funny zoom backgrounds" else "Animated zoom backgrounds"
  index.write(s"""
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>$title | funnyzoombackgrounds.com</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
</head>
  <body>
  <section class="section">
    <div class="container has-text-centered" style="margin-bottom: 25px;">
      <h1 class="title">$title</h1>
      <h2 class="subtitle">To make the meetings bearable</h2>
    </div>
    <div class="tabs is-centered">
      <ul>
        <li class="${if(picsPage) "is-active" else ""}">
          <a href="/"><span class="icon is-small">🖼️</span><span class="is-size-5">Pictures</span></a>
        </li>
        <li class="${if(!picsPage) "is-active" else ""}">
          <a href="animated.html"><span class="icon is-small">📹</span><span class="is-size-5">Animated</span></a>
        </li>
      </ul>
    </div>

""")

items.grouped(4).foreach { rowPics =>
  val picsHtml = rowPics.map { case (img, title, url) =>
    val picContent = if (picsPage)
      s"""<figure class="image is-4by3"><a href="assets/img/$img"><img src="assets/tumb/$img"></a></figure>"""
    else
      s"""<a href="assets/video/$img"><video src="assets/video/$img" autoplay loop></video></a>"""

    s"""
<div class="tile is-parent">
  <article class="tile is-child box">
    <h2 class="subtitle">$title</h2>
    $picContent
    <a class="is-pulled-right is-size-7" href="$url" target="_blank">source</a>
  </article>
</div>
    """
  }


  index.write(s"""<div class="tile is-ancestor">${picsHtml.mkString("")}</div>""")
}

index.write("""</section>""")

index.write("""
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

  index.write("""</body></html>""")
  index.close
}

createHtml("index.html", picsPage = true, pictures)
createHtml("animated.html", picsPage = false, animated)
