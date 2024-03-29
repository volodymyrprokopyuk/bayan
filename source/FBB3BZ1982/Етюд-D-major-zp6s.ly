{{ define "rh1" }}
  {{ .a }} b a b a d cis b) | a( b a b a fis' e d) |
  cis=''8( e d cis b d cis b=') |
{{ end }}

{{ define "lh1" }}
  {{ .a }} g fis g fis b a g) | fis( g fis g fis d' cis b) |
  a='8( cis b a g b a {{ .b }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key d \major
  \time 4/4
  {{ template "rh1" (w `a'='8(\mf`) }} | a( cis b a g fis g gis) |
  {{ template "rh1" (w `a='8(`) }} | \rep 2 { cis=''( e d cis d fis e d='') | }
  e=''8( g fis e fis a g fis) | b( ais b g) a( gis a fis) |
  g=''8( fis g e) fis( eis fis d) | e( fis g a b a g fis) |
  e=''8( fis g fis e d cis b) | a( b a b a d cis b |
  a='8 ais b cis d='') r r4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef treble
  \key d \major
  {{ template "lh1" (w `fis'='8(-\frBass` `e=')`) }} | fis( a g fis e dis e eis) |
  {{ template "lh1" (w `fis='8(` `g=')`) }} | a( cis b a b d cis b) |
  ais='8( cis b ais b d cis b) | cis( e d cis d fis e d) |
  g=''8( fis g e) fis( eis fis d) | e( dis e cis) d( cis d b) |
  cis=''8( d e fis g fis e d) | cis( d e d cis b a g) |
  fis='8( g fis g fis b a g | a g fis e d=') r r4 |
}
{{ end }}
