{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key e \minor
  \time 4/4
  \meter 1/4 1,1,1,1
  R1\p |
  \repeat volta 2 {
    e'='8 e e\< e <e g>8 8 <g b> \af 8\! d' |
    \duo {
      \rep 2 { d''=''8\> c~ \af 4\! c=''4 } |
      <fis,=' a d>8\< 8 8 \af 16.\! d' d c b a |
      \rep 2 { c=''8\> b~ \af 4\! b='4 } |
      <e,=' a c>8\< 8 8 \af 16.\! c' fis e c a |
      \rep 2 { c=''8\> b~ \af 4\! b='4 } |
      a='8\< a a \af 16.\! a d c b a |
      <e=' g b>8 e~ e4~ e8\< fis g \af 8\! b |
      <e='' g>8\f g fis e dis e fis e |
      \rep 2 { c=''8\> a~ \af 4\! a='4 } |
      <dis='' fis>8 fis e dis c b fis a |
      \rep 2 { a='8\> g~ \af 4\! g='4 } |
    } {
      <e'=' a>8 8~ 2. | s2 d4 d | <d g>8 8~ 2. |
      s2 a'='4 e | <e g>8 8~ 2. | s2 fis4 dis | s1 |
      b'='2 g | <e a>8 <c e>~ 2. | a'2 dis, | <b e>8 8~ 2. |
    }
    <a=' c e>8\mf e' c a <a=' c e>8 4. |
    \duo { a'='8 c b a=' } { c'='4 e=' } <e g c>8 <e g b>4. |
    <b= dis a'>4. g'8 <dis fis>4 <b b'> |
    \alternative {
      \volta 1 { \af 2..\! <g= b e>1\> | }
      \volta 2 {
        \duo { b'='2 \rest \> \af 4.\! <g=' b e>2 | }
        { e'='1 | } \bar "|."
      }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key e \minor
  e=4-\stBass em! em em |
  e=4 em! em em | a,4 am! am am |
  d=4 d7! d7 d7 | g,4 gM! gM gM |
  a=,4 am! am am | e' em! em em |
  b=,4 b7! b7 b7 | e em! em em |
  e=4 em! em em | a,4 am! am am |
  b=,4 b7! b7 b7 | e em! em em |
  a,=,4 am! am am | a am! e' em! |
  b=,4 b7! b7 b7 | e em! em em | e em! e=2 |
}
{{ end }}
