{{ define "rh1" }}
  \repeat volta 2 {
    {{ .a }} <g b>8. <fis a>16 | {{ .b }} <b d>8 <a c> |
    <g=' b>8 8 8 <fis a> |
    \alternative {
      \volta 1 { <a=' c>8 <g b> e16 fis g a=' | }
      \volta 2 { <a=' c>8 <g b> e='4 | }
    }
  }
{{ end }}

{{ define "lh1" }}
  {{ .a }} em! a, am! | e' em! e em | b b7! e em! | b b7! {{ .b }} |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Sostenuto
  \clef treble
  \key e \minor
  \time 2/4
  {{ template "rh1" (w `<g'=' b>4\mf` `<g=' b>16 e g b`) }} \bar "||"
  {{ template "rh1" (w `<g=' b>4` `<g=' b>16 e <g b>8`) }} \bar "||"
  {{ template "rh1" (w `<g=' b>8 16 e16` `<g=' b>16 e <g b>8`) }} \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  {{ template "lh1" (w `e=8-\stBass em! b b7! | e` `e= em!`) }}
  {{ template "lh1" (w `e=8 em! b b7! | e` `e= em!`) }}
  {{ template "lh1" (w `e=8 em! a, am! | e'` `e+em!4`) }}
}
{{ end }}
