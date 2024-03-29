{{ define "rh1" }}
  f=''16 e f g a b c a | g a g f e c d e='' |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo "Con moto"
  \clef treble
  \key c \major
  \time 2/4
  g'='8-.\f c-. c-. e-. | g16( a g f e8)-. c-. |
  f=''8-. a-. c-. a-. | g16( a g f e8)-. c-. |
  f=''8-. f-. a-. f-. | g16( a g f e8)-. c-. |
  d=''16( e d c b8)-. g-. | c-. e-. g4-- |
  f=''16( g f e d8)-. f-. | e16( f e d c8)-. e-. |
  d=''16( e d c b8)-. g-. | c-. e-. c=''-> r |

  c=''16_\aLeg g a b c d e f | g a g f e c d e |
  {{ template "rh1" }} {{ template "rh1" }}
  d=''16 e d c b g a b | c b c d e c d e |
  f=''16 g f e d e f d | e f e d c d e c |
  d=''16 e d c b g a b | c8-. e-. c=''-> r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=8-\stBass cM! c cM | c cM! c cM |
  \rep 2 { f,=,8 fM! f fM | c' cM! c= cM | }
  g=,8 gM! g gM | c cM! c cM |
  f,=,8 fM! f fM | c' cM! c cM |
  g=,8 gM! g gM | c cM! c=-> r |

  \rep 2 { c=8 cM! r cM | }
  \rep 2 { f,=,8 fM!4 fM8 | c'= cM!4 cM8 | }
  g=,8 gM! g gM | c cM! c cM |
  f+fM!8 r r f+fM | c+cM! r r c+cM |
  g+gM!8 r r g+gM | c g c=-> r |
}
{{ end }}
