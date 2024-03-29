{{ define "rightHand" }}
\relative {
  \tempo Andante
  \clef treble
  \key d \minor
  \time 2/4
  \repeat volta 2 {
    d''=''8\(\mf cis d e | f e d4\) |
    d=''8\( cis bes g | bes a g4\) |
    a='8( f)-. e( c)-. | <d f>8-. 8-. 4-- |
    a'='8 f e c | d d d='4 |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  d=4-\stBass dm! | d dm | g, gm! | g@m!2 |
  f'=4 c | bes besM! | a g=, | d+dm!2 |
}
{{ end }}
