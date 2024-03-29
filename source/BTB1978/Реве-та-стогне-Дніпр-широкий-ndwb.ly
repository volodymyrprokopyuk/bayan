{{ define "rh1" }}
  <f=' a>2 <e g>4 | <d f>2\> <g, cis e>4 | \af 2.\! <f= a d>2. |
{{ end }}

{{ define "rightHand" }}
\relative {
  \tempo Lento
  \clef treble
  \key d \minor
  \time 3/4
  d'='4\p\< <d f> <f a> | \af 4.\! <f d'>2 <f a>4 |
  <e=' g>2 <d f>4 | <d f>2.\> | \af 2.\! <cis e>2. |
  <e=' g>4\< <f a> \af 4\! <g=' bes> | {{ template "rh1" }}
  \repeat volta 2 {
    <f'=' a>4\< \af 4\! <f a d> <a cis e>\mf |
    <f=' d' f>2 <e c' e>4 | <d bes' d>2 <f a>4 |
    <ees=' a c>2 <d bes'>8 <c a'> | <bes d g>2. |
    g'='4 <d g bes> <d=' g d'> | {{ template "rh1" }}
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key d \minor
  d=2.-\puBass | f, | g | a~ | a | g4 f e | f2 g4 | a2 a4 | d2. |
  f=2 e4 | d2 c4 | bes2 f4 | fis2 e8 fis |
  g=,2 f4 | e2. | f2 g4 | a2 a4 | d=2. |
}
{{ end }}
