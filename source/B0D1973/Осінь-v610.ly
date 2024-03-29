{{ define "rightHand" }}
\relative {
  \tempo Lento
  \clef treble
  \key d \minor
  \time 2/4
  \meter 1/2 #'(1)
  \repeat volta 2 {
    d'='8\(\p d e e | f4 d8 d\) |
    g='8\( a bes d | a4 a\) |
    c=''8\( bes a g | f4 d4\) |
    e='8\( f g g | d='2\) |
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  d=8-\stBass r a@M! r8 | d r dm! r |
  g,=,8 r gm! r | d' r dm! r |
  g,=,8 r gm! r | a r d@m! r8 |
  a=,8 r aM! r | d= r dm! r |
}
{{ end }}
