{{ define "piece" }}
\score {
  \new PianoStaff = bayan {
    <<
      \new Staff = rightHand { {{ template "rightHand" }} }
      \new Staff = leftHand { {{ .StradellaLeftHand }} }
    >>
  }
}
{{ end }}