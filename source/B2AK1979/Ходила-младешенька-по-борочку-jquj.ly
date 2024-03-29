{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key c \major
  \time 2/4
  <c''='' e>8\mf 8 8 8 | <b d>4 <a c>8( <b d>) |
  <c='' e>8 8 <e g>4 | <b d>( <gis e'>) |
  <a=' c>8 8 <a d>8 8 | <c e>4 a8( b) |
  <a=' c>8 8 <gis b>4 | a4~ a='8 r |

  <c='' e>8\f 8 8 8 | <b d>8 e16 d c8 d |
  e=''16 c e f g a g e | d4 e16 d c b |
  c=''8 c d d | e4 a,16 gis a b |
  c=''16 e, a c b d, e gis | <c,=' a'>4~ 8 r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=8-\stBass cM! c cM | g g7! g g7 |
  c=8 cM! c cM | g gM! e' e7! |
  a,=,8 am! f d@m! | e'8 a@m! d8 dm! |
  e=8 a@m! e8 e7! | a,=, am! a+am r |

  c=8 cM! c cM | g gM! a b |
  c=8 cM! e c@M | g,8 gM! e' e7! |
  a,=,8 am! f d@m! | e'8 a@m! f,8 d@m! |
  e'=8 a@m! e8 e7! | a,=, am! a+am r |
}
{{ end }}
