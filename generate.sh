#!/usr/bin/env amm

val pictures = List(
  ("distracted.jpg", "Distracted Boyfriend Meme", "https://twitter.com/BeeShellll/status/1245030591386566656"),
  ("distracted_girlfriend.jpg", "Distracted Girlfriend Meme", "https://www.reddit.com/r/zoombackgrounds/comments/fu9kfa/distracted_girlfriend/"),
  ("thisisfine.jpg", "This Is Fine Meme", "https://twitter.com/BeeShellll/status/1245030701994586113"),
  ("tiger_king.jpg", "The Tiger King", "https://twitter.com/BeeShellll/status/1245030825491562499"),
  
  ("bbc.jpg", "BBC guy", "https://www.reddit.com/r/zoombackgrounds/comments/ftklsi/bbc_news_videobomb/"),
  ("MKBHD.jpg", "MKBHD", "https://twitter.com/MKBHD/status/1245335109106098177"),
  ("xp.jpg", "Windows XP", "https://wallpaperaccess.com/full/90278.jpg"),  
  ("toilet_paper.jpg", "Toilet Paper", "https://twitter.com/BeeShellll/status/1245030825491562499"),
  
  ("ISS_cupola.jpg", "The ISS cupola", "https://twitter.com/AeroDork/status/1243354801225846784"),
  ("casino.jpg", "Casino", "https://www.reddit.com/r/zoombackgrounds/comments/fx8clr/casino/"),
  ("backvan.jpg", "Back of a van", "https://www.reddit.com/r/zoombackgrounds/comments/fx86d2/in_the_back_of_a_van/"),
  ("stripclub.jpg", "Strip club", "https://www.reddit.com/r/zoombackgrounds/comments/fxkbrn/strip_club/"),

  ("wright.jpg", "The Wright Flyer", "https://twitter.com/AeroDork/status/1243355008852062208"),
  ("c130.jpg", "C-130 off ramp", "https://twitter.com/AeroDork/status/1243355151185797120"),
  ("apollo-17.jpg", "Apollo 17", "https://twitter.com/AeroDork/status/1243355243347423237"),
  ("kim.jpg", "Rocket launch", "https://twitter.com/AeroDork/status/1243355334418157568"),
  
  ("prison.jpg", "Prison", "https://twitter.com/RedEye_Sec/status/1245064421380104198"),
  ("Westerlund2.jpg", "Westerlund 2", "https://cdn.spacetelescope.org/archives/images/screen/heic1509a.jpg"),
  ("mugshot.jpg", "Mugshot", "https://www.reddit.com/r/zoombackgrounds/comments/fu98tb/mugshot/"),
  ("ladycat.jpg", "Lady yelling at the cat", "https://www.reddit.com/r/zoombackgrounds/comments/fu9mbc/lady_yelling_at_the_cat/"),
)

val animated = List(
  ("rollercoaster", "Rollercoaster", "https://www.reddit.com/r/zoombackgrounds/comments/fw2nza/rollercoaster_background/"),
  ("star_wars_1", "Star Wars", "https://www.reddit.com/r/zoombackgrounds/comments/ft52yp/heres_another_version_of_the_xwing_animated/"),
  ("star_wars_2", "Star Wars", "https://www.reddit.com/r/zoombackgrounds/comments/ft150s/animated_xwing_cockpit_i_put_together_from_a/"),
  ("star_wars_3", "Star Wars", "https://www.reddit.com/r/zoombackgrounds/comments/fvfna1/star_wars_xwing_chased_by_tie_fighter/"),
  
  ("man_eating", "Man eating", "https://www.reddit.com/r/zoombackgrounds/comments/fqp8ze/man_eating/"),
  ("neon", "Neon Rooftops", "https://www.reddit.com/r/zoombackgrounds/comments/ftppgz/neon_rooftops_looping/"),
  ("ship", "Ship", "https://www.reddit.com/r/zoombackgrounds/comments/fsihx3/zoom_background_video_for_difficult_meetings/"),
  ("ship_2", "Boat", "https://www.reddit.com/r/zoombackgrounds/comments/ft7lzp/i_made_this_clip_from_a_youtube_video_and_used_it/"),

  ("backseat", "Backseat", "https://www.reddit.com/r/zoombackgrounds/comments/g1jbo2/backseat/"),
  ("bbcvideo", "BBC", "https://www.reddit.com/r/zoombackgrounds/comments/fy7lbl/children_interrupt_bbc_news_interview_as_close_as/"),
  ("cowboy", "Screaming Cowboy", "https://www.reddit.com/r/zoombackgrounds/comments/fzqz1r/screaming_cowboy_loop/"),
  ("nevergonna", "Never Gonna Give You Up", "https://www.reddit.com/r/zoombackgrounds/comments/fxpl55/never_gonna_give_you_up_video_background/"),
  
  ("starman", "Starman", "https://www.youtube.com/watch?v=aBr2kKAHN6M"),
  ("fire", "Fire", "https://www.reddit.com/r/Cinemagraphs/comments/frrgjl/burning_down_the_house/"),
  ("train", "Train", "https://www.reddit.com/r/Cinemagraphs/comments/fvgjqo/snowy_trainspotting/"),
  ("matrix", "The Matrix", "https://www.reddit.com/r/Cinemagraphs/comments/85ipdp/neos_epiphany_the_matrix_1999/"),
)

