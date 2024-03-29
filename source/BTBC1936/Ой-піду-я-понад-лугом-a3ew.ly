{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key f \major
  \time 2/4
  \repeat volta 2 {
    a'='8\p c bes a | g f a g | f f4 c8 | f g a4 |
    a='8 a bes a | g f a g | f f4 e8 |
    \alternative {
      \volta 1 { d='8 d d='4 | }
      \volta 2 { <d=' d'>8 8 4 \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key f \major
  f,=,8-\stBass fM! f fM | bes besM! c c7! | \rep 2 { a=,8 f@M! f=,8 fM | }
  d'=8 dm! d dm | g, gm! g gm | a d@m! a8 a7! | d dm! dm4 | d=8 dm! d+dm4 |
}
{{ end }}
