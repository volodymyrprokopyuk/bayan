{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 {
    e'='8-.\mp g-. g-. g-. | e-. g-. g-. g-. |
    c=''4 g | a8-. g-. f-. e-. |
    d='8-. f-. f-. f-. | d-. f-. f-. f-. |
    d='4 g | e8-. c-. c-. c='-. |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=8-\stBass r cM! r | c r cM r |
  c=8 r cM! r | c r cM r |
  b=,8 r g@M! r8 | b r g@M r8 |
  g=,8 r gM! r | c= r cM! r |
}
{{ end }}
