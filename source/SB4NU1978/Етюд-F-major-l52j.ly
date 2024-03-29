{{ define "rightHand" }}
\relative {
  \tempo "Lento. Rubato"
  \clef treble
  \key f \major
  \time 3/4
  r8\p <c'=' f a>8--\< \af 16.\! <d f bes>-- %
  <c=' f a>8--\> <b d f gis>-- \af 16.\! <c f a>-- |
  r8 <bes= d e g>8\<_\aSim \af 16.\! <bes d e a> %
  <bes= d e g>8\> <bes d e fis> \af 16.\! <bes d e g> |
  r8 <g= d' e g>8\< \af 16.\! <g d' e a> %
  <g= d' e g>8\> <g d' e fis> \af 16.\! <g d' e g> |
  r8 <g= bes cis e>8\< \af 16.\! <g bes cis f> %
  <g= bes cis e>8\> <g bes cis dis> \af 16.\! <g bes cis e> |
  r8 <a= d f>8\< 8 <a d e g>8 8 <a d f a> |
  \af 32\! <a= d f a>8 <c f a e'>8\mf\> 8 %
  <c=' f a d>8 <c f aes d> \af 16.\! <c f aes c> |
  r8 <c=' e g>8\< 8 <c e g a> <b f' a b> \af 16.\! <b f' g b> |
  r8 <c=' e g c>8\> <d e bes' c> <c e a c> <bes e g c> \af 16.\! <c=' e a c> |

  r8\p <a= c f a>8\< <bes d f bes> %
  \af 16.\! <a= c f a>8 <d f bes d>\> \af 16.\! <c f a c> |
  r8 <bes= d e g>8\< <c e a> %
  \af 16.\!<bes= d e g>8 <d e g c>\> \af 16.\! <d e g bes> |
  r8 <g,= d' e g>8\< <a d e a> %
  \af 16.\! <g= d' e g>8 <f' g d' f>\> \af 16.\! <e g d' e> |
  r8 <cis=' e g a>8\< <d e g bes> %
  \af 16.\! <d=' e g c>8 <d e g bes>\> \af 16.\! <cis e g a> |
  r8 <c=' ees fis a>8\< <d ees fis bes> %
  \af 16.\! <c=' ees fis a>8 <c f a d>\> \af 16.\! <b f' g> |
  r8 <bes= d e g>8\< <c e a> %
  \af 16.\! <bes= d e g>8 <bes ees g c>\> \af 16.\! <a ees' f> |
  r8 <f= des' f>8\< <g des' f> %
  \af 16.\! <a= des f>8 <c des f>\> \af 16.\! <bes des f> |
  r8 <a= c f>8\< 8 \af 16.\! <gis b d f>8 <g bes d f>\> \af 16.\! <bes c e> |
  r8 <a= c f>8\< 8 <c f a>8 8 \af 16.\! <f=' a c> |

  r8 <ees=' f a c>8^\tAcc_\dCre <ees f a d> <ees f a c> <ees f a b> <ees f a c> |
  r8 <d=' f gis b>8 <d f gis c> <d f gis b> <d f gis ais> <d f gis b> |
  r8 <des=' f g bes>8 <des f g c> <des f g bes> <des f g a> <des f g bes> |
  r8 <c=' f a>8 <d f bes> <c f a> <b d f gis> <c f a> |
  <ees=' a c f>2.->\f | <d gis b f'>2.-> |
  <des=' g bes f'>2.~-> | 8 <des f g>[->^\tRit <des f g bes>-> %
  <f=' g bes des>8-> <f g bes f'>-> <g des' f g>]-> |
  <a=' c f a>2.\f \fermata \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key f \major
  f,=,2.-\puBass | c' | bes | a | d~ | d | g,2. | c= |

  f,=,2 f4 | c'2 c4 | bes2 bes4 | a2 a4 | d2 g,4 |
  c=2 f,4 | bes2 g4 | c2 c4 | f,=,2. |

  \rep 4 { f=,2 f8 f=, | }
  r8 f=,8-> c'-> a-> ees'-> c-> | r8 f,_\aSim b gis d' b |
  r8 f=,8 bes g des' bes | f2-> des'8-> bes=,-> |
  \fixed c' { <f,,=, c, a, c f>2.^\markup \smaller "Б" \fermata } |
}
{{ end }}
