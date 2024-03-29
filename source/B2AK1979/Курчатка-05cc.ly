{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key d \major
  \time 2/4
  r8\mp \acc { b''=''8 } a8 r \acc { b=''8 } a8 |
  r8 \acc { b=''8 } a8 \acc { gis=''8 } a4 |
  \repeat volta 2 {
    \acc { cis,=''8 } <fis, d'>8\mf 8 <fis a>8 8 |
    <g=' b>8 8 <fis a>4 |
    \acc { cis'=''8 } <fis, d'>8 8 <fis a>8 8 |
    <g=' b>16( ais <g b>8) <fis a>4 |
    <g=' a>8\mp 8 <g b> <g cis> |
    <fis=' d'>4 <fis a d> | <g a>8 8 <g b> <g cis> |
    \alternative {
      \volta 1 { <fis=' d'>4 <fis=' a d> | }
      \volta 2 {
        <fis=' d'>4 \acc { cis'=''8 } <fis,=' a d>4-> \bar "|."
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \major
  a,=,8-\stBass a7! b a@7 | cis8 a@7! a8 a7 |
  \rep 2 { d=8 dM! d dM | g, gM! d'= dM! | }
  cis=8 a@7! a8 a7 | d dM! d dM |
  e=8 a@7! a,8 a7 | d dM! d dM | d= dM! d+dM4-> |
}
{{ end }}
