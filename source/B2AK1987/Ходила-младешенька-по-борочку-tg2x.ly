{{ define "rh1" }}
  \afterGrace 1/4 \fixed c' {
    <g,= a, c e>4^\markup \center-align \smaller "Б+М" %
  } {
    \fixed c { \once \hide Stem <\parenthesize a,=, \parenthesize c >4 } %
  }
{{ end }}

{{ define "rh2" }}
  \duo { a'='8 b=' | } { f'='4 | }
{{ end }}

{{ define "rh3" }}
  \duo { <e'=' a c>8\> <f a c> \af 4\! <gis b>4 | a='2 | }
  { s4 e'='8 d | c='2 | }
{{ end }}

{{ define "lh1" }}
  {{ .a }} am! b d@m! | c8 a@m! d8 dm! | e a@m! e8 {{ .b }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key c \major
  \time 2/4
  R2\mp | \rep 3 { R2 | } <e'=' a c>8\< 8 <d a' d> <d f a d> |
  <e=' a c e>4  \af 4\! {{ template "rh2" }} |
  <e=' a c>8\> 8 <d e b'>4 | \af 4.\! <c=' e a>4. r8 |

  \tempo Allegretto
  <g'=' e'>8\mp 8 8 8 | <g b d>4 <g a c>8 <g b d> |
  <g=' c e>8 8 <g c e g>4-> | <g b d> <gis b e> |
  <a=' c>8 8 <a d>8 8 | <a e'>4 a8 b |
  <a=' c>8 8 <gis b>4 | \af 2\! a2\< |
  <a=' c>8 8 <a d>8 <f a d> |
  <e=' a e'>4 {{ template "rh2" }} {{ template "rh3" }} |

  e'=''16\mf g, c e e g, c e | d g, b d c g d' g, |
  e'=''16 g, c e g g, c e | d g, b d e d c b |
  c=''16 e, a c d f, a d | e e, a c a f b f |
  c'=''16 e, a c b e, gis b | a\< e fis gis a gis a \af 16\! b |
  <a=' c>16( e <a c>8) <b d>16( g <b d>8) | e16( c g e d f a b) |
  e,='16( a b c) b( e, fis gis | a4) <b,= f' g>-> |

  <g'=' c e>16\f 16 8-> 16 16 8-> | <f g d'>4 <f a c>8 <f b d> |
  <e=' c' e>8 8 <g c g'>4 |
  \duo { d''=''4 e='' | } { <g'=' b>8 <f a> <e=' gis b>4 | }
  <e=' a c>16 16 8-> <d g d'>8 8 | <e g e'>4-> <f a>8 <f a b> |
  {{ template "rh3" }}
  <c=' e c'>8 8 <d f a d>8 8 | <e a e'>4^\tRit_\dDim {{ template "rh2" }} |
  <c=' fis c'>8 8 <d gis b>4 | <c=' e a>2 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c@M!8[-\stBass cM8 cM cM] | g@M!4 a@m!8[ g@7!8] |
  c@M!8[ cM8] {{ template "rh1" }} d@m!4 e@M!4 |
  a=8[ g f d] | e4 d | e gis, |
  \duo { r8 am!4 r8 | } { a,=,4~ a=,8 r8 | }

  c=8[ cM! cM cM] | g[ gM! gM gM] |
  c=8[ cM! cM cM] | g gM! e' e7! |
  {{ template "lh1" (w `a,=,8` `eM!`) }} | a[ g f e] |
  a=8[ g f d] | c8 a@m! d8 dm! |
  c=4 b | \duo { r4 am!4 | } { a,=,2 | }

  c=8 cM!4 cM8 | g gM!4 gM8 |
  c=8 cM! e c@M | g,8 gM! gis e@7! |
  {{ template "lh1" (w `a=,8` `e7!`) }} a, am!4 am8 |
  a=,8 am! g g7! | c cM! d dm! |
  e=8 a@m! e8 e7! | a,=, am! g+g7!4 |

  c=8( cM!) c( cM) | b[ g a b] |
  c=8( cM!) e( c@M) | g,8( gM!) e'( e7!) |
  a,=,8 am! b g@7! | c8 cM! d dm! |
  e=8 a@m! e8 e7! e[ d c b] | a am! b d@m! |
  c=8 a@m! \duo { d=4 | } { d=8 dm! | }
  dis=4 \duo { e=4 | } { e=8 e7! | } a=,8 e a+am!4 |
}
{{ end }}
