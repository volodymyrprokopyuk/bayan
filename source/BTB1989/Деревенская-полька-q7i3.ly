{{ define "rh1" }}
  {{ .a }} a g f e f e d | c e g,8~ g16 e' d c='' |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key a \minor
  \time 2/4
  \repeat volta 2 {
    a'='8(\mp c16 d e c b a | gis8) e4 e8 |
    b'='8( c16 d e d c b) | c( e) a,4 a8 |
    e='8( a16 c) e( c b a) | a'8( g16 f e d c b) |
    \alternative {
      \volta 1 { a='8( b16 c d c b a) | b( c) b8~(-> b16 d c b=') | }
      \volta 2 { c=''16 e c4 b8 | a4 <c='' e a>8 r | }
    }
  }

  \repeat volta 2 {
    {{ template "rh1" (w `g'=''16\mf`) }}
    b='16 d g,8~ g16 f' e d | c e g,8~ g16 e' f fis |
    {{ template "rh1" (w `g=''16`) }} b g b d g f e d |
    \alternative {
      \volta 1 { c=''16 b c d e d e f='' | }
      \volta 2 { c=''8 e c='' r \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \minor
  a,=,8-\stBass am! e' a@m | b8 e@7! e8 e7 |
  gis,=,8 e@7! e'8 e7 | a, am! e' a@m |
  a,=,8 am! c a@m | d8 dm! f d@m |
  fis=8 d@7! d8 d7 | g, gM! gis e@7! |
  e'=8 a@m! e8 e7! | a,=, am! am r |

  \rep 4 { d=8 g@7! g,8 g7 | c cM! g=, c@M | } c=8 cM! cM r |
}
{{ end }}
