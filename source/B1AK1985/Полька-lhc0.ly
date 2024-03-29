{{ define "lh1" }}
  {{ .a }} dm! d dm | d g@m! d8 g@m |
  a=,8 a7! a a7 | d dm! d= dm |
{{ end }}

{{ define "lh2" }}
  f,=,8 fM! f fM | g gm! g gm |
  a=,8 d@m! a8 a7! | d dm! {{ .a }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Presto
  \clef treble
  \key d \minor
  \time 2/4
  d''=''8\mf f16( e d8)-. d-. | e r e4-> |
  cis=''8-- cis16( b a b cis a | d8)-. r d4-> |
  d=''8--\p f16( e d\< e f d | e8)-. \af 8\! e-. e4-> |
  cis=''8-- cis16(\> b a b cis \af 16\! a | d8)-. r d=''4->\p |

  a'=''8-.\f a16( g f8)-. f16( a | g8)-. g16( f e8.)-- g16\( |
  f=''16\< e d f e d cis e | d f a cis\) \af 4\! d4-- |
  a=''8\mf a16( g f g a f | g8) g16( f e8.) g16\( |
  f=''16\> e d f e d cis \af 16\! e | d8\) r d=''4-> \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  {{ template "lh1" (w `d=8-\stBass`) }}
  {{ template "lh1" (w `d=8`) }}

  {{ template "lh2" (w `d=8 dm`) }}
  {{ template "lh2" (w `d=4->`) }}
}
{{ end }}
