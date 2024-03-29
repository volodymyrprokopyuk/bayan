{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key d \major
  \time 4/4
  \partial 4 { a'='4\mf | }
  fis='4 a fis a( | g4. fis8 e4) fis( |
  g='4 b) b a8( gis | a2.) a4 |
  d=''4 d fis,( a | cis4. b8 a4) g( |
  fis='4 fis e fis8 g | a2.) a4( |
  d=''4) d fis,( a | cis4. b8 a4) g( |
  fis='4 fis e e | d2~ d='4) r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \major
  \partial 4 { r4 | }
  d=4 dM! a d@M |
  \rep 2 { e'=4 a@7! a,=,4 a7 | }
  d=4 dM! a d@M | b4 d@M! a4 d@M |
  g=,4 e@m! e'4 em | a, d@M! g4 a@M! |
  fis=,4 d@M! a4 d@M | b4 bm! a b@m |
  g=,4 e@m! e'4 em | a, d@M! a4 a7! | d a=, d+dM! r |
}
{{ end }}
