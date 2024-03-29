{{ define "t1" }}
  r8 %
  \duo {
    \meter 1/8 1,1,1,1,1,1,1,1
    \set subdivideBeams = ##t
    {{ .a }}[~ \tuplet 3/2 { {{ .b }} } {{ .c }}] } { {{ .d }} } %
{{ end }}

{{ define "t2" }}
  r4 \tuplet 3/2 { {{ .a }} } {{ .b }} r |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Largo
  \clef treble
  \key d \minor
  \time 4/4
  \partial 2 { r8 a=8( d e | }
  \acc { d='16 e } d4 \acc { cis='8 } <g e'>4) r8 a( e' f |
  \acc { e='16 f } e4 \acc { d='8 } <a f'>4) r8 a( f' g |
  \acc { f='16 g } f4 \acc { e='8 } <bes g'>4) r8 c( g' a |
  \acc { g='16 a } g4 \acc { f='8 } <c a'>4) r8 d( a' bes |
  \acc { a='16 bes } a4 \acc { bes,=8 } g'4) r8 bes,( g' a |
  \acc { g='16 a } g4 \acc { a,=8 } f'4) r8 a,( f' g |
  \acc { f='16 g } f8 g, cis e g a, b cis | d2) <f=' a d> |

  \tempo Larghetto
  r8 <bes'='' d>8 8 8 \acc { <a='' c>16 d } <a c>4.-> <g bes>8 |
  r8 <a='' c>8 8 8 \acc { <g='' bes>16 c } <g bes>4.-> <f a>8 |
  r8 <g='' bes>8 8 8 \acc { <f='' a>16 bes } <f a>4.-> <e g>8 |
  r8 <f='' a>8 8 8 \acc { <e='' g>16 a } <e g>4.-> <d f>8 |
  r8 <bes=' g'>8[ 8 \tuplet 3/2 { <a=' f'>16( g' f }] <g, e'>4.) f'16 g |
  r8 <a,=' f'>8[ 8 \tuplet 3/2 { <g=' e'>16( f' e }] <f, d'>4.) e'16 f |
  r8 <gis,=' e'>8[ 8 \tuplet 3/2 { <gis=' d'>16( e' d }] <g, cis>4.) d'16 e |
  <f,=' d'>2 <c' a'>8 <a fis'> <c ees> <fis,=' d'> |

  \tempo Lento
  {{ template "t1" (w `d''=''8` `d=''16( e d)` `cis16 d=''` `bes'='4.`) }}
  <c'='' e>4.-> <bes d>8 |
  {{ template "t1" (w `c''=''8` `c=''16( d c)` `b16 c=''` `a'='4.`) }}
  \duo { <bes'=' d>4.-> <a=' c>8 | } { fis'='2 | }
  {{ template "t1" (w `bes'='8` `bes='16( c bes)` `a16 bes='` `g'='4.`) }}
  \duo { c''=''4.-> bes='8 | } { e'='2 | }
  {{ template "t1" (w `a'='8` `a='16( bes a)` `gis16 a='` `f'='4.`) }}
  \duo { bes'='4.-> a='8 | } { <c'=' fis>2 | }
  {{ template "t1" (w `g'='8` `g='16( a g)` `fis16 g='` `bes=4.`) }}
  \duo { a'='4.-> g='8 | } { cis'='2 | }
  {{ template "t1" (w `<d'=' f>8` `<d=' f>16( g f)` `e16 f='` `a=4.`) }}
  \duo { g'='4.-> f='8 | } { <bes= d>2 | }
  {{ template "t1" (w `e'='8` `e='16( f e)` `dis16 e='` `gis=4.`) }}
  <g,= cis f>4. cis8 |
  \meter 1/2 1,1
  <f,= a e'>4. <f a d>8 8 e' f fis=' |

  \tempo "Poco a poco stringendo"
  \duo {
    g'='2 gis | a2. b8 \rest <a, d f a> |
    gis'='2 g | f2. b8 \rest <f,= a d f> |
  } {
    r4 <g= b d>8 8 r4 <gis d' e>8 8 | r4 <a d f>4 4 s4 |
    r4 <gis= d' e>8 8 r4 <g cis e>8 8 | r4 <f a d>4 4 s4 |
  }
  r4 <g,= bes e>2.~-> | 4 <f a d> 2.->~ | 4 %
  <e= g cis>4 b' cis | d2 <fis a d>8 c' bes a=' |

  r8 g='8-. bes-. d-. e4-. <g, bes d>-> |
  r8 f='8-. a-. d-. e4-. <f, a d>-> |
  r8 g='8-. a-. cis-. e4-. <g, a cis>-> |
  r8 d'=''8-. fis-. a-. bes4-. <c, fis a>-> |
  r8 bes='8-. d-. g-. a4-. <bes, d g>-> |
  r8 a='8-. d-. f-. g4-. <a, d f>-> |
  r8 g='8-. a-. cis-. f4-. <g, cis e>-> |
  <f=' a d>4 r <f' a d> d'8 c=''' |

  bes=''8 d g, f e d c' bes | a d f, e d a bes' a |
  g=''8 bes e, d cis a a' g | f a d, a f d' g f |
  e=''8 g bes, a g cis f e | d f a, g f a e' d |
  gis,='8 f' e d g, e' d cis | d e f a d4 <d,='' fis a c>-> |

  <d='' g c>4 r <d g bes> r8 8 | <f a d>4 <d f a>4 4 r8 8 |
  a'=''4 <cis, e> <d f> <e g> | <d f bes> <d f a>4 4 r8 <a d f> |
  <g=' bes f'>4 r <g bes e> r8 8 | <f a e'>4 <f a d>4 4 r8 8 |
  <e=' g d'>4 <e g cis> <e g b> <e g cis> | <f a e'> <f=' a d>4 4 r |

  r8 g='8 bes d \duo { e''=''2 | } { r4 <g'=' bes> | }
  r8 a='8 d f \duo { a''=''2 | } { r4 <a'=' d f> | }
  r8 g,='8 cis e \duo { g''=''2 | } { r4 <g'=' cis e> | }
  r8 f,='8 a d \duo { f''=''2 | } { r4 <f'=' a d> | }
  r8 g,='8 bes f' \duo { e''=''2 | } { r4 <g'=' bes> | }
  r8 f,='8 a e' \duo { d''=''2 | } { r4 <f'=' a> | }
  r8 gis,='8 b d cis a b cis | d2 <f,=' a d> |

  c'=''4 bes~ bes8 a bes c | bes4 <d, f a>4 4 r |
  a'='4 g~ g8 fis g a | g4 <a, d f>4 4 r |
  \acc { dis='16 e } f='4 e~ e8 dis e f | e4 <f, a d>4 4 r |
  \acc { c'='16 cis } d='4 cis b cis | d2 <f,= a d>4 r |

  \tempo Allegro
  <g= g'>2-> <bes bes'>-> | <a a'>-> <d d'>-> |
  <cis=' cis'>2-> <e e'>-> | <d d'> <e e'>4 <fis fis'> |
  <g=' g'>2-> <bes bes'>-> | <a a'>-> <d d'>~-> |
  <d='' d'>4 <cis cis'> <b b'> <cis cis'> | <d d'>2 <d='' f a d>4 r |

  \rep 2 { <d='' g c>4(-> bes'='') } |
  \rep 2 { <d,='' f bes>4(-> a'='') } |
  \rep 2 { <cis,='' e a>4(-> g'='') } |
  \rep 2 { <a,=' d g>4(-> f'='') } |
  \rep 2 { <g,=' bes f'>4(-> e'='') } |
  \rep 2 { <f,=' a e'>4(-> d'='') } |
  <e,=' g d'>4 cis' b cis | d2 <f,=' a d> |

  \tempo Presto
  c'=''4 bes <d, g c>(-> bes') | bes a <d, f bes>(-> a') |
  a='4 g <cis, e a>(-> g') | g f <a, d g>(-> f') |
  f='4 e <g, bes f'>(-> e') | e d <f, a e'>(-> d') |
  d='4 cis <e, g b>(-> cis') | d r <f,= a d> r |

  {{ template "t2" (w `g=8( bes d` `e4)`) }} |
  {{ template "t2" (w `f,=8( a d` `f4)`) }} |
  {{ template "t2" (w `g,=8( cis e` `g4)`) }} |
  {{ template "t2" (w `a,=8( d f` `a4)`) }} |
  {{ template "t2" (w `bes,=8( d e` `g4)`) }} |
  {{ template "t2" (w `f,=8( a d` `f4)`) }} |
  r4 a,=4 b cis | d r <f,= a d> r |

  <g= cis f>4-> e' dis e | <a, d g>-> f' e f |
  <bes,= e a>4-> g' fis g | <c, f bes>-> a' gis a^~ |
  <bes,= d a'>4\sf g' f e | d des c b |
  bes=4 a b cis | d r <f,= a d> r |

  <g= g'>2-> <gis gis'>-> | <a a'>-> <bes bes'>-> |
  <b= b'>2-> <cis cis'>-> | <d d'>-> <des des'>-> |
  <c=' c'>2-> <b b'>-> | <bes bes'>-> <a a'>-> |
  <b= b'>2-> <cis cis'>-> | <d d'>-> <d=' f a d>4-> r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  \partial 2 { d=4-\stBass dm! | }
  a=,4 a7! cis a@7 | d4 dm! d dm |
  c=4 c7! e c@7 | f,4 fM! fis d@7! |
  g=,4 gm! e' g@m | a,4 d@m! f4 d@m |
  a=,4 a7! cis a@7 | d4 a d=2 |

  g,=,4 gm! bes g@m | d4 dm! f, d@m |
  a=,4 a7! cis a@7 | d4 dm! f, d@m |
  g=,4 gm! bes g@m | d4 dm! f, d@m |
  e'=4 e7! a, a7! | d dm! fis,=, d@7! |

  \rep 2 { g=,4 gm! c c7! | f, fM! d'= d7! | }
  g,=,4 gm! a a7! | d dm! bes besM! |
  e=4 e7! a, a7! | d dm! d c= |

  \duo { r4 g@M! r4 bes7! | } { b,=,2 bes=, | }
  a=,4 d@m! f4 d@m | e'4 e7! a, a7! |
  d=4 dm! d dm | g, gm! bes g@m |
  a=,4 d@m! f4 d@m | a4 a7! cis a@7 | d4 dm! d fis= |

  g,=,4 gm! bes g@m | a4 d@m! f4 d@m |
  a=,4 a7! cis a@7 | d4 d7! fis, d@7 |
  g=,4 gm! e' g@m | a,4 d@m! f4 d@m |
  a=,4 a7! cis a@7 | d=4 dm! d+dm r |

  g,=,4 gm! bes g@m | d4 dm! f+d@m r4 |
  e=4 a@7! a,4 a7 | d dm! a+d@m r4 |
  g,=,4 gm! bes+g@m r4 | a d@m! d+dm4 r |
  e'=4 e7! a, a7! | d, e f fis=, |

  g=,4 gm! e' g@m | a,4 d@m! f4 d@m |
  a=,4 a7! b cis | d dm! f, d@m |
  g=,4 gm! bes g@m | a4 d@m! f4 d@m |
  a=,4 a7! cis a@7 | d4 dm! d= dm |

  g,=,4 gm! bes g@m | a4 d@m! f4 d@m |
  e'=4 a@7! cis4 a@7 | a4 d@m! d4 dm |
  g,=,4 gm! bes g@m | a4 d@m! f4 d@m |
  e'=4 e7! a, a7! | d= dm! d+dm2 |

  fis,=,4 g@m! g4 gis | a d@m! f4 d@m |
  e'=4 a@7! a,4 cis | d dm! a d@m |
  g=,4 gm! bes gis | a d@m! f4 d@m |
  e'=4 a@7! a,4 a7 | d= dm! d+dm r |

  g,=,4 gm! e' g@m | f,4 d@m! a4 d@m |
  a=,4 aM! g a@M | f4 d@m! g4 a |
  bes=,4 g@m! e4 g@m | f,4 d@m! a4 d@m |
  a=,4 a7! cis a@7 | d=4 dm! d+dm r |

  g,=,4 gm! g gm | d' dm! d dm |
  a=,4 a7! a a7 | d dm! d dm |
  g,=,4 gm! g gm | d' dm! d dm |
  a=,4 a7! a a7 | d= dm! d+dm2 |

  r2 e+g@m!2 | r2 a+d@m! | r2 g+a@M!2 | r2 f+d@m! |
  r2 e+g@m!2 | r2 a+d@m! | r2 a+a7!2 | d=4 r d+dm! r |

  g,=,4 gm! bes g@m | a4 d@m! d4 dm |
  e=4 a@7! cis4 a@7 | d4 dm! f, d@m |
  g=,4 gm! e' g@m | a,4 d@m! d4 dm |
  a=,4-> aM! g-> a@M | f=,4-> d@m! d+dm4 r |

  a=,4 a7! cis a@7 | d4 dm! a d@m |
  c=4 c7! e c@7 | f,4 fM! c' f@M |
  g=,4 gm! bes g@m | a4 d@m! f4 d@m |
  a=,4 a7! cis a@7 | d=4 dm! d+dm r |

  g,=,4 gm! bes besM! | f d@m! g4 gm! |
  e'=4 g@M! a,4 a7! | f d@m! fis4 d@M! |
  g=,4 gm! e' g@M! | a,4 d@m! f4 d@m |
  e'=4 e7! a, a7! | d=4 dm! d+dm r |
}
{{ end }}
