{{ define "rightHand" }}
\relative {
  \tempo Adagio
  \clef treble
  \key d \minor
  \time 4/4
  \partial 4 { a=4\mf | }
  \repeat volta 2 {
    d='4 d8. e16 f4 d | bes' a2 f4 |
    g='4 g a g8. f16 | e4 d2 a4 |
    d='4 d8. e16 f4 d | <bes' d>4 <a c>2 <f a>4 |
    <g=' bes>4 8. <f a>16 <g bes>4 <e c'> |
    <f=' a>2. <g a>4 | <f d'>2 <d' f> |
    <c='' e>4 <bes d>2 <a c>8 <bes d> |
    <c='' e>4. <bes d>8 <a c>4 <bes d> |
    <f=' a>2. <ees f>4 | <d d'>2 <a' c>4. <d, bes'>8 |
    a'='4 g2 <g bes>4 | <f a> <e g>8 <f a> <g bes>4 a |
    \alternative {
      \volta 1 { <d,=' d'>2 r4 a= | }
      \volta 2 { <d=' d'>2. \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  \partial 4 { r4 | }
  d=4-\stBass dm! dm dm | d dm! dm dm |
  e=4 g@m! a,4 a7! | \rep 2 { d=4 dm! dm dm | }
  d=4 f@M! fM4 fM | g, gm! gm c |
  f,=,4 fM! fM a | d dm! dm dm |
  d=4 bes@M! besM4 besM | c cM! cM cM |
  f,=,4 fM! fM a | bes besM! d fis, |
  g=,4 gm! gm gm | a g@m! a4 a7! |
  d=4 dm! dm r | d= dm! dm %
}
{{ end }}
