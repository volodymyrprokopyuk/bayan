{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key f \major
  \time 2/4
  a'='8(->\f c) c c | a(-> c) c c | f4-> c-> | d8( c bes a) |
  \rep 2 { g='8(-> bes) bes bes=' | } g4-> c-> | a8( f) f='4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key f \major
  f+fM!4-\stBass r | \rep 3 { f+fM!4 r | } \rep 3 { c+cM!4 r | } f+fM!4 r |
}
{{ end }}
