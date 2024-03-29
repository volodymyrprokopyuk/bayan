{{ define "rh1" }}
  a=16(\mf gis a b c8) r a16( gis a b c8) r |
  a=16(\< gis a b c d dis e \af 8\! f8) r r4 |
  \rep 2 { b,=16( ais b c d='8) r } |
{{ end }}

{{ define "rh2" }}
  {{ .a }} gis {{ .b }} a b c b c d e dis e f fis eis fis gis {{ .c }} |
{{ end }}

{{ define "lh1" }}
  {{ .a }} r r {{ .b }} a+am! r r e | a+am!8 r r4 r8 a[ d+dm! a] |
  d+dm!8 r r a=, d+dm! r r a | d+dm!8 r r4 %
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo "Allegro moderator, dramatico"
  \clef treble
  \key a \minor
  \time 4/4
  {{ template "rh1" }}
  b=16(\< ais b c d cis d dis e dis e f fis eis fis \af 16\! gis) |
  a='16(\f gis a b c8) r a16( gis a b c8) r |
  a='16(\< gis a b c d e f \af 2\! g2) |
  fis=''16(\p g fis eis fis8) r f16( g f e f8) r |
  e=''16( f e dis e8) r c16( d c b c8) r |
  d=''16\( e d c b c b a b c b a g a g f |
  e='16\< dis e f g a g \af 16\! f e\> f e d c d c \af 16\! b=\) |

  {{ template "rh1" }}
  b=16(\< ais b c d dis e fis \af 2\! gis2) |
  a='16(\f gis a b cis8) r d16( cis d e f8) r |
  g,='16( fis g a b8) r c16( b c d e8) r |
  f=''16\( g f e \rep 2 { d=''16 e d c='' } %
  \rep 2 { b='16 c b a=' } g a g f e f e d c d c b\) |
  a=16( gis a b c8) r_ \dDim r2 | a16( gis a b c8) r r2 |
  {{ template "rh2" (w `a=16(\pp` `_ \dCre` `)`) }}
  {{ template "rh2" (w `a='16(` `` `)`) }}
  \ottava #1 {{ template "rh2" (w `a=''16(` `` ``) }}
  a='''8)-.\f \ottava #0 r r4 r2 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \minor
  {{ template "lh1" (w `a+am!8-\stBass` `e,=,`) }}
  b+e@7!8 r8 e+e7 r | a+am!8 r r e=, a+am! r r e |
  a+am!8 r r4 r8 cis'=[ e a+a7!] |
  d+dM!8 r r a,=,-- d+dm! r r b-- |
  c+a@m!8 r8 r8 b=,-- a+am!8 r r g-- |
  fis+d@M!8 r8 r4 d+dm!8 r r4 |
  gis+e@7!8 r8 d+dm!8 r b+e@7! r8 r4 |

  {{ template "lh1" (w `a+am!8` `e=,`) }} r8 e=,( c' b) |
  cis+a@7!8 r8 r e+a@7 d+dm!8 r r c+d@m | b+g@7!8 r8 r g+g7 c+cM! r r g+c@M |
  d+dm!8 r r e,=, f+d@m! r8 r4 | a+d@m!8 r8 r4 gis+e@7!8 r8 r4 |
  a+am!8 r r a@m!( g@M!2) | r4 r8 g@M!( f@M!2) |
  a+am!8 r r4 b+e@7!8 r8 r4 | a+am!8 r d+dm! r b+e@7!8 r8 r4 |
  a+am!8 r d+dM! r b+e@7!8 r8 e+e7! r | a+am!8 r e=, r a+am!8 r r4 |
}
{{ end }}
