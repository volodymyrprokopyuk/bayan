{{ define "rightHand" }}
\relative {
  \tempo Vivo
  \clef treble
  \key g \minor
  \time 2/4
  \repeat volta 2 {
    fis'='4.\mf g8 | a4. fis8 | g4. a8 | bes2 |
    a='4. bes8 | c4. a8 | bes4. c8 | d2 |
    cis=''4. d8 | e4. cis8 | d4. e8 | f2 |
    g=''4 f | e cis | d8-> r r4 | d=''8-> r r4 |
  }

  \repeat volta 2 {
    g=''4.\f g,8 | g'4 f | r8 ees4 d16 ees | f ees d ees f ees d ees |
    f=''4. f,8 | f'4 ees | r8 d4 cis16 d | ees d cis d ees d cis d |
    ees=''4. c8 | a4 ees' | d4. bes8 | g4 ees |
    d='4. fis8 | bes4 a | r8 g4 fis16 g |
    \alternative {
      \volta 1 { a='16 g fis a g='8 r | }
      \volta 2 {
        a='16 g fis a g='8 r | <g a ees'>\f r <fis a d> r |
        <bes=' d g>8 r r4 \bar "|."
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \minor
  d=8-\stBass d7!4 d78 | d d74 d78 |
  \rep 2 { g,=,8 gm! d'= g@m | }
  f,=,8 f7!4 f78 | f f74 f78 |
  \rep 2 { bes=,8 besM! f=, bes@M | }
  a=,8 a7!4 a78 | a a74 a78 |
  d=8 dm! a a7! | d dm! a d@m |
  g=,8( gm!) gis( e@7!) | a=,8 a7!4 a78 |
  d+dm!-> r r4 | d+dm!8-> r r4 |

  g=,8 g7! d' g@7 | g,8 g7! b g@7 |
  \rep 2 { c=8 cm! g=, c@m | }
  f=,8 f7! c' f@7 | f,8 f7! a f@7 |
  \rep 2 { bes=,8 besM! f=, bes@M | }
  c'=8 cm!4 cm8 | c cm4 cm8 |
  d=8 g@m!4 gm8 | g,8 gm! c cm! |
  d=8 d7!4 d78 | d d74 d78 |
  g,=,8 gm!4 gm8 | d' d7! g+gm! r |
  d=8 d7! g+gm! r | c+cm! r d+d7! r | g+gm! r r4 |
}
{{ end }}
