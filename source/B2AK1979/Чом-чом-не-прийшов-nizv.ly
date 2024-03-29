{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key e \minor
  \time 2/4
  e'='4\mp g | b8-. b-. b16( a g fis) |
  e='8-. e-. g-. g-. | b8-. b-. b16( a g fis) |
  g='8\< g a \af 8\! a | b b d16( c b a) |
  b='8( g fis dis | e)\> e \af 4\! e4 |
  r8 <b= e g>8[\< r <d fis a>] |
  r8 \af 16.\! <d=' g b>8 d'16( c b a) |
  b='8(\> g fis dis | e) e \af 8\! e=' r |

  e'=''16( dis e fis g fis g a |
  b=''8) b,-. b'16( a g fis) |
  e=''16( g, b e) g( b, e g) |
  b=''16( b, dis fis b a g fis) |
  g=''16(_\dCre b, e g a d, fis a |
  b=''16 d, g b d c b a) |
  b=''16( b, e g fis b, dis fis | e8) e e=''4 |
  r8\f <g,=' b e>8[ r <c d fis>] |
  r8 <b=' d g>8 d'16(\> c b \af 16\! a) |
  b=''16(\< g e \af 32.\! g fis b, cis dis |
  e=''8)\> e \af 8.\! <g,=' b e>4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  e=8-\stBass em! e em | dis b@7! b8 b7 |
  e=8 em! e em |  dis b@7! b8 b7 |
  e=8( em!) fis( b@7!) | g,8( e@m!) a8( am!) |
  b=,8 e@m! b8 g7! | e em! e em | e4 d | g, a8 am! |
  b=,8 e@m! b8 g7! | e em! e= r |

  e+em!8 r e+em r | dis=8 b@7! b74-> |
  e=8 em! e em | dis b@7! b74-> |
  e=8 em! fis d@M! | g,8 gM! a am! |
  b=,8 e@m! b8 b7! | e em! e em |
  e=4-> d-> | g,-> a8 am! |
  b=,8 e@m! b8 b7! | e= em! e+em4 |
}
{{ end }}
