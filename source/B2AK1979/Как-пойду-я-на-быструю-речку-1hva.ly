{{ define "lh1" }}
  e=8 em! em em b b7! b7 b7 | c cM! cM cM a am! fis a@m |
  b=,8 e@m! {{ .a }} a8 am! b=, b7! |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key e \minor
  \time 4/4
  \meter 1/4 1,1,1,1
  \partial 4 { e'='8\(\p g | }
  <g=' b>4 <fis a>8 <e g> <e a> <e fis> <dis b'> <fis a> |
  <e=' g>4 e2\) g8\( <g b> | <b d>4 <a c>8 <g b> <fis a>4 <b d>8 <c e> |
  <g=' b>2.\) b8\(\< \af 16.\! <a b> |
  \repeat volta 2 {
    <g=' b g'>4\mf b8 <g e'> <fis a b>4 <g b>8 <fis a> |
    <e=' g e'>4 2\) <e d'>8\( <a c> |
    <g=' b>4 <fis a>8 <e g> <fis d'> <a c> <g b> <fis a> |
    \alternative {
      \volta 1 {
        \af 2.\! <e=' e'>2.\)\> %
        b'='8\< \sSlur nf #'((wb . 3.5) (ws . 1.3) (ww . 2)) ( %
        \af 16.\! <a=' b>8) |
      }
      \volta 2 {
        \hSpace \af 2.\! <e=' e'>2.\> -\sSlur ub #'((wb . 3)) ( %
        e='16)\< fis g \af 16\! a=' |
      }
    }
  }

  b='16 b, e g a b, g' b, a' c, e fis b dis, a' b, |
  g'='16 b, cis dis e dis e fis g dis e fis g a b c |
  d=''16 d, g b c d, b' d, a' d, fis a d a d e |
  b='16 g d e fis g a b a\< fis g a b c b \af 32.\! a |
  \repeat volta 2 {
    g'=''16\f g, b e fis g, e' g, b fis g a b a g fis |
    e'=''16 e, g c e g, a b d c b a d e, c' fis, |
    b='16 b, e g a g fis e d' fis, c' fis, b dis, a' b, |
    \alternative {
      \volta 1 {
        e='16\> b cis dis e fis g b \af 4\! e4 b16\< c b \af 32.\! a=' |
      }
      \volta 2 {
        e='16\> b cis dis e fis g b \af 4\! e=''4 r \bar "|."
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  \meter 1/4 1,1,1,1
  \partial 4 { r4 | }
  e=8-\stBass em! em4 c8 a@m! b8 bM! |
  \rep 2 { e=8 em! em em } |
  d=8 g@M! gM4 d8 dM! dM dM | g, gM! gM gM gM4 b8 b7! |
  {{ template "lh1" (w `em4`) }}

  e=8 em! em em em4 b8 b7! | e em! em em em4 r |
  e=8 em! em4 c8 a@m! b8 bM! | e em! em4 g,8 e@m! e'8 em |
  d=8 g@M! gM4 d8 dM! dM dM | g, gM! gM gM fis a@m! b8 b7! |
  {{ template "lh1" (w `em8 em`) }}
  e=8 em! g, e@m! em4 fis8 b@7! | e'=8 em! a@m![ am8] e@m!4 r4 |
}
{{ end }}
