{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key g \major
  \time 2/4
  d'='8[(\mf b' a g]) | a4-> e8( g) | fis4-- a-- | g2 |
  d='8[( b' a g]) | a a e8( g) |
  fis='8[\< fis g \af 8\! a] | b-- b-- b4-> |
  c=''8[-. r a]-. r | b-. b( g)-. g-. |
  d='8[( c' b a]) | g[( a b g]) |
  <g=' c>8[-. r <g a>]-. r | b-. b( g)-. g-. |
  d='8[( c' b a]) | g( b) g='-> r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  g,=,8-\stBass gM! d' g@M | c8 a@m! a8 am |
  d=8 d7! fis d@7 | g,8 gM! d' g@M |
  g,=,8 gM! d' g@M | c8 a@m! a8 am |
  d=8 d7! e, fis | g gM! gis e@7! |
  a=,8 am! fis' d@7! | g,8 gM! d' g@M |
  fis=8 d@7! d8 d7 | g, gM! f g@M |
  e+c@M!8 r8 ees+c@m! r8 | d' g@M!4 gM8 |
  fis=8 d@7! d=8 d7 | g+gM!8 r g+gM r |
}
{{ end }}
