{{ define "rh1" }}
  {{ .a }} d g a b4( g) | a8 a e fis g4( d=') |
{{ end }}

{{ define "rh2" }}
  e='8[(->\< d]) e(-> \af 16.\! d) f8[(->\> e]) d-. \af 8\! d='-. |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key g \major
  \time 4/4
  <g''='' g'>8-.\mf r d'-. r <a a'>8[-. 8]-. d-. r |
  g,=''16( a b c d8)-. d-. <a a'>8[-. 8]-. d-. r |
  g,=''8\f r d-. d-. \acc { dis=''8 } e4(-> d8) r |
  g,='8[-.\p g]-. d-. d-. \acc { dis='8 } e4(-> d8) r |
  {{ template "rh1" (w `d='8\mp`) }}
  {{ template "rh1" (w `d='8`) }}
  {{ template "rh2" }}
  {{ template "rh2" }}
  b'='4(-> g8)-. g-. a16( b a b) g8-. g-. |
  b='4(-> g8)-. g-. a16( b a b g='4) \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  g@M!8[-\stBass gM8] gM gM d@7!8[ d78] d7 d7 |
  g@M!8[ gM8] gM gM d@7!8[ d78] d7 r |
  \rep 2 { g+gM!8-> r r4 d+d7!~ d+d78 r | }
  g,=,8( gM!4) gM8 g[ gM!] e' g@M |
  a,=,8[ am!] d d7! g,( gM!4) gM8 |
  g=,8( fis' e d g,[) gM!] e' em! |
  a,=,8[ am!] d d7! g,( gM!4) gM8 |
  \rep 2 { g=,8( gM!4) gM8 d+dm!4 a+d@7! | }
  g=,8( gM!4) gM8 d'[ d7!] g, gM! |
  a=,8( a7!4) a78 d=[ d7!] g+gM!4 |
}
{{ end }}
