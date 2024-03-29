{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key g \major
  \time 2/4
  e'='4\(\p e8 fis | g4 fis8 e | fis4 b | e,\) d |
  g='4\(\mp g8 a | b4 a8 g | a4 d | b2\) |
  c=''4\(\mf b8 a | b4 g\) | a\( g8 fis | g4 e\) |
  e='4\( e'8 c | b a g fis | e2\)\< | \af 2\! <e e'>2 |
  <a=' c>4\(\f <g b>8 <fis a> | <g b>4\> \af 4\! g\) |
  <fis=' a>4\(\mf <e g>8 <dis fis> | <e g>4\> \af 4\! e\) |
  e='4\(\mp \duo { e''=''8 c='' | } { e'='4 | }
  <g=' b>8 <fis a> <e g> <dis fis> | \af 2\! e2\)\> | e='4 r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  e=8-\stBass em! b e@m | e8 em! b e@m |
  dis=8 b@7! b8 b7 | e em! fis d@7! |
  g,=,8 gM! d' g@M | g,8 gM! d' g@M |
  fis=8 d@7! d8 d7 | g, gM!-. gis8( e@7!)-. |
  a=,8( am!)-. fis( a@m) | g8( e@m!) e'8( em) |
  fis=8( b@7!) dis8( b@7) | e8( em!) g,( e@m) |
  a=,8 am! fis a@m | b8 b7! dis b@7 | e4 d | c b |
  a=,8( am!)-. d( d7!)-. | g,( gM!)-. b( g@M)-. |
  a=,8( am!) b( b7!) | e( em!) g,( e@m) |
  a=,8 am! fis a@m | b8 b7! dis b@7 |
  e=8 em! e= em | e+em!4 r |
}
{{ end }}
