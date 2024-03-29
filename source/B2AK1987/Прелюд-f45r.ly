{{ define "rightHand" }}
\relative {
  \tempo Lento
  \clef treble
  \key e \minor
  \time 3/4
  \af 2.\! b'='2.~(\p\< | b8\> c b c b \af 8\! fis') |
  \af 2.\! b,='2.~(\< | b8\> c b c b \af 8\! a') |
  g=''4.(-- fis8 e b) | e4.(-- d8 c g) |
  \duo { c''=''8(\< b a e fis \af 8\! c' | \af 2.\! b='2.)\> | }
  { s2. | r4 g'='4( fis=') | }

  b='2.~(\mp | b8_\dCre c b c b fis') | b,2.~ | b8 c( cis d f a) |
  <dis,='' fis>4.(--\< <e g>8 <f a> \af 8\! <e g>) |
  \duo { c'''='''2(\> \af 4\! b=''4) | } { d''=''2. | }
  <a,=' cis>4.(--\< <b d>8 <c ees> \af 8\! <cis e>) |
  <g'='' bes>2(\> \af 4\! <f a>4) |
  g=''8(-- f d b a f) | g'(-- fis e b g e) |
  \duo { g'='2\< \af 4\! g='4 | } { r8 bes=8( c e) <a,= dis>4 | }
  <b= e>8(^\tRit <cis fis> <d g> <fis b>) <g=' b e>4-- \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  e=4(-\stBass em!) em | dis( b@7!) b74 |
  e=4_\aSim em! em | dis b@7! b74 |
  e=4 em! em | c cM! cM |
  a=,4 am! am | dis b@7! b74 |
  e=4 em! em | dis= b@7! b74 |

  e=4 em! em | g, g7! g7 |
  c=4 cM! cM | gis e@7! e74 |
  a=,4 a7! a7 | d dm! dm |
  b=,4 d@m! dm4 | b e@m! em4 |
  c=2( b4) | e= em! em |
}
{{ end }}
