{{ define "rh1" }}
  {{ .a }} d-. fis-. a4-- fis8 | b4-- fis8 a4.-- |
  <g='' b>8-. 8-. <fis a>-. <e g>8-. 8-. <d fis>-. |
  <cis='' e>4-- <b d>8 <a=' a'>4.-- |
{{ end }}

{{ define "rh2" }}
  {{ .a }} 8-. <fis a>-. <e g>4-- <d fis>8 |
  | <e g>8-. 8-. <d fis>-. <cis e>4-- <b d>8 |
{{ end }}

{{ define "lh1" }}
  {{ .a }} r r dM!4 r8 | b@m!4 r8 d@M!4 r8 |
  e=8 r r em!4 r8 | a,=, r r aM!4 r8 |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key d \major
  \time 6/8
  {{ template "rh1" (w `a'='8-.\mp`) }}
  a='8-. d-. fis-. a4-- fis8 | b4-- fis8 a4.-- |
  <a='' cis>8-. 8-. <gis b>-. <fis a>-. <cis gis'>-. <a fis'>-. |
  gis'=''8-. cis-. cis,-. fis4 r8 |
  {{ template "rh2" (w `<g='' b>8-.\mf`) }}
  <cis='' e>8( a)-. a-. a-. a-. a-. | a-. a-. a-. a-. a-. a-. |
  {{ template "rh2" (w `<g=' b>8-.`) }}
  <cis=' e>8-. a-. a-. a-. a'-. a-. | a( a')-. a-. a-. a,-. a-. |
  {{ template "rh1" (w `a='8-.\p`) }}
  a='8-. d-. fis-. a4-- fis8 | b4-- fis8 a4.-- |
  d='''8-. b-. g-. e-. d-. b-. |
  <g=' cis fis>4-- <g cis e>8 <fis=' a d>4.-> \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \major
  {{ template "lh1" (w `d=8-\stBass`) }}
  d=8 r r dM!4 r8 | b@m!4 r8 d@M!4 r8 |
  fis,=,8 r r fism! r r | cis+cis7! r r fis+fism!4 r8 |
  e'=8 r r em!4 r8 | cis r r e@m!4 r8 |
  a+aM!8 r r g=,4( fis8) | g4( e8) a8 r r |
  e'=8 r r em!4 r8 | cis r r e@m!4 r8 | a+aM!8 r r r4. | R2. |
  {{ template "lh1" (w `d=8`) }}
  d=8 r r dM!4 r8 | b@m!4 r8 d@M!4 r8 |
  g,=,8 r r gM! r r | a+a7!4 r8 d+dM!4.-> |
}
{{ end }}
