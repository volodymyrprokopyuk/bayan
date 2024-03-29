{{ define "rh1" }}
  {{ .a }} bes a bes f d' cis d f, bes a bes f d' cis \af 32\! d |
  f,='32 c' b c f, f' e f f,\> c' b c f, f' e \af 32\! f='' |
{{ end }}

{{ define "rh2" }}
  d=''32-> f e f f,-> f' e f c-> f e f f,-> f' e f='' |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key bes \major
  \time 2/4
  f'='32\p bes_\aLeg a bes d bes a bes f_\dCre bes a bes d bes a bes |
  \rep 2 { f='32 bes a bes d bes a bes=' } |
  f='32_\dDim c' b c ees c b c \rep 3 { f,='32 c' b c ees c b c='' } |
  \rep 2 { f,='32 bes a bes d bes a bes=' } |
  g='32_\dCre bes a bes e bes a bes g bes a bes e bes a bes |
  \rep 4 { a='32 c b c f c b c='' } |
  b='32\f f' e f aes f e f b, f' e f aes f e f |
  b,='32 f' e f g f e f b,_\dDim f' e f g f e f |
  \rep 2 { c=''32 ees d ees g ees d ees='' } |
  \rep 2 { g,='32 c b c ees c b c='' } |
  f,='32\p bes a bes d bes a bes f bes a bes d bes a bes |
  \rep 2 { f='32 a gis a c a gis a=' } |

  {{ template "rh1" (w `f='32\<`) }} {{ template "rh1" (w `f,='32\<`) }}
  f,='32 bes a bes f d' cis d g,_\dCre b ais b g g' fis g |
  g,='32 c b c g ees' d ees a,\f cis bis cis a a' gis a |
  a,='32 f' e f g f e f c_\dDim ees d ees f ees d ees |
  f,='32 d' cis d ees d cis d f, c' b c d c b c |
  bes='32->\mf f' e_\dCre f f,-> f' e f c-> f e f f,-> f' e f |
  {{ template "rh2" }}
  bes,='32-> f' e f f,-> f' e f c-> f e f f,-> f' e f |
  {{ template "rh2" }}
  bes,='8\f r <d f bes> r | <bes=' d f bes>4 r \fermata \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key bes \major
  bes,=,8-\stBass besM! f' bes@M | bes,8 besM! f' bes@M |
  \rep 2 { a,=,8 f@7! f'=8 f7 | }
  bes,=,8 besM! f' bes@M | c8 c7! g c@7 | f'8 fM! f fM |
  ees=8 f@M! ees8 f@M | d8 dd! d dd |
  g,=,8 g7! d' g@7 | c8 cm! ees c@m |
  ees=8 c@m! ees8 c@m | f8 bes@M! d8 bes@M | f8 f7! c= f@7 |

  \rep 2 { bes+besM!8-- r r4 | a=,8 f@7! f'=8 f7 | }
  bes+besM!8-- r g, g7! | c+cm!-- r a a7! |
  d=8 dm! ees c@m! | f8 bes@M! f8 f7! | bes+besM!8-- f f@7![ f8] |
  \rep 3 { bes@M!8[ f=8] f@7![ f=8] | }
  bes@M!8 r8 bes+besM! r | bes,=,4 r \fermata |
}
{{ end }}
