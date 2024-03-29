{{ define "rh1" }}
  {{ .a }} e d8 c) | b4( d c8 b) | c4( a fis=' |
{{ end }}

{{ define "rh2" }}
  {{ .a }} e' d8 c) | <g b>4( d' c8 b) | c4\( a fis=' |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key g \major
  \time 3/4
  g'='4\mf g8\(\< a b \af 8\! c | d2 g4\) |
  e=''4\( g e | d2\> \af 4\! b4\) |
  {{ template "rh1" (w `c=''4(\p`) }} | g2 b4) |
  {{ template "rh1" (w `c=''4(\f`) }} | g4 g=') r |

  g='4\p g8\(\< a b \af 8\! c | d2 g4\) |
  <c,='' e>4\( g' <c, e> | <b d>2\) r4 |
  {{ template "rh2" (w `<a=' c>4(\f`) }} | g8 a b c d4\) |
  {{ template "rh2" (w `<a=' c>4(\p`) }} | g4\) <b,= g'>2 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  R2. | g,=,8[(-\puBass fis g a] b) r |
  c=8( d e4) c | b( g) r |
  a=,8( b c4) r | g8( a b4) r |
  d,=,8( e fis g a4) | g8( a b c d4) |
  r4 c+cM! r | d=8( c b4) d |
  c=8( b c4 a | b=,4) g@M! r4 |

  g=,4 d'4.( c8 | b4) g@M! r4 |
  c=8 d e4 e8( fis | g4 d) g, |
  \rep 3 { r4 d'=8( cis d=4) | } g, g8( a b c) |
  \rep 3 { d=8( cis d=4) r4 | } g,=,4 gM!2 |
}
{{ end }}
