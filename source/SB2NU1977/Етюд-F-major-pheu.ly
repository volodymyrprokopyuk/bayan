{{ define "rh1" }}
  {{ .a }} g bes c e g bes g e c bes g | f a c f a f' c='''4.) |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key f \major
  \time 6/8
  \repeat volta 2 {
    a'='16(\p c_\aDol f a c a' f4 c8) | a,16( c f a c a' f4 c8) |
    c,=''16( e g c=''' \ottava #1 e=''' c' bes4 g8) |
    c=''''16( a f c a f='' \ottava #0 bes='' g e c bes g) |
    a='16( c f a c a' f4_\dCre c8) |
    c,=''16( e g c=''' \ottava #1 e=''' c' g4 e='''8) \ottava #0 |
    e='''16( c g e c e f d b g f d | c e g c g e c='8) r r |
  }

  \repeat volta 2 {
    {{ template "rh1" (w `e='16(\p`) }}
    {{ template "rh1" (w `e,,='16(_\dCre`) }}
    f,,='16(\mf a c f a c f8)-. f-. f-. |
    f,,='16( bes d f bes d f8)-.\< f-. \af 8\! f-. |
    f='''16(\f c a f c' a bes g e c bes g |
    f='16 a c f c a f='8) r r |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key f \major
  f,=,8-\stBass fM! fM f fM fM | f fM! fM f fM fM |
  c'=8 c7! c7 c c7 c7 | f, fM! fM c' c7! c7 |
  f,=,8 fM! fM f fM fM | c' cM! cM c cM cM |
  g=,8[ c@M! cM8] g g7! g7 | c= cM! cM cM r r |

  \rep 2 { c=8 c7! c7 c c7 c7 | f, fM! fM f=, fM fM | }
  a=,8[ f@M! fM8] a[ f@M fM8] | bes besM! besM bes besM besM |
  c=8[ f@M! fM8] c c7! c7 | f,=, fM! fM fM r r |
}
{{ end }}
