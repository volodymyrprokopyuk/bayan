{{ define "rightHand" }}
\relative {
  \tempo Lento
  \clef treble
  \key e \minor
  \time 2/4
  b'='4\(\mp b | a8 b fis g | e4. fis8\) |
  g='4\( a8 e | b' a16 g fis8 g | e4 \af 8.\! d\)\< |
  \repeat volta 2 {
    d'=''4\(\mf d | c b8 d | a4~ a8 g16 fis |
    e='4 d'8 c\) | b( c) a( b) | g( a) fis( g) | e='2 |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  e=8-\stBass em!4 em8 | fis, b@7! b8 b7 |
  e=8 em!4 b@7!8 | e8 em! a, am! |
  g=,8 e@m! b8 b7! | e em! fis, d@7! |
  g=,8 gM!4 gM8 | g a@m!4 g@M!8 |
  a=,8 am! b b7! | e em! a, am! |
  \rep 2 { b=,8 a@m!4 b@7!8 | } e=8 em!4 em8 |
}
{{ end }}
