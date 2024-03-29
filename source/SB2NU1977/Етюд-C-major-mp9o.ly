{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 {
    c'='16(\p d e f g a b c | d c b a g4) |
    g='16( a b c d e f fis | g f e d c4) |
    g'=''16(\mf a g f e f e d | c d c b a b a g) |
    \alternative {
      \volta 1 { f='16( e d c b c d e | c d e f g='4) | }
      \volta 2 { f='16( e d c g' f e d | c d e d c='4) \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  \meter 1/2 #'(1)
  c=8(-\stBass cM!) cM cM | d+d7!4 g16( a b a) |
  g=,8( g7!) g7 g7 | c+cM!4 c16( b c d) |
  e=8[( c@M!) cM8 cM] | f,( fM!) fM fM |
  g=,8( g7!) g7 g7 | c+cM!4 g'16( f e d) |
  g,=,8 c@M! g8 g7! | c16( d e d c=4) |
}
{{ end }}
