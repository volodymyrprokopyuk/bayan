{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 {
    c''=''4\(\mf e g e | d8 e d c b4 g\) |
    c=''4\( e g e | d4. f8 e d c b='\) |

    a='4\( c e c | b8 c b a gis4 e\) |
    \alternative {
      \volta 1 { a='4\( c b e | a,2 b='\) | }
      \volta 2 { a='2( a'=''4) r \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=4-\stBass cM! c cM | b g@M! g4 gM |
  c=4 cM! e c@M | g,4 gM! e'= eM! |

  a,=,4 am! a am | e' eM! e eM |
  a,=,4 am! e' eM! | a, am! g gM! | a am! a=, r |
}
{{ end }}
