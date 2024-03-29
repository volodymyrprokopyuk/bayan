{{ define "lh1" }}
  e=4 em! em | e em! em | a, am! am | d d7! d7 |
  g,=,4 gM! gM | c cM! cM | fis, a@m! am4 | b=, b7! b7 |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Lento
  \clef treble
  \key e \minor
  \time 3/4
  \partial 2 { e'='4\(\p\< g | }
  b='4 g \af 4\! e | dis fis a |
  c=''4 b2~\> | \af 8.\! b4\) e,\( fis |
  g='4 e c | b dis fis | g2.~\> |
  \af 8.\! g='4\) a\( b | c\< c \af 4\! g |
  fis='4 fis a | b b2~\> | \af 8.\! b4\) e,\( g |
  a='4 a g | fis e fis | g2.~\> | \af 8.\! g4\) a\( b |
  c=''4\< c \af 4\! b | d\mf d c |
  b='4 b2~\> | \af 8.\! b4\) e,\( b' |
  a='4\< a \af 4\! g | fis e dis |
  e='2.~\> | \af 4\! e='4\)\p \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  \partial 2 { r4 r | }
  e=4 em! em | b b7! b7 | \rep 3 { e=4 em! em | }
  b=,4 b7! b7 | \rep 2 { {{ template "lh1" }} } | e=4 em! em | e+em!4 %
}
{{ end }}
