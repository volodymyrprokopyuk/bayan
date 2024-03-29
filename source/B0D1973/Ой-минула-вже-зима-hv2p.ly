{{ define "rh1" }}
  {{ .a }} e-. f-. d-. | c-. d-. e-. f-. |
  g='8-. e-. f-. d-. | c-. c-. c='4 |
{{ end }}

{{ define "rh2" }}
  a'='8-. a-. a4 | g8-. g-. c4 |
  g='8-. e-. f-. {{ .a }} | c-. c-. c='4 |
{{ end }}

{{ define "lh1" }}
  f,=,8 fM! fM4 | g8 c@M! cM4 | g8 c@M! g=,8 gM! |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key c \major
  \time 2/4
  {{ template "rh1" (w `g'='8-.\mf`) }}
  {{ template "rh1" (w `g'='8-.`) }}
  {{ template "rh2" (w `d='8-.`) }}
  {{ template "rh2" (w `d='8-.^\tRit`) }} \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c@M!8[-\stBass cM8] g@M![ gM8] | c@M! r8 r4 |
  c@M!8[ cM8] g@M![ gM8] | c@M![ cM8] cM4 |
  \rep 3 { c=8 cM! g=, gM! | }
  c=8 cM! cM4 |
  {{ template "lh1" }} | c=8 cM! cM4 |
  {{ template "lh1" }} | c=8 f@M! c@M!4 |
}
{{ end }}
