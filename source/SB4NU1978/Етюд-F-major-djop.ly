{{ define "rightHand" }}
\relative {
  \tempo Vivo
  \clef treble
  \key f \major
  \time 2/4
  \repeat volta 2 {
    \partial 16 { c''=''16\p | }
    f=''32->_\aLeg c b c d c b c g'-> c, b c d c b c |
    a'=''32-> c, b c d c b c bes'-> c, b c d c b c |
    c'='''32->\< c, b c d c b c a'-> c, b c d c b \af 32\! c |
    fis=''32->\> c b c d c b c g'-> c, b c d c b \af 32\! c |
    f=''32_\dCre e dis e a g fis g d' c b c f e dis e |
    g='''32 f e f d c bes a g\mf\> f e d c bes a g |
    f='32 e d c bes a g \af 32\! f e\< f g a bes c d e |
    f='32 g a bes c d e \af 32\! f f,='8->\f r16 %
  }

  \repeat volta 2 {
    \partial 16 { a='16\p | }
    g='32-> c b c d c b c f,-> b ais b c b ais b |
    g='32-> f' e f g f e f g,-> e' dis e f e dis e |
    c=''32\< g' fis g a g fis g b a gis a d c b \af 32\! c |
    e,=''32\> g fis g d g fis g e c b c d c b \af 32\! c |
    g'=''32->\p c,_\dCre b c d c b c c'-> c, b c d c b c |
    bes'=''32-> c, b c d c b c a'-> c, b c d c b c |
    fis=''32 c ees fis a c e fis g, a bes c d a bes g |
    c='''32\f\> bes a g f e d c bes a g f e bes' g \af 32\! e=' |

    f='32\p c' b c d c b c a' c, b c g' c, b c |
    f=''32 c b c d c b c a c b c g c b c |
    f,='32_\dCre c' b c <g e'> c b c <a f'> c b c <g e'> c b c |
    <a=' f'>32 c b c <e g> c b c <f a> c b c <e g> c b c |
    <f='' a>32 c b c <e c'> g e c <f c'> a f c <g' e'> c g e |
    <a='' f'>32\ff c a f c a f f' f,='8-> r16 %
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key f \major
  \partial 16 { r16 | }
  f,=,8-\stBass fM! e' c@M! | f,8 fM! g c@7! |
  a=,8 f@M! f8 fM! | dis' c@d! e8 c@M! |
  bes=,8 c@M! g8 c@7! | a8 f@M! bes8 g@m! |
  c=8 f@M! c8 c7! | f, fM! f=,-> r16 %

  \partial 16 { r16 | }
  e'=8 c@M! d8 g@7! | b8 g@7! c8 cM! |
  e=8 c@M! f,8 fM! | g+c@M![ g+g7!8] c+cM! r8 |
  bes=,8-- c@M! a8-- f@M! | g8-- c@7! f8-- fM! |
  a=,8-- ad! bes-- g@m! | c8-- f@M! c=8-- c7! |

  f+fM!8 r f+fM! c+c7! | f+fM!8 r f+fM! c+cM! |
  \rep 4 { f+fM!8 c+cM! } | \rep 2 { f+fM!8 c+c7! } |
  f+fM!8 f, f=,-> r16 %
}
{{ end }}