val movies = List(
  ("office.jpg", "Office", "https://twitter.com/BeeShellll/status/1245030591386566656"),
  ("south_park.jpg", "South Park", "https://twitter.com/shkathleen_/status/1245194689629782017"),
  ("titanic.jpg", "Titanic", "https://hips.hearstapps.com/digitalspyuk.cdnds.net/17/41/1507565852-titanic-1490202383.jpg"),
  ("sponge.jpg", "Sponge Bob", "https://twitter.com/BeeShellll/status/1245030701994586113"),
 
  ("icarly.jpg", "iCarly's bedroom", "https://twitter.com/BeeShellll/status/1245030591386566656"), 
  ("phineas.jpg", "Phineas and Ferb", "https://twitter.com/BeeShellll/status/1245030701994586113"),
  ("monster_inc.jpg", "Monster Inc.", "https://twitter.com/BeeShellll/status/1245030825491562499"),
  ("friends.jpg", "Friends", "https://twitter.com/chanelizette/status/1245147224272588800"),

  ("hilton-lobby.jpg", "The Hilton lobby", "https://twitter.com/AeroDork/status/1243358086795915264"),
  ("toystory.jpg", "Toy Story", "https://twitter.com/desdemipersiana/status/1245191276011696130"),
  ("insideout.jpg", "Inside Out", "https://twitter.com/desdemipersiana/status/1245191276011696130"),
  ("club_penguin.jpg", "Club Penguin", "https://twitter.com/BeeShellll/status/1245030591386566656"),
  
  ("movieup.jpg", "UP", "https://twitter.com/desdemipersiana/status/1245191276011696130"),
  ("nemo.jpg", "Nemo", "https://twitter.com/desdemipersiana/status/1245191276011696130"),
  ("azkaban.jpg", "Azkaban", "https://www.reddit.com/r/zoombackgrounds/comments/fumcrh/front_page_of_the_daily_prophet/"),
  ("bobross.jpg", "Bob Ross painting set", "https://www.reddit.com/r/zoombackgrounds/comments/fu9kna/bob_ross_painting_set/"),
)

abstract class PageType(val page: String, val title: String, val items: List[(String, String, String)])
case object Index extends PageType("index.html", "Funny zoom backgrounds", pictures)
case object Animated extends PageType("animated.html", "Animated zoom backgrounds", animated)
case object Movies extends PageType("movies.html", "Funny zoom backgrounds", movies)

def createHtml(pageType: PageType) = {
  import java.io._
  val index = new PrintWriter(new File(pageType.page))
  index.write(s"""
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${pageType.title} | funnyzoombackgrounds.com</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
<link rel="shortcut icon" href="assets/favicon.ico">
<style>
  @media screen and (max-width: 768px) {
    .tabs ul {
      flex-direction: column;
      li { width: 100%; }
    }
  }
</style>
</head>
  <body>
  <section class="section">
  <div class="container has-text-centered" style="margin-bottom: 25px;">
    <h1 class="title">${pageType.title}</h1>
    <h4 class="subtitle">To make the meetings bearable</h4>
  </div>
""")

val menu = s"""
<div class="tabs is-centered">
<ul>
  <li class="${if(pageType == Index) "is-active" else ""}">
    <a href="/"><span class="icon is-small">🖼️</span><h2 class="is-size-5">Pictures</h2></a>
  </li>
  <li class="${if(pageType == Animated) "is-active" else ""}">
    <a href="${Animated.page}"><span class="icon is-small">📹</span><h2 class="is-size-5">Animated</h2></a>
  </li>
  <li class="${if(pageType == Movies) "is-active" else ""}">
    <a href="${Movies.page}"><span class="icon is-small">🎬</span><h2 class="is-size-5">Movies / Cartoons</h2></a>
  </li>
</ul>
</div>"""

index.write(menu)

pageType.items.grouped(4).foreach { rowPics =>
  val picsHtml = rowPics.map { case (img, title, url) =>
    val picContent = pageType match {
      case Animated => s"""<video src="assets/video/$img.mp4" poster="assets/video/$img.jpg" controls preload="metadata" loop></video>"""
      case _ => s"""<figure class="image is-4by3"><img src="assets/tumb/$img"></figure>"""
    }

    val downloadLink = pageType match {
      case Animated => s"assets/video/$img.mp4"
      case _ => s"assets/img/$img"
    }

    s"""
<div class="tile is-parent" id="$img">
  <article class="tile is-child box">
    <h3 class="subtitle"><a href="#$img">$title</a></h3>
    $picContent
    <a class="is-pulled-right is-size-7" href="$url" target="_blank">&nbsp;source</a>
    <a class="is-pulled-right is-size-7" href="$downloadLink" target="_blank">download&nbsp;</a>
  </article>
</div>
    """
  }


  index.write(s"""<div class="tile is-ancestor">${picsHtml.mkString("")}</div>""")
}

index.write(menu)

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

createHtml(Index)
createHtml(Animated)
createHtml(Movies)
