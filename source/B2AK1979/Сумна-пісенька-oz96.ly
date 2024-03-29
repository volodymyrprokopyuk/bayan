{{ define "rh1" }}
  {{ .a }} a bes c | d bes g\) g'\( |
  ees=''8 c g\) g'( | d4.)\> \af 8\! d=''8\( |
{{ end }}

{{ define "lh1" }}
  {{ .a }} gm!8 r | bes4 g@m!8 r8 | c4 cm!8 r | bes( a g) bes=,( |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Adagio
  \clef treble
  \key g \minor
  \time 2/4
  \meter 1/2 #'(1)
  \partial 8 { d'='8\(\mp | }
  {{ template "rh1" (w `g='8`) }}
  c=''8 bes a c | bes a g bes\) |
  a='8\(\< e fis \af 8\! g | fis4.\)\> \af 8\! d8\( |
  g='8 a bes c | d bes g\) bes'\( |
  a=''8 g f ees | d4.\) g8\( |
  ees=''8 c a\) g'\( | d bes g bes\) |
  a='8[( c]) fis,(\> a) | g4. \af 8\! bes='8\( |

  a='8\mf fis d c' | bes a g g' |
  f=''8 c d ees | d4.\) d8\( |
  cis=''8_\dCre b a g' | fis d a\) fis'\( |
  e=''8[ b] cis a | d4.\)\> \af 8\! d,8\( |
  {{ template "rh1" (w `g='8\mp`) }}
  c=''8 ees a, c | bes d g, bes\) |
  a='8[( c]) fis,(^\tRit a) | g4-> <bes=' d g>-> \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \minor
  \meter 1/2 #'(1)
  \partial 8 { r8 | }
  {{ template "lh1" (w `g,=,4-\stBass`) }}
  a=,4) c@m!8 r8 | g4 gm!8 r |
  cis=4 a@7!8 r8 | d( c bes) a( |
  g=,4) gm!8 r | bes4 g@m!8 r8 |
  f=,4_( g8 a | bes+besM!4) b+g@7!8 r8 |
  c=4 cm!8 r | g4 gm!8 r |
  c+cm!8 r d+d7! r | g=,4 gm!8 r |

  d'=4 d7!8 r | g,4 gm!8 r |
  a=,4 f@7!8 r8 | bes4 besM!8 r |
  a=,4 a7!8 r | d4 dM!8 r |
  a=,4 a7!8 r | d+dM! c[-- bes-- a]-- |
  {{ template "lh1" (w `g=,4`) }}
  a=,4) c@m!8 r8 | g4 gm!8 r |
  ees+ees7!8 r d+d7! r | g=,4-> g+gm!-> |
}
{{ end }}
