{{ define "rh1" }}
  {{ .a }} g aes4 f bes8 aes | des4 c8 bes c=''2) |
{{ end }}

{{ define "rh2" }}
  \duo { f''=''1~ | \time 6/4 f=''1. | }
  { r4 ees''=''4 des ees8 des | \time 6/4 c[ c] c des c4 bes f='2 | }
{{ end }}

{{ define "lh1" }}
  \rep 2 { R1 | } {{ .a }} c bes2 | \time 6/4 aes4. bes8 aes4 g f='2) |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key f \minor
  \time 4/4
  {{ template "rh1" (w `f'='8(\p`) }} {{ template "rh2" }}

  \time 4/4
  {{ template "rh1" (w `f,='8(`) }}
  \duo { f''=''1~ | \time 6/4 f=''1. | }
  {
    <bes'=' des>4-- <aes c>-- <g bes>-- f-- |
    \time 6/4 <aes=' c>8[ 8] 8[ <bes des>] <aes c> <g bes> f='2. |
  }

  \time 4/4
  {{ template "rh1" (w `f,='8(`) }} {{ template "rh2" }} \barFermata
  \duo { \time 5/4 f''=''2.~ f=''2 | }
  { c''=''4. ees8 des ees16 des c4-- bes='-- | }
  \time 4/4 f=''1 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef treble
  \key f \minor
  \meter 1/4 1,1,1,1
  {{ template "lh1" (w `des''=''4(-\frBass`) }}

  \clef bass f='8( ees des c bes aes g f | ees bes' f g aes g f ees) |
  \duo { des=4 aes' bes,=, s4 | }
  { des=8 bes' aes c, bes g'( \stemUp f) aes,=, | }
  \time 6/4 r4 r8 bes'=8( aes g f=2.) \clef treble |

  \time 4/4 {{ template "lh1" (w `des''=''4(`) }}
  \time 5/4 aes='4.( c8 bes4 aes)-- g-- | \time 4/4 f='1 |
}
{{ end }}
