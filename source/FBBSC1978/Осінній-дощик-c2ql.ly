{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key d \minor
  \time 2/4
  \repeat volta 2 {
    a'='4(\mf d | a2) | g8( a bes g | a2) | g8(_\dCre f e g | f g a g) |
    \alternative {
      \volta 1 { f='8( d e4~ | e=') r | }
      \volta 2 { f='4( e | \af 2\! d='2)\>^\tRit \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef treble
  \key d \minor
  f'='8-.-\frBass d-. \rep 3 { f='8-. d='-. } | e_\aSim cis e cis | f d f d |
  \clef bass cis='8 a cis a | d( cis c bes) | a r a4~ | a= r |
  \clef treble bes''=''8-. f-. ais-. f-. | r f( bes,='4)-- |
}
{{ end }}
