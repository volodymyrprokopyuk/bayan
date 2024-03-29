{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key c \major
  \time 2/4
  g'='8(\mf a g4) | g8( a g4) | g8( a g a | g a g a) |
  \repeat volta 2 {
    <e=' g>8 <e a> <e g>4 | <f g>8 <f a> <f g>4 |
    <e=' c'>8 8 <e b'> <e a> | <e g>4 e |
    g='4( f | e8 g d4) | e8 e d d | c4 c=' |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  \rep 4 { R2 | }
  c=8 cM! c cM | d g@7! g,8 g7 | c cM! g c@M | c8 cM! g c@M |
  a=,4 b | c f, | fis g | \duo { r4 cM! | } { c=2 | }
}
{{ end }}
