{{ define "rh1" }}
  \rep 2 { <ais,=' cis fis>16 g' <ais, cis fis> cis'='''-> } |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key e \minor
  \time 2/4
  \repeat segno 2 {
    \volta 1
    \repeat volta 2 {
      <e''='' g b>16\mf c' <e, g b>_\aLeg g'-> %
      <e,='' g b>16 c' <e, g b> g'='''-> |
      \rep 2 { <e,='' fis a>16 b' <e, fis a > fis'='''-> } |
      \rep 2 { <b,,=' fis' a>16 b' <b, fis' a > fis''='''-> } |
      \rep 2 { <b,,=' e g>16 a' <b, e g> e'='''-> } |
      \rep 2 { <c,='' e g>16 a' <c, e g> e'='''-> } |
      \rep 2 { <c,='' e fis>16 g' <c, e fis> c'='''-> } |
      \alternative {
        \volta 1 {
          \rep 2 { <g,=' c e>16 fis' <g, c e> g'=''-> } |
          <fis,=' b dis>16^\tRit b' <g, cis e> b'-> %
          <gis,=' cisis eis>16 b' <a, dis fis> c'='''-> |
        }
        \volta 2 {
          <g,=' c e>16 fis' <g, c e> g'-> %
          <fis,=' b dis>16 e' <fis, b dis> fis'-> |
          <g,=' b e>16^\tRit fis' <b, e g> b'-> <g='' b e>4-- \fine |
        }
      }
    }

    \volta 2
    \repeat volta 2 {
      <g,=' b d>16\f^\tATem e' <g, b d> b'-> <g, b d> e' <g, b d> b'=''-> |
      \rep 2 { <g,=' cis e>16 fis' <g, cis e> a'=''-> } |
      \rep 2 { <g,=' c ees>16 f' <g, c ees> a'=''-> } |
      \rep 2 { <g,=' b d>16 e' <g, b d> g'=''-> } |
      \rep 2 { <g,=' b cis>16 d' <g, b cis> g'=''-> } |
      \rep 2 { <b,=' d fis>16 g' <b, d fis> d'='''-> } |
      \alternative {
        \volta 1 {
          {{ template "rh1" }}
          <b,=' d fis>16 g' <b, d fis> b'-> %
          <c,='' d fis>16 g' <c, d fis> a'=''-> |
        }
        \volta 2 {
          {{ template "rh1" }}
          <b,=' d fis>16^\tRit g' <b, d fis> b'-> <b, dis fis>\> g' %
          <b,=' dis fis>16 \af 16\! b'=''-> \bar "||"
        }
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  e=8-\stBass r em! r | e r a@m! r8 | dis r b@7! r8 | e r em! r |
  c=8 r cM! r | a r am! r | ais8. r16 ais8. r16 | b2 |
  ais=,8. r16 b8. r16 | e=8 r em!4-- |

  g,=,8 r gM! r | g r a@M! r8 | g r c@m! r8 | g r gM! r |
  e'=8 r em! r | fis r b@m! r8 | fis r fis7! r | b,8. r16 a8. r16 |
  fis'=8 r fis7! r | b,=, r b7! r |
}
{{ end }}
