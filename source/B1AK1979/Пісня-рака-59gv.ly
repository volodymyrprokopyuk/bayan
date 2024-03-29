{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key bes \major
  \time 2/4
  bes'='8\f f d'4 | bes8 f d'4 |
  bes='8 f d'4 | c16( bes a g f4) |
  d='8(\mp f) f4 | ees8( g) g4 |
  f='8\( a c c | bes bes bes4\) |
  d,='8(\mf f) f-. f-. | ees8( g) g-. g-. |
  f='8( a c4) | bes8 bes bes='4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key bes \major
  bes,=,8-\stBass besM! bes besM | bes besM bes besM |
  bes=,8 besM! bes besM | f' fM! f fM |
  bes,=,8 besM! bes besM | ees eesM! ees eesM |
  f=8 fM! f fM | bes, besM! bes besM |
  \meter 1/2 #'(1)
  bes=,8( besM!) besM besM | ees( eesM!) eesM eesM |
  f=8( fM!) fM fM | bes,=, besM! bes+besM4 |
}
{{ end }}
