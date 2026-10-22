<CsTest>
description = "audio-array divide in-place record matches performance handler"
[expect]
exit = 0
</CsTest>
<CsoundSynthesizer>
<CsOptions>
--nosound
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 1
0dbfs = 1

instr 1
  aA[] init 2
  kB[] init 2
  aA /= kB

endin
</CsInstruments>
<CsScore>
i 1 0 0.1
e
</CsScore>
</CsoundSynthesizer>
