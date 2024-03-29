{{ define "rh1" }}
  {{ .a }} ees~ | ees8 b \rest \stemDown ees16 d c g \stemUp |
  bes='8. a16 aes4~ | aes='8 %
{{ end }}

{{ define "rh2" }}
  \rep 2 { r16 <g'=' c>16[ r <g=' c>] } | <g=' c>8 s4. |
{{ end }}

{{ define "rh3" }}
  \meter 1/8 1,1,1,1
  g'=''32\< g, b d g b, d g b d, g b d g, b \af 32\! d |
  \meter 1/4 1,1
  g='''8 r g,,16\mf g fis g=' |
{{ end }}

{{ define "rh4" }}
  <g=' c ees>16 <c ees g>8 <ees g c>16 <ees aes ees'>4 |
  \acc { cis'='''8 } <fis, d'>16 a8 bes=''16 %
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key c \minor
  \time 2/4
  r8\mf <c''='' aes'>8[ <bes g'> <aes f'>] |
  <c,=' ees>16 <ees g>8 <g c>16 <ees ees'>4 |
  \duo { \acc { cis''=''8 } d16 a8 bes16 b8 g=' | } { fis'='4 f=' | }
  <ees=' g c>4 <b' f' g>-> | <c='' ees g c>-> r |

  \repeat volta 2 {
    <ees,=' g>8.\mp <ees c'>16 <g ees'>8 <ees' g> |
    \duo { f''=''2 | } { <aes'=' c>16 8 16 <aes d>8 <aes=' c> | }
    <b,= f' g>8. <d b'>16 <f d'>8 <b f'> |
    \duo { ees''=''2 | } { <g'=' c>16 8 16 <aes c>8 <g=' c> | }
    <f=' aes ees'>8. <f aes d>16 <f aes f'>8 <f aes ees'> |
    \alternative {
      \volta 1 {
        \meter 1/8 1,1,1,1
        <b,= f' g>4 <f' b ees> |
        c'=''32\< b c d ees d ees f g aes g f ees f ees \af 32\! d |
        c=''32\> d c bes aes bes aes g f aes g f ees f ees \af 32\! d=' |
      }
      \volta 2 { <fis=' a d>4 <fis=' a c> | }
    }
  }

  {{ template "rh3" }}
  \duo {
    {{ template "rh1" (w `ees''=''4`) }} b \rest f16 f e f |
    d'=''4 d~ | d8 b \rest d16 b g f |
    ees='2~ | ees8 b' \rest g16 g fis g |
    {{ template "rh1" (w `ees'=''4`) }}
  } {
    {{ template "rh2" }} | <c,=' f>8 r r16 <c f>16[ r <c f>] | <c f>8 s4. |
    \rep 2 { r16 <f=' b>16[ r <f=' b>] } | <f b>8 s4. |
    r16 <g,= c>8 16 r <g c>[ r <g c>] | <g c>8 s4. |
    {{ template "rh2" }} | <c,=' f>8 r r16 <c f>16[ r <c f>] | <c=' f>8 %
  }

  <c='' aes'>8\f <bes g'> <aes f'> | {{ template "rh4" }}
  \duo { b''=''8 g | c2~ | c8 s4.\mf | }
  { f''=''4 | <ees g>16 8 16 <d aes'>8 8 | <ees g>8 c c8. b='16 | }
  <d,,=' bes'>8. <bes' d>16 <d f>4~ | 8 <f aes>8 16 <ees g>8 <d fis>16 |
  <ees='' g>4 <g, ees'>~ | 8 <ees' g>8 16 <f aes>8 <ees g>16 |
  <aes,=' c f>4 <f c' d> | <fis a ees'> <fis=' a c> |

  {{ template "rh3" }}
  \duo { {{ template "rh1" (w `ees''=''4`) }} } %
  { {{ template "rh2" }} | <c,=' f>8 r r16 <c f>16[ r <c f>] | <c=' f>8 } %
  <c='' aes'>8\f <bes g'> <aes f'> | {{ template "rh4" }}
  \duo { b''=''8 g | } { f''=''4 | }
  <ees,='' g c>4 <b f' g>\mp | <c='' ees g c> r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \minor
  f,=,4-\stBass fm! | g8 c@m! aes8 aesM! |
  a=,8 d@7! g8 gM! | c+cm!4 g+g7!-> | c+cm!-> r |

  \duo {
    cm!8 cm cm cm | fm! fm fm fm |
    g7!8 g7 g7 g7 | cm! cm cm cm |
    fm!8 fm f@m[ fm8] | g7!8 g7 g7 g7 |
  } { c=4 c | f, f | g g | c c | f, d' | g, g=, | }
  c+cm!4 r | R2 |
  \duo { d@7!8[ d78] d7 d7 | } { a,=,4 d= | }
  g+g7!4 r | R2 |

  c=8 cm! g c@m | c8 cm! cm cm |
  f,=,8 fm! c' f@m | f,8 fm! fm fm |
  g=,8 g7! g g7 | g g7! g7 g7 |
  c=8 cm! aes c@m | g=,8 r r4 |
  c=8 cm! g c@m | c8 cm! cm cm |
  f,=,8 fm! f=, fm | d+f@m!8 r8 r4 |

  g=,8 c@m! aes8 aesM! | a d@7! g8 g7! |
  c=8 cm! f, fm! | c'= r r4 |
  \duo {
    \rep 2 { besM!8 besM besM besM | }
    \rep 2 { eesM!8 eesM ees@M[ eesM8] | }
    f@m!8[ fm8] f@m8[ fm8] | d@7![ d78] d7 d7 |
  } { bes,=,4 bes | bes bes | ees bes | ees bes | d aes a d= | }

  g+g7!4 r | R2 | c=8 cm! g c@m | c8 cm! cm cm |
  f,=,8 fm! c' f@m | f,8 r r4 | g8 c@m! aes8 aesM! |
  a=,8 d@7! g=,8 g7! | c+cm!4 g+g7! | c+cm! r |
}
{{ end }}
