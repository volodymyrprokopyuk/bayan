{{ define "rh1" }}
  {{ .a }} <g bes> <f aes>4 <ees g>8 <d f> |
  <ees=' g>8 <f aes> <ees g>4 <d f>8 <c=' ees> |
{{ end }}

{{ define "rh2" }}
  <d=' f>8 <ees g> <d f>4 \duo { g'='4 | } { ees'='8 d=' | }
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Largo
  \clef treble
  \key ees \major
  \time 3/4
  \partial 4 { bes=4\mf | }
  \repeat volta 2 {
    ees='2 c4 | f2 bes,4 |
    ees='8( f) g4 f8( ees) | f2 bes,4 |
    ees='8( f) g4 f8( ees) | f4 bes f |
    g='4 f ees | bes2 c4 | f2 c4 | g'2 c,4 |
    f='8( g) aes4 g8( f) | g2 c,4 |
    f='8( g) aes4 g8( f) | bes4 ees, aes |
    g='4 bes, f' | ees2 g='4\f |

    <ees=' g c>2 g4 | <ees g c>2 <g bes>4 |
    <f=' aes>8 <g bes> <aes c>4 <g bes>8 <f aes> |
    <ees=' g>4( c) <g' bes>4 |
    {{ template "rh1" (w `<f=' aes>8`) }}
    {{ template "rh2" }}
    <c=' c'>2 <g' bes>4 |
    \duo { \rep 2 { c''=''8 c8 c=''2 | } | }
    { {{ template "rh1" (w `<f'=' aes>8`) }} | }
    {{ template "rh2" }}
    \alternative {
      \volta 1 { <c=' c'>4 <bes bes'>8 r bes=4 | }
      \volta 2 {
        <c=' c'>2.~ | 2.~ | 8 r r4 <d f g>4 |
        <c=' ees g c>4 c='-> r \bar "|."
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key ees \major
  \meter 1/4 2,1
  \partial 4 { r4 | }
  ees=8(-\stBass eesM!) eesM eesM bes( ees@M!) |
  ees=8[( aes@M!) aesM8 aesM] f( bes@7!) |
  ees=8( eesM!) c8[( ees@M!]) f8( f7!) |
  bes,=,8_\aSim besM! besM besM f' bes@7! |
  ees=8 eesM! eesM eesM c ees@M! |
  f=8[ bes@M! besM8 besM] d bes@M! |
  c=8( ees@M!) f8[( bes@M!]) f8( f7!) |
  bes,=,8 besM! besM besM g c@7! |
  f=,8 fm! fm fm r fm | f[ c@7! c78 c7] r c7 |
  f=,8 fm! fm fm g g7! | c cM! cM cM r c@7! |
  f,=,8 fm! fm fm aes bes@M! |
  g=,8( gm!) c[( cm!]) f,( fm!) |
  bes=,8[ ees@M! eesM8 eesM] bes bes7! |
  ees=8 eesM! eesM eesM d= g@7! |

  c=8 cm! cm cm d g@7! |
  \rep 2 { c=8 cm! cm cm ees c@m! | f,=,8 fm! fm fm f=, fm! | }
  g=,8( f@m!) c@m!8[ cm8] g( c@m!) |
  g=,8( c@m!) g@M!8[ gM8] g( gM!) |
  c=8 cm! cm cm ees c@m! |
  f,=,8( c@7!) f@m!8[ fm8] r fm |
  g=,8( f@m!) c8[( cm!]) r cm |
  g=,8( c@m!) g@7!8[ g78] g( g7!) | c+cm!4 d' r |
  c=8-- cm! cm cm aes-- f@m! |
  g=,8[-- c@m! cm8 cm] f-- fm! |
  g+c@m!4 r4 g+g7! c+cm!4 c'=4-> r |
}
{{ end }}
