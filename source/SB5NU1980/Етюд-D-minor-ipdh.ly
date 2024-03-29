{{ define "rh1" }}
  {{ .a }} a' {{ .b }} g f e d | c bes a g f e |
  d='16\> c bes a g a | bes c d e f \af 16\! g |
  a='16\< b cis b cis d | cis d e d e \af 16\! f |
  d=''16 cis d e f g | a gis g e cis bes |
  a='16 a' g f e d | c\> ees d c bes \af 16\! a |
  bes='16\< fis g a bes c | d e f g a \af 16\! bes |
  a=''16\> f d a g f | e d cis b cis \af 16\! f |
  d='16\< a' f d' a \af 16\! f' | d=''4 r8 |
{{ end }}

{{ define "lh1" }}
  {{ .a }} dm! dm | f,[ d@m! dm8] | g gm! gm | bes[ g@m! gm8] |
  a=,8 a7! a7 | e'[ a@7! a78] | d dm! dm | a a7! a7 |
  d=8 dm! dm | d d7! d7 | g, gm! gm | bes[ g@m! gm8] |
  a=,8[ d@m! dm8] | a a7! a7 | d a f | \duo { r8 dm! } { d=4 } r8 |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key d \minor
  \time 3/8
  {{ template "rh1" (w `a'='16\mf` `_ \aLeg`) }}

  c=''16\f\> f e d c bes | a g f e d \af 16\! c |
  g''=''16\> f e d c bes  a g f e d \af 16\! c |
  bes''=''16\> a g f e d | c bes a g f \af 16\! e |
  f='16\< g a bes b c | d c b c d \af 16\! e |
  f=''16\> ees c a g \af 16\! f |
  e='16\< f g a bes c | d a bes c d \af 16\! e |
  f=''16 g a bes c d | c d c a g f |
  e=''16\> d c bes a \af 16\! g |
  f='16\< c' a f' c \af 16\! a' | f=''8 r r |

  {{ template "rh1" (w `a,='16\mf` ``) }} \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  {{ template "lh1" (w `d=8-\stBass`) }}

  f=,8 fM! fM | c'[ f@M! fM8] |
  \rep 2 { g=,8[ c@7! c78] | c= c7! c7 | }
  f,=,8 fM! fM | c' c7! c7 | f, f7! f7 | c'[ f@7! f78] |
  bes=,8 besM! besM | g[ bes@M! besM8] |
  c=8[ f@M! fM8] | c c7! c7 | f, c' a | f=, r r |

  {{ template "lh1" (w `d'=8`) }}
}
{{ end }}
