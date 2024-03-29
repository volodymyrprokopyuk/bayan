{{ define "rightHand" }}
\relative {
  \tempo Moderato
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 {
    b'='4\(\mp a8 g | a b g\) g |
    b='8-. b-. a-. g-. | a-. b-. g='4 |
  }

  \repeat volta 2 {
    g='4\( fis8 e | fis g e\) e |
    g='8-. g-. fis-. e-. |
    \alternative {
      \volta 1 { fis='8-. g-. e='4 | }
      \volta 2 { fis='8-. g-. e='4 \bar "|." }
    }
  }
}
{{ end }}

{{ define "leftHand" }}
\relative {
  \clef bass
  \key g \major
  g+gM!4-\stBass r | c@m! g@M!4 |
  g@M! r4 | c@m! g@M!4 |

  e+em!4 r | a@m! e@m!4 |
  e@m! r4 | a@m! e@m!4 | b+bM!4 e+em! |
}
{{ end }}
