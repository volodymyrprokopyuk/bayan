{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key d \major
  \time 2/4
  \partial 4. { d'='8[(\mp fis a]) | }
  <fis=' a d>4 <fis a cis> | <g b e> <g b d> |
  <e=' g b>2~ | 8 e[( g b]) | <cis, g' cis>4 <cis g' b> |
  <d=' fis b>4 <d fis a> | <b dis fis>2~ | 8 b[( dis fis )] |
  <dis=' fis b>4 <dis fis a> | <b e a> <b e g> |
  <e=' g b>2~ | 8 b[( e fis]) | <b, e g>4 <g b e> |
  <cis=' g' b>4 <cis g' a> | <fis, a d>2~ | 8 d'[( fis a=']) |

  \duo { <d''='' fis>4 <cis e>4 | 4 <b=' d> | } { fis'='2 | g=' | }
  <e=' g b>2~ | 8 e[( g b]) |
  \duo { <cis''='' e>4 <b d> | <b d> <a cis>8( <g=' b>) | } { e'='2 | f=' | }
  <fis=' a>2~ | 8 b,[( dis fis]) |
  <c=' a' c>4 <b g' b> | <b g' b> <b fis' a> |
  \duo { <fis'=' a>8 <e g>4.~ | 8 } { b=2~ | b=8 } b8[( e fis]) |
  <b,= e g>4 <g b e> | <cis g' b> <cis fis a> | <d=' d'>2~ | 8 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \major
  \partial 4. { r8 r4 | }
  d=8-\stBass dM! r fis, | g gM! r gM |
  e'=8 em! b e@m | e8 r r4 |
  a,=,8 a7! r a7 | d dM! r dM |
  b=,8 b7! dis b@7 | b8 r r4 |
  b=,8 b7! r b7 | e em! r em |
  e=8 em! b e@m | e8 r r4 |
  e=8 em! r em | a, a7! r a7 |
  d=8 dM! a d@M | d=8 r r4 |

  d=8 dM! r fis, | g e@m! r8 em |
  e'=8 em! b e@m | e8 r r4 |
  e=8 em! r em | g, g7! r g7 |
  d'=8 dM! a d@M | b+b7!8 r r4 |
  fis=,8 b@7! r8 b7 | b b7! r dis |
  e=8 em! b e@m | e8 r r4 |
  e=8 em! r em | a, a7! r a7 |
  d=8 dM! g,=, gM! | d+dM! %
}
{{ end }}
