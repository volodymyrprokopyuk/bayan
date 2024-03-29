{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key e \major
  \time 3/4
  \partial 4 { gis'='8( a | }
  b='4) b gis8( a | b4) b e,8( fis |
  gis='4) gis e8( fis | gis2) a8( b |
  cis=''4. cis8 b[ a] | b4 b) a8( gis |
  a='4. gis8 fis[ gis] | e2) a8( b) |
  cis=''8(\mf e a cis b a | b gis e b a gis) |
  a='8( a' a, gis fis gis | e='2) \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \major
  \partial 4 { r4 | }
  e=4(-\stBass eM!) eM | dis( e@M) eM4 |
  cis=4_\aSim cism! cism | b e@M! r4 |
  a=,4 aM! aM | gis e@M! eM4 |
  fis=,4 b@7! b74 | e@M!( e'4) r |
  a,=,4 aM! aM | gis e@M! eM4 |
  fis=,4 b@7! b74 | e@M!( e'=8) r %
}
{{ end }}
