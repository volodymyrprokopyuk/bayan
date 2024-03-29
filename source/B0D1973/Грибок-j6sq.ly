{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key c \major
  \time 2/4
  \partial 4 { c'='8-.\p d-. | }
  e='8-. c-. e-. f-. | g-. g-. c-. d-. |
  e=''8-. c-. e-. f-. | g4 g8-. f-. |
  e=''8-. c-. d-. d-. | c-. c-. g-. f-. |
  e='8-. c-. d-. d-. | c='4 r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  \partial 4 { r4 | }
  c=8-\stBass cM! g gM! | c cM! r4 |
  c=8 cM! g gM! | c+cM!4 r |
  c=8 cM! g gM! | a am! d dm! |
  g,=,8 c@M! g=,8 gM! | c+cM!4 r |
}
{{ end }}
