{{ define "rightHand" }}
\relative {
  \tempo "Allegro moderato"
  \clef treble
  \key c \major
  \time 3/4
  \repeat volta 2 {
    g''=''4\(\p fis8 g fis g | a4. g8 f e\) |
    dis=''8\( e dis e dis e | f4. e8 d c\) |
    \rep 2 { c=''8( b a b g='4) | }
    \acc { d'=''8 } c8\( b c d e f | g2.\) |
    g=''4\( fis8 g fis g | a4. g8 fis e\) |
    d=''4\( cis8 d cis d | e4. d8 c b\) |
    b='8(_\dCre a gis a e'4) | d8( c b c a'4) |
    g=''8\( fis e d e fis |
    \alternative {
      \volta 1 { g=''4\)\f r\> \af 8.\! r | }
      \volta 2 {
        \hSpace g=''4\f \sSlur nb #'((wb . 3.5)) ( r)\> \af 8.\! r |
      }
    }
  }

  \repeat volta 2 {
    g=''4\(\mf fis8 g fis g | d'4.\) g,8\( a g |
    fis=''8\< g a b c \af 8\! d | e2\)\f r4 |
    a,=''4\(\mf gis8 a gis a | e'4.\) a,8\( bes a |
    gis=''8\< a b cis d \af 8\! e | f2\)\f r4 |
    f='''8\( g f e d c | b a g f e d\) |
    e=''8( g fis g c4) | r8 e,(_\dDim dis e g4) |
    f=''8\( g f e d c | b a b g a b\) | c\( e g c g e |
    \alternative {
      \volta 1 { c=''4\) r r | }
      \volta 2 { \hSpace c=''4 \sSlur nb #'() ( r) r \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=4-\stBass cM! cM | c cM cM | c cM! cM | c cM cM |
  g=,4 g7! g7 | g g7 g7 | \rep 2 { c=4 cM! cM | c= cM cM | }
  c=4 d@M! dM4 | b g@M! gM4 | c+a@m!4 r4 r | a+am! r4 r |
  d=4 d7! d7 | g+gM!4 g,8( f e d) | g+gM!4 fis8( g fis g=,) |

  b=,4 g@7! g74 | b g@7 g74 | c cM! cM | c cM cM |
  cis=4 a@7! a74 | cis a@7 a74 | d dm! dm | d dm dm |
  b=,4 g@7! g74 | b g@7 g74 | c=4 cM! cM | c cM cM |
  g=,4 g7! g7 | g g7 g7 | c cM! cM |
  c+cM!4 fis,=,8( g fis g=,) | c+cM!4 r r |
}
{{ end }}
