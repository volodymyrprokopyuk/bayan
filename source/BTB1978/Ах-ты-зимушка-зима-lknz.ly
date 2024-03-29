{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key a \minor
  \time 2/4
  e''=''4\mp e | f e8 d | c4 a | d f |
  e=''4 e | g8 f e d | c4 a | a8\< b c \af 8\! d |
  e=''4\f g | f e8 d | a'4 a8 a | d,4 f |
  e=''4 g | g8 f e d | c4 a\> | \af 4\! a='4 r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \minor
  a,=,8-\stBass am! am am | d dm! dm dm |
  a=,8 am! am am | d dm! dm dm |
  c=8 a@m! am8 am | e e7! e7 e7 |
  \rep 2 { a,=,8 am! am am | }
  c=8 a@m! am8 am | d dm! dm dm |
  a=,8 am! am am | f d@m! dm8 dm |
  c'=8 a@m! am8 am | d dm! dm dm |
  a=,8 am! am am | a+am!4 r |
}
{{ end }}
