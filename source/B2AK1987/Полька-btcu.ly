{{ define "rh1" }}
  {{ .a }} c-. \acc { d=''8 } c16( b c8) |
  d=''8-. g,-. \acc { a='8 } g16( fis g8) |
  d'=''8-. g,-. f'-. g,='-. |
{{ end }}

{{ define "rh2" }}
  {{ .a }} \acc { cis=''8 } d8 \acc { fis=''8 } g8 \acc { ais=''8 } b8] |
  b=''8( a16 g fis8)-. e=''-. |
{{ end }}

{{ define "lh1" }}
  {{ .a }} cM! cM r | b g@7! g78 r | g g7! g g7 | c= cM! cM r |
{{ end }}

{{ define "lh2" }}
  c=8 a@m! am8 r | d d7! d7 r | g,=, gM! gM r |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key c \major
  \time 2/4
  {{ template "rh1" (w `g'='8-.\mf`) }}
  a'=''8-. g-. g16( f e8) |
  {{ template "rh1" (w `g,='8-.`) }}
  e'=''16( g, e' d c8) d16 c='' |

  {{ template "rh2" (w `b='8[\p`) }}
  \rep 2 { e=''8-. d-. \acc { e=''8 } d16( cis d=''8) | }
  {{ template "rh2" (w `b='8[`) }}
  e=''16( d cis d e d b' a |
  g=''8) \acc { fis=''8 } g8 \acc { fis=''8 } g16(\< gis a \af 16\! ais='' |

  \acc { c='''8 } b8)-. g,-. b'-. a-. |
  a=''8-. g-. g16( f e8) | g-. g,-. g'-. f-. |
  f=''8-. e-. e16( d c8) | b'-. g,-. b'-. a-. |
  a=''8-. g-. g16( f e8) | cis16( d b' a g f e d |
  c=''8) \acc { d=''8 } c16( b c=''4) \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  {{ template "lh1" (w `c=8-\stBass`) }}
  {{ template "lh1" (w `c=8`) }}

  g=,8[ gM! gM gM] | {{ template "lh2" }}
  g=,8 gM! g gM | {{ template "lh2" }}

  g=,8 g7! g7 r | c cM! cM r |
  d=8 g@7! g78 r | c cM! cM r |
  d=8 g@7! g,8 g7 | c cM! cM r |
  f,=,8 d@m! g8 g7! | c= cM! cM4 |
}
{{ end }}
