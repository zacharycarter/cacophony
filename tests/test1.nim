import cacophony

var n = NewFastNoiseSIMD()

var ns = n[].GetSimplexFractalSet(0, 0, 0, 16, 16, 16)

var uns = cast[ptr UncheckedArray[cfloat]](ns)

var idx = 0
for x in 0 ..< 16:
  for y in 0 ..< 16:
    for z in 0 ..< 16:
      echo idx, " : ", uns[idx]
      inc idx

ns.FreeNoiseSet()