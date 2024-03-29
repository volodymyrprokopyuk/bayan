{{ define "rh1" }}
  {{ .a }} bes-. a16( bes c a | bes8)-. bes-. bes( {{ .b }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key bes \major
  \time 2/4
  {{ template "rh1" (w `f'='8-.\mf` `d='')`) }}
  {{ template "rh1" (w `f,='8-.` `c='')`) }}
  d=''8.\( ees16 d8 c | bes a g4\) | c8.\( d16 c8 bes | a g f4\) |
  \duo { d''=''8.\( ees16 d8 c | bes a g4\) | c8.( d16 c8 bes=') | }
  { fis'='2~ | fis4 g | e='2 | }
  <f=' a>8 <e g> f=' r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key bes \major
  bes,=,8-\stBass besM! f' f7! | bes, besM! bes besM |
  bes=,8 besM! f' f7! | bes, besM! bes r |
  d=8 d7! fis d@7 | g,8 gm! bes g@m |
  c=8 c7! e c@7 | c8 c7! f ees |
  d=8 d7! a d@7 | d8 d7! g, gm! |
  c=8 c7! g c@7 | f'8 c= f+fM! r |
}
{{ end }}
