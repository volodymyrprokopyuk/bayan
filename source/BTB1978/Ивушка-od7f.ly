{{ define "rightHand" }}
\relative {
  \tempo "Moderato cantabile"
  \clef treble
  \key c \major
  \time 3/4
  g=4\p c e | a2 g4 | g2. | b,2. |
  g=4 b d | f2 e4 | c2.~ | c2. |
  g=4 c e | <a c>2 <g b>4 | <f a>2. | <d f>2. |
  d='4 f a | <a c>2 <g b>4 | <e g>2. |
  r8 g='8\< a b c \af 16.\! d='' |

  \repeat volta 2 {
    <c='' e>2\mf <b d>4 | 2 <a c>4 | 2 <f a>4 | 2. |
    <b=' d>2 <a c>4 | <g b>2 <f a>4 | 2 <e g>4 | 2. |
    <g=' bes>2 <f a>4 | 2 <e g>4 | 4 <d f> <e g> | <f a>2. |
    b,=4 d f | <f a>2 <e g>4 |
    \alternative {
      \volta 1 { <e=' g>2. | r8 g='8\< a b c \af 16.\! d='' | }
      \volta 2 { <e,=' g c>2.~ | 2 r4 \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c=4-\stBass cM! cM | g c@M cM4 |
  \rep 2 { d'=4 g@7! g74 | g,=, g7 g7 | }
  \rep 2 { c=4 cM! cM | g=, c@M cM4 | }
  d'=4 dm! dm | f, d@m dm4 | g g7! g7 | d' g@7 g74 |
  c=4 cM! cM | g=, gM! gM |

  c=4 cM! cM | g c@M cM4 | d' dm! dm | f, d@m dm4 |
  g=,4 g7! g7 | d' g@7 g74 | c cM! cM | g c@M cM4 |
  a=,4 a7! a7 | cis a@7 a74 | d dm! dm | f, d@m dm4 |
  g=,4 g7! g7 | d' g@7 g74 | c cM! cM | g g7! g7 |
  c=4 cM! cM | c+cM!2 r4 |
}
{{ end }}
