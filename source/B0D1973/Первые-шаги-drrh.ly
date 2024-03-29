{{ define "rh1" }}
  {{ .a }} g' f e | d e c c\) | d\( f e c | d g %
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Lento
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 {
    {{ template "rh1" (w `c''=''8\(\p`) }} g4\) |
    {{ template "rh1" (w `c,=''8\(`) }} c,=''4\) |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  e=8-\stBass c@M! c8 cM | g gM! c cM! |
  b=,8 g@M! c8 cM! | b g@M! g8 gM |
  e'=8 c@M! c8 cM | g gM! a am! |
  d=8 dm! g, c@M! | g=,8 gM! c+cM!4 |
}
{{ end }}
