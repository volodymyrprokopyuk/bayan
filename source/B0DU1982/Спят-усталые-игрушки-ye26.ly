{{ define "rightHand" }}
\relative {
  \tempo Andante
  \clef treble
  \key c \major
  \time 4/4
  \meter 1/4 1,1,1,1
  \repeat volta 2 {
    g'='4.\(\mp e8 g4. e8 | g4 g f e\) |
    d='4( e g2) | d8( e d e g4) r |
    g='4.\( d8 g4. d8 | g4 f e d\) |
    c='4( e g2) | c,8( d e f g4) r |
    g='4.\( g8 a4 g | c c a g\) |
    c,='4\( c f g | a a g f\) |
    e='4\( e f e | g2.\) r4 | f2\( d |
    \alternative {
      \volta 1 { c='2.\) r4 | }
      \volta 2 { \hSpace c='2. \sSlur ub #'((wb . 4)) ( r4) \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=4-\stBass cM! g c@M | c4 cM! g c@M |
  \rep 2 { d'=4 dm! g,=, g7! | }
  \rep 2 { d'=4 f@M! g,=,4 g7! | }
  c=4 cM! g c@M | c4 cM! g g7! |
  c=4 c7! c c7 | c c7! g c@7 |
  f'=4 fM! f fM | d f@M! d4 f@M |
  g,=,4 c@M! g4 c@M | a4 a7! a a7 |
  d=4 dm! g, g7! | c cM! g=, c@M | c+cM!2. r4 |
}
{{ end }}
