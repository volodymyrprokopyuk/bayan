{{ define "rh1" }}
  {{ .a }} a8. g16 | fis8 e fis d |
  a=8 d fis a | g16 fis g e {{ .b }} |
{{ end }}

{{ define "lh1" }}
  {{ .a }} gM! gM4-> | d'8 dM! g+gM!4-> |
  g,=,8 gM! g gM | d'=8 dM! g+gM!4 |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key d \major
  \time 2/4
  {{ template "rh1" (w `<fis'=' d'>4->\f` `fis8 d='`) }}
  {{ template "rh1" (w `d'=''8 d` `d='4`) }}
  g='8 g <g b>4-> | <fis a>8 <fis c'> <g b>4-> |
  <g=' b>8 <g b d>4-> b8 | c16 d c a g4 |
  d='8 g <d g b>4-> | a'8 c <g b>4-> |
  <g=' b>8 d'4-> b8 | c b16 a g='4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \major
  d+dM!4->-\stBass d+dM4 |
  \rep 3 { a,=,8 a7! d dM! | d dM! d= dM | }
  a=,8 a7! d+dM!4 | {{ template "lh1" (w `g=,8`) }}
  {{ template "lh1" (w `g,=,8`) }}
}
{{ end }}
