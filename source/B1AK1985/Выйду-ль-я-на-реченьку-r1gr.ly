{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key d \minor
  \time 2/4
  \meter 1/2 #'(1)
  \repeat volta 2 {
    c'='4.\mf c8 | c4 d8 e | f4 a | c4. a8 |
    d=''8( c bes a | g4) c8( bes | a4) a8( bes | a2) |
    bes='8( a g f) | e4 a | d, d8 f | a4. a8 |
    bes='8( a g f) | e4 a | d, d' |
    \alternative {
      \volta 1 { d,='4. r8 | }
      \volta 2 { <d=' d'>2 \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  \meter 1/2 #'(1)
  c=8-\stBass c7! c7 c7 | e[ c@7 c78 c7] |
  f=8 fM! fM fM | c[ f@M fM8 fM] |
  g=,8[ c@7! c78 c7] | c c7 c7 c7 |
  f=8 fM! fM fM | e[ a@7! a78 a7] |
  a,=,8 a7! a7 a7 | cis[ a@7 a78 a7] |
  d=8 dm! dm dm | f[ d@m dm8 dm] |
  g,=,8 gm! gm gm | a a7! a7 a7 |
  d=8 dm! dm dm | d+dm! f-- e-- d=-- | d+dm!2 |
}
{{ end }}
