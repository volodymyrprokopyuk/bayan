{{ define "rightHand" }}
\relative {
  \tempo "Tempo di marcia"
  \clef treble
  \key d \minor
  \time 2/4
  d'='8\mf d g4 | f8 f e4 | d8 d bes'4 | a2 |
  d,='8 d g4 | f8 f e4 | d8 d <bes' d>4 | <a c>2 |
  <bes=' d>4 <bes d f> | <a c>4. a8 |
  <g=' bes>4 <g bes d> | <f a>4. f8 |
  e='8 f g( e) | a2 | <e g>8 <f a> <g bes> a | <d,=' d'>2 \bar "|."

}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  d=8-\stBass dm! g, gm! |
  \rep 2 { d'=8 dm! g,=, gm! | } f d@m! e'8 a@7! |
  \rep 2 { d=8 dm! g,=, gm! | }
  f=,8 d@m! bes8 besM! | a f@M! f8 f7! |
  bes=,8 besM! g bes@M | a8 f@M! f8 fM |
  g=,8 gm! e' g@m | f,8 d@m! d'8 dm |
  g,=,8 gm! c c7! | f, fM! fM fM |
  g=,8 f e' a@7! | d=8 dm! dm dm |
}
{{ end }}
