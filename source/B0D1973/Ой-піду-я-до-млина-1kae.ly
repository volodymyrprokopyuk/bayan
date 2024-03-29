{{ define "rh1" }}
  {{ .a }} d-. c-. b-. | a-. b-. c4 | b8-. c-. d4 | a a=' |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key a \minor
  \time 2/4
  \repeat volta 2 {
    a'='8(\mf c e4) | e4 e | d8( e f4) | e8( d c=''4) |
  }
  {{ template "rh1" (w `e=''8-.`) }}
  {{ template "rh1" (w `e'=''8-.`) }} \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \minor
  a,=,8[-\stBass am! am am] | a[ am am am] |
  a=,8[ d@m! dm8 dm] | a am! e' a@m |
  gis,=,8 e@M! e'8 eM | a, am! a am |
  e'=8 eM! e eM | a, am! a am |
  d=8 dm! d dm | e a@m! e8 a@m |
  e=8 e7! e e7 | a,=,4 am! |
}
{{ end }}
