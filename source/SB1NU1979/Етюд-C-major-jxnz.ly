{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key c \major
  \time 3/4
  g''=''4\f g g | g8( f e d c b | c4) c c | d d e8( f |
  g=''4) g g | g8( f e d c b | c4) e d | c=''2. |
  \repeat volta 2 {
    f=''4\f f f | f8( e g e d c | b4) b b | b8( c d c e c |
    f=''4) f f |f8( e g e d c | b4) b8( c d b | c=''2.) |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=4-\stBass cM! cM | d g@7! g74 | e c@M! cM4 | b g@M! gM4 |
  c=4 cM! cM | d g@7! g74 | e c@M! g@7!4 | c@M!4( g,4) c |
  d=4 g@7! g74 | c cM! cM | f, g@M! gM4 | e' c@M! cM4 |
  b=,4 g@M! gM4 | c cM! cM | g'2 f4 | e c= r |
}
{{ end }}
