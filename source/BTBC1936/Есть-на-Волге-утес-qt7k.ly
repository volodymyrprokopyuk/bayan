{{ define "rh1" }}
  <cis=' e a>4 4\< a'8. \af 32.\! <g=' a>16 |
{{ end }}

{{ define "rh2" }}
  \tuplet 3/2 { <g=' bes>8 <f a> <e g> } \tuplet 3/2 { <d f>8 <c e> <bes= d> | }
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Largo
  \clef treble
  \key d \minor
  \time 3/4
  \partial 4 { a'='8.\mp g16 | }
  f='4 a e8. f16 | d2 <f a>8 <g bes> | <a c>2 <d, bes'>8 <e c'> | <f a>2 8 8 |
  \time 2/4
  \tuplet 3/2 { <g=' bes>8 <f a> <e g> } \tuplet 3/2 { <e g>8 <d f> <d e> | }
  \time 3/4
  {{ template "rh1" }}
  \repeat volta 2 {
    <f=' a d f>2\f <g a cis e>8. <g a cis>16 | <f bes d>2 <f a>8 <g bes> |
    <a=' c>4( <bes d>) <g bes>8. <bes d>16 | <a c>2 <f a>8 8 |
    \alternative {
      \volta 1 {
        \time 2/4 {{ template "rh2" }}
        \time 3/4 {{ template "rh1" }}
      }
      \volta 2 {
        \time 2/4 {{ template "rh2" }}
        <cis=' e a>2 | <f,= a d>2 \bar "|."
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  \partial 4 { r4 | }
  d+dm!2-\stBass a+a7!4 | d+dm!2 r4 | f+fM!2 c+c7!4 | f+fM!2 r4 |
  \time 2/4 g+gm!2 |
  \time 3/4 a+aM!4 g,=,4 f8 e |
  d+dm!2 a+a7!4 | bes+besM!2 c'=8 bes | a4( g) c+c7!4 | f+fM!2 r4 |
  \time 2/4 g+gm!2 |
  \time 3/4 a+aM!4 g=,4 f8 e |
  \time 2/4 g+gm!2 | a+a7!2 | d+dm!2 |
}
{{ end }}
