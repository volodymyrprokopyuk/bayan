{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key g \minor
  \time 2/4
  <d''='' f>8.(\mf <c ees>16 <bes d>4) |
  <d='' f>8.( <c ees>16 <bes d>4) |
  <d='' f>8 8 8 <ees g> |
  <d='' f>8.( <c ees>16 <bes d>4) |
  g='8(\mp g16 a bes8 g) | c( c16 d ees8 c) |
  d=''8.( c16 bes8 a | g4) g |
  g='8.(\mf a16 bes8 g) | c8.( d16 ees8 c) |
  <bes=' d>8. <a c>16 <g bes>8 <fis a> | g g g='4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \minor
  bes,=,8-\stBass besM! bes besM | bes besM bes besM |
  bes=,8 besM! f f7! | bes besM! bes besM |
  \meter 1/2 #'(1)
  g=,8( gm!) gm gm | c( cm!) cm cm |
  d=8( d7!) d7 d7 | g,( gm!) gm gm |
  \meter 1/4 1,1
  bes=,8 g@m! g8 gm | ees' c@m! c8 cm |
  d=8 d7! d8 d7 | g,=, gm! g+gm4 |
}
{{ end }}
