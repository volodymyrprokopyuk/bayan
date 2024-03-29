{{ define "rightHand" }}
\relative {
  \tempo "Tempo di marcia"
  \clef treble
  \key ees \major
  \time 4/4
  \partial 16 { g'='16\f | }
  \rep 2 { bes='4 c8. g16 } | bes4 aes8. g16 aes4. bes,8 |
  bes=4 d8. f16 aes4 g8. f16 | ees4. f8 g4. ees8 |
  \repeat volta 2 {
    <aes=' c>4 8. 16 8 bes aes g | f4 f8. aes16 <c, f c'>4. 8 |
    <d=' f bes>4 <d f d'>8. c'16 <bes, f' bes>8 aes' <bes, g'> f'=' |
    \alternative {
      \volta 1 { ees='2 ees4 r8 ees=' | }
      \volta 2 { ees='2 ees='4 r8. \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key ees \major
  \partial 16 { r16 | }
  ees+eesM!4-\stBass \rep 3 { ees+eesM } |
  \rep 2 { bes+besM!4 \rep 3 { bes+besM } | }
  ees+eesM!4 \rep 3 { ees+eesM } |
  aes+aesM!4 aes+aesM c+c7! c+c7 |
  f+fm!4 f+fm aes+f@m! aes+fm4 |
  bes+besM!4 bes+besM d+bes@M! d+besM4 |
  ees+eesM!4 \rep 3 { ees+eesM } |
  ees+eesM!4 \rep 2 { ees+eesM } r8. %
}
{{ end }}
