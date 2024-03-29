{{ define "rightHand" }}
\relative {
  \tempo Allegretto
  \clef treble
  \key d \minor
  \time 4/4
  \meter 1/4 1,1,1,1
  d'='4 a' a a8( g) | d4 d8 e f4 f8 g |
  a='8 a a g c4 d | a2~  a8 r r4 |
  f='4 <f c'> <f a c> <g bes>8 <f a> |
  g='4 <f a> <e bes' d> <a c>8 <g bes> |
  <f=' a>8 8 8 <d f> <e g>4 \duo { a'='8 g=' | } { e'='4 | } <d=' d'>2.~ 8 r |

  <bes'=' d f>4 4 <c e> <bes d> |
  <a=' c>8 <a d> <a c e>2 <a c>4 |
  <bes=' d>4 4 4 <a c>8 <g bes> |
  <f=' a>8 <g bes> <f a c>2. |
  g='4 <f a> <d bes' d> <a' c>8 <g bes> |
  <f=' a>4 <e g>8 8 <f a>4 <d d'> |
  <a'=' c>8 <g bes> <f a> <e g> <f a>4 <e a e'> | <d=' d'>1 \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  d=8-\stBass dm! r dm d dm r dm | d dm! r dm d dm r dm |
  c=8 f@M! r8 fM c c7! r c7 | \rep 2 {f,=,8 fM! r fM f=, fM r fM | }
  bes=,8 besM! r besM g gm! r gm | a d@m! r8 dm a a7! r a7 |
  d=8 dm! r dm d= dm r dm |

  bes=,8 besM! r besM c c7! r c7 | f, fM! r fM a f@M! r8 fM |
  g=,8 gm! r gm c c7! r c7 | f, fM! r fM f fM r fM |
  g=,8 gm! r gm e' g@m! r8 gm | f, d@m! r8 a@M! d'8 dm! r dm |
  g,=,8 gm! r gm a d@m! r8 a@7! | d8 dm! r dm d= dm r dm |
}
{{ end }}
