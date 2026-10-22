<CsTest>
description = "generic audio input opcode record matches initializer"
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
  a1 _in

endin
</CsInstruments>
<CsScore>
i 1 0 0.1
e
</CsScore>
</CsoundSynthesizer>
