{{ define "rh1" }}
  b='16 d g,8~ g a | b16 g a b=' %
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key g \major
  \time 2/4
  \acc { fis''=''8 } g4\f \acc { fis=''8 } g4 |
  \acc { fis=''8 } g=''8 d16 f e8 c |
  b='8 g g g'16 fis | g8 d e c |
  b='8 g4 a8 | b g c a | b g4 a8 | b g c=''4 \bar "||"

  \tempo "Più mosso"
  \rep 2 { b='8 g16 fis g8 g'16 fis | g8 d16 e f e d c='' | }
  {{ template "rh1" }} c=''8 a | {{ template "rh1" }} c=''4 \bar "||"

  \tempo Allegro
  \repeat volta 2 {
    g='8 b16 d d,8 fis16 a | g8 b16 d c b c a |
    g='8 b16 d d,8 fis16 a | g a b d c4 |
    g='16 a b d d,8 e16 fis | g a b d c b c a |
    \alternative {
      \volta 1 { g='16 a b d d,8 e16 fis | g a b d c=''4 | }
      \volta 2 { g='16 a b d d, e fis a | g b d g( <g,=' b d g>4) \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  \grace { s8 } g,=,8-\stBass gM! b g@M | g8 gM! c cM! |
  g=,8 gM! b g@M | g8 gM! c cM! |
  g=,8 gM! b g@M | d8 g@M! c8 cM! |
  g=,8 gM! b g@M | d=8 g@M! c+cM!4 |

  \rep 2 { g,=,8 gM! b g@M | g8 gM! c= cM! | }
  d=8 g@M! g,8 gM | f g@M! e'8 c@M! |
  d=8 g@M! g,8 gM | d'=8 g@M! c+cM!4 |

  \rep 4 { g,=,8 gM! d' dM! | g, gM! c= cM! | }
  g=,8 gM! d' d7! | g,=, gM! g+gM4 |
}
{{ end }}
