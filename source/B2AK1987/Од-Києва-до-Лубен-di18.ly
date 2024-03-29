{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key g \major
  \time 2/4
  r8\f <d'=' g>8[ r <d g>] | r <d fis a>[ r <d g>] |
  r8 <d=' g>8[ r <d g>] | r <d fis a> <d g>4 |
  \repeat volta 2 {
    r8\mp <c=' d fis>8[\< r <c e a>] | r <c d a'>[ r <d g>] |
    \alternative {
      \volta 1 {
        r8 <c=' e a>8[ r <c d fis>] | r <c d a'> \af 8.\! <b= d g>4 |
      }
      \volta 2 {
        r8 <c=' d fis>8[ r <c e a>] | r <c d a'> <b= d g> r |
      }
    }
  }

  \tempo "Con moto"
  g'='8\mf <g b>8 8 8 | <fis a> <a c> <g b>8. a16 |
  g='8 <g b>8 8 8 | <fis a> <a c> <g b>4 |
  \duo {
    a'='8. g16 fis8 e | d e16 fis g8 b |
    a='16 b a g fis8 e | d e16 fis g='8 %
  } { c'='4~ c | c b | c~ c | c b=8 } r8 |

  \tempo Allegretto
  g='16(\mp d e fis) fis( fis g b) | a( gis a c b c b a) |
  g='16( fis g a) b( ais b g) | a( b c a <g b>4) |
  a='16(\mf b a g) fis( g fis e) | d( dis e fis g fis g b) |
  a='16( b a g) fis( g fis e) | d8( e16 fis g='4) |

  \tempo Allegro
  g='16\f d <g b>-> d <g b> d <g b> d |
  <fis=' a>16 d <a' c>-> d, <g b>-> d g a |
  <g=' b>16 d <g b d>-> d <g b d> d <b' d> d, |
  <a'=' c>16 fis <c' e>-> fis, %
  \duo { d''=''8.\> \af 16\! c=''16 | } { fis'='4 | }
  <a=' c>16(\mf <b d> <a c> <g b> <fis a>8)-.\< <e g>-. |
  \duo { d'='8( e16 fis <b, g'>8)-. <d=' b'>-. | } { c'='4 s4 | }
  <c=' a'>16( <d b'> <c a'> <b g'> <a fis'>8)-. <g e'>8-. |
  <fis= d'>8( <g e'>16 <a fis'> \af 8\! <b= g'>4) \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  g,=,8-\puBass b b b | a c b8. a16 |
  g=,16 a b8 b b | a c b4 |
  a=,8. g16 fis8 e | d e16 fis g8 b |
  a=,8. g16 fis8 e | d e16 fis g4 |
  a=,16 b a g fis8 e | d e16 fis g=,8 r |

  g=,8-\stBass gM! d' g@M | d8 dM! g, gM! |
  g=,8 gM! d' g@M | d8 d7! g, gM! |
  a=,8 am! c a@m | d8 d7! g, gM! |
  d'=8 d7! a d@7 | d=8 d7! g+gM! r |

  g,=,8 gM! b g@M | fis8 d@7! g8 gM! |
  g=,8 gM! d' g@M | fis,8 d@7! g8 gM! |
  d'=8 d7! d d7 | c d@M! b8 g@M! |
  a=,8 am! d d7! | fis, d@7! g=,8 gM! |

  g=,8 gM!4-> gM8 | d' dM! g, gM! |
  g=,8 gM!4-> gM8 | d' d7! d16( c b a) |
  d=8 d7! a d@7 | fis8 d@7! g8 gM! |
  a'=8 g fis e | d( e16 fis g=4) |
}
{{ end }}
