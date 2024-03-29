{{ define "rh1" }}
  {{ .a }} <b d>-. <g b>-. <b d>-. |
  <c='' e>8( <b d>) <a c>-. <g=' b>-. |
  \duo { a'='8-. d-. d16( c b a | g='4) } { fis'='8-. 8-. 4 | s4 } %
{{ end }}

{{ define "rh2" }}
  {{ .a }} <g b>-. <e g>-. <g b>-. |
  <a=' c>8( <g b>) <fis a>-. <e=' g>-. |
  \duo { fis'='8-. b-. b16( a g fis | {{ .b }} } { dis'='8-. 8-. 4 | s4 } %
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Andante
  \clef treble
  \key g \major
  \time 2/4
  {{ template "rh1" (w `<g'=' b>8-.\f`) }} g4 |
  {{ template "rh1" (w `<g=' b>8-.`) }} g8 r |

  {{ template "rh2" (w `<e=' g>8-.\p` `e='4)`) }} e4 |
  {{ template "rh2" (w `<e=' g>8-.` `e='8) 8`) }} e='4 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  g,=,8-\stBass gM! g gM | c cM! d g@M! |
  d=8 d7! a d@7 | g8-. c-. b-. a-. |
  g=,8 gM! g gM | c cM! d g@M! |
  d=8 d7! d d7 | g,8-. a-. g-. fis=,-. |

  e=,8 em! e em | a am! b e@m! |
  b=,8 b7! fis b@7 | e8-. a-. g-. fis-. |
  e=,8 em! e em | a( b c4) |
  b=,8 b7! b b7 | e,=, em! e+em4 |
}
{{ end }}
