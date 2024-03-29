{{ define "rh1" }}
  <aes,= des f>8) 8 8 <bes des g>8 {{ .a }} 8 8 | <c ees aes>8 8 <ees=' aes c> %
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo "Moderato espressivo"
  \clef treble
  \key aes \major
  \time 6/8
  \partial 8 { ees'='8(\p | }
  \repeat volta 2 {
    {{ template "rh1" (w ``) }}
    \duo { <c''='' f>4( <c='' ees>8) | } { aes'='4. | }
    <des=' ees g>8 8 <ees g bes> %
    \duo { <f'=' des'>4( <ees=' c'>8) | } { g'='4. | }
    <c=' ees aes>8 <c ees g> <c ees f> <aes c ees>4 ees'8( |
    {{ template "rh1" (w `_ \dCre`) }}
    \duo { <ees''='' ges>4(\mf <ees='' f>8) | } { a'='4. | }
    <f=' bes ees>8 8 <f bes des> <ees g c>8_\dDim 8 <des g bes> |
    \alternative {
      \volta 1 {
        <c=' ees aes>8 8 <ees aes c> %
        <c=' ees aes>4 ees='8 \sSlur uf #'((wb . 3)) ( |
      }
      \volta 2 {
        <c=' ees aes>8) <ees aes c> <aes c ees> <c ees aes>4 aes'=''8( |
      }
    }
  }

  \tempo Agitato
  \repeat volta 2 {
    <bes,=' des ges>8) 8 <aes c f> <ges bes ees>8 8 <f aes des> |
    <ees=' ges c>8 8 <des ges bes> <c ges' aes> <des ges bes> <ees ges c> |
    <f=' aes des>8 8 <aes des f> <des f bes>8 8 <des f aes> |
    <f='' aes ees'>8 8 <f aes des> <des f aes>4 bes'8( |
    <c,='' ees aes>8)\f 8 <bes d g> <aes c f>8 8 <g bes ees> |
    <f=' aes d>8 8 <ees aes c> <d aes' bes> <ees aes c> <f aes d> |
    <g=' bes ees>8 8 <bes ees g> <aes des f>8 8 <des f aes> |
    <bes=' des g>8\> 8^\tRit <aes=' des f bes> <g des' ees>4 \af 8\! ees='8(\p |

    \tempo "Tempo I"
    {{ template "rh1" (w ``) }}
    \duo { <c''='' f>4( <c='' ees>8) | } { aes'='4. | }
    <des=' ees g>8 8 <ees g bes> %
    \duo { <f'=' des'>4( <ees=' c'>8) | } { g'='4. | }
    <c=' ees aes>8 <c ees g> <c ees f> <aes c ees>4 ees'8( |
    <aes,= des f>8) 8\< 8 <bes e g>8^\tSos 8 8 |
    <c=' f aes>8 8 \af 16\! <f aes c> %
    \duo { <d''='' g>4(\f <d='' f>8) | } { aes'='4. | }
    \alternative {
      \volta 1 {
        <aes=' c f>8 8 <aes c ees> <ees g c>8 8 <des g bes> |
        <c=' ees aes>8\> <ees aes c> <aes c ees> <c ees aes>4 %
        \af 8\! aes'=''8\p-\sSlur nf #'((wb . 4)) ( |
      }
      \volta 2 {
        <aes,=' des fes>8)^\tAcc 8 <des fes aes> %
        <fes,=' aes des>8 8 <aes=' des fes> |
      }
    }
    <des,=' fes aes>8\> 8 <fes aes des> <aes, des fes>8 8 \af 8\! <des fes aes> |
    <aes= d f>8\mf 8(^\tRit bes') <aes, d g>8 8( f') |
    <aes,= c f>8\> <aes c ees> <c ees aes> <ees aes c>4 \fermata \af 16\! ees8(\p |
    \tempo Lento
    <aes,= des f>8) 8( bes') <bes, des g>8 8( c') |
    \duo { aes'='4.~ aes='4 } { <c'=' ees>8( <bes des> <b d> <c=' ees>4) } %
    \bar "|."
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key aes \major
  \partial 8 { r8 | }
  bes,=,4.\(-\puBass ees | aes ees8 ees4\) |
  bes'=4.\( ees,8 ees4 | aes,4. ees'4\) r8 |
  bes=,4.\( ees | aes f8 f4\) | bes4.\( ees,4. | aes,4.~ aes4\) r8 |
  \hSpace aes=,4.~ aes=,4 \sSlur nb #'((wb . 2.5) (ww . 3.7)) ( r8) |

  ees'=4.\( aes, | ees' aes, | des4. aes | des_~ des+desM!4\) r8 |
  f=4.\( bes, | f' bes, | ees bes | ees~ ees=4\) r8 |

  bes=,4.\( ees | aes ees8 ees4\) |
  bes'=4.( ees,8 ees4 | aes4. ees4) r8 |
  bes=,4.\( c | f\) bes,8 bes4\( | ees2. |
  aes,=,4.~ aes4\) r8 | bes2.\(~ | bes~ | bes |
  ees=4.~ ees4\) \fermata r8 | ees2.\( | aes,4.~ aes=,4\) %
}
{{ end }}
