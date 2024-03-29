{{ define "rh1" }}
  {{ .a }} d c) e4( a,) | d8( b a b) g2 |
  a='8( f e d) g( e b a) | f'4.( b,8 e='2) |
{{ end }}

{{ define "lh1" }}
  {{ .a }} r cM! r f, r fM! r | d' r g@7! r8 e r c@M! r8 |
  f,=,8 r fM!4 e'=8 r c@M!4 |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key c \major
  \time 4/4
  {{ template "rh1" (w `g'='8(\mf c`) }}
  {{ template "rh1" (w `g='8( c`) }}

  dis='8( e b' a c b g e) | b'( a d, a' f e f e) |
  dis='8(\< e a \af 16\! c) gis( a c e) |
  d=''8( a c d) c(\> b4 \af 8\! e,8) |
  dis='8( e b' a c b g e) | b'(\< a e' d g f g \af 8\! f) |
  a=''8(\f g f g f d c b) | d( b a\> b f4) f8( \af 8\! e=' |

  {{ template "rh1" (w `g='8)\mf c(`) }}
  g='8(\< c d c) e4( a,) | a8( d e d) \af 2\! f2 |
  g=''8( e b a) f'( d a g) |
  d'=''4.( a8\> \af 4.\! c=''2) \fermata \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  {{ template "lh1" (w `c=8-\stBass`) }}
  d=8 r g@7! r8 c r cM! r |
  {{ template "lh1" (w `c=8`) }}
  d=8 r dm! r e= r e7! r |

  a,=,8 r am! r g r e@m! r8 |
  f=,8 r d@m! r8 gis r e@7! r8 |
  a=,8 r am! r g r a@m! r8 |
  f=,8 r d@m! r8 e' r e7! r |
  a,=,8 r am! r g r e@m! r8 |
  f=,8 r d@m! r8 d'= r dm! r8 |
  g+g7!4~ g+g78 r r2 | R1 |

  {{ template "lh1" (w `c=8`) }}
  d=8 r g@7! r8 c r cM! r |
  c=8 r cM! r f, r fM! r |
  d'=8 r dm! r b r d@m! r8 |
  g=,8 r a@m!4 g8 r g7!4 |
  c=8 r f@M! r8 c@M! r8 c= r \fermata |
}
{{ end }}
