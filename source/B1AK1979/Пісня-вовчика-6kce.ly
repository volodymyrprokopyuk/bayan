{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key f \major
  \time 2/4
  f'='8\f f a4 | g16( f e d c4) |
  f='8 f( a) a | g16( f e d c4) |
  f='8\mf f( g a | bes) bes( d4) |
  c=''8 c c, c | f4 f |
  f='8\( f g a | bes bes d d\) |
  c=''8 c( c,) c( | f4) f=' \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key f \major
  f=8-\stBass fM! f fM | c cM! c cM |
  f=8 fM! f fM | c cM! c cM |
  f=8 fM! f fM | bes, besM! bes besM |
  c=8 cM! c cM | f fM! f fM |
  f=8[( f7!) f7 f7] | bes,[( besM!) besM besM] |
  c=8 f@M! c8 c7! | f= fM! f+fM4 |
}
{{ end }}
