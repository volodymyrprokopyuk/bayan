{{ define "rh1" }}
  {{ .a }} a b c d e fis g a b c d e fis g \af 16\! a='' |
{{ end }}

{{ define "rh2" }}
  b=''16\> a g fis e d c b a g fis e d c b \af 16\! a= |
{{ end }}

{{ define "lh1" }}
  {{ .a }} r gM!4( c@M!8) r8 fis4( |
  e=,8) r em!4( a@m!8) r8 d'4 | b=,8 r g@M!4( c@M!8) r8 %
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key g \major
  \time 4/4
  \repeat volta 2 {
    g=16\mp\< a_\aLeg b c d e fis g a b c d e fis g \af 16\! a='' |
    {{ template "rh2" }}
  }
  {{ template "rh1" (w `g=16\p\<`) }}
  b=''16\mf c d e fis g a b c b a g fis_\dDim e d c |
  b=''16 a g fis e d c b a g fis e d c b a |
  \clef bass
  \rep 2 { g=16 fis e d c d e fis= } |
  g=16\p fis e d c d e fis g a b c d_\dCre e fis g |
  \clef treble
  \rep 3 { a='16 g fis e d e fis g=' } a b c d e fis g a |
  \rep 3 { b=''16 a g fis e fis g a='' } \ottava #1 b='' c d e fis g a b |
  \rep 3 { c=''''16 b a g fis g a b=''' } c b a g fis e d c=''' |
  \ottava #0 {{ template "rh2" }}

  \repeat volta 2 {
    {{ template "rh1" (w `g=16\mp\<`) }} {{ template "rh2" }}
  }
  {{ template "rh1" (w `g=16\p\<`) }}
  \rep 3 { b=''16 c d e fis e d c=''' } b a g fis e d c b |
  a='16_\dDim b c d e d c b \rep 2 { a='16 b c d e d c b=' } a g fis e d c b a |
  g=16\p a_\dCre b c d c b a g a b c d c b a |
  g=16 a b c d e fis g a b c d e fis g a='' |
  \ottava #1 b=''16 c d e fis g a b g='''8\f \ottava #0 r8 g,,='8-. r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  {{ template "lh1" (w `g,=,8-\stBass`) }} a4( |
  d=8) r g@M!4( d@M!8) r8 d4 | e8 r em! r a+am! r b+d@M! r8 |
  \rep 3 { c+cM!8 r a+am! r } e+em!8 r r4 |
  \rep 2 { c+a@m!8 r8 b+d@M! r8 } | c+a@m!8 r8 b r a+am! r g r |
  fis+b@7!8 r8 g+e@m! r8 dis+b@7! r8 e+em! r |
  b+b7!8 r c+cM! r d+g@M! r8 r4 |
  \rep 3 { ees+c@m!8 r8 d+d7! r } \rep 3 { d+d7!8 r r4 } |

  {{ template "lh1" (w `g=,8`) }} a r |
  \rep 3 { d+b@m!8 r8 c+cM! r } d+b@m!8 r8 e+em! r |
  \rep 3 { fis+a@m!8 r8 g+e@m! r8 } a+am!8 r b+g@M! r8 |
  \rep 2 { c+cM!8 r b+d@M! r8 } | e+em!8 r d+g@M! r8 %
  \duo { d7!2~ d78 r } { d=8 r r4 r } d+d7!8 r g+gM! r g=,-. r |
}
{{ end }}
