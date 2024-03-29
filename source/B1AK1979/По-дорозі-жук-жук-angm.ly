{{ define "rh1" }}
  {{ .a }} bes-. bes( g) | a-. a-. a( f) |
  g='8-. g-. c,( e | f4) {{ .b }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key f \major
  \time 2/4
  c'='8\f c( d e | f4) f4 | c8 c( d e | f4) a4 |
  {{ template "rh1" (w `bes='8-.\mf` `a='`) }}
  {{ template "rh1" (w `bes='8-.` `f='`) }} \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key f \major
  \meter 1/2 #'(1)
  c=4-\stBass c7! | f, fM! | c' c7! | f, fM! |
  e'=8[ c@7! c78 c7] | f, fM! fM fM |
  c'=8 cM! cM cM | f, fM! fM4 |
  g=,8 gm! gm gm | c[ f@M! fM8 fM] |
  c=8 c7! c7 c7 | f,=, fM! f+fM4 |
}
{{ end }}
