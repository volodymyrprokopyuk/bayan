{{ define "rightHand" }}
\relative {
  \tempo Presto
  \clef treble
  \key c \major
  \time 2/4
  r16\mf c'='16(\< d e f g a \af 16\! b | c4) r |
  r16 g='16(\< a b c d e \af 16\! fis | g4) r |
  r16 fis=''16(\< g a b c d \af 16\! e | fis4) r |
  r16 g='''16(\> fis e d c b \af 16\! a | g4) r |
  r16 f=''16(\> e d c b a \af 16\! g | f4) r |
  r16 e'=''16(\> d c b a g \af 16\! f | e4) r |
  r16 d'=''16(\> c b a g f \af 16\! e | d4) r |
  r16 c='16(\< d e f g a \af 16\! b | c=''4) r \bar "|."
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key c \major
  c+cM!4-\stBass r | r8 c+cM!8[ c+cM c+cM] |
  g+gM!4 r | r8 g+gM!8[ g+gM g+gM] |
  a+d@7!4 r4 | r8 a+d@7!8[ a+d78 a+d7] |
  g+gM!4 r | r8 b+g@M!8[ b+gM8 b+gM] |
  b+g@7!4 r4 | r8 b+g@7!8[ b+g78 b+g7] |
  c+cM!4 r | r8 c+cM!8[ c+cM c+cM] |
  g+g7!4 r | r8 g+g7!8[ g+g7 g+g7 ] |
  c+cM!4 r | c= r |
}
{{ end }}
