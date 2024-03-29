{{ define "rightHand" }}
\relative {
  \tempo Andantino
  \clef treble
  \key g \major
  \time 2/4
  a'='8\mf a( fis d) | g g g( b) | a a( fis d | g4 b) |
  \repeat volta 2 {
    d=''8 d( c8.) c16( | b8) b( a8. g16) | fis8( d fis a |
    \alternative {
      \volta 1 { g='4) b=' | }
      \volta 2 { \hSpace g='4 \sSlur ub #'() ( g='8) r \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  c=8-\stBass a@m! d8 dM! | g, gM! b g@M |
  c=8 a@m! d8 dM! | b g@M! d8 g@M |
  g,=,8 gM! a d@7! | b8 g@M! c8 a@m! |
  d=8 dM! d d7! | g, gM! d' g@M | g,=,8 gM! g+gM r |
}
{{ end }}
