{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key g \major
  \time 2/4
  \partial 4 { g'='8-.\mf b-. | }
  \repeat volta 2 {
    d=''8-. d-. b-. e-. | d4 g,8-. b-. |
    d=''8-. d-. b-. e-. | d4 c8\( b |
    a='8 g a b | g4\) c8\( b | a8 g a b |
    \alternative {
      \volta 1 { g='4\) g8-. b='-. | }
      \volta 2 { \hSpace g='4 \sSlur nb #'((wb . 0.2)) ( r) \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  \partial 4 { r4 | }
  g+gM!4-\stBass e=4 | g+gM! r | g+gM!4 e | g+gM! r |
  d=4 dM! | e+em! r | a+am! d+dM! | g+gM! r | g+gM! r |
}
{{ end }}
