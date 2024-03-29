{{ define "rightHand" }}
\relative {
  \tempo Largo
  \clef treble
  \key e \minor
  \time 4/4
  \partial 2 { e''=''4\mf e | }
  c=''4.( a8) b4.( a8) | g4( e) e'8( g fis e) |
  d=''4.( b8) c4( b8 a | b4) dis='' %
  \repeat volta 2 {
    e=''4.( e8) | c4.( a8) b4.( a8) |
    g='8( fis e4) a( c) | b( a8 g) fis4 b | <e,=' e'>2 %
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  \partial 2 { e=4-\stBass em! | }
  a,=,4 am! b b7! | e em! c cM! |
  g=,4 gM! d' d7! | g+gM!4 fis+b@7! e4 em! |
  a,=,4 am! b b7! | e em! a, am! |
  b=,4 e@m! b4 b7! | e= em! %
}
{{ end }}
