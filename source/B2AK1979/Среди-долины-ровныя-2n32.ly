{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key a \minor
  \time 6/8
  \duo {
    \partial 8 { e'='8\(\p | }
    <c=' a'>4 8 <e c'> <d b'> <c a'> | b'4 gis8 e4\) e8 |
    <c=' a'>4\( 8 g' a b | <e,='_~ g_~ c^~ >4. 8\) %
  } {
    \partial 8 { s8 | }
    s2. | d'='4.~ d4. | s4. f='4. | s2 %
  }
  r8 g'='8\( |

  \repeat volta 2 {
    <c='' e>4\mf 8 <e g> <d f> <c e> |
    <b=' d>4 <a dis>8 <gis e'>4\) b8\( |
    <a=' c>8 <d, b'> <c a'> <e e'>4 <d e gis>8 |
    \alternative {
      \volta 1 {
        <c=' e a>4.~\> \af 8\! 8\) r\< %
        \sSlur nf #'((wb . 2.5) (ws . 3)) ( \af 16..\! g'=') |
      }
      \volta 2 {
        \hSpace <c,=' e a>4.~\> 8 %
        \sSlur nb #'((wb . 2.5) (ww . 3.5) (wh . 1.8)) ( \af 16\! r) r \bar "|."
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key a \minor
  \partial 8 { r8 | }
  a,=,8(-\stBass am!) am a am am | e'( e7!) e7 e e7 e7 |
  a,=,8_\aSim am! am g g7! g7 | c=8 cM! cM cM r r |

  c=8 cM! cM c cM cM | g gM! f e' e7! e7 |
  a,=,8 am! am gis[ e@7! e78] |
  \rep 2 { a=,8 am! am am r r | }
}
{{ end }}
