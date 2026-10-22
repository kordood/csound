<CsTest>
description = "generic audio input rejects unsupported local sampling rate"
[expect]
exit = "nonzero"
stderr = ["local sampling rate not supported"]
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
opcode Probe():a
  oversample 2
  a1 _in
  xout a1
endop
instr 1
  a1 Probe
endin
</CsInstruments>
<CsScore>
i 1 0 0.1
e
</CsScore>
</CsoundSynthesizer>
