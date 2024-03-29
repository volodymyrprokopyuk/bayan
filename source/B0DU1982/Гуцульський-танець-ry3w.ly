{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key a \minor
  \time 2/4
  e''=''4\mf e8 e | e e e e | f e d c | b4 a=' |
  \repeat volta 2 {
    e='8 a a a | d c b b | d c b c | a a='4. |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \minor
  a,=,8-\stBass am! a am | a am a am |
  a=,8 am! a am | a am a am |
  a=,8 am! a am | d dm! d dm |
  e=8 eM! e eM | a, am! a=, am |
}
{{ end }}
