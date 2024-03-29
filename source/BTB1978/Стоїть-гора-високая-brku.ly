{{ define "rightHand" }}
\relative {
  \tempo Adagio
  \clef treble
  \key b \minor
  \time 3/4
  b=4(\p <b d> <d fis>)\< | \af 4.\! <d b'>2 ais'4 |
  <e=' cis'>2( <cis ais'>4)\> | \af 4.\! <ais fis'>2 fis'4\< |
  \af 4.\! <e=' cis'>2( <cis ais'>4) | <ais fis'>2 <ais cis>4 |
  <b= e>2 <b d>4\> | \af 4.\! b2 \af 8.\! fis'4\< |
  \repeat volta 2 {
    <fis=' d'>2(\f <e cis'>4) | <d b'>2 <b fis'>4 |
    <b= e a>2 g'8( fis) | e2 <g b> 4 |
    <d=' fis>2( <cis e>4) | <b d>2( <ais cis>4)\> |
    \alternative {
      \volta 1 { b=2.~ | \af 2\! b2 \af 8..\! fis'='4\< | }
      \volta 2 { b,=2.~\> | \af 2\! b=2 r4 \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key b \minor
  b,=,4 bm! bm | d( b@m!) r4 |
  \rep 2 { fis,=,4 fis7! fis7 | cis'= fis@7! fis74 | }
  \rep 2 { b=,4 bm! bm | } b( bm!) cis | d b@m! dis4 |
  e=4 em! em | g, e@m! em4 | fis b@m! e@m!4 | fis4 b@m! fis@7!4 |
  \rep 2 { b=,4 bm! bm | b@m! r4 r | }
}
{{ end }}
