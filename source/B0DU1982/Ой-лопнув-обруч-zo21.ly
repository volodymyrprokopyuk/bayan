{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 {
    g''=''4\mf g8 f | e e e4 | d8 e f4 | e e='' |
  }
  \repeat volta 2 {
    d=''4\mp d8 c | b b b4 | a8 b c4 | b b=' |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=8-\stBass cM! g gM! | c cM! c cM |
  g=,8 gM! g gM | c cM! c cM |
  g=,8 gM! d' dM! | g, gM! g gM |
  d'=8 dM! d dM | g, gM! g=, gM |
}
{{ end }}
