{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key d \minor
  \time 2/4
  \partial 4. { d'='8[\mf d f] | }
  a='4 g | bes a | d,2~ | d8 d[ d f] |
  <f=' a>4 <e g> | <g bes> <f a> |
  <a=' c>2~ | 8 <bes d>[ 8 <a c>] |
  \repeat volta 2 {
    g='4 <d bes'> | <bes' e> <bes d> |
    a='2~ | a8 bes[ bes a] | e4 <d f> | <f a> <e g> |
    \alternative {
      \volta 1 { d='2~ | d8 <bes' d>[ 8 <a=' c>] | }
      \volta 2 { d,='2~ | d='8 \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  \partial 4. { r8 r4 | }
  d=8-\stBass dm! r g@m! |
  g,=,8 gm! r a@7! | d'8 dm! a d@m |
  d=8 dm! r dm | d dm! r g@m! |
  c=8 cM! r f@M! | f,8 fM! r fM |
  d'=8 d7! r d7 | \rep 2 { g,=,8 gm! r gm | }
  d'=8 dm! a d@m | d8 dm! r dm |
  g,=,8 gm! r gm | a a7! r a7 |
  d=8 dm! a d@m | d8 d7! r d7 |
  d=8 dm! a d@m | d=8 %
}
{{ end }}
