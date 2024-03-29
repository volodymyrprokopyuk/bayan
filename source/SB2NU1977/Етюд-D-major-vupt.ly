{{ define "rightHand" }}
\relative {
  \tempo Allegro
  \clef treble
  \key d \major
  \time 3/8
  \repeat volta 2 {
    a=16\mf d_\aLeg fis e d cis | b e g fis e d |
    cis='16 e a g fis e | d\< fis a d fis \af 16\! a |
    d='''16\mf cis b a g fis | e d cis b a g |
    fis='16\> e d cis b \af 16\! cis | d='8 r r |
  }

  \repeat volta 2 {
    a=16(\p b cis d e fis) | d( e fis g a b) |
    a='16( b cis d e fis | d8)-.\< fis-. \af 8\! a-. |
    b=''16(\mf d cis b a g | fis a g fis e d) |
    cis=''16(\> e d cis b \af 16\! a | d=''8) r r |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \major
  d+dM!8-\stBass r r | g+gM! r r | a+a7!8 r r | d+dM! r r |
  fis+d@M! r8 r | g+e@m! r8 r | a,=,8 r a+a7! | d+dM! r r |

  \rep 2 { a+a7!8 r r | d+dM! r r | }
  g=,8 r r | a r r | a+a7! r r | d+dM! r r |
}
{{ end }}
