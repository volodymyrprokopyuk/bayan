{{ define "rightHand" }}
\relative {
  \tempo Largo
  \clef treble
  \key e \minor
  \time 2/4
  \partial 8 { g'='8\(\mf | }
  e='4 g | e8. fis16 g8 a | b4.\) b,8\( |
  e='4 g | e8. fis16 g8 a | b\) b r g\f |
  \repeat volta 2 {
    \time 3/4
    g='8[ <g b>] \stemUp <g d'>[ <g b>] \stemNeutral <fis a> <e g> |
    <d=' fis d'>4 <fis a fis'> \fermata r8 <g b> |
    \time 2/4
    <c='' e>4.( <g b>8) | <b d> <a c> <g b> <fis a> |
    \time 3/4
    \alternative {
      \volta 1 { <g=' b>8 <e e'>~ 4 \fermata r8 g=' | }
      \volta 2 { <g=' b>8 <e=' e'>~ 4 \fermata r8 \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  \partial 8 { r8 | }
  e=4-\stBass em! | c cM! | g+gM!4 b+b7! |
  e=4 em! | c a@m! | b+b7!8 b+b7 r4 |
  g=,8[ gM!] gM gM d@M![ g@M!8] |
  d+dM!4 d+dM \fermata r |
  c=8 cM! cM e | a, am! b b7! |
  e=8 e+em!~ e+em4 \fermata r |
  e=8 e+em!~ e+em4 \fermata r8 %
}
{{ end }}
