{{ define "rh1" }}
  {{ .a }} ees {{ .b }} d c bes c bes a g fis g a bes a bes {{ .c }} |
{{ end }}

{{ define "rh2" }}
  f=''16 g f ees d ees d c bes a bes c d c d {{ .a }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key g \minor
  \time 4/4
  \partial 4 { bes'='16\mf a_\aLeg bes c | }
  {{ template "rh1" (w `d=''16` `` `c=''`) }}
  {{ template "rh1" (w `d=''16` `` `d=''`) }}
  ees=''16 f ees d c d c bes a bes a g a bes c d |
  ees=''16 f ees d c d c bes a gis a bes c d ees e |
  {{ template "rh2" (w `ees=''16`) }}
  f=''16 g f ees d ees d c bes a bes c cis d ees e |
  f=''16_\dDim g f ees d ees e f ees f ees d c cis d ees |
  d=''16 ees d c bes c cis d c d c bes a bes c cis='' |

  {{ template "rh1" (w `d=''16\mf` `` `c=''`) }}
  d=''16 ees d c bes c bes a bes a bes c d c d ees |
  {{ template "rh2" (w `ees=''16`) }}
  f=''16 g f ees d ees d c bes a bes c d ees e f |
  g=''16 a g f ees f ees d c bes c d ees d ees e |
  {{ template "rh2" (w `f=''16`) }}
  ees=''16 f ees d c bes c ees d ees d c bes a bes d |
  c=''16 d c bes a g a c bes\> c bes a g a bes \af 16\! c='' |

  {{ template "rh1" (w `d=''16\p` `_ \dCre` `c=''`) }}
  d=''16 c bes a bes c bes a g fis g a bes a bes c |
  d=''16 ees d c bes a bes d ees f ees d c bes c ees |
  f=''16 g f ees d c d f fis g fis e fis d e fis |
  \rep 4 { g=''16 a g fis='' } |
  g=''16\f a bes c d c bes a g a bes c d c bes a |
  g=''8 f16 ees d c bes a g8\> f16 ees d c bes \af 16\! a |
  g=4\p r8. <bes' ees g>16\f <bes=' d g>4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \minor
  \partial 4 { r4 | }
  g,=,8-\stBass r r4 gm!8 r r4 | g8 r r4 gm!8 r r4 |
  c=8 r r4 cm!8 r r4 | c8 r r4 f@7!8 r8 r4 |
  \rep 2 { bes=,8 r r4 besM!8 r r4 | }
  c=4 r bes r | a=, r d@7!8 r8 r4 |

  \rep 2 { g=,8 r r4 gm!8 r r4 | }
  \rep 2 { bes=,8 r r4 besM!8 r r4 | }
  a=,8 r r4 c@m!8 r8 r4 | bes8 r r4 g@m!8 r8 r4 |
  c=8 r r4 d8 r r4 | d@7!8 r8 r4 g@m!8 r8 r4 |

  g=8->-\puBass r r4 f8-> r r4 | e8-> r r4 ees8-> r r4 |
  d=8-> r r4 c8-> r r4 | bes8-> r r4 a8-> r r4 |
  g=,8 r f r ees r d r | ees@M!8-\stBass r8 \rep 3 { eesM8 r8 } |
  d+g@m!8 r8 r4 g@m!8 r8 r4 | g=,4 r g+gm! %
}
{{ end }}
