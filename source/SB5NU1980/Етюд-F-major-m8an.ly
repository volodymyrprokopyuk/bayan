{{ define "rh1" }}
  {{ .a }} d c d c f e d c g a bes) |
  a='16( bes a bes a d c bes a g f e) |
  f='16( g f g f e f g gis e fis gis) |
  a='16( gis a b c\< b c d e d e \af 16\! f='') |
{{ end }}

{{ define "rh2" }}
  g=''16(\mf a g a g c b a g d e f) | e( f e f e a g f e d a b=') |
{{ end }}

{{ define "rh3" }}
  c=''16(\< d c d c d c d c d c \af 16\! d) |
  c=''16(->\> bes a g a g f e f e d \af 16\! c=') |
{{ end }}

{{ define "lh1" }}
  {{ .a }} r fM! r c@7!] r8 | f[ r fM! r a@7!] r8 |
  d=8[ r dm! r e] r | a,=,[ r am!] r r4 |
{{ end }}

{{ define "lh2" }}
  \rep 2 { c=8[ r cM! r g@7!] r8 | } c[ r cM! r f@M!] r8 | c+c7!8-> r r4 r |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key f \major
  \time 3/4
  \repeat volta 2 {
    {{ template "rh1" (w `c''=''16(\p`) }} {{ template "rh2" }}
    \alternative {
      \volta 1 { {{ template "rh3" }} }
      \volta 2 { c'=''16(\< d c d c d c d e f e \af 16\! f='') | }
    }
  }

  e=''16(-> f e f e\>^\tRit f e f g fis g \af 16\! gis) |
  a=''16(\p^\tATem bes a bes a f g f d e d bes) |
  a='16( bes a bes a f g a bes c d e) |
  f=''16( g f g f d ees d bes c bes g) |
  f='16( g f g f d ees f g a bes c) |
  d=''16( ees d ees d bes c bes g a g ees) |
  d='16( ees d ees d bes c bes= \clef bass g= a g ees) |
  e=16( c d e f g a bes= \clef treble c=' d e f) |
  e='16( c d e f^\tRit g a bes a g a bes=') |

  {{ template "rh1" (w `c=''16(\p^\tATem`) }}
  {{ template "rh2" }} {{ template "rh3" }}

  {{ template "rh1" (w `c'=''16(\p`) }}
  g=''16(\mf a g a g d' c bes a g f e) |
  f=''16( g f g f bes a g f d e f) |
  c=''16(\< d c d c d \af 16\! c d c d c d) |
  c=''16(-> d c d c\> d c d c d e \af 16\! a) |
  f=''16(\p g f g f c d c a bes a g) |
  f='16( g f g f\> c d c a bes a \af 16\! g |
  f=8) r r4 <f bes d>8\pp r | <a= c f> r r4 r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key f \major
  {{ template "lh1" (w `f=8[-\stBass`) }} {{ template "lh2" }}
  c=8[ r cM!] r r4 | a+a7!8-> r r4 r |

  d=8[ r dm!] r r4 | d+dm!8 r r4 r |
  bes=,8[ r besM!] r r4 | bes+besM!8 r r4 r |
  g=,8[ r gm!] r r4 | d'8[ r g@m!] r8 r4 | \rep 2 { c=8 r r4 r | }

  {{ template "lh1" (w `f=8[`) }} {{ template "lh2" }}

  {{ template "lh1" (w `f=8[`) }}
  bes=,8[ r besM!] r r4 | g8[ r gm!] r r4 |
  c=8[ r cM! r f@M!] r8 | c+c7!8-> r r4 r |
  \rep 2 { f=8[ r fM!] r r4 | } r4 r bes,=,8 r | f'= r r4 r |
}
{{ end }}
