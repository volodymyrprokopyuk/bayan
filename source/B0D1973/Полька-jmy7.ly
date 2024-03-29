{{ define "lh1" }}
  {{ .a }} cM! e c@M | f8 fM! f fM |
  g,=,8 g7! g g7 | c cM! {{ .b }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Sostenuto
  \clef treble
  \key c \major
  \time 2/4
  \repeat segno 2 {
    \volta 1
    e'='8-.\mf g-. c-. e-. | e-. d-. a4 |
    c=''8-. b-. b4 | d8-. c-. g4 |
    e='8-. g-. c-. e-. | e-. d-. a-. d-. |
    c=''8-. b-. a-. b-. | c=''4. r8 \fine \bar "||"

    \volta 2
    e,='8\p e\( f e | a e c' e, |
    b'='8 e, gis e | a\< e c \af 8\! e\) |
    d='8 d\( e d | g d b' d, |
    d'=''8 c b a | g\< f e  \af 8\! d='\) \bar "||"
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  {{ template "lh1" (w `c=8-\stBass` `c= cM`) }}
  {{ template "lh1" (w `c=8` `c+cM8 r`) }}
  e=8 eM! gis, e@M | a8 am! e' a@m |
  gis,=,8 e@M! e'8 eM | a, am! g a@m |
  fis=,8 d@M! d'8 dM | g, gM! g=, gM |
  d+d7!4 r | g+g7! r |
}
{{ end }}
