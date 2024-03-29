{{ define "rh1" }}
  {{ .a }} cis d a d cis d a) | e'( d e a, e' d e a,) |
  f'=''16( e f a, f' e f a,) | g'( f g a, g' f g a,=') |
{{ end }}

{{ define "lh1" }}
  {{ .a }} f a, f') | cis( e a, e'=') |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key d \minor
  \time 2/4
  {{ template "rh1" (w `d''=''16(\mf`) }}
  <f'='' a>4( <g bes>8 <f a> | <e g>[ <d f> <c e> <bes d>] | <a cis>2) |
  a='8[( bes b cis]) | {{ template "rh1" (w `d=''16(`) }}
  <f'='' a>4( <g bes>8 <f a>) | \duo { g''=''4 } { e''=''8( d='') } <cis a'>4 |
  <d='' d'>2~ | 4 r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef treble
  \key d \minor
  \meter 1/2 #'(1)
  {{ template "lh1" (w `d'='8(-\frBass`) }} {{ template "lh1" (w `d='8(`) }}
  <d=' f>2 \duo { d'='2 | } { bes=4( g=) | } |
  a=16[( bes a bes] a bes a bes) | a'8( g f e) |
  \rep 2 { {{ template "lh1" (w `d='8(`) }} } | <d f>2 | <bes d>4 <a cis> |
  d='16[( e d e] d e f e | d='4) r |
}
{{ end }}
