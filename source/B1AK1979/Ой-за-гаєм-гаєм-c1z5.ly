{{ define "rh1" }}
  {{ .a }} g( b g) | fis fis( a fis) |
  e='8( g fis e | d4) {{ .b }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key d \major
  \time 2/4
  \meter 1/2 #'(1)
  d'='8\(\f e fis g | a4 d4\) |
  b='8\( b d b | a4 fis\) |
  {{ template "rh1" (w `g='8\mf` `d='`) }}
  {{ template "rh1" (w `g='8\mp` `d='8 r`) }} \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \major
  \meter 1/2 #'(1)
  d=8(-\stBass dM!) dM dM | fis[( d@M!) dM8 dM] |
  g,=,8( gM!) gM gM | fis'[( d@M!) dM8 dM] |
  g,=,8( gM!) gM gM | d'( dM!) dM dM |
  a=,8( a7!) a7 a7 | d( dM!) dM dM |
  g,=,8( gM!) gM gM | a[( d@M!) dM8 dM] |
  a=,8( a7!) a7 a7 | d=[ dM!] d+dM r |
}
{{ end }}
