{{ define "rh1" }}
  {{ .a }} f e a e f \af 16\! e) r\> e( f e b' e, f \af 16\! e) |
  r16\< e='16( f e d' e, f \af 16\! e) r\> e( f e c' e, f \af 16\! e=') |
{{ end }}

{{ define "lh1" }}
  {{ .a }} r8 r4 e@7!8 r8 r4 | e@7!8 r8 r4 a@m!8 r8 r4 |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Andante
  \clef treble
  \key a \minor
  \time 4/4
  {{ template "rh1" (w `r16\mp\< e'='16(`) }} |
  r16\< e='16( f e a e f e) r b'( c b g' b, c \af 16\! b) |
  r16\> b='16( c b fis' b, c b) e( f d e c d b \af 16\! f=') |

  {{ template "rh1" (w `r16\p\< e='16(`) }} |
  r16 a='16(\< bes a e' a, bes a) r a( b a d a b \af 16\! a) |
  e='16\mf e f( e) e e f( e) a( b c^\tRit e a=''8) r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \minor
  {{ template "lh1" (w `a@m!8-\stBass`) }}
  a@m!8 r8 r4 e@m!8 r8 r4 | b@7!8 r8 r4 e@7!8 r8 r4 |

  {{ template "lh1" (w `a@m!8`) }}
  a@7!8 r8 r4 d@M!8 r8 r4 | a@m!8 r8 e@7!8 r8 a@m!4~ am8 r8 |
}
{{ end }}
