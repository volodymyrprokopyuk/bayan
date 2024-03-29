{{ define "rightHand" }}
\relative {
  \tempo "Allegretto cantabile"
  \clef treble
  \key a \minor
  \time 2/4
  \duo {
    \meter Voice 1/2 #'(1)
    a'='8\p a gis a | c b b b | b b e d | d c c c |
    e=''8_\dCre e a g | g f f e | dis dis dis dis | dis e \af 16.\! d\> b=' |

    a='8\p a gis a | c b b b_\dCre | b b e d | d c c e |
    a=''8 c b a | g f e\> \af 8\! d |
    c=''8 \af 16.\! c\< c \af 8\! b\> | a a aes\> \af 8\! g=' |

    \meter Voice 1/8 1,1,1,1
    e='32\p c' g c g e' c e g, f' d f g, e' c e |
    g,='32 e' c e g, d' b d g, d' b d g, e' cis e |
    a,='32 f' d f a, f' d f a, g' e g a,_\dCre f' d f |
    a,='32 f' d f a, e' cis e a, e' cis e a, fis' dis fis |
    b,='32 g' e g b, g' e g b, gis' e gis b, gis' e gis |
    c,=''32 a' e a c, a' e a d, b' gis b d, b' gis b |
    e,=''32\f d' a d e, c' a c d, b' f b c, a' fis a |
    b,='32 gis' e gis b,\> e d e a, e' c e gis, e' b \af 32\! e='' |

    \meter Voice 1/2 #'(1)
    s8\p a=''8 gis a | c b b b | b b e d | d c c c |
    c='''8\< cis d \af 8\! e | g\f f e d | d_\dDim c c b='' |
  } {
    \meter Voice 1/8 1,1,1,1
    a'='32 c,_\aLeg e c a' c, e c gis' c, e c a' c, e c |
    c'=''32 e, a e \rep 3 { b'='32 e, gis e=' } |
    b'='32 e, gis e b' e, gis e e' gis, b gis d' gis, b gis |
    d'=''32 e, a e \rep 3 { c'=''32 e, a e=' } |
    e'=''32 a, c a e' a, c a a' c, e c g' cis, e cis |
    g'=''32 a, d a f' a, d a f' a, d a e' a, c a |
    \rep 4 { dis=''32 a c a=' } |
    dis=''32 a c a e' gis, b gis d' gis, b gis b d, gis d=' |

    a'='32 c, e c a' c, e c gis' d e d a' c, e c |
    c'=''32 e, a e \rep 3 { b'='32 e, gis e=' } |
    b'='32 e, gis e b' e, gis e e' gis, b gis d' gis, b gis |
    d'=''32 e, a e c' e, a e c' e, a e e' a, c a |
    a'=''32 c, e c c' e, a e b' d, e d a' c, e c |
    g'=''32 a, d a f' a, d a e' f, b f d' f, b f |
    c'=''32 e, a e c' e, a e c' d, gis d b' d, gis d |
    a'='32 c, e c a' c, e c aes' d, f d g d g f=' |

    \meter Voice 1/2 #'(1)
    e='8 g g g | g g g g | a a a a | a a a a |
    b='8 b b b | c c d d | e e d c | b b a gis=' |

    \meter Voice 1/8 1,1,1,1
    c=''32 a c e a e c e gis e d e a e c e |
    c'='''32 a e a \rep 3 { b=''32 gis e gis='' } |
    b=''32 gis e gis b gis e gis e' a, e a d gis, e gis |
    d'='''32 a e a \rep 3 { c='''32 a e a='' } |
    c='''32 a e a cis a e a d a f a e' cis g cis |
    g'='''32 d a d f d a d e b f b d b f b |
    d='''32 a e a c a e a c gis d gis b gis d gis='' |
  }
  \meter 1/8 1,1,1,1
  a''=''32 e c a e a c, e a,=8 r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \minor
  \meter 1/2 #'(1)
  a,=,8-\stBass am! am am | e' eM! eM eM | e e7! e7 e7 | a, am! am am |
  a=,8 am! am a7! | d dm! d e | f f7! f7 f7 | e= e7! e7 e7 |

  a,=,8 am! b a | e' eM! eM eM | e e7! e7 e7 | a, am! am am |
  a=,8 am! gis a | d dm! dm dm | e[ a@m! e8 e7!] | a, am! b=, g@7! |

  c=8 cM! b c | g g' f e | d dm! cis d | a a' g fis |
  e=8 em! d d | c[ a@m! b8 e@7!] | a8 am! d dis | e=[ eM! a@m! e@7!8] |

  a,=,8 am! b a | e' e7! e7 e7 | e d c b | a am! am am |
  a=,8 g' f e | d dm! dm dm | e[ a@m! e=8 e7!] | a@m! r8 r4 |
}
{{ end }}
