{{ define "rh1" }}
  {{ .a }} fis16 g a8 g | fis e d) r r d( fis a |
  <d='' fis>4 <c e>) e,8( fis b a=') |
{{ end }}

{{ define "lh1" }}
  g=,8 gM!4 gM8 b g@M4 gM8 | \rep 2 { a=,8 d@7!4 d78 d= d74 d78 | }
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Adagio
  \clef treble
  \key g \major
  \time 4/4
  r2\p r8 d'='8(\< g \af 16.\! b |
  \repeat volta 2 {
    e=''4\mp d) {{ template "rh1" (w `g,='8(`) }}
    d=''8( c16 b a g e g a8) d,[(\< g \af 8\! b] |
    <c='' e>4\mf <b d>) {{ template "rh1" (w `g='8(`) }}
    g='2~ g8 <d g>[( <g b> <g b d>] |
    <b=' g'>4. <b fis'>8 e) b( d e |
    <d='' fis>8 <c e> b4) r8 c( d b |
    <g=' e'>4. <g d'>8 c) g( d' c |
    b='2) r8 e,( e' d) | a4.( b8 c b16 c d8 c |
    b='4 <b d>4~ 8) d,[( g b] | <c e>4 <c d>) r8 a[( c b] |
    \alternative {
      \volta 1 {
        g='2~ g8) d[\< %
        \sSlur nf #'((wb . 2.5) (ws . 1) (ww . 2) (wh . 1.9) (wd . 0.7)) ( %
        g='8) \af 16.\! b='] |
      }
      \volta 2 {
        \hSpace <g=' b g'>2~ \sSlur nb #'((wb . 3.5)) ( 4) r \bar "|."
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  g,=,8-\stBass gM!4 gM8 g gM4 gM8 | {{ template "lh1" }}
  b=,8 g@M!4 a@m!8 d+d7!8 r r4 | {{ template "lh1" }}
  g,=,8 gM!4 a@m!8 g+gM!8 r r4 | e'8 em!4 em8 cis e@m4 em8 |
  b=,8 bm!4 bm8 b bm4 bm8 | c cM!4 cM8 a c@M4 cM8 |
  e'=8 e7!4 e78 gis, e@74 e78 | a am!4 am8 a am4 am8 |
  d=8 g@M!4 gM8 d r r4 | d8 a@m!4 d@7!8 d8 d74 d78 |
  g,=,8 gM!4 a@m!8 g@M!8 r8 r4 | g8 gM!4 a@m!8 g@M!4 r4 |
}
{{ end }}
