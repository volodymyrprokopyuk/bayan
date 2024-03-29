{{ define "rh1" }}
  {{ .a }} a' a a | bes bes a4\) | g8( g f4) | e8( e d='4) |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key d \minor
  \time 2/4
  {{ template "rh1" (w `d'='8\(\mf`) }}
  {{ template "rh1" (w `d='8\(\f`) }}
  e='4\(\mp e8 e | d e f4\) | e8\( f g e | f4 d\) |
  a'='4\(\mf a8 g | f e d4\) |
  e='8\(\p f g e | d4\) d=' \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  d=8(-\stBass dm!)-. f( d@m)-. | g,8( gm!)-. d'( dm!)-. |
  cis=8_\aSim a@7! d8 dm! | a a7! d dm! |
  d=8 dm! f d@m | g,8 gm! d' dm! |
  cis=8 a@7! d8 dm! | a a7! d dm! |
  a=,8 aM! g a@M | f'8 d@m! d8 dm |
  cis=8 a@7! a8 a7 | d dm! f d@m |
  cis=8 a@7! a8 a7 | d dm! f d@m |
  cis=8 a@7! a8 a7 | d= dm! d+dm4 |
}
{{ end }}
